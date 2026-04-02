package com.stripe.jvmcore.httptls.dagger;

import com.stripe.jvmcore.httptls.HandshakeCertificatesFactory;
import com.stripe.jvmcore.httptls.RootCertificatesFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory implements Factory<HandshakeCertificatesFactory> {
    private final Provider<RootCertificatesFactory> rootCertificatesFactoryProvider;

    public HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory(Provider<RootCertificatesFactory> provider) {
        this.rootCertificatesFactoryProvider = provider;
    }

    @Override // javax.inject.Provider
    public HandshakeCertificatesFactory get() {
        return provideHandshakeCertificatesFactory$httptls(this.rootCertificatesFactoryProvider.get());
    }

    public static HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory create(Provider<RootCertificatesFactory> provider) {
        return new HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory(provider);
    }

    public static HandshakeCertificatesFactory provideHandshakeCertificatesFactory$httptls(RootCertificatesFactory rootCertificatesFactory) {
        return (HandshakeCertificatesFactory) Preconditions.checkNotNullFromProvides(HttpTlsModule.INSTANCE.provideHandshakeCertificatesFactory$httptls(rootCertificatesFactory));
    }
}
