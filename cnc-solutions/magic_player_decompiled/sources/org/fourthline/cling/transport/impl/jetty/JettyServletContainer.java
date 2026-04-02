package org.fourthline.cling.transport.impl.jetty;

import android.support.v4.media.f;
import g2.n;
import j2.c;
import java.io.IOException;
import java.net.Socket;
import java.util.concurrent.ExecutorService;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.bio.SocketConnector;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;
import org.eclipse.jetty.util.thread.ExecutorThreadPool;
import org.fourthline.cling.transport.spi.ServletContainerAdapter;

/* JADX INFO: loaded from: classes2.dex */
public class JettyServletContainer implements ServletContainerAdapter {
    public Server server;
    private static final Logger log = Logger.getLogger(JettyServletContainer.class.getName());
    public static final JettyServletContainer INSTANCE = new JettyServletContainer();

    private JettyServletContainer() {
        resetServer();
    }

    public static boolean isConnectionOpen(c cVar) {
        return isConnectionOpen(cVar, " ".getBytes());
    }

    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    public synchronized int addConnector(String str, int i4) {
        SocketConnector socketConnector;
        socketConnector = new SocketConnector();
        socketConnector.setHost(str);
        socketConnector.setPort(i4);
        socketConnector.open();
        this.server.addConnector(socketConnector);
        if (this.server.isStarted()) {
            try {
                socketConnector.start();
            } catch (Exception e4) {
                log.severe("Couldn't start connector: " + socketConnector + " " + e4);
                throw new RuntimeException(e4);
            }
        }
        return socketConnector.getLocalPort();
    }

    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    public synchronized void registerServlet(String str, n nVar) {
        if (this.server.getHandler() != null) {
            return;
        }
        log.info("Registering UPnP servlet under context path: " + str);
        ServletContextHandler servletContextHandler = new ServletContextHandler(0);
        if (str != null && str.length() > 0) {
            servletContextHandler.setContextPath(str);
        }
        servletContextHandler.addServlet(new ServletHolder(nVar), "/*");
        this.server.setHandler(servletContextHandler);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0021, code lost:
    
        if (r3.isStarted() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0027, code lost:
    
        if (r3.isStarting() == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0029, code lost:
    
        r3.stop();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002c, code lost:
    
        r5.server.removeConnector(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0033, code lost:
    
        if (r0.length != 1) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
    
        org.fourthline.cling.transport.impl.jetty.JettyServletContainer.log.info("No more connectors, stopping Jetty server");
        stopIfRunning();
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0040, code lost:
    
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
    
        org.fourthline.cling.transport.impl.jetty.JettyServletContainer.log.severe("Couldn't stop connector: " + r3 + " " + r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0064, code lost:
    
        throw new java.lang.RuntimeException(r6);
     */
    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void removeConnector(java.lang.String r6, int r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            org.eclipse.jetty.server.Server r0 = r5.server     // Catch: java.lang.Throwable -> L6a
            org.eclipse.jetty.server.Connector[] r0 = r0.getConnectors()     // Catch: java.lang.Throwable -> L6a
            int r1 = r0.length     // Catch: java.lang.Throwable -> L6a
            r2 = 0
        L9:
            if (r2 >= r1) goto L68
            r3 = r0[r2]     // Catch: java.lang.Throwable -> L6a
            java.lang.String r4 = r3.getHost()     // Catch: java.lang.Throwable -> L6a
            boolean r4 = r4.equals(r6)     // Catch: java.lang.Throwable -> L6a
            if (r4 == 0) goto L65
            int r4 = r3.getLocalPort()     // Catch: java.lang.Throwable -> L6a
            if (r4 != r7) goto L65
            boolean r6 = r3.isStarted()     // Catch: java.lang.Throwable -> L6a
            if (r6 != 0) goto L29
            boolean r6 = r3.isStarting()     // Catch: java.lang.Throwable -> L6a
            if (r6 == 0) goto L2c
        L29:
            r3.stop()     // Catch: java.lang.Exception -> L40 java.lang.Throwable -> L6a
        L2c:
            org.eclipse.jetty.server.Server r6 = r5.server     // Catch: java.lang.Throwable -> L6a
            r6.removeConnector(r3)     // Catch: java.lang.Throwable -> L6a
            int r6 = r0.length     // Catch: java.lang.Throwable -> L6a
            r7 = 1
            if (r6 != r7) goto L68
            java.util.logging.Logger r6 = org.fourthline.cling.transport.impl.jetty.JettyServletContainer.log     // Catch: java.lang.Throwable -> L6a
            java.lang.String r7 = "No more connectors, stopping Jetty server"
            r6.info(r7)     // Catch: java.lang.Throwable -> L6a
            r5.stopIfRunning()     // Catch: java.lang.Throwable -> L6a
            goto L68
        L40:
            r6 = move-exception
            java.util.logging.Logger r7 = org.fourthline.cling.transport.impl.jetty.JettyServletContainer.log     // Catch: java.lang.Throwable -> L6a
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L6a
            r0.<init>()     // Catch: java.lang.Throwable -> L6a
            java.lang.String r1 = "Couldn't stop connector: "
            r0.append(r1)     // Catch: java.lang.Throwable -> L6a
            r0.append(r3)     // Catch: java.lang.Throwable -> L6a
            java.lang.String r1 = " "
            r0.append(r1)     // Catch: java.lang.Throwable -> L6a
            r0.append(r6)     // Catch: java.lang.Throwable -> L6a
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L6a
            r7.severe(r0)     // Catch: java.lang.Throwable -> L6a
            java.lang.RuntimeException r7 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L6a
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L6a
            throw r7     // Catch: java.lang.Throwable -> L6a
        L65:
            int r2 = r2 + 1
            goto L9
        L68:
            monitor-exit(r5)
            return
        L6a:
            r6 = move-exception
            monitor-exit(r5)
            goto L6e
        L6d:
            throw r6
        L6e:
            goto L6d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.fourthline.cling.transport.impl.jetty.JettyServletContainer.removeConnector(java.lang.String, int):void");
    }

    public void resetServer() {
        Server server = new Server();
        this.server = server;
        server.setGracefulShutdown(1000);
    }

    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    public synchronized void setExecutorService(ExecutorService executorService) {
        JettyServletContainer jettyServletContainer = INSTANCE;
        if (jettyServletContainer.server.getThreadPool() == null) {
            jettyServletContainer.server.setThreadPool(new ExecutorThreadPool(executorService) { // from class: org.fourthline.cling.transport.impl.jetty.JettyServletContainer.1
                @Override // org.eclipse.jetty.util.thread.ExecutorThreadPool, org.eclipse.jetty.util.component.AbstractLifeCycle
                public void doStop() {
                }
            });
        }
    }

    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    public synchronized void startIfNotRunning() {
        if (!this.server.isStarted() && !this.server.isStarting()) {
            log.info("Starting Jetty server... ");
            try {
                this.server.start();
            } catch (Exception e4) {
                log.severe("Couldn't start Jetty server: " + e4);
                throw new RuntimeException(e4);
            }
        }
    }

    @Override // org.fourthline.cling.transport.spi.ServletContainerAdapter
    public synchronized void stopIfRunning() {
        if (!this.server.isStopped() && !this.server.isStopping()) {
            log.info("Stopping Jetty server...");
            try {
                try {
                    this.server.stop();
                } catch (Exception e4) {
                    log.severe("Couldn't stop Jetty server: " + e4);
                    throw new RuntimeException(e4);
                }
            } finally {
                resetServer();
            }
        }
    }

    public static boolean isConnectionOpen(c cVar, byte[] bArr) {
        Socket socket = (Socket) ((Request) cVar).getConnection().getEndPoint().getTransport();
        Logger logger = log;
        if (logger.isLoggable(Level.FINE)) {
            StringBuilder sbA = f.a("Checking if client connection is still open: ");
            sbA.append(socket.getRemoteSocketAddress());
            logger.fine(sbA.toString());
        }
        try {
            socket.getOutputStream().write(bArr);
            socket.getOutputStream().flush();
            return true;
        } catch (IOException unused) {
            Logger logger2 = log;
            if (!logger2.isLoggable(Level.FINE)) {
                return false;
            }
            StringBuilder sbA2 = f.a("Client connection has been closed: ");
            sbA2.append(socket.getRemoteSocketAddress());
            logger2.fine(sbA2.toString());
            return false;
        }
    }
}
