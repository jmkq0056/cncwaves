package com.stripe.jvmcore.httptls;

import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PreInstalledCertificatesTrustFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\f\u0010\f\u001a\u00020\r*\u00020\u000eH\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory;", "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;", "()V", "certificateNames", "", "", "classLoader", "Ljava/lang/ClassLoader;", "getClassLoader", "()Ljava/lang/ClassLoader;", "create", "Lcom/stripe/jvmcore/httptls/RootCertificates;", "decodeCertificatePem", "Ljava/security/cert/X509Certificate;", "Ljava/io/InputStream;", "Companion", "httptls"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PreInstalledCertificatesTrustFactory implements RootCertificatesFactory {
    private static final String CERTIFICATE_INSTANCE = "X.509";
    private static final String CERTS_DIR_NAME = "certificates";
    private static final String CERTS_EXT = ".pem";
    private static final String LETS_ENCRYPT_ROOT_1 = "lets-encrypt-isrg-root-x1";
    private static final String LETS_ENCRYPT_ROOT_2 = "lets-encrypt-isrg-root-x2";
    private final List<String> certificateNames = CollectionsKt.listOf((Object[]) new String[]{LETS_ENCRYPT_ROOT_1, LETS_ENCRYPT_ROOT_2});

    private final ClassLoader getClassLoader() {
        ClassLoader classLoader = getClass().getClassLoader();
        if (classLoader == null) {
            classLoader = getClass().getClassLoader();
        }
        if (classLoader != null) {
            return classLoader;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    @Override // com.stripe.jvmcore.httptls.RootCertificatesFactory
    public RootCertificates create() {
        List<String> list = this.certificateNames;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            Path path = Paths.get(CERTS_DIR_NAME, (String[]) Arrays.copyOf(new String[]{((String) it.next()) + CERTS_EXT}, 1));
            Intrinsics.checkNotNullExpressionValue(path, "get(...)");
            arrayList.add(path);
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            InputStream resourceAsStream = getClassLoader().getResourceAsStream(((Path) it2.next()).toString());
            if (resourceAsStream != null) {
                arrayList2.add(resourceAsStream);
            }
        }
        ArrayList arrayList3 = arrayList2;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList3, 10));
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            arrayList4.add(decodeCertificatePem((InputStream) it3.next()));
        }
        return new RootCertificates(CollectionsKt.toSet(arrayList4));
    }

    private final X509Certificate decodeCertificatePem(InputStream inputStream) throws CertificateException {
        InputStream inputStream2 = inputStream;
        CertificateFactory certificateFactory = CertificateFactory.getInstance(CERTIFICATE_INSTANCE);
        Intrinsics.checkNotNullExpressionValue(certificateFactory, "getInstance(...)");
        try {
            Collection<? extends Certificate> collectionGenerateCertificates = certificateFactory.generateCertificates(inputStream2);
            CloseableKt.closeFinally(inputStream2, null);
            Intrinsics.checkNotNullExpressionValue(collectionGenerateCertificates, "use(...)");
            Object objSingle = CollectionsKt.single(collectionGenerateCertificates);
            Intrinsics.checkNotNull(objSingle, "null cannot be cast to non-null type java.security.cert.X509Certificate");
            return (X509Certificate) objSingle;
        } finally {
        }
    }
}
