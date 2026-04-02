package org.eclipse.jetty.client;

import android.support.v4.media.f;
import android.support.v4.media.g;
import androidx.appcompat.view.a;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import org.eclipse.jetty.client.HttpClient;
import org.eclipse.jetty.client.SelectConnector;
import org.eclipse.jetty.client.security.Authentication;
import org.eclipse.jetty.client.security.SecurityListener;
import org.eclipse.jetty.http.HttpCookie;
import org.eclipse.jetty.http.HttpHeaderValues;
import org.eclipse.jetty.http.HttpHeaders;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.PathMap;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ByteArrayBuffer;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.component.Dumpable;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.ssl.SslContextFactory;

/* JADX INFO: loaded from: classes2.dex */
public class HttpDestination implements Dumpable {
    private static final Logger LOG = Log.getLogger((Class<?>) HttpDestination.class);
    private final Address _address;
    private PathMap _authorizations;
    private final HttpClient _client;
    private List<HttpCookie> _cookies;
    private final ByteArrayBuffer _hostHeader;
    private volatile int _maxConnections;
    private volatile int _maxQueueSize;
    private volatile Address _proxy;
    private Authentication _proxyAuthentication;
    private final boolean _ssl;
    private final SslContextFactory _sslContextFactory;
    private final List<HttpExchange> _exchanges = new LinkedList();
    private final List<AbstractHttpConnection> _connections = new LinkedList();
    private final BlockingQueue<Object> _reservedConnections = new ArrayBlockingQueue(10, true);
    private final List<AbstractHttpConnection> _idleConnections = new ArrayList();
    private int _pendingConnections = 0;
    private int _pendingReservedConnections = 0;

    public class ConnectExchange extends ContentExchange {
        private final SelectConnector.UpgradableEndPoint proxyEndPoint;

        public ConnectExchange(Address address, SelectConnector.UpgradableEndPoint upgradableEndPoint) {
            this.proxyEndPoint = upgradableEndPoint;
            setMethod(HttpMethods.CONNECT);
            String string = address.toString();
            setRequestURI(string);
            addRequestHeader(HttpHeaders.HOST, string);
            addRequestHeader(HttpHeaders.PROXY_CONNECTION, HttpHeaderValues.KEEP_ALIVE);
            addRequestHeader(HttpHeaders.USER_AGENT, "Jetty-Client");
        }

        @Override // org.eclipse.jetty.client.HttpExchange
        public void onConnectionFailed(Throwable th) {
            HttpDestination.this.onConnectionFailed(th);
        }

        @Override // org.eclipse.jetty.client.HttpExchange
        public void onException(Throwable th) {
            HttpExchange httpExchange;
            synchronized (HttpDestination.this) {
                httpExchange = !HttpDestination.this._exchanges.isEmpty() ? (HttpExchange) HttpDestination.this._exchanges.remove(0) : null;
            }
            if (httpExchange == null || !httpExchange.setStatus(9)) {
                return;
            }
            httpExchange.getEventListener().onException(th);
        }

        @Override // org.eclipse.jetty.client.HttpExchange
        public void onExpire() {
            HttpExchange httpExchange;
            synchronized (HttpDestination.this) {
                httpExchange = !HttpDestination.this._exchanges.isEmpty() ? (HttpExchange) HttpDestination.this._exchanges.remove(0) : null;
            }
            if (httpExchange == null || !httpExchange.setStatus(8)) {
                return;
            }
            httpExchange.getEventListener().onExpire();
        }

        @Override // org.eclipse.jetty.client.HttpExchange
        public void onResponseComplete() {
            int responseStatus = getResponseStatus();
            if (responseStatus == 200) {
                this.proxyEndPoint.upgrade();
                return;
            }
            if (responseStatus == 504) {
                onExpire();
                return;
            }
            StringBuilder sbA = f.a("Proxy: ");
            sbA.append(this.proxyEndPoint.getRemoteAddr());
            sbA.append(":");
            sbA.append(this.proxyEndPoint.getRemotePort());
            sbA.append(" didn't return http return code 200, but ");
            sbA.append(responseStatus);
            onException(new ProtocolException(sbA.toString()));
        }
    }

    public HttpDestination(HttpClient httpClient, Address address, boolean z3, SslContextFactory sslContextFactory) {
        this._client = httpClient;
        this._address = address;
        this._ssl = z3;
        this._sslContextFactory = sslContextFactory;
        this._maxConnections = httpClient.getMaxConnectionsPerAddress();
        this._maxQueueSize = httpClient.getMaxQueueSizePerAddress();
        String host = address.getHost();
        if (address.getPort() != (z3 ? 443 : 80)) {
            StringBuilder sbA = g.a(host, ":");
            sbA.append(address.getPort());
            host = sbA.toString();
        }
        this._hostHeader = new ByteArrayBuffer(host);
    }

    private AbstractHttpConnection getConnection(long j4) throws IOException {
        AbstractHttpConnection idleConnection = null;
        while (idleConnection == null) {
            idleConnection = getIdleConnection();
            if (idleConnection != null || j4 <= 0) {
                break;
            }
            boolean z3 = false;
            synchronized (this) {
                if (this._connections.size() + this._pendingConnections < this._maxConnections) {
                    this._pendingReservedConnections++;
                    z3 = true;
                }
            }
            if (z3) {
                startNewConnection();
                try {
                    Object objTake = this._reservedConnections.take();
                    if (!(objTake instanceof AbstractHttpConnection)) {
                        throw ((IOException) objTake);
                    }
                    idleConnection = (AbstractHttpConnection) objTake;
                } catch (InterruptedException e4) {
                    LOG.ignore(e4);
                }
            } else {
                try {
                    Thread.currentThread();
                    Thread.sleep(200L);
                    j4 -= 200;
                } catch (InterruptedException e5) {
                    LOG.ignore(e5);
                }
            }
        }
        return idleConnection;
    }

    public void addAuthorization(String str, Authentication authentication) {
        synchronized (this) {
            if (this._authorizations == null) {
                this._authorizations = new PathMap();
            }
            this._authorizations.put(str, authentication);
        }
    }

    public void addCookie(HttpCookie httpCookie) {
        synchronized (this) {
            if (this._cookies == null) {
                this._cookies = new ArrayList();
            }
            this._cookies.add(httpCookie);
        }
    }

    public void clearCookies() {
        synchronized (this) {
            this._cookies.clear();
        }
    }

    public void close() {
        synchronized (this) {
            Iterator<AbstractHttpConnection> it = this._connections.iterator();
            while (it.hasNext()) {
                it.next().close();
            }
        }
    }

    public void doSend(HttpExchange httpExchange) {
        boolean z3;
        Authentication authentication;
        synchronized (this) {
            List<HttpCookie> list = this._cookies;
            if (list != null) {
                StringBuilder sb = null;
                for (HttpCookie httpCookie : list) {
                    if (sb == null) {
                        sb = new StringBuilder();
                    } else {
                        sb.append("; ");
                    }
                    sb.append(httpCookie.getName());
                    sb.append("=");
                    sb.append(httpCookie.getValue());
                }
                if (sb != null) {
                    httpExchange.addRequestHeader(HttpHeaders.COOKIE, sb.toString());
                }
            }
        }
        PathMap pathMap = this._authorizations;
        if (pathMap != null && (authentication = (Authentication) pathMap.match(httpExchange.getRequestURI())) != null) {
            authentication.setCredentials(httpExchange);
        }
        httpExchange.scheduleTimeout(this);
        AbstractHttpConnection idleConnection = getIdleConnection();
        if (idleConnection != null) {
            send(idleConnection, httpExchange);
            return;
        }
        synchronized (this) {
            if (this._exchanges.size() == this._maxQueueSize) {
                throw new RejectedExecutionException("Queue full for address " + this._address);
            }
            this._exchanges.add(httpExchange);
            z3 = this._connections.size() + this._pendingConnections < this._maxConnections;
        }
        if (z3) {
            startNewConnection();
        }
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public String dump() {
        return AggregateLifeCycle.dump(this);
    }

    public void exchangeExpired(HttpExchange httpExchange) {
        synchronized (this) {
            this._exchanges.remove(httpExchange);
        }
    }

    public Address getAddress() {
        return this._address;
    }

    public int getConnections() {
        int size;
        synchronized (this) {
            size = this._connections.size();
        }
        return size;
    }

    public Buffer getHostHeader() {
        return this._hostHeader;
    }

    public HttpClient getHttpClient() {
        return this._client;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0016 A[Catch: all -> 0x002f, TryCatch #0 {, blocks: (B:5:0x0005, B:6:0x000e, B:8:0x0016, B:9:0x0024), top: B:20:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.eclipse.jetty.client.AbstractHttpConnection getIdleConnection() {
        /*
            r3 = this;
            r0 = 0
            r1 = r0
        L2:
            monitor-enter(r3)
            if (r1 == 0) goto Le
            java.util.List<org.eclipse.jetty.client.AbstractHttpConnection> r2 = r3._connections     // Catch: java.lang.Throwable -> L2f
            r2.remove(r1)     // Catch: java.lang.Throwable -> L2f
            r1.close()     // Catch: java.lang.Throwable -> L2f
            r1 = r0
        Le:
            java.util.List<org.eclipse.jetty.client.AbstractHttpConnection> r2 = r3._idleConnections     // Catch: java.lang.Throwable -> L2f
            int r2 = r2.size()     // Catch: java.lang.Throwable -> L2f
            if (r2 <= 0) goto L24
            java.util.List<org.eclipse.jetty.client.AbstractHttpConnection> r1 = r3._idleConnections     // Catch: java.lang.Throwable -> L2f
            int r2 = r1.size()     // Catch: java.lang.Throwable -> L2f
            int r2 = r2 + (-1)
            java.lang.Object r1 = r1.remove(r2)     // Catch: java.lang.Throwable -> L2f
            org.eclipse.jetty.client.AbstractHttpConnection r1 = (org.eclipse.jetty.client.AbstractHttpConnection) r1     // Catch: java.lang.Throwable -> L2f
        L24:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L2f
            if (r1 != 0) goto L28
            return r0
        L28:
            boolean r2 = r1.cancelIdleTimeout()
            if (r2 == 0) goto L2
            return r1
        L2f:
            r0 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L2f
            goto L33
        L32:
            throw r0
        L33:
            goto L32
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.HttpDestination.getIdleConnection():org.eclipse.jetty.client.AbstractHttpConnection");
    }

    public int getIdleConnections() {
        int size;
        synchronized (this) {
            size = this._idleConnections.size();
        }
        return size;
    }

    public int getMaxConnections() {
        return this._maxConnections;
    }

    public int getMaxQueueSize() {
        return this._maxQueueSize;
    }

    public Address getProxy() {
        return this._proxy;
    }

    public Authentication getProxyAuthentication() {
        return this._proxyAuthentication;
    }

    public SslContextFactory getSslContextFactory() {
        return this._sslContextFactory;
    }

    public boolean isProxied() {
        return this._proxy != null;
    }

    public boolean isSecure() {
        return this._ssl;
    }

    public void onConnectionFailed(Throwable th) {
        boolean z3;
        synchronized (this) {
            z3 = true;
            this._pendingConnections--;
            int i4 = this._pendingReservedConnections;
            if (i4 > 0) {
                this._pendingReservedConnections = i4 - 1;
            } else {
                if (this._exchanges.size() > 0) {
                    HttpExchange httpExchangeRemove = this._exchanges.remove(0);
                    if (httpExchangeRemove.setStatus(9)) {
                        httpExchangeRemove.getEventListener().onConnectionFailed(th);
                    }
                    if (!this._exchanges.isEmpty() && this._client.isStarted()) {
                        th = null;
                    }
                }
                th = null;
            }
            z3 = false;
        }
        if (z3) {
            startNewConnection();
        }
        if (th != null) {
            try {
                this._reservedConnections.put(th);
            } catch (InterruptedException e4) {
                LOG.ignore(e4);
            }
        }
    }

    public void onException(Throwable th) {
        synchronized (this) {
            this._pendingConnections--;
            if (this._exchanges.size() > 0) {
                HttpExchange httpExchangeRemove = this._exchanges.remove(0);
                if (httpExchangeRemove.setStatus(9)) {
                    httpExchangeRemove.getEventListener().onException(th);
                }
            }
        }
    }

    public void onNewConnection(AbstractHttpConnection abstractHttpConnection) {
        synchronized (this) {
            this._pendingConnections--;
            this._connections.add(abstractHttpConnection);
            int i4 = this._pendingReservedConnections;
            if (i4 > 0) {
                this._pendingReservedConnections = i4 - 1;
            } else {
                EndPoint endPoint = abstractHttpConnection.getEndPoint();
                if (isProxied() && (endPoint instanceof SelectConnector.UpgradableEndPoint)) {
                    ConnectExchange connectExchange = new ConnectExchange(getAddress(), (SelectConnector.UpgradableEndPoint) endPoint);
                    connectExchange.setAddress(getProxy());
                    LOG.debug("Establishing tunnel to {} via {}", getAddress(), getProxy());
                    send(abstractHttpConnection, connectExchange);
                } else if (this._exchanges.size() == 0) {
                    LOG.debug("No exchanges for new connection {}", abstractHttpConnection);
                    abstractHttpConnection.setIdleTimeout();
                    this._idleConnections.add(abstractHttpConnection);
                } else {
                    send(abstractHttpConnection, this._exchanges.remove(0));
                }
                abstractHttpConnection = null;
            }
        }
        if (abstractHttpConnection != null) {
            try {
                this._reservedConnections.put(abstractHttpConnection);
            } catch (InterruptedException e4) {
                LOG.ignore(e4);
            }
        }
    }

    public void resend(HttpExchange httpExchange) {
        httpExchange.getEventListener().onRetry();
        httpExchange.reset();
        doSend(httpExchange);
    }

    public AbstractHttpConnection reserveConnection(long j4) throws IOException {
        AbstractHttpConnection connection = getConnection(j4);
        if (connection != null) {
            connection.setReserved(true);
        }
        return connection;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void returnConnection(org.eclipse.jetty.client.AbstractHttpConnection r4, boolean r5) {
        /*
            r3 = this;
            boolean r0 = r4.isReserved()
            r1 = 0
            if (r0 == 0) goto La
            r4.setReserved(r1)
        La:
            if (r5 == 0) goto L16
            r4.close()     // Catch: java.io.IOException -> L10
            goto L16
        L10:
            r0 = move-exception
            org.eclipse.jetty.util.log.Logger r2 = org.eclipse.jetty.client.HttpDestination.LOG
            r2.ignore(r0)
        L16:
            org.eclipse.jetty.client.HttpClient r0 = r3._client
            boolean r0 = r0.isStarted()
            if (r0 != 0) goto L1f
            return
        L1f:
            if (r5 != 0) goto L50
            org.eclipse.jetty.io.EndPoint r5 = r4.getEndPoint()
            boolean r5 = r5.isOpen()
            if (r5 == 0) goto L50
            monitor-enter(r3)
            java.util.List<org.eclipse.jetty.client.HttpExchange> r5 = r3._exchanges     // Catch: java.lang.Throwable -> L4d
            int r5 = r5.size()     // Catch: java.lang.Throwable -> L4d
            if (r5 != 0) goto L3d
            r4.setIdleTimeout()     // Catch: java.lang.Throwable -> L4d
            java.util.List<org.eclipse.jetty.client.AbstractHttpConnection> r5 = r3._idleConnections     // Catch: java.lang.Throwable -> L4d
            r5.add(r4)     // Catch: java.lang.Throwable -> L4d
            goto L48
        L3d:
            java.util.List<org.eclipse.jetty.client.HttpExchange> r5 = r3._exchanges     // Catch: java.lang.Throwable -> L4d
            java.lang.Object r5 = r5.remove(r1)     // Catch: java.lang.Throwable -> L4d
            org.eclipse.jetty.client.HttpExchange r5 = (org.eclipse.jetty.client.HttpExchange) r5     // Catch: java.lang.Throwable -> L4d
            r3.send(r4, r5)     // Catch: java.lang.Throwable -> L4d
        L48:
            r3.notifyAll()     // Catch: java.lang.Throwable -> L4d
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L4d
            goto L9b
        L4d:
            r4 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L4d
            throw r4
        L50:
            monitor-enter(r3)
            java.util.List<org.eclipse.jetty.client.AbstractHttpConnection> r5 = r3._connections     // Catch: java.lang.Throwable -> L9c
            r5.remove(r4)     // Catch: java.lang.Throwable -> L9c
            java.util.List<org.eclipse.jetty.client.HttpExchange> r4 = r3._exchanges     // Catch: java.lang.Throwable -> L9c
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L9c
            r5 = 1
            if (r4 == 0) goto L82
            org.eclipse.jetty.client.HttpClient r4 = r3._client     // Catch: java.lang.Throwable -> L9c
            boolean r4 = r4.isRemoveIdleDestinations()     // Catch: java.lang.Throwable -> L9c
            if (r4 == 0) goto L8d
            java.util.List<org.eclipse.jetty.http.HttpCookie> r4 = r3._cookies     // Catch: java.lang.Throwable -> L9c
            if (r4 == 0) goto L71
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L9c
            if (r4 == 0) goto L8d
        L71:
            java.util.List<org.eclipse.jetty.client.AbstractHttpConnection> r4 = r3._connections     // Catch: java.lang.Throwable -> L9c
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L9c
            if (r4 == 0) goto L8d
            java.util.List<org.eclipse.jetty.client.AbstractHttpConnection> r4 = r3._idleConnections     // Catch: java.lang.Throwable -> L9c
            boolean r4 = r4.isEmpty()     // Catch: java.lang.Throwable -> L9c
            if (r4 == 0) goto L8d
            goto L8e
        L82:
            org.eclipse.jetty.client.HttpClient r4 = r3._client     // Catch: java.lang.Throwable -> L9c
            boolean r4 = r4.isStarted()     // Catch: java.lang.Throwable -> L9c
            if (r4 == 0) goto L8d
            r5 = 0
            r1 = 1
            goto L8e
        L8d:
            r5 = 0
        L8e:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L9c
            if (r1 == 0) goto L94
            r3.startNewConnection()
        L94:
            if (r5 == 0) goto L9b
            org.eclipse.jetty.client.HttpClient r4 = r3._client
            r4.removeDestination(r3)
        L9b:
            return
        L9c:
            r4 = move-exception
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L9c
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.jetty.client.HttpDestination.returnConnection(org.eclipse.jetty.client.AbstractHttpConnection, boolean):void");
    }

    public void returnIdleConnection(AbstractHttpConnection abstractHttpConnection) {
        boolean z3;
        boolean z4;
        List<HttpCookie> list;
        abstractHttpConnection.onIdleExpired(abstractHttpConnection.getEndPoint() != null ? abstractHttpConnection.getEndPoint().getMaxIdleTime() : -1L);
        synchronized (this) {
            this._idleConnections.remove(abstractHttpConnection);
            this._connections.remove(abstractHttpConnection);
            z3 = true;
            z4 = false;
            if (this._exchanges.isEmpty()) {
                if (!this._client.isRemoveIdleDestinations() || (((list = this._cookies) != null && !list.isEmpty()) || !this._connections.isEmpty() || !this._idleConnections.isEmpty())) {
                    z3 = false;
                }
                z4 = z3;
            } else if (this._client.isStarted()) {
            }
            z3 = false;
        }
        if (z3) {
            startNewConnection();
        }
        if (z4) {
            this._client.removeDestination(this);
        }
    }

    public void send(HttpExchange httpExchange) {
        httpExchange.setStatus(1);
        LinkedList<String> registeredListeners = this._client.getRegisteredListeners();
        if (registeredListeners != null) {
            for (int size = registeredListeners.size(); size > 0; size--) {
                String str = registeredListeners.get(size - 1);
                try {
                    httpExchange.setEventListener((HttpEventListener) Class.forName(str).getDeclaredConstructor(HttpDestination.class, HttpExchange.class).newInstance(this, httpExchange));
                } catch (Exception e4) {
                    throw new IOException(a.a("Unable to instantiate registered listener for destination: ", str), e4) { // from class: org.eclipse.jetty.client.HttpDestination.1
                        public final /* synthetic */ Exception val$e;

                        {
                            this.val$e = e4;
                            initCause(e4);
                        }
                    };
                }
            }
        }
        if (this._client.hasRealms()) {
            httpExchange.setEventListener(new SecurityListener(this, httpExchange));
        }
        doSend(httpExchange);
    }

    public void setMaxConnections(int i4) {
        this._maxConnections = i4;
    }

    public void setMaxQueueSize(int i4) {
        this._maxQueueSize = i4;
    }

    public void setProxy(Address address) {
        this._proxy = address;
    }

    public void setProxyAuthentication(Authentication authentication) {
        this._proxyAuthentication = authentication;
    }

    public void startNewConnection() {
        try {
            synchronized (this) {
                this._pendingConnections++;
            }
            HttpClient.Connector connector = this._client._connector;
            if (connector != null) {
                connector.startConnection(this);
            }
        } catch (Exception e4) {
            LOG.debug(e4);
            onConnectionFailed(e4);
        }
    }

    public synchronized String toDetailString() {
        StringBuilder sb;
        sb = new StringBuilder();
        sb.append(toString());
        sb.append('\n');
        synchronized (this) {
            for (AbstractHttpConnection abstractHttpConnection : this._connections) {
                sb.append(abstractHttpConnection.toDetailString());
                if (this._idleConnections.contains(abstractHttpConnection)) {
                    sb.append(" IDLE");
                }
                sb.append('\n');
            }
        }
        return sb.toString();
        sb.append("--");
        sb.append('\n');
        return sb.toString();
    }

    public synchronized String toString() {
        return String.format("HttpDestination@%x//%s:%d(%d/%d,%d,%d/%d)%n", Integer.valueOf(hashCode()), this._address.getHost(), Integer.valueOf(this._address.getPort()), Integer.valueOf(this._connections.size()), Integer.valueOf(this._maxConnections), Integer.valueOf(this._idleConnections.size()), Integer.valueOf(this._exchanges.size()), Integer.valueOf(this._maxQueueSize));
    }

    @Override // org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) {
        synchronized (this) {
            appendable.append(String.valueOf(this));
            appendable.append("idle=");
            appendable.append(String.valueOf(this._idleConnections.size()));
            appendable.append(" pending=");
            appendable.append(String.valueOf(this._pendingConnections));
            appendable.append("\n");
            AggregateLifeCycle.dump(appendable, str, this._connections);
        }
    }

    public void send(AbstractHttpConnection abstractHttpConnection, HttpExchange httpExchange) {
        synchronized (this) {
            if (!abstractHttpConnection.send(httpExchange)) {
                if (httpExchange.getStatus() <= 1) {
                    this._exchanges.add(0, httpExchange);
                }
                returnIdleConnection(abstractHttpConnection);
            }
        }
    }
}
