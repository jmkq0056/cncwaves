package okhttp3.tls.internal;

import io.ktor.client.utils.CacheControl;
import java.io.IOException;
import java.net.InetAddress;
import java.security.InvalidKeyException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SignatureException;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.KeyManager;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509ExtendedTrustManager;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.platform.Platform;
import okhttp3.tls.HandshakeCertificates;
import okhttp3.tls.HeldCertificate;

/* JADX INFO: compiled from: TlsUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0019\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J5\u0010\u0011\u001a\u00020\u00122\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00170\u0016\"\u00020\u0017H\u0007¢\u0006\u0002\u0010\u0018J.\u0010\u0019\u001a\u00020\u001a2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00102\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00170\u001c2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00100\u001cH\u0007R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001e"}, d2 = {"Lokhttp3/tls/internal/TlsUtil;", "", "()V", "localhost", "Lokhttp3/tls/HandshakeCertificates;", "getLocalhost", "()Lokhttp3/tls/HandshakeCertificates;", "localhost$delegate", "Lkotlin/Lazy;", "password", "", "getPassword", "()[C", "newEmptyKeyStore", "Ljava/security/KeyStore;", "keyStoreType", "", "newKeyManager", "Ljavax/net/ssl/X509KeyManager;", "heldCertificate", "Lokhttp3/tls/HeldCertificate;", "intermediates", "", "Ljava/security/cert/X509Certificate;", "(Ljava/lang/String;Lokhttp3/tls/HeldCertificate;[Ljava/security/cert/X509Certificate;)Ljavax/net/ssl/X509KeyManager;", "newTrustManager", "Ljavax/net/ssl/X509TrustManager;", "trustedCertificates", "", "insecureHosts", "okhttp-tls"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class TlsUtil {
    public static final TlsUtil INSTANCE = new TlsUtil();

    /* JADX INFO: renamed from: localhost$delegate, reason: from kotlin metadata */
    private static final Lazy localhost;
    private static final char[] password;

    private TlsUtil() {
    }

    static {
        char[] charArray = "password".toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        password = charArray;
        localhost = LazyKt.lazy(new Function0<HandshakeCertificates>() { // from class: okhttp3.tls.internal.TlsUtil.localhost.2
            @Override // kotlin.jvm.functions.Function0
            public final HandshakeCertificates invoke() throws NoSuchAlgorithmException, SignatureException, InvalidKeyException {
                HeldCertificate.Builder builderCommonName = new HeldCertificate.Builder().commonName("localhost");
                String canonicalHostName = InetAddress.getByName("localhost").getCanonicalHostName();
                Intrinsics.checkNotNullExpressionValue(canonicalHostName, "getByName(\"localhost\").canonicalHostName");
                HeldCertificate heldCertificateBuild = builderCommonName.addSubjectAlternativeName(canonicalHostName).build();
                return new HandshakeCertificates.Builder().heldCertificate(heldCertificateBuild, new X509Certificate[0]).addTrustedCertificate(heldCertificateBuild.certificate()).build();
            }
        });
    }

    public final char[] getPassword() {
        return password;
    }

    private final HandshakeCertificates getLocalhost() {
        return (HandshakeCertificates) localhost.getValue();
    }

    @JvmStatic
    public static final HandshakeCertificates localhost() {
        return INSTANCE.getLocalhost();
    }

    @JvmStatic
    public static final X509TrustManager newTrustManager(String keyStoreType, List<? extends X509Certificate> trustedCertificates, List<String> insecureHosts) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        Intrinsics.checkNotNullParameter(trustedCertificates, "trustedCertificates");
        Intrinsics.checkNotNullParameter(insecureHosts, "insecureHosts");
        KeyStore keyStoreNewEmptyKeyStore = INSTANCE.newEmptyKeyStore(keyStoreType);
        int size = trustedCertificates.size();
        for (int i = 0; i < size; i++) {
            keyStoreNewEmptyKeyStore.setCertificateEntry("cert_" + i, trustedCertificates.get(i));
        }
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init(keyStoreNewEmptyKeyStore);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        Intrinsics.checkNotNull(trustManagers);
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                Intrinsics.checkNotNull(trustManager, "null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
                X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                return insecureHosts.isEmpty() ? x509TrustManager : Platform.INSTANCE.isAndroid() ? new InsecureAndroidTrustManager(x509TrustManager, insecureHosts) : new InsecureExtendedTrustManager((X509ExtendedTrustManager) x509TrustManager, insecureHosts);
            }
        }
        StringBuilder sb = new StringBuilder("Unexpected trust managers: ");
        String string = Arrays.toString(trustManagers);
        Intrinsics.checkNotNullExpressionValue(string, "toString(this)");
        throw new IllegalStateException(sb.append(string).toString().toString());
    }

    @JvmStatic
    public static final X509KeyManager newKeyManager(String keyStoreType, HeldCertificate heldCertificate, X509Certificate... intermediates) throws NoSuchAlgorithmException, UnrecoverableKeyException, IOException, KeyStoreException, CertificateException {
        Intrinsics.checkNotNullParameter(intermediates, "intermediates");
        KeyStore keyStoreNewEmptyKeyStore = INSTANCE.newEmptyKeyStore(keyStoreType);
        if (heldCertificate != null) {
            Certificate[] certificateArr = new Certificate[intermediates.length + 1];
            certificateArr[0] = heldCertificate.certificate();
            ArraysKt.copyInto$default(intermediates, certificateArr, 1, 0, 0, 12, (Object) null);
            keyStoreNewEmptyKeyStore.setKeyEntry(CacheControl.PRIVATE, heldCertificate.keyPair().getPrivate(), password, certificateArr);
        }
        KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        keyManagerFactory.init(keyStoreNewEmptyKeyStore, password);
        KeyManager[] keyManagers = keyManagerFactory.getKeyManagers();
        Intrinsics.checkNotNull(keyManagers);
        if (keyManagers.length == 1) {
            KeyManager keyManager = keyManagers[0];
            if (keyManager instanceof X509KeyManager) {
                Intrinsics.checkNotNull(keyManager, "null cannot be cast to non-null type javax.net.ssl.X509KeyManager");
                return (X509KeyManager) keyManager;
            }
        }
        StringBuilder sb = new StringBuilder("Unexpected key managers:");
        String string = Arrays.toString(keyManagers);
        Intrinsics.checkNotNullExpressionValue(string, "toString(this)");
        throw new IllegalStateException(sb.append(string).toString().toString());
    }

    private final KeyStore newEmptyKeyStore(String keyStoreType) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
        if (keyStoreType == null) {
            keyStoreType = KeyStore.getDefaultType();
        }
        KeyStore keyStore = KeyStore.getInstance(keyStoreType);
        keyStore.load(null, password);
        Intrinsics.checkNotNullExpressionValue(keyStore, "getInstance(keyStoreType…utStream, password)\n    }");
        return keyStore;
    }
}
