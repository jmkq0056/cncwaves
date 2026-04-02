package com.stripe.bbpos.bbdevice.ota;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes3.dex */
class a0 extends SSLSocketFactory {
    private static final String b = "com.stripe.bbpos.bbdevice.ota.a0";
    private SSLSocketFactory a;

    public a0() throws NoSuchAlgorithmException, KeyManagementException {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, null, new SecureRandom());
        this.a = sSLContext.getSocketFactory();
    }

    private void a(String str) {
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.a.createSocket();
        sSLSocket.setEnabledProtocols(new String[]{"TLSv1.2", "TLSv1.1", "TLSv1"});
        SSLSession session = sSLSocket.getSession();
        a("[createSocket] session.getProtocol() : " + session.getProtocol());
        a("[createSocket] session.getCipherSuite() : " + session.getCipherSuite());
        return sSLSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.a.getSupportedCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.a.createSocket(InetAddress.getByName(str), i);
        sSLSocket.setEnabledProtocols(new String[]{"TLSv1.2", "TLSv1.1", "TLSv1"});
        SSLSession session = sSLSocket.getSession();
        a("[createSocket] session.getProtocol() : " + session.getProtocol());
        a("[createSocket] session.getCipherSuite() : " + session.getCipherSuite());
        return sSLSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.a.createSocket(str, i);
        sSLSocket.setEnabledProtocols(new String[]{"TLSv1.2", "TLSv1.1", "TLSv1"});
        SSLSession session = sSLSocket.getSession();
        a("[createSocket] session.getProtocol() : " + session.getProtocol());
        a("[createSocket] session.getCipherSuite() : " + session.getCipherSuite());
        return sSLSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.a.createSocket(str, i, inetAddress, i2);
        sSLSocket.setEnabledProtocols(new String[]{"TLSv1.2", "TLSv1.1", "TLSv1"});
        SSLSession session = sSLSocket.getSession();
        a("[createSocket] session.getProtocol() : " + session.getProtocol());
        a("[createSocket] session.getCipherSuite() : " + session.getCipherSuite());
        return sSLSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.a.createSocket(inetAddress, i);
        sSLSocket.setEnabledProtocols(new String[]{"TLSv1.2", "TLSv1.1", "TLSv1"});
        SSLSession session = sSLSocket.getSession();
        a("[createSocket] session.getProtocol() : " + session.getProtocol());
        a("[createSocket] session.getCipherSuite() : " + session.getCipherSuite());
        return sSLSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) this.a.createSocket(inetAddress, i, inetAddress2, i2);
        sSLSocket.setEnabledProtocols(new String[]{"TLSv1.2", "TLSv1.1", "TLSv1"});
        SSLSession session = sSLSocket.getSession();
        a("[createSocket] session.getProtocol() : " + session.getProtocol());
        a("[createSocket] session.getCipherSuite() : " + session.getCipherSuite());
        return sSLSocket;
    }
}
