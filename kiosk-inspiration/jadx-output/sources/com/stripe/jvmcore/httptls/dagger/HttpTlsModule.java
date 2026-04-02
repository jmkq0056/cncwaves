package com.stripe.jvmcore.httptls.dagger;

import com.stripe.jvmcore.httptls.DefaultHandshakeCertificatesFactory;
import com.stripe.jvmcore.httptls.HandshakeCertificatesFactory;
import com.stripe.jvmcore.httptls.PreInstalledCertificatesTrustFactory;
import com.stripe.jvmcore.httptls.RootCertificatesFactory;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HttpTlsModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\u0007J\r\u0010\b\u001a\u00020\u0006H\u0001¢\u0006\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;", "", "()V", "provideHandshakeCertificatesFactory", "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;", "rootCertificatesFactory", "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;", "provideHandshakeCertificatesFactory$httptls", "provideRootCertificatesFactory", "provideRootCertificatesFactory$httptls", "httptls"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class HttpTlsModule {
    public static final HttpTlsModule INSTANCE = new HttpTlsModule();

    private HttpTlsModule() {
    }

    @Provides
    public final HandshakeCertificatesFactory provideHandshakeCertificatesFactory$httptls(RootCertificatesFactory rootCertificatesFactory) {
        Intrinsics.checkNotNullParameter(rootCertificatesFactory, "rootCertificatesFactory");
        return new DefaultHandshakeCertificatesFactory(rootCertificatesFactory);
    }

    @Provides
    @Singleton
    public final RootCertificatesFactory provideRootCertificatesFactory$httptls() {
        return new PreInstalledCertificatesTrustFactory();
    }
}
