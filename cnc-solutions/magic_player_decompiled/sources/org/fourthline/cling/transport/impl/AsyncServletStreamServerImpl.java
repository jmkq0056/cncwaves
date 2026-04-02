package org.fourthline.cling.transport.impl;

import g2.a;
import g2.n;
import j2.b;
import j2.c;
import j2.e;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.message.Connection;
import org.fourthline.cling.transport.Router;
import org.fourthline.cling.transport.spi.InitializationException;
import org.fourthline.cling.transport.spi.StreamServer;

/* JADX INFO: loaded from: classes2.dex */
public class AsyncServletStreamServerImpl implements StreamServer<AsyncServletStreamServerConfigurationImpl> {
    private static final Logger log = Logger.getLogger(StreamServer.class.getName());
    public final AsyncServletStreamServerConfigurationImpl configuration;
    public String hostAddress;
    public int localPort;
    private int mCounter = 0;

    public class AsyncServletConnection implements Connection {
        public c request;

        public AsyncServletConnection(c cVar) {
            this.request = cVar;
        }

        @Override // org.fourthline.cling.model.message.Connection
        public InetAddress getLocalAddress() {
            try {
                return InetAddress.getByName(getRequest().getLocalAddr());
            } catch (UnknownHostException e4) {
                throw new RuntimeException(e4);
            }
        }

        @Override // org.fourthline.cling.model.message.Connection
        public InetAddress getRemoteAddress() {
            try {
                return InetAddress.getByName(getRequest().getRemoteAddr());
            } catch (UnknownHostException e4) {
                throw new RuntimeException(e4);
            }
        }

        public c getRequest() {
            return this.request;
        }

        @Override // org.fourthline.cling.model.message.Connection
        public boolean isOpen() {
            return AsyncServletStreamServerImpl.this.isConnectionOpen(getRequest());
        }
    }

    public AsyncServletStreamServerImpl(AsyncServletStreamServerConfigurationImpl asyncServletStreamServerConfigurationImpl) {
        this.configuration = asyncServletStreamServerConfigurationImpl;
    }

    public static /* synthetic */ int access$008(AsyncServletStreamServerImpl asyncServletStreamServerImpl) {
        int i4 = asyncServletStreamServerImpl.mCounter;
        asyncServletStreamServerImpl.mCounter = i4 + 1;
        return i4;
    }

    public n createServlet(final Router router) {
        return new b() { // from class: org.fourthline.cling.transport.impl.AsyncServletStreamServerImpl.1
            @Override // j2.b
            public void service(c cVar, e eVar) {
                final long jCurrentTimeMillis = System.currentTimeMillis();
                final int iAccess$008 = AsyncServletStreamServerImpl.access$008(AsyncServletStreamServerImpl.this);
                if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                    AsyncServletStreamServerImpl.log.fine(String.format("HttpServlet.service(): id: %3d, request URI: %s", Integer.valueOf(iAccess$008), cVar.getRequestURI()));
                }
                a aVarStartAsync = cVar.startAsync();
                aVarStartAsync.setTimeout(AsyncServletStreamServerImpl.this.getConfiguration().getAsyncTimeoutSeconds() * 1000);
                aVarStartAsync.addListener(new g2.c() { // from class: org.fourthline.cling.transport.impl.AsyncServletStreamServerImpl.1.1
                    @Override // g2.c
                    public void onComplete(g2.b bVar) {
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onComplete(): id: %3d, duration: %,4d, response: %s", Integer.valueOf(iAccess$008), Long.valueOf(jCurrentTimeMillis2), bVar.getSuppliedResponse()));
                        }
                    }

                    @Override // g2.c
                    public void onError(g2.b bVar) {
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onError(): id: %3d, duration: %,4d, response: %s", Integer.valueOf(iAccess$008), Long.valueOf(jCurrentTimeMillis2), bVar.getSuppliedResponse()));
                        }
                    }

                    @Override // g2.c
                    public void onStartAsync(g2.b bVar) {
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onStartAsync(): id: %3d, request: %s", Integer.valueOf(iAccess$008), bVar.getSuppliedRequest()));
                        }
                    }

                    @Override // g2.c
                    public void onTimeout(g2.b bVar) {
                        long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
                        if (AsyncServletStreamServerImpl.log.isLoggable(Level.FINE)) {
                            AsyncServletStreamServerImpl.log.fine(String.format("AsyncListener.onTimeout(): id: %3d, duration: %,4d, request: %s", Integer.valueOf(iAccess$008), Long.valueOf(jCurrentTimeMillis2), bVar.getSuppliedRequest()));
                        }
                    }
                });
                router.received(new AsyncServletUpnpStream(router.getProtocolFactory(), aVarStartAsync, cVar) { // from class: org.fourthline.cling.transport.impl.AsyncServletStreamServerImpl.1.2
                    @Override // org.fourthline.cling.transport.impl.AsyncServletUpnpStream
                    public Connection createConnection() {
                        return AsyncServletStreamServerImpl.this.new AsyncServletConnection(getRequest());
                    }
                });
            }
        };
    }

    @Override // org.fourthline.cling.transport.spi.StreamServer
    public synchronized int getPort() {
        return this.localPort;
    }

    @Override // org.fourthline.cling.transport.spi.StreamServer
    public synchronized void init(InetAddress inetAddress, Router router) {
        try {
            Logger logger = log;
            Level level = Level.FINE;
            if (logger.isLoggable(level)) {
                logger.fine("Setting executor service on servlet container adapter");
            }
            getConfiguration().getServletContainerAdapter().setExecutorService(router.getConfiguration().getStreamServerExecutorService());
            if (logger.isLoggable(level)) {
                logger.fine("Adding connector: " + inetAddress + ":" + getConfiguration().getListenPort());
            }
            this.hostAddress = inetAddress.getHostAddress();
            this.localPort = getConfiguration().getServletContainerAdapter().addConnector(this.hostAddress, getConfiguration().getListenPort());
            getConfiguration().getServletContainerAdapter().registerServlet(router.getConfiguration().getNamespace().getBasePath().getPath(), createServlet(router));
        } catch (Exception e4) {
            throw new InitializationException("Could not initialize " + getClass().getSimpleName() + ": " + e4.toString(), e4);
        }
    }

    public boolean isConnectionOpen(c cVar) {
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        getConfiguration().getServletContainerAdapter().startIfNotRunning();
    }

    @Override // org.fourthline.cling.transport.spi.StreamServer
    public synchronized void stop() {
        getConfiguration().getServletContainerAdapter().removeConnector(this.hostAddress, this.localPort);
    }

    @Override // org.fourthline.cling.transport.spi.StreamServer
    public AsyncServletStreamServerConfigurationImpl getConfiguration() {
        return this.configuration;
    }
}
