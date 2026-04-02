package okhttp3.tls;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okhttp3.tls.internal.TlsUtil;

/* JADX INFO: compiled from: HandshakeCertificates.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0001\u000fB\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\r\u0010\u0002\u001a\u00020\u0003H\u0007¢\u0006\u0002\b\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\f\u001a\u00020\rJ\r\u0010\u0004\u001a\u00020\u0005H\u0007¢\u0006\u0002\b\u000eR\u0013\u0010\u0002\u001a\u00020\u00038\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0007R\u0013\u0010\u0004\u001a\u00020\u00058\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\b¨\u0006\u0010"}, d2 = {"Lokhttp3/tls/HandshakeCertificates;", "", "keyManager", "Ljavax/net/ssl/X509KeyManager;", "trustManager", "Ljavax/net/ssl/X509TrustManager;", "(Ljavax/net/ssl/X509KeyManager;Ljavax/net/ssl/X509TrustManager;)V", "()Ljavax/net/ssl/X509KeyManager;", "()Ljavax/net/ssl/X509TrustManager;", "-deprecated_keyManager", "sslContext", "Ljavax/net/ssl/SSLContext;", "sslSocketFactory", "Ljavax/net/ssl/SSLSocketFactory;", "-deprecated_trustManager", "Builder", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class HandshakeCertificates {
    private final X509KeyManager keyManager;
    private final X509TrustManager trustManager;

    public /* synthetic */ HandshakeCertificates(X509KeyManager x509KeyManager, X509TrustManager x509TrustManager, DefaultConstructorMarker defaultConstructorMarker) {
        this(x509KeyManager, x509TrustManager);
    }

    private HandshakeCertificates(X509KeyManager x509KeyManager, X509TrustManager x509TrustManager) {
        this.keyManager = x509KeyManager;
        this.trustManager = x509TrustManager;
    }

    public final X509KeyManager keyManager() {
        return this.keyManager;
    }

    public final X509TrustManager trustManager() {
        return this.trustManager;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "keyManager", imports = {}))
    /* JADX INFO: renamed from: -deprecated_keyManager, reason: not valid java name and from getter */
    public final X509KeyManager getKeyManager() {
        return this.keyManager;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "trustManager", imports = {}))
    /* JADX INFO: renamed from: -deprecated_trustManager, reason: not valid java name and from getter */
    public final X509TrustManager getTrustManager() {
        return this.trustManager;
    }

    public final SSLSocketFactory sslSocketFactory() {
        SSLSocketFactory socketFactory = sslContext().getSocketFactory();
        Intrinsics.checkNotNullExpressionValue(socketFactory, "sslContext().socketFactory");
        return socketFactory;
    }

    public final SSLContext sslContext() throws NoSuchAlgorithmException, KeyManagementException {
        SSLContext sSLContextNewSSLContext = Platform.INSTANCE.get().newSSLContext();
        sSLContextNewSSLContext.init(new KeyManager[]{this.keyManager}, new TrustManager[]{this.trustManager}, new SecureRandom());
        return sSLContextNewSSLContext;
    }

    /* JADX INFO: compiled from: HandshakeCertificates.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u0006\u0010\u000f\u001a\u00020\u0000J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\nJ\u0006\u0010\u0012\u001a\u00020\u0013J'\u0010\u0003\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00042\u0012\u0010\b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0002\u0010\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\tX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u000bR\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lokhttp3/tls/HandshakeCertificates$Builder;", "", "()V", "heldCertificate", "Lokhttp3/tls/HeldCertificate;", "insecureHosts", "", "", "intermediates", "", "Ljava/security/cert/X509Certificate;", "[Ljava/security/cert/X509Certificate;", "trustedCertificates", "addInsecureHost", "hostname", "addPlatformTrustedCertificates", "addTrustedCertificate", "certificate", "build", "Lokhttp3/tls/HandshakeCertificates;", "(Lokhttp3/tls/HeldCertificate;[Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Builder {
        private HeldCertificate heldCertificate;
        private X509Certificate[] intermediates;
        private final List<X509Certificate> trustedCertificates = new ArrayList();
        private final List<String> insecureHosts = new ArrayList();

        public final Builder heldCertificate(HeldCertificate heldCertificate, X509Certificate... intermediates) {
            Intrinsics.checkNotNullParameter(heldCertificate, "heldCertificate");
            Intrinsics.checkNotNullParameter(intermediates, "intermediates");
            this.heldCertificate = heldCertificate;
            this.intermediates = (X509Certificate[]) Arrays.copyOf(intermediates, intermediates.length);
            return this;
        }

        public final Builder addTrustedCertificate(X509Certificate certificate) {
            Intrinsics.checkNotNullParameter(certificate, "certificate");
            this.trustedCertificates.add(certificate);
            return this;
        }

        public final Builder addPlatformTrustedCertificates() {
            X509TrustManager x509TrustManagerPlatformTrustManager = Platform.INSTANCE.get().platformTrustManager();
            List<X509Certificate> list = this.trustedCertificates;
            X509Certificate[] acceptedIssuers = x509TrustManagerPlatformTrustManager.getAcceptedIssuers();
            Collections.addAll(list, Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
            return this;
        }

        public final Builder addInsecureHost(String hostname) {
            Intrinsics.checkNotNullParameter(hostname, "hostname");
            this.insecureHosts.add(hostname);
            return this;
        }

        public final HandshakeCertificates build() throws NoSuchAlgorithmException, UnrecoverableKeyException, IOException, KeyStoreException, CertificateException {
            List immutableList = Util.toImmutableList(this.insecureHosts);
            HeldCertificate heldCertificate = this.heldCertificate;
            X509Certificate[] x509CertificateArr = this.intermediates;
            if (x509CertificateArr == null) {
                x509CertificateArr = new X509Certificate[0];
            }
            return new HandshakeCertificates(TlsUtil.newKeyManager(null, heldCertificate, (X509Certificate[]) Arrays.copyOf(x509CertificateArr, x509CertificateArr.length)), TlsUtil.newTrustManager(null, this.trustedCertificates, immutableList), null);
        }
    }
}
