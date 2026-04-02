package com.stripe.jvmcore.httptls;

import java.security.cert.X509Certificate;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.tls.HandshakeCertificates;

/* JADX INFO: compiled from: HandshakeCertificatesFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/jvmcore/httptls/DefaultHandshakeCertificatesFactory;", "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;", "rootCertificatesFactory", "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;", "(Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;)V", "create", "Lokhttp3/tls/HandshakeCertificates;", "httptls"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultHandshakeCertificatesFactory implements HandshakeCertificatesFactory {
    private final RootCertificatesFactory rootCertificatesFactory;

    public DefaultHandshakeCertificatesFactory(RootCertificatesFactory rootCertificatesFactory) {
        Intrinsics.checkNotNullParameter(rootCertificatesFactory, "rootCertificatesFactory");
        this.rootCertificatesFactory = rootCertificatesFactory;
    }

    @Override // com.stripe.jvmcore.httptls.HandshakeCertificatesFactory
    public HandshakeCertificates create() {
        HandshakeCertificates.Builder builderAddPlatformTrustedCertificates = new HandshakeCertificates.Builder().addPlatformTrustedCertificates();
        Iterator<T> it = this.rootCertificatesFactory.create().getValue$httptls().iterator();
        while (it.hasNext()) {
            builderAddPlatformTrustedCertificates.addTrustedCertificate((X509Certificate) it.next());
        }
        return builderAddPlatformTrustedCertificates.build();
    }
}
