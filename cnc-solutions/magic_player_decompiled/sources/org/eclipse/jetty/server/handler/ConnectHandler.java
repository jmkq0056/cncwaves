package org.eclipse.jetty.server.handler;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import j2.c;
import j2.e;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.eclipse.jetty.http.HttpMethods;
import org.eclipse.jetty.http.HttpParser;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ConnectedEndPoint;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.nio.AsyncConnection;
import org.eclipse.jetty.io.nio.IndirectNIOBuffer;
import org.eclipse.jetty.io.nio.SelectChannelEndPoint;
import org.eclipse.jetty.io.nio.SelectorManager;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.util.HostMap;
import org.eclipse.jetty.util.TypeUtil;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.component.LifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.thread.ThreadPool;

/* JADX INFO: loaded from: classes2.dex */
public class ConnectHandler extends HandlerWrapper {
    private static final Logger LOG = Log.getLogger((Class<?>) ConnectHandler.class);
    private HostMap<String> _black;
    private volatile int _connectTimeout;
    private volatile boolean _privateThreadPool;
    private final SelectorManager _selectorManager;
    private volatile ThreadPool _threadPool;
    private HostMap<String> _white;
    private volatile int _writeTimeout;

    public class ClientToProxyConnection implements AsyncConnection {
        private final SocketChannel _channel;
        private final ConcurrentMap<String, Object> _context;
        private final EndPoint _endPoint;
        private final long _timestamp;
        private volatile ProxyToServerConnection _toServer;
        private final Buffer _buffer = new IndirectNIOBuffer(4096);
        private boolean _firstTime = true;

        public ClientToProxyConnection(ConcurrentMap<String, Object> concurrentMap, SocketChannel socketChannel, EndPoint endPoint, long j4) {
            this._context = concurrentMap;
            this._channel = socketChannel;
            this._endPoint = endPoint;
            this._timestamp = j4;
        }

        public void close() {
            try {
                closeClient();
            } catch (IOException e4) {
                ConnectHandler.LOG.debug(this + ": unexpected exception closing the client", e4);
            }
            try {
                closeServer();
            } catch (IOException e5) {
                ConnectHandler.LOG.debug(this + ": unexpected exception closing the server", e5);
            }
        }

        public void closeClient() {
            this._endPoint.close();
        }

        public void closeServer() {
            this._toServer.closeServer();
        }

        @Override // org.eclipse.jetty.io.Connection
        public long getTimeStamp() {
            return this._timestamp;
        }

        @Override // org.eclipse.jetty.io.Connection
        public Connection handle() {
            ConnectHandler.LOG.debug("{}: begin reading from client", this);
            try {
                try {
                    try {
                        try {
                            if (this._firstTime) {
                                this._firstTime = false;
                                ConnectHandler.this.register(this._channel, this._toServer);
                                ConnectHandler.LOG.debug("{}: registered channel {} with connection {}", this, this._channel, this._toServer);
                            }
                            while (true) {
                                int i4 = ConnectHandler.this.read(this._endPoint, this._buffer, this._context);
                                if (i4 == -1) {
                                    ConnectHandler.LOG.debug("{}: client closed connection {}", this, this._endPoint);
                                    if (this._endPoint.isOutputShutdown() || !this._endPoint.isOpen()) {
                                        closeServer();
                                    } else {
                                        this._toServer.shutdownOutput();
                                    }
                                } else {
                                    if (i4 == 0) {
                                        break;
                                    }
                                    ConnectHandler.LOG.debug("{}: read from client {} bytes {}", this, Integer.valueOf(i4), this._endPoint);
                                    ConnectHandler.LOG.debug("{}: written to {} {} bytes", this, this._toServer, Integer.valueOf(ConnectHandler.this.write(this._toServer._endPoint, this._buffer, this._context)));
                                }
                            }
                            ConnectHandler.LOG.debug("{}: end reading from client", this);
                            return this;
                        } catch (ClosedChannelException e4) {
                            ConnectHandler.LOG.debug(e4);
                            closeServer();
                            throw e4;
                        }
                    } catch (RuntimeException e5) {
                        ConnectHandler.LOG.warn(this + ": unexpected exception", e5);
                        close();
                        throw e5;
                    }
                } catch (IOException e6) {
                    ConnectHandler.LOG.warn(this + ": unexpected exception", e6);
                    close();
                    throw e6;
                }
            } catch (Throwable th) {
                ConnectHandler.LOG.debug("{}: end reading from client", this);
                throw th;
            }
        }

        @Override // org.eclipse.jetty.io.Connection
        public boolean isIdle() {
            return false;
        }

        @Override // org.eclipse.jetty.io.Connection
        public boolean isSuspended() {
            return false;
        }

        @Override // org.eclipse.jetty.io.Connection
        public void onClose() {
        }

        @Override // org.eclipse.jetty.io.Connection
        public void onIdleExpired(long j4) {
            try {
                ConnectHandler.LOG.debug("{} idle expired", this);
                if (this._endPoint.isOutputShutdown()) {
                    close();
                } else {
                    shutdownOutput();
                }
            } catch (Exception e4) {
                ConnectHandler.LOG.debug(e4);
                close();
            }
        }

        @Override // org.eclipse.jetty.io.nio.AsyncConnection
        public void onInputShutdown() {
        }

        public void setConnection(ProxyToServerConnection proxyToServerConnection) {
            this._toServer = proxyToServerConnection;
        }

        public void shutdownOutput() {
            this._endPoint.shutdownOutput();
        }

        public String toString() {
            return "ClientToProxy(:" + this._endPoint.getLocalPort() + "<=>:" + this._endPoint.getRemotePort() + ")";
        }
    }

    public class Manager extends SelectorManager {
        private Manager() {
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public boolean dispatch(Runnable runnable) {
            return ConnectHandler.this._threadPool.dispatch(runnable);
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void endPointClosed(SelectChannelEndPoint selectChannelEndPoint) {
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void endPointOpened(SelectChannelEndPoint selectChannelEndPoint) {
            ((ProxyToServerConnection) selectChannelEndPoint.getSelectionKey().attachment()).ready();
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void endPointUpgraded(ConnectedEndPoint connectedEndPoint, Connection connection) {
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public AsyncConnection newConnection(SocketChannel socketChannel, AsyncEndPoint asyncEndPoint, Object obj) {
            ProxyToServerConnection proxyToServerConnection = (ProxyToServerConnection) obj;
            proxyToServerConnection.setTimeStamp(System.currentTimeMillis());
            proxyToServerConnection.setEndPoint(asyncEndPoint);
            return proxyToServerConnection;
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public SelectChannelEndPoint newEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey) {
            SelectChannelEndPoint selectChannelEndPoint = new SelectChannelEndPoint(socketChannel, selectSet, selectionKey, socketChannel.socket().getSoTimeout());
            selectChannelEndPoint.setConnection(selectSet.getManager().newConnection(socketChannel, selectChannelEndPoint, selectionKey.attachment()));
            selectChannelEndPoint.setMaxIdleTime(ConnectHandler.this._writeTimeout);
            return selectChannelEndPoint;
        }
    }

    public class ProxyToServerConnection implements AsyncConnection {
        private final ConcurrentMap<String, Object> _context;
        private volatile Buffer _data;
        private volatile AsyncEndPoint _endPoint;
        private volatile long _timestamp;
        private volatile ClientToProxyConnection _toClient;
        private final CountDownLatch _ready = new CountDownLatch(1);
        private final Buffer _buffer = new IndirectNIOBuffer(4096);

        public ProxyToServerConnection(ConcurrentMap<String, Object> concurrentMap, Buffer buffer) {
            this._context = concurrentMap;
            this._data = buffer;
        }

        private void writeData() {
            synchronized (this) {
                if (this._data != null) {
                    try {
                        ConnectHandler.LOG.debug("{}: written to server {} bytes", this, Integer.valueOf(ConnectHandler.this.write(this._endPoint, this._data, this._context)));
                        this._data = null;
                    } catch (Throwable th) {
                        this._data = null;
                        throw th;
                    }
                }
            }
        }

        public void close() {
            try {
                closeClient();
            } catch (IOException e4) {
                ConnectHandler.LOG.debug(this + ": unexpected exception closing the client", e4);
            }
            try {
                closeServer();
            } catch (IOException e5) {
                ConnectHandler.LOG.debug(this + ": unexpected exception closing the server", e5);
            }
        }

        public void closeClient() {
            this._toClient.closeClient();
        }

        public void closeServer() {
            this._endPoint.close();
        }

        @Override // org.eclipse.jetty.io.Connection
        public long getTimeStamp() {
            return this._timestamp;
        }

        @Override // org.eclipse.jetty.io.Connection
        public Connection handle() {
            ConnectHandler.LOG.debug("{}: begin reading from server", this);
            try {
                try {
                    try {
                        try {
                            writeData();
                            while (true) {
                                int i4 = ConnectHandler.this.read(this._endPoint, this._buffer, this._context);
                                if (i4 == -1) {
                                    ConnectHandler.LOG.debug("{}: server closed connection {}", this, this._endPoint);
                                    if (this._endPoint.isOutputShutdown() || !this._endPoint.isOpen()) {
                                        closeClient();
                                    } else {
                                        this._toClient.shutdownOutput();
                                    }
                                } else {
                                    if (i4 == 0) {
                                        break;
                                    }
                                    ConnectHandler.LOG.debug("{}: read from server {} bytes {}", this, Integer.valueOf(i4), this._endPoint);
                                    ConnectHandler.LOG.debug("{}: written to {} {} bytes", this, this._toClient, Integer.valueOf(ConnectHandler.this.write(this._toClient._endPoint, this._buffer, this._context)));
                                }
                            }
                            ConnectHandler.LOG.debug("{}: end reading from server", this);
                            return this;
                        } catch (ClosedChannelException e4) {
                            ConnectHandler.LOG.debug(e4);
                            throw e4;
                        }
                    } catch (RuntimeException e5) {
                        ConnectHandler.LOG.warn(this + ": unexpected exception", e5);
                        close();
                        throw e5;
                    }
                } catch (IOException e6) {
                    ConnectHandler.LOG.warn(this + ": unexpected exception", e6);
                    close();
                    throw e6;
                }
            } catch (Throwable th) {
                ConnectHandler.LOG.debug("{}: end reading from server", this);
                throw th;
            }
        }

        @Override // org.eclipse.jetty.io.Connection
        public boolean isIdle() {
            return false;
        }

        @Override // org.eclipse.jetty.io.Connection
        public boolean isSuspended() {
            return false;
        }

        @Override // org.eclipse.jetty.io.Connection
        public void onClose() {
        }

        @Override // org.eclipse.jetty.io.Connection
        public void onIdleExpired(long j4) {
            try {
                ConnectHandler.LOG.debug("{} idle expired", this);
                if (this._endPoint.isOutputShutdown()) {
                    close();
                } else {
                    shutdownOutput();
                }
            } catch (Exception e4) {
                ConnectHandler.LOG.debug(e4);
                close();
            }
        }

        @Override // org.eclipse.jetty.io.nio.AsyncConnection
        public void onInputShutdown() {
        }

        public void ready() {
            this._ready.countDown();
        }

        public void setConnection(ClientToProxyConnection clientToProxyConnection) {
            this._toClient = clientToProxyConnection;
        }

        public void setEndPoint(AsyncEndPoint asyncEndPoint) {
            this._endPoint = asyncEndPoint;
        }

        public void setTimeStamp(long j4) {
            this._timestamp = j4;
        }

        public void shutdownOutput() {
            writeData();
            this._endPoint.shutdownOutput();
        }

        public String toString() {
            return "ProxyToServer(:" + this._endPoint.getLocalPort() + "<=>:" + this._endPoint.getRemotePort() + ")";
        }

        public void waitReady(long j4) throws IOException {
            try {
                this._ready.await(j4, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e4) {
                throw new IOException(e4) { // from class: org.eclipse.jetty.server.handler.ConnectHandler.ProxyToServerConnection.1
                    public final /* synthetic */ InterruptedException val$x;

                    {
                        this.val$x = e4;
                        initCause(e4);
                    }
                };
            }
        }
    }

    public ConnectHandler() {
        this(null);
    }

    private void add(String str, HostMap<String> hostMap) {
        if (str == null || str.length() <= 0) {
            return;
        }
        String strTrim = str.trim();
        if (hostMap.get(strTrim) == null) {
            hostMap.put(strTrim, strTrim);
        }
    }

    private SocketChannel connectToServer(c cVar, String str, int i4) throws IOException {
        SocketChannel socketChannelConnect = connect(cVar, str, i4);
        socketChannelConnect.configureBlocking(false);
        return socketChannelConnect;
    }

    private ClientToProxyConnection prepareConnections(ConcurrentMap<String, Object> concurrentMap, SocketChannel socketChannel, Buffer buffer) {
        AbstractHttpConnection currentConnection = AbstractHttpConnection.getCurrentConnection();
        ProxyToServerConnection proxyToServerConnectionNewProxyToServerConnection = newProxyToServerConnection(concurrentMap, buffer);
        ClientToProxyConnection clientToProxyConnectionNewClientToProxyConnection = newClientToProxyConnection(concurrentMap, socketChannel, currentConnection.getEndPoint(), currentConnection.getTimeStamp());
        clientToProxyConnectionNewClientToProxyConnection.setConnection(proxyToServerConnectionNewProxyToServerConnection);
        proxyToServerConnectionNewProxyToServerConnection.setConnection(clientToProxyConnectionNewClientToProxyConnection);
        return clientToProxyConnectionNewClientToProxyConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void register(SocketChannel socketChannel, ProxyToServerConnection proxyToServerConnection) throws IOException {
        this._selectorManager.register(socketChannel, proxyToServerConnection);
        proxyToServerConnection.waitReady(this._connectTimeout);
    }

    private void upgradeConnection(c cVar, e eVar, Connection connection) {
        cVar.setAttribute("org.eclipse.jetty.io.Connection", connection);
        eVar.setStatus(101);
        LOG.debug("Upgraded connection to {}", connection);
    }

    public void addBlack(String str) {
        add(str, this._black);
    }

    public void addWhite(String str) {
        add(str, this._white);
    }

    public SocketChannel connect(c cVar, String str, int i4) throws IOException {
        SocketChannel socketChannelOpen = SocketChannel.open();
        if (socketChannelOpen == null) {
            throw new IOException("unable to connect to " + str + ":" + i4);
        }
        try {
            Logger logger = LOG;
            logger.debug("Establishing connection to {}:{}", str, Integer.valueOf(i4));
            socketChannelOpen.socket().setTcpNoDelay(true);
            socketChannelOpen.socket().connect(new InetSocketAddress(str, i4), getConnectTimeout());
            logger.debug("Established connection to {}:{}", str, Integer.valueOf(i4));
            return socketChannelOpen;
        } catch (IOException e4) {
            LOG.debug("Failed to establish connection to " + str + ":" + i4, e4);
            try {
                socketChannelOpen.close();
            } catch (IOException e5) {
                LOG.ignore(e5);
            }
            throw e4;
        }
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        super.doStart();
        if (this._threadPool == null) {
            this._threadPool = getServer().getThreadPool();
            this._privateThreadPool = false;
        }
        if ((this._threadPool instanceof LifeCycle) && !((LifeCycle) this._threadPool).isRunning()) {
            ((LifeCycle) this._threadPool).start();
        }
        this._selectorManager.start();
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() {
        this._selectorManager.stop();
        ThreadPool threadPool = this._threadPool;
        if (this._privateThreadPool && this._threadPool != null && (threadPool instanceof LifeCycle)) {
            ((LifeCycle) threadPool).stop();
        }
        super.doStop();
    }

    @Override // org.eclipse.jetty.server.handler.AbstractHandlerContainer, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) {
        dumpThis(appendable);
        if (this._privateThreadPool) {
            AggregateLifeCycle.dump(appendable, str, Arrays.asList(this._threadPool, this._selectorManager), TypeUtil.asList(getHandlers()), getBeans());
        } else {
            AggregateLifeCycle.dump(appendable, str, Arrays.asList(this._selectorManager), TypeUtil.asList(getHandlers()), getBeans());
        }
    }

    public int getConnectTimeout() {
        return this._connectTimeout;
    }

    public ThreadPool getThreadPool() {
        return this._threadPool;
    }

    public int getWriteTimeout() {
        return this._writeTimeout;
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) {
        if (!HttpMethods.CONNECT.equalsIgnoreCase(cVar.getMethod())) {
            super.handle(str, request, cVar, eVar);
            return;
        }
        LOG.debug("CONNECT request for {}", cVar.getRequestURI());
        try {
            handleConnect(request, cVar, eVar, cVar.getRequestURI());
        } catch (Exception e4) {
            Logger logger = LOG;
            StringBuilder sbA = f.a("ConnectHandler ");
            sbA.append(request.getUri());
            sbA.append(" ");
            sbA.append(e4);
            logger.warn(sbA.toString(), new Object[0]);
            logger.debug(e4);
        }
    }

    public boolean handleAuthentication(c cVar, e eVar, String str) {
        return true;
    }

    public void handleConnect(Request request, c cVar, e eVar, String str) throws IOException {
        if (handleAuthentication(cVar, eVar, str)) {
            int i4 = 80;
            int iIndexOf = str.indexOf(58);
            if (iIndexOf > 0) {
                String strSubstring = str.substring(0, iIndexOf);
                i4 = Integer.parseInt(str.substring(iIndexOf + 1));
                str = strSubstring;
            }
            if (!validateDestination(str)) {
                LOG.info(a.a("ProxyHandler: Forbidden destination ", str), new Object[0]);
                eVar.setStatus(HttpStatus.FORBIDDEN_403);
                request.setHandled(true);
                return;
            }
            try {
                SocketChannel socketChannelConnectToServer = connectToServer(cVar, str, i4);
                AbstractHttpConnection currentConnection = AbstractHttpConnection.getCurrentConnection();
                Buffer headerBuffer = ((HttpParser) currentConnection.getParser()).getHeaderBuffer();
                Buffer bodyBuffer = ((HttpParser) currentConnection.getParser()).getBodyBuffer();
                int length = (headerBuffer == null ? 0 : headerBuffer.length()) + (bodyBuffer != null ? bodyBuffer.length() : 0);
                IndirectNIOBuffer indirectNIOBuffer = null;
                if (length > 0) {
                    indirectNIOBuffer = new IndirectNIOBuffer(length);
                    if (headerBuffer != null) {
                        indirectNIOBuffer.put(headerBuffer);
                        headerBuffer.clear();
                    }
                    if (bodyBuffer != null) {
                        indirectNIOBuffer.put(bodyBuffer);
                        bodyBuffer.clear();
                    }
                }
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
                prepareContext(cVar, concurrentHashMap);
                ClientToProxyConnection clientToProxyConnectionPrepareConnections = prepareConnections(concurrentHashMap, socketChannelConnectToServer, indirectNIOBuffer);
                eVar.setStatus(200);
                request.getConnection().getGenerator().setPersistent(true);
                eVar.getOutputStream().close();
                upgradeConnection(cVar, eVar, clientToProxyConnectionPrepareConnections);
            } catch (SocketException e4) {
                Logger logger = LOG;
                StringBuilder sbA = f.a("ConnectHandler: SocketException ");
                sbA.append(e4.getMessage());
                logger.info(sbA.toString(), new Object[0]);
                eVar.setStatus(HttpStatus.INTERNAL_SERVER_ERROR_500);
                request.setHandled(true);
            } catch (SocketTimeoutException e5) {
                Logger logger2 = LOG;
                StringBuilder sbA2 = f.a("ConnectHandler: SocketTimeoutException");
                sbA2.append(e5.getMessage());
                logger2.info(sbA2.toString(), new Object[0]);
                eVar.setStatus(HttpStatus.GATEWAY_TIMEOUT_504);
                request.setHandled(true);
            } catch (IOException e6) {
                Logger logger3 = LOG;
                StringBuilder sbA3 = f.a("ConnectHandler: IOException");
                sbA3.append(e6.getMessage());
                logger3.info(sbA3.toString(), new Object[0]);
                eVar.setStatus(HttpStatus.INTERNAL_SERVER_ERROR_500);
                request.setHandled(true);
            }
        }
    }

    public ClientToProxyConnection newClientToProxyConnection(ConcurrentMap<String, Object> concurrentMap, SocketChannel socketChannel, EndPoint endPoint, long j4) {
        return new ClientToProxyConnection(concurrentMap, socketChannel, endPoint, j4);
    }

    public ProxyToServerConnection newProxyToServerConnection(ConcurrentMap<String, Object> concurrentMap, Buffer buffer) {
        return new ProxyToServerConnection(concurrentMap, buffer);
    }

    public void prepareContext(c cVar, ConcurrentMap<String, Object> concurrentMap) {
    }

    public int read(EndPoint endPoint, Buffer buffer, ConcurrentMap<String, Object> concurrentMap) {
        return endPoint.fill(buffer);
    }

    public void set(String[] strArr, HostMap<String> hostMap) {
        hostMap.clear();
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        for (String str : strArr) {
            add(str, hostMap);
        }
    }

    public void setBlack(String[] strArr) {
        set(strArr, this._black);
    }

    public void setConnectTimeout(int i4) {
        this._connectTimeout = i4;
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.server.Handler
    public void setServer(Server server) {
        super.setServer(server);
        server.getContainer().update(this, (Object) null, this._selectorManager, "selectManager");
        if (this._privateThreadPool) {
            server.getContainer().update((Object) this, (Object) null, (Object) Boolean.valueOf(this._privateThreadPool), "threadpool", true);
        } else {
            this._threadPool = server.getThreadPool();
        }
    }

    public void setThreadPool(ThreadPool threadPool) {
        if (getServer() != null) {
            getServer().getContainer().update((Object) this, (Object) (this._privateThreadPool ? this._threadPool : null), (Object) threadPool, "threadpool", true);
        }
        this._privateThreadPool = threadPool != null;
        this._threadPool = threadPool;
    }

    public void setWhite(String[] strArr) {
        set(strArr, this._white);
    }

    public void setWriteTimeout(int i4) {
        this._writeTimeout = i4;
    }

    public boolean validateDestination(String str) {
        if (this._white.size() <= 0 || this._white.getLazyMatches(str) != null) {
            return this._black.size() <= 0 || this._black.getLazyMatches(str) == null;
        }
        return false;
    }

    public int write(EndPoint endPoint, Buffer buffer, ConcurrentMap<String, Object> concurrentMap) throws IOException {
        if (buffer == null) {
            return 0;
        }
        int length = buffer.length();
        StringBuilder sb = LOG.isDebugEnabled() ? new StringBuilder() : null;
        int iFlush = endPoint.flush(buffer);
        if (sb != null) {
            sb.append(iFlush);
        }
        while (buffer.length() > 0 && !endPoint.isOutputShutdown()) {
            if (!endPoint.isBlocking() && !endPoint.blockWritable(getWriteTimeout())) {
                throw new IOException("Write timeout");
            }
            int iFlush2 = endPoint.flush(buffer);
            if (sb != null) {
                sb.append("+");
                sb.append(iFlush2);
            }
        }
        LOG.debug("Written {}/{} bytes {}", sb, Integer.valueOf(length), endPoint);
        buffer.compact();
        return length;
    }

    public ConnectHandler(String[] strArr, String[] strArr2) {
        this(null, strArr, strArr2);
    }

    public ConnectHandler(Handler handler) {
        this._selectorManager = new Manager();
        this._connectTimeout = 5000;
        this._writeTimeout = 30000;
        this._white = new HostMap<>();
        this._black = new HostMap<>();
        setHandler(handler);
    }

    public ConnectHandler(Handler handler, String[] strArr, String[] strArr2) {
        this._selectorManager = new Manager();
        this._connectTimeout = 5000;
        this._writeTimeout = 30000;
        this._white = new HostMap<>();
        this._black = new HostMap<>();
        setHandler(handler);
        set(strArr, this._white);
        set(strArr2, this._black);
    }
}
