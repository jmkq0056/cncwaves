package com.stripe.jvmcore.httptls.dagger;

import com.stripe.jvmcore.httptls.RootCertificatesFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory implements Factory<RootCertificatesFactory> {
    @Override // javax.inject.Provider
    public RootCertificatesFactory get() {
        return provideRootCertificatesFactory$httptls();
    }

    public static HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static RootCertificatesFactory provideRootCertificatesFactory$httptls() {
        return (RootCertificatesFactory) Preconditions.checkNotNullFromProvides(HttpTlsModule.INSTANCE.provideRootCertificatesFactory$httptls());
    }

    /* JADX INFO: compiled from: HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory.java */
    private static final class InstanceHolder {
        private static final HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory INSTANCE = new HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory();

        private InstanceHolder() {
        }
    }
}
