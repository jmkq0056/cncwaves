package org.eclipse.jetty.server.ssl;

import android.support.v4.media.f;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import javax.net.ssl.HandshakeCompletedEvent;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSocket;
import org.eclipse.jetty.io.Buffer;
import org.eclipse.jetty.io.Connection;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.io.RuntimeIOException;
import org.eclipse.jetty.io.bio.SocketEndPoint;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.bio.SocketConnector;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;
import org.eclipse.jetty.util.ssl.SslContextFactory;

/* JADX INFO: loaded from: classes2.dex */
public class SslSocketConnector extends SocketConnector implements SslConnector {
    private static final Logger LOG = Log.getLogger((Class<?>) SslSocketConnector.class);
    private int _handshakeTimeout;
    private final SslContextFactory _sslContextFactory;

    public class SslConnectorEndPoint extends SocketConnector.ConnectorEndPoint {
        public SslConnectorEndPoint(Socket socket) {
            super(socket);
        }

        @Override // org.eclipse.jetty.server.bio.SocketConnector.ConnectorEndPoint, org.eclipse.jetty.io.bio.SocketEndPoint, org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
        public /* bridge */ /* synthetic */ void close() throws IOException {
            super.close();
        }

        @Override // org.eclipse.jetty.server.bio.SocketConnector.ConnectorEndPoint
        public /* bridge */ /* synthetic */ void dispatch() throws IOException {
            super.dispatch();
        }

        @Override // org.eclipse.jetty.server.bio.SocketConnector.ConnectorEndPoint, org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
        public /* bridge */ /* synthetic */ int fill(Buffer buffer) {
            return super.fill(buffer);
        }

        @Override // org.eclipse.jetty.server.bio.SocketConnector.ConnectorEndPoint, org.eclipse.jetty.io.ConnectedEndPoint
        public /* bridge */ /* synthetic */ Connection getConnection() {
            return super.getConnection();
        }

        @Override // org.eclipse.jetty.server.bio.SocketConnector.ConnectorEndPoint, java.lang.Runnable
        public void run() {
            try {
                int handshakeTimeout = SslSocketConnector.this.getHandshakeTimeout();
                int soTimeout = ((SocketConnector.ConnectorEndPoint) this)._socket.getSoTimeout();
                if (handshakeTimeout > 0) {
                    ((SocketConnector.ConnectorEndPoint) this)._socket.setSoTimeout(handshakeTimeout);
                }
                final SSLSocket sSLSocket = (SSLSocket) ((SocketConnector.ConnectorEndPoint) this)._socket;
                sSLSocket.addHandshakeCompletedListener(new HandshakeCompletedListener() { // from class: org.eclipse.jetty.server.ssl.SslSocketConnector.SslConnectorEndPoint.1
                    public boolean handshook = false;

                    @Override // javax.net.ssl.HandshakeCompletedListener
                    public void handshakeCompleted(HandshakeCompletedEvent handshakeCompletedEvent) {
                        if (!this.handshook) {
                            this.handshook = true;
                            return;
                        }
                        if (SslSocketConnector.this._sslContextFactory.isAllowRenegotiate()) {
                            return;
                        }
                        Logger logger = SslSocketConnector.LOG;
                        StringBuilder sbA = f.a("SSL renegotiate denied: ");
                        sbA.append(sSLSocket);
                        logger.warn(sbA.toString(), new Object[0]);
                        try {
                            sSLSocket.close();
                        } catch (IOException e4) {
                            SslSocketConnector.LOG.warn(e4);
                        }
                    }
                });
                sSLSocket.startHandshake();
                if (handshakeTimeout > 0) {
                    ((SocketConnector.ConnectorEndPoint) this)._socket.setSoTimeout(soTimeout);
                }
                super.run();
            } catch (SSLException e4) {
                SslSocketConnector.LOG.debug(e4);
                try {
                    close();
                } catch (IOException e5) {
                    SslSocketConnector.LOG.ignore(e5);
                }
            } catch (IOException e6) {
                SslSocketConnector.LOG.debug(e6);
                try {
                    close();
                } catch (IOException e7) {
                    SslSocketConnector.LOG.ignore(e7);
                }
            }
        }

        @Override // org.eclipse.jetty.server.bio.SocketConnector.ConnectorEndPoint, org.eclipse.jetty.io.ConnectedEndPoint
        public /* bridge */ /* synthetic */ void setConnection(Connection connection) {
            super.setConnection(connection);
        }

        @Override // org.eclipse.jetty.io.bio.SocketEndPoint, org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
        public void shutdownInput() throws IOException {
            close();
        }

        @Override // org.eclipse.jetty.io.bio.SocketEndPoint, org.eclipse.jetty.io.bio.StreamEndPoint, org.eclipse.jetty.io.EndPoint
        public void shutdownOutput() throws IOException {
            close();
        }
    }

    public SslSocketConnector() {
        this(new SslContextFactory(SslContextFactory.DEFAULT_KEYSTORE_PATH));
        setSoLingerTime(30000);
    }

    @Override // org.eclipse.jetty.server.bio.SocketConnector, org.eclipse.jetty.server.AbstractConnector
    public void accept(int i4) throws IOException {
        Socket socketAccept = this._serverSocket.accept();
        configure(socketAccept);
        new SslConnectorEndPoint(socketAccept).dispatch();
    }

    @Override // org.eclipse.jetty.server.AbstractConnector
    public void configure(Socket socket) {
        super.configure(socket);
    }

    @Override // org.eclipse.jetty.server.bio.SocketConnector, org.eclipse.jetty.server.AbstractConnector, org.eclipse.jetty.server.Connector
    public void customize(EndPoint endPoint, Request request) throws SocketException {
        super.customize(endPoint, request);
        request.setScheme("https");
        SslCertificates.customize(((SSLSocket) ((SocketEndPoint) endPoint).getTransport()).getSession(), endPoint, request);
    }

    @Override // org.eclipse.jetty.server.bio.SocketConnector, org.eclipse.jetty.server.AbstractConnector, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        this._sslContextFactory.checkKeyStore();
        this._sslContextFactory.start();
        super.doStart();
    }

    @Override // org.eclipse.jetty.server.bio.SocketConnector, org.eclipse.jetty.server.AbstractConnector, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStop() throws IOException {
        this._sslContextFactory.stop();
        super.doStop();
    }

    @Deprecated
    public String getAlgorithm() {
        throw new UnsupportedOperationException();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String[] getExcludeCipherSuites() {
        return this._sslContextFactory.getExcludeCipherSuites();
    }

    public int getHandshakeTimeout() {
        return this._handshakeTimeout;
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String[] getIncludeCipherSuites() {
        return this._sslContextFactory.getIncludeCipherSuites();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String getKeystore() {
        return this._sslContextFactory.getKeyStorePath();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String getKeystoreType() {
        return this._sslContextFactory.getKeyStoreType();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public boolean getNeedClientAuth() {
        return this._sslContextFactory.getNeedClientAuth();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String getProtocol() {
        return this._sslContextFactory.getProtocol();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String getProvider() {
        return this._sslContextFactory.getProvider();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String getSecureRandomAlgorithm() {
        return this._sslContextFactory.getSecureRandomAlgorithm();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public SSLContext getSslContext() {
        return this._sslContextFactory.getSslContext();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    public SslContextFactory getSslContextFactory() {
        return this._sslContextFactory;
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String getSslKeyManagerFactoryAlgorithm() {
        return this._sslContextFactory.getSslKeyManagerFactoryAlgorithm();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String getSslTrustManagerFactoryAlgorithm() {
        return this._sslContextFactory.getTrustManagerFactoryAlgorithm();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String getTruststore() {
        return this._sslContextFactory.getTrustStore();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public String getTruststoreType() {
        return this._sslContextFactory.getTrustStoreType();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public boolean getWantClientAuth() {
        return this._sslContextFactory.getWantClientAuth();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    public boolean isAllowRenegotiate() {
        return this._sslContextFactory.isAllowRenegotiate();
    }

    @Override // org.eclipse.jetty.server.AbstractConnector, org.eclipse.jetty.server.Connector
    public boolean isConfidential(Request request) {
        int confidentialPort = getConfidentialPort();
        return confidentialPort == 0 || confidentialPort == request.getServerPort();
    }

    @Override // org.eclipse.jetty.server.AbstractConnector, org.eclipse.jetty.server.Connector
    public boolean isIntegral(Request request) {
        int integralPort = getIntegralPort();
        return integralPort == 0 || integralPort == request.getServerPort();
    }

    @Override // org.eclipse.jetty.server.bio.SocketConnector
    public ServerSocket newServerSocket(String str, int i4, int i5) {
        return this._sslContextFactory.newSslServerSocket(str, i4, i5);
    }

    @Override // org.eclipse.jetty.server.bio.SocketConnector, org.eclipse.jetty.server.Connector
    public void open() throws SocketException {
        this._sslContextFactory.checkKeyStore();
        try {
            this._sslContextFactory.start();
            super.open();
        } catch (Exception e4) {
            throw new RuntimeIOException(e4);
        }
    }

    @Deprecated
    public void setAlgorithm(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    public void setAllowRenegotiate(boolean z3) {
        this._sslContextFactory.setAllowRenegotiate(z3);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setExcludeCipherSuites(String[] strArr) {
        this._sslContextFactory.setExcludeCipherSuites(strArr);
    }

    public void setHandshakeTimeout(int i4) {
        this._handshakeTimeout = i4;
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setIncludeCipherSuites(String[] strArr) {
        this._sslContextFactory.setIncludeCipherSuites(strArr);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setKeyPassword(String str) {
        this._sslContextFactory.setKeyManagerPassword(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setKeystore(String str) {
        this._sslContextFactory.setKeyStorePath(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setKeystoreType(String str) {
        this._sslContextFactory.setKeyStoreType(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setNeedClientAuth(boolean z3) {
        this._sslContextFactory.setNeedClientAuth(z3);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setPassword(String str) {
        this._sslContextFactory.setKeyStorePassword(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setProtocol(String str) {
        this._sslContextFactory.setProtocol(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setProvider(String str) {
        this._sslContextFactory.setProvider(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setSecureRandomAlgorithm(String str) {
        this._sslContextFactory.setSecureRandomAlgorithm(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setSslContext(SSLContext sSLContext) {
        this._sslContextFactory.setSslContext(sSLContext);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setSslKeyManagerFactoryAlgorithm(String str) {
        this._sslContextFactory.setSslKeyManagerFactoryAlgorithm(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setSslTrustManagerFactoryAlgorithm(String str) {
        this._sslContextFactory.setTrustManagerFactoryAlgorithm(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setTrustPassword(String str) {
        this._sslContextFactory.setTrustStorePassword(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setTruststore(String str) {
        this._sslContextFactory.setTrustStore(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setTruststoreType(String str) {
        this._sslContextFactory.setTrustStoreType(str);
    }

    @Override // org.eclipse.jetty.server.ssl.SslConnector
    @Deprecated
    public void setWantClientAuth(boolean z3) {
        this._sslContextFactory.setWantClientAuth(z3);
    }

    public SslSocketConnector(SslContextFactory sslContextFactory) {
        this._handshakeTimeout = 0;
        this._sslContextFactory = sslContextFactory;
    }
}
