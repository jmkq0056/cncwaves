package org.eclipse.jetty.client;

import android.support.v4.media.f;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.nio.channels.UnresolvedAddressException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.SSLEngine;
import org.eclipse.jetty.client.HttpClient;
import org.eclipse.jetty.io.AsyncEndPoint;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ConnectedEndPoint;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.nio.AsyncConnection;
import org.eclipse.jetty.io.nio.SelectChannelEndPoint;
import org.eclipse.jetty.io.nio.SelectorManager;
import org.eclipse.jetty.io.nio.SslConnection;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.ssl.SslContextFactory;
import org.eclipse.jetty.util.thread.Timeout;

/* JADX INFO: loaded from: classes2.dex */
class SelectConnector extends AggregateLifeCycle implements HttpClient.Connector {
    private static final Logger LOG = Log.getLogger((Class<?>) SelectConnector.class);
    private final Map<SocketChannel, Timeout.Task> _connectingChannels;
    private final HttpClient _httpClient;
    private final Manager _selectorManager;

    public class ConnectTimeout extends Timeout.Task {
        private final SocketChannel channel;
        private final HttpDestination destination;

        public ConnectTimeout(SocketChannel socketChannel, HttpDestination httpDestination) {
            this.channel = socketChannel;
            this.destination = httpDestination;
        }

        private void close() {
            try {
                this.channel.close();
            } catch (IOException e4) {
                SelectConnector.LOG.ignore(e4);
            }
        }

        @Override // org.eclipse.jetty.util.thread.Timeout.Task
        public void expired() {
            if (this.channel.isConnectionPending()) {
                SelectConnector.LOG.debug("Channel {} timed out while connecting, closing it", this.channel);
                close();
                SelectConnector.this._connectingChannels.remove(this.channel);
                this.destination.onConnectionFailed(new SocketTimeoutException());
            }
        }
    }

    public class Manager extends SelectorManager {
        public Logger LOG = SelectConnector.LOG;

        public Manager() {
        }

        private synchronized SSLEngine newSslEngine(SslContextFactory sslContextFactory, SocketChannel socketChannel) {
            SSLEngine sSLEngineNewSslEngine;
            sSLEngineNewSslEngine = socketChannel != null ? sslContextFactory.newSslEngine(socketChannel.socket().getInetAddress().getHostAddress(), socketChannel.socket().getPort()) : sslContextFactory.newSslEngine();
            sSLEngineNewSslEngine.setUseClientMode(true);
            sSLEngineNewSslEngine.beginHandshake();
            return sSLEngineNewSslEngine;
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void connectionFailed(SocketChannel socketChannel, Throwable th, Object obj) {
            Timeout.Task task = (Timeout.Task) SelectConnector.this._connectingChannels.remove(socketChannel);
            if (task != null) {
                task.cancel();
            }
            if (obj instanceof HttpDestination) {
                ((HttpDestination) obj).onConnectionFailed(th);
            } else {
                super.connectionFailed(socketChannel, th, obj);
            }
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public boolean dispatch(Runnable runnable) {
            return SelectConnector.this._httpClient._threadPool.dispatch(runnable);
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void endPointClosed(SelectChannelEndPoint selectChannelEndPoint) {
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void endPointOpened(SelectChannelEndPoint selectChannelEndPoint) {
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public void endPointUpgraded(ConnectedEndPoint connectedEndPoint, Connection connection) {
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public AsyncConnection newConnection(SocketChannel socketChannel, AsyncEndPoint asyncEndPoint, Object obj) {
            return new AsyncHttpConnection(SelectConnector.this._httpClient.getRequestBuffers(), SelectConnector.this._httpClient.getResponseBuffers(), asyncEndPoint);
        }

        @Override // org.eclipse.jetty.io.nio.SelectorManager
        public SelectChannelEndPoint newEndPoint(SocketChannel socketChannel, SelectorManager.SelectSet selectSet, SelectionKey selectionKey) {
            AsyncEndPoint upgradableEndPoint;
            Timeout.Task task = (Timeout.Task) SelectConnector.this._connectingChannels.remove(socketChannel);
            if (task != null) {
                task.cancel();
            }
            if (this.LOG.isDebugEnabled()) {
                this.LOG.debug("Channels with connection pending: {}", Integer.valueOf(SelectConnector.this._connectingChannels.size()));
            }
            HttpDestination httpDestination = (HttpDestination) selectionKey.attachment();
            SelectChannelEndPoint selectChannelEndPoint = new SelectChannelEndPoint(socketChannel, selectSet, selectionKey, (int) SelectConnector.this._httpClient.getIdleTimeout());
            if (httpDestination.isSecure()) {
                this.LOG.debug("secure to {}, proxied={}", socketChannel, Boolean.valueOf(httpDestination.isProxied()));
                upgradableEndPoint = new UpgradableEndPoint(selectChannelEndPoint, newSslEngine(httpDestination.getSslContextFactory(), socketChannel));
            } else {
                upgradableEndPoint = selectChannelEndPoint;
            }
            Connection connectionNewConnection = selectSet.getManager().newConnection(socketChannel, upgradableEndPoint, selectionKey.attachment());
            upgradableEndPoint.setConnection(connectionNewConnection);
            AbstractHttpConnection abstractHttpConnection = (AbstractHttpConnection) connectionNewConnection;
            abstractHttpConnection.setDestination(httpDestination);
            if (httpDestination.isSecure() && !httpDestination.isProxied()) {
                ((UpgradableEndPoint) upgradableEndPoint).upgrade();
            }
            httpDestination.onNewConnection(abstractHttpConnection);
            return selectChannelEndPoint;
        }
    }

    public static class UpgradableEndPoint implements AsyncEndPoint {
        public AsyncEndPoint _endp;
        public SSLEngine _engine;

        public UpgradableEndPoint(AsyncEndPoint asyncEndPoint, SSLEngine sSLEngine) {
            this._engine = sSLEngine;
            this._endp = asyncEndPoint;
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void asyncDispatch() {
            this._endp.asyncDispatch();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean blockReadable(long j4) {
            return this._endp.blockReadable(j4);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean blockWritable(long j4) {
            return this._endp.blockWritable(j4);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void cancelTimeout(Timeout.Task task) {
            this._endp.cancelTimeout(task);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void close() {
            this._endp.close();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void dispatch() {
            this._endp.asyncDispatch();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int fill(Buffer buffer) {
            return this._endp.fill(buffer);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int flush(Buffer buffer) {
            return this._endp.flush(buffer);
        }

        @Override // org.eclipse.jetty.io.ConnectedEndPoint
        public Connection getConnection() {
            return this._endp.getConnection();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getLocalAddr() {
            return this._endp.getLocalAddr();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getLocalHost() {
            return this._endp.getLocalHost();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int getLocalPort() {
            return this._endp.getLocalPort();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int getMaxIdleTime() {
            return this._endp.getMaxIdleTime();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getRemoteAddr() {
            return this._endp.getRemoteAddr();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public String getRemoteHost() {
            return this._endp.getRemoteHost();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int getRemotePort() {
            return this._endp.getRemotePort();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public Object getTransport() {
            return this._endp.getTransport();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public boolean hasProgressed() {
            return this._endp.hasProgressed();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isBlocking() {
            return this._endp.isBlocking();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public boolean isCheckForIdle() {
            return this._endp.isCheckForIdle();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isInputShutdown() {
            return this._endp.isInputShutdown();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isOpen() {
            return this._endp.isOpen();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public boolean isOutputShutdown() {
            return this._endp.isOutputShutdown();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public boolean isWritable() {
            return this._endp.isWritable();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void onIdleExpired(long j4) {
            this._endp.onIdleExpired(j4);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void scheduleTimeout(Timeout.Task task, long j4) {
            this._endp.scheduleTimeout(task, j4);
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void scheduleWrite() {
            this._endp.scheduleWrite();
        }

        @Override // org.eclipse.jetty.io.AsyncEndPoint
        public void setCheckForIdle(boolean z3) {
            this._endp.setCheckForIdle(z3);
        }

        @Override // org.eclipse.jetty.io.ConnectedEndPoint
        public void setConnection(Connection connection) {
            this._endp.setConnection(connection);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void setMaxIdleTime(int i4) {
            this._endp.setMaxIdleTime(i4);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void shutdownInput() {
            this._endp.shutdownInput();
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void shutdownOutput() {
            this._endp.shutdownOutput();
        }

        public String toString() {
            StringBuilder sbA = f.a("Upgradable:");
            sbA.append(this._endp.toString());
            return sbA.toString();
        }

        public void upgrade() {
            AsyncHttpConnection asyncHttpConnection = (AsyncHttpConnection) this._endp.getConnection();
            SslConnection sslConnection = new SslConnection(this._engine, this._endp);
            this._endp.setConnection(sslConnection);
            this._endp = sslConnection.getSslEndPoint();
            sslConnection.getSslEndPoint().setConnection(asyncHttpConnection);
            SelectConnector.LOG.debug("upgrade {} to {} for {}", this, sslConnection, asyncHttpConnection);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public int flush(Buffer buffer, Buffer buffer2, Buffer buffer3) {
            return this._endp.flush(buffer, buffer2, buffer3);
        }

        @Override // org.eclipse.jetty.io.EndPoint
        public void flush() {
            this._endp.flush();
        }
    }

    public SelectConnector(HttpClient httpClient) {
        Manager manager = new Manager();
        this._selectorManager = manager;
        this._connectingChannels = new ConcurrentHashMap();
        this._httpClient = httpClient;
        addBean(httpClient, false);
        addBean(manager, true);
    }

    @Override // org.eclipse.jetty.client.HttpClient.Connector
    public void startConnection(HttpDestination httpDestination) {
        SocketChannel socketChannel = null;
        try {
            SocketChannel socketChannelOpen = SocketChannel.open();
            Address proxy = httpDestination.isProxied() ? httpDestination.getProxy() : httpDestination.getAddress();
            socketChannelOpen.socket().setTcpNoDelay(true);
            if (this._httpClient.isConnectBlocking()) {
                socketChannelOpen.socket().connect(proxy.toSocketAddress(), this._httpClient.getConnectTimeout());
                socketChannelOpen.configureBlocking(false);
                this._selectorManager.register(socketChannelOpen, httpDestination);
                return;
            }
            socketChannelOpen.configureBlocking(false);
            socketChannelOpen.connect(proxy.toSocketAddress());
            this._selectorManager.register(socketChannelOpen, httpDestination);
            ConnectTimeout connectTimeout = new ConnectTimeout(socketChannelOpen, httpDestination);
            this._httpClient.schedule(connectTimeout, r2.getConnectTimeout());
            this._connectingChannels.put(socketChannelOpen, connectTimeout);
        } catch (IOException e4) {
            if (0 != 0) {
                socketChannel.close();
            }
            httpDestination.onConnectionFailed(e4);
        } catch (UnresolvedAddressException e5) {
            if (0 != 0) {
                socketChannel.close();
            }
            httpDestination.onConnectionFailed(e5);
        }
    }
}
