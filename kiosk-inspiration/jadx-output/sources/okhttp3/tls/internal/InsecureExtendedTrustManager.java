package okhttp3.tls.internal;

import java.net.Socket;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.X509ExtendedTrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: InsecureExtendedTrustManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J/\u0010\u0007\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u00052\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016¢\u0006\u0002\u0010\u000fJ/\u0010\u0007\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0002\u0010\u0012J'\u0010\u0007\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\n2\b\u0010\f\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0002\u0010\u0013J%\u0010\u0014\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u0005H\u0016¢\u0006\u0002\u0010\u0013J-\u0010\u0014\u001a\u00020\u00152\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0002\u0010\u0016J-\u0010\u0014\u001a\u00020\u00152\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000b0\n2\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0011H\u0016¢\u0006\u0002\u0010\u0017J\u0013\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\nH\u0016¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lokhttp3/tls/internal/InsecureExtendedTrustManager;", "Ljavax/net/ssl/X509ExtendedTrustManager;", "delegate", "insecureHosts", "", "", "(Ljavax/net/ssl/X509ExtendedTrustManager;Ljava/util/List;)V", "checkClientTrusted", "", "chain", "", "Ljava/security/cert/X509Certificate;", "authType", "socket", "Ljava/net/Socket;", "([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/Void;", "engine", "Ljavax/net/ssl/SSLEngine;", "([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/Void;", "([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/Void;", "checkServerTrusted", "", "([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V", "([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V", "getAcceptedIssuers", "()[Ljava/security/cert/X509Certificate;", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class InsecureExtendedTrustManager extends X509ExtendedTrustManager {
    private final X509ExtendedTrustManager delegate;
    private final List<String> insecureHosts;

    public InsecureExtendedTrustManager(X509ExtendedTrustManager delegate, List<String> insecureHosts) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(insecureHosts, "insecureHosts");
        this.delegate = delegate;
        this.insecureHosts = insecureHosts;
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        X509Certificate[] acceptedIssuers = this.delegate.getAcceptedIssuers();
        Intrinsics.checkNotNullExpressionValue(acceptedIssuers, "delegate.acceptedIssuers");
        return acceptedIssuers;
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public void checkServerTrusted(X509Certificate[] chain, String authType, Socket socket) throws CertificateException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(authType, "authType");
        Intrinsics.checkNotNullParameter(socket, "socket");
        if (this.insecureHosts.contains(Util.peerName(socket))) {
            return;
        }
        this.delegate.checkServerTrusted(chain, authType, socket);
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public void checkServerTrusted(X509Certificate[] chain, String authType, SSLEngine engine) throws CertificateException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(authType, "authType");
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (this.insecureHosts.contains(engine.getPeerHost())) {
            return;
        }
        this.delegate.checkServerTrusted(chain, authType, engine);
    }

    @Override // javax.net.ssl.X509TrustManager
    public Void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(authType, "authType");
        throw new CertificateException("Unsupported operation");
    }

    @Override // javax.net.ssl.X509TrustManager
    public Void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        throw new CertificateException("Unsupported operation");
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public Void checkClientTrusted(X509Certificate[] chain, String authType, SSLEngine engine) throws CertificateException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(authType, "authType");
        throw new CertificateException("Unsupported operation");
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public Void checkClientTrusted(X509Certificate[] chain, String authType, Socket socket) throws CertificateException {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Intrinsics.checkNotNullParameter(authType, "authType");
        throw new CertificateException("Unsupported operation");
    }
}
