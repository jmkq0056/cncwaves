package org.eclipse.jetty.server.bio;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.eclipse.jetty.http.HttpException;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.ConnectedEndPoint;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.EofException;
import org.eclipse.jetty.io.bio.SocketEndPoint;
import org.eclipse.jetty.server.AbstractConnector;
import org.eclipse.jetty.server.AbstractHttpConnection;
import org.eclipse.jetty.server.BlockingHttpConnection;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.util.component.AggregateLifeCycle;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class SocketConnector extends AbstractConnector {
    private static final Logger LOG = Log.getLogger((Class<?>) SocketConnector.class);
    public ServerSocket _serverSocket;
    public volatile int _localPort = -1;
    public final Set<EndPoint> _connections = new HashSet();

    public class ConnectorEndPoint extends SocketEndPoint implements Runnable, ConnectedEndPoint {
        public volatile Connection _connection;
        public final Socket _socket;

        public ConnectorEndPoint(Socket socket) {
            super(socket, SocketConnector.this._maxIdleTime);
            this._connection = SocketConnector.this.newConnection(this);
            this._socket = socket;
        }

        @Override // org.eclipse.jetty.io.bio.SocketEndPoint, org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
        public void close() throws IOException {
            if (this._connection instanceof AbstractHttpConnection) {
                ((AbstractHttpConnection) this._connection).getRequest().getAsyncContinuation().cancel();
            }
            super.close();
        }

        public void dispatch() throws IOException {
            if (SocketConnector.this.getThreadPool() == null || !SocketConnector.this.getThreadPool().dispatch(this)) {
                SocketConnector.LOG.warn("dispatch failed for {}", this._connection);
                close();
            }
        }

        @Override // org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
        public int fill(Buffer buffer) throws IOException {
            int iFill = super.fill(buffer);
            if (iFill < 0) {
                if (!isInputShutdown()) {
                    shutdownInput();
                }
                if (isOutputShutdown()) {
                    close();
                }
            }
            return iFill;
        }

        @Override // org.eclipse.jetty.io.ConnectedEndPoint
        public Connection getConnection() {
            return this._connection;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    try {
                        try {
                            SocketConnector.this.connectionOpened(this._connection);
                            synchronized (SocketConnector.this._connections) {
                                SocketConnector.this._connections.add(this);
                            }
                            while (SocketConnector.this.isStarted() && !isClosed()) {
                                if (this._connection.isIdle() && SocketConnector.this.isLowResources()) {
                                    setMaxIdleTime(SocketConnector.this.getLowResourcesMaxIdleTime());
                                }
                                this._connection = this._connection.handle();
                            }
                            SocketConnector.this.connectionClosed(this._connection);
                            synchronized (SocketConnector.this._connections) {
                                SocketConnector.this._connections.remove(this);
                            }
                            if (this._socket.isClosed()) {
                                return;
                            }
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            int maxIdleTime = getMaxIdleTime();
                            this._socket.setSoTimeout(getMaxIdleTime());
                            while (this._socket.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis < maxIdleTime) {
                            }
                            if (this._socket.isClosed()) {
                                return;
                            }
                            this._socket.close();
                        } catch (IOException e4) {
                            SocketConnector.LOG.ignore(e4);
                        }
                    } catch (SocketException e5) {
                        SocketConnector.LOG.debug("EOF", e5);
                        try {
                            close();
                        } catch (IOException e6) {
                            SocketConnector.LOG.ignore(e6);
                        }
                        SocketConnector.this.connectionClosed(this._connection);
                        synchronized (SocketConnector.this._connections) {
                            SocketConnector.this._connections.remove(this);
                            if (this._socket.isClosed()) {
                                return;
                            }
                            long jCurrentTimeMillis2 = System.currentTimeMillis();
                            int maxIdleTime2 = getMaxIdleTime();
                            this._socket.setSoTimeout(getMaxIdleTime());
                            while (this._socket.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis2 < maxIdleTime2) {
                            }
                            if (this._socket.isClosed()) {
                                return;
                            }
                            this._socket.close();
                        }
                    } catch (HttpException e7) {
                        SocketConnector.LOG.debug("BAD", e7);
                        try {
                            close();
                        } catch (IOException e8) {
                            SocketConnector.LOG.ignore(e8);
                        }
                        SocketConnector.this.connectionClosed(this._connection);
                        synchronized (SocketConnector.this._connections) {
                            SocketConnector.this._connections.remove(this);
                            if (this._socket.isClosed()) {
                                return;
                            }
                            long jCurrentTimeMillis3 = System.currentTimeMillis();
                            int maxIdleTime3 = getMaxIdleTime();
                            this._socket.setSoTimeout(getMaxIdleTime());
                            while (this._socket.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis3 < maxIdleTime3) {
                            }
                            if (this._socket.isClosed()) {
                                return;
                            }
                            this._socket.close();
                        }
                    }
                } catch (EofException e9) {
                    SocketConnector.LOG.debug("EOF", e9);
                    try {
                        close();
                    } catch (IOException e10) {
                        SocketConnector.LOG.ignore(e10);
                    }
                    SocketConnector.this.connectionClosed(this._connection);
                    synchronized (SocketConnector.this._connections) {
                        SocketConnector.this._connections.remove(this);
                        if (this._socket.isClosed()) {
                            return;
                        }
                        long jCurrentTimeMillis4 = System.currentTimeMillis();
                        int maxIdleTime4 = getMaxIdleTime();
                        this._socket.setSoTimeout(getMaxIdleTime());
                        while (this._socket.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis4 < maxIdleTime4) {
                        }
                        if (this._socket.isClosed()) {
                            return;
                        }
                        this._socket.close();
                    }
                } catch (Exception e11) {
                    SocketConnector.LOG.warn("handle failed?", e11);
                    try {
                        close();
                    } catch (IOException e12) {
                        SocketConnector.LOG.ignore(e12);
                    }
                    SocketConnector.this.connectionClosed(this._connection);
                    synchronized (SocketConnector.this._connections) {
                        SocketConnector.this._connections.remove(this);
                        if (this._socket.isClosed()) {
                            return;
                        }
                        long jCurrentTimeMillis5 = System.currentTimeMillis();
                        int maxIdleTime5 = getMaxIdleTime();
                        this._socket.setSoTimeout(getMaxIdleTime());
                        while (this._socket.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis5 < maxIdleTime5) {
                        }
                        if (this._socket.isClosed()) {
                            return;
                        }
                        this._socket.close();
                    }
                }
            } catch (Throwable th) {
                SocketConnector.this.connectionClosed(this._connection);
                synchronized (SocketConnector.this._connections) {
                    SocketConnector.this._connections.remove(this);
                    try {
                        if (!this._socket.isClosed()) {
                            long jCurrentTimeMillis6 = System.currentTimeMillis();
                            int maxIdleTime6 = getMaxIdleTime();
                            this._socket.setSoTimeout(getMaxIdleTime());
                            while (this._socket.getInputStream().read() >= 0 && System.currentTimeMillis() - jCurrentTimeMillis6 < maxIdleTime6) {
                            }
                            if (!this._socket.isClosed()) {
                                this._socket.close();
                            }
                        }
                    } catch (IOException e13) {
                        SocketConnector.LOG.ignore(e13);
                    }
                    throw th;
                }
            }
        }

        @Override // org.eclipse.jetty.io.ConnectedEndPoint
        public void setConnection(Connection connection) {
            if (this._connection != connection && this._connection != null) {
                SocketConnector.this.connectionUpgraded(this._connection, connection);
            }
            this._connection = connection;
        }
    }

    @Override // org.eclipse.jetty.server.AbstractConnector
    public void accept(int i4) throws IOException {
        Socket socketAccept = this._serverSocket.accept();
        configure(socketAccept);
        new ConnectorEndPoint(socketAccept).dispatch();
    }

    @Override // org.eclipse.jetty.server.Connector
    public void close() throws IOException {
        ServerSocket serverSocket = this._serverSocket;
        if (serverSocket != null) {
            serverSocket.close();
        }
        this._serverSocket = null;
        this._localPort = -2;
    }

    @Override // org.eclipse.jetty.server.AbstractConnector, org.eclipse.jetty.server.Connector
    public void customize(EndPoint endPoint, Request request) throws SocketException {
        ((ConnectorEndPoint) endPoint).setMaxIdleTime(isLowResources() ? this._lowResourceMaxIdleTime : this._maxIdleTime);
        super.customize(endPoint, request);
    }

    @Override // org.eclipse.jetty.server.AbstractConnector, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        this._connections.clear();
        super.doStart();
    }

    @Override // org.eclipse.jetty.server.AbstractConnector, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() throws IOException {
        super.doStop();
        HashSet hashSet = new HashSet();
        synchronized (this._connections) {
            hashSet.addAll(this._connections);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((ConnectorEndPoint) ((EndPoint) it.next())).close();
        }
    }

    @Override // org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.Dumpable
    public void dump(Appendable appendable, String str) throws IOException {
        super.dump(appendable, str);
        HashSet hashSet = new HashSet();
        synchronized (this._connections) {
            hashSet.addAll(this._connections);
        }
        AggregateLifeCycle.dump(appendable, str, hashSet);
    }

    @Override // org.eclipse.jetty.server.Connector
    public Object getConnection() {
        return this._serverSocket;
    }

    @Override // org.eclipse.jetty.server.Connector
    public int getLocalPort() {
        return this._localPort;
    }

    public Connection newConnection(EndPoint endPoint) {
        return new BlockingHttpConnection(this, endPoint, getServer());
    }

    public ServerSocket newServerSocket(String str, int i4, int i5) {
        return str == null ? new ServerSocket(i4, i5) : new ServerSocket(i4, i5, InetAddress.getByName(str));
    }

    @Override // org.eclipse.jetty.server.Connector
    public void open() throws SocketException {
        ServerSocket serverSocket = this._serverSocket;
        if (serverSocket == null || serverSocket.isClosed()) {
            this._serverSocket = newServerSocket(getHost(), getPort(), getAcceptQueueSize());
        }
        this._serverSocket.setReuseAddress(getReuseAddress());
        this._localPort = this._serverSocket.getLocalPort();
        if (this._localPort > 0) {
            return;
        }
        throw new IllegalStateException("port not allocated for " + this);
    }
}
