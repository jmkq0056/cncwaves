package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.httptls.HandshakeCertificatesFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.Optional;
import java.util.Set;
import javax.inject.Provider;
import okhttp3.EventListener;
import okhttp3.Interceptor;

/* JADX INFO: loaded from: classes3.dex */
public final class HttpClientBaseModule_ProvideOkHttpClientProviderFactory implements Factory<OkHttpClientProvider> {
    private final Provider<HandshakeCertificatesFactory> certificatesFactoryProvider;
    private final Provider<Optional<EventListener.Factory>> eventListenerFactoryProvider;
    private final Provider<Set<Interceptor>> interceptorsProvider;
    private final Provider<Boolean> isCotsIncludedProvider;
    private final HttpClientBaseModule module;

    public HttpClientBaseModule_ProvideOkHttpClientProviderFactory(HttpClientBaseModule httpClientBaseModule, Provider<Set<Interceptor>> provider, Provider<Boolean> provider2, Provider<Optional<EventListener.Factory>> provider3, Provider<HandshakeCertificatesFactory> provider4) {
        this.module = httpClientBaseModule;
        this.interceptorsProvider = provider;
        this.isCotsIncludedProvider = provider2;
        this.eventListenerFactoryProvider = provider3;
        this.certificatesFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public OkHttpClientProvider get() {
        return provideOkHttpClientProvider(this.module, this.interceptorsProvider.get(), this.isCotsIncludedProvider.get().booleanValue(), this.eventListenerFactoryProvider.get(), this.certificatesFactoryProvider.get());
    }

    public static HttpClientBaseModule_ProvideOkHttpClientProviderFactory create(HttpClientBaseModule httpClientBaseModule, Provider<Set<Interceptor>> provider, Provider<Boolean> provider2, Provider<Optional<EventListener.Factory>> provider3, Provider<HandshakeCertificatesFactory> provider4) {
        return new HttpClientBaseModule_ProvideOkHttpClientProviderFactory(httpClientBaseModule, provider, provider2, provider3, provider4);
    }

    public static OkHttpClientProvider provideOkHttpClientProvider(HttpClientBaseModule httpClientBaseModule, Set<Interceptor> set, boolean z, Optional<EventListener.Factory> optional, HandshakeCertificatesFactory handshakeCertificatesFactory) {
        return (OkHttpClientProvider) Preconditions.checkNotNullFromProvides(httpClientBaseModule.provideOkHttpClientProvider(set, z, optional, handshakeCertificatesFactory));
    }
}
