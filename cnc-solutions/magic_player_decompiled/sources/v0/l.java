package v0;

import android.os.Build;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class l extends SSLSocketFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String[] f3654b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String[] f3655c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SSLSocketFactory f3656a;

    static {
        try {
            SSLSocket sSLSocket = (SSLSocket) SSLSocketFactory.getDefault().createSocket();
            if (sSLSocket != null) {
                LinkedList linkedList = new LinkedList();
                for (String str : sSLSocket.getSupportedProtocols()) {
                    if (!str.toUpperCase().contains("SSL")) {
                        linkedList.add(str);
                    }
                }
                f3654b = (String[]) linkedList.toArray(new String[0]);
                if (Build.VERSION.SDK_INT < 21) {
                    List listAsList = Arrays.asList("TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECHDE_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
                    List listAsList2 = Arrays.asList(sSLSocket.getSupportedCipherSuites());
                    HashSet hashSet = new HashSet(listAsList);
                    hashSet.retainAll(listAsList2);
                    hashSet.addAll(new HashSet(Arrays.asList(sSLSocket.getEnabledCipherSuites())));
                    f3655c = (String[]) hashSet.toArray(new String[0]);
                }
            }
        } catch (IOException e4) {
            throw new RuntimeException(e4);
        }
    }

    public l(X509TrustManager x509TrustManager) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, new X509TrustManager[]{x509TrustManager}, null);
            this.f3656a = sSLContext.getSocketFactory();
        } catch (GeneralSecurityException unused) {
            throw new AssertionError();
        }
    }

    public final void a(SSLSocket sSLSocket) {
        String[] strArr;
        String[] strArr2 = f3654b;
        if (strArr2 != null) {
            sSLSocket.setEnabledProtocols(strArr2);
        }
        if (Build.VERSION.SDK_INT >= 21 || (strArr = f3655c) == null) {
            return;
        }
        sSLSocket.setEnabledCipherSuites(strArr);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i4, boolean z3) throws IOException {
        Socket socketCreateSocket = this.f3656a.createSocket(socket, str, i4, z3);
        if (socketCreateSocket instanceof SSLSocket) {
            a((SSLSocket) socketCreateSocket);
        }
        return socketCreateSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return f3655c;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return f3655c;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i4) {
        Socket socketCreateSocket = this.f3656a.createSocket(str, i4);
        if (socketCreateSocket instanceof SSLSocket) {
            a((SSLSocket) socketCreateSocket);
        }
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i4, InetAddress inetAddress, int i5) {
        Socket socketCreateSocket = this.f3656a.createSocket(str, i4, inetAddress, i5);
        if (socketCreateSocket instanceof SSLSocket) {
            a((SSLSocket) socketCreateSocket);
        }
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i4) {
        Socket socketCreateSocket = this.f3656a.createSocket(inetAddress, i4);
        if (socketCreateSocket instanceof SSLSocket) {
            a((SSLSocket) socketCreateSocket);
        }
        return socketCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i4, InetAddress inetAddress2, int i5) {
        Socket socketCreateSocket = this.f3656a.createSocket(inetAddress, i4, inetAddress2, i5);
        if (socketCreateSocket instanceof SSLSocket) {
            a((SSLSocket) socketCreateSocket);
        }
        return socketCreateSocket;
    }
}
