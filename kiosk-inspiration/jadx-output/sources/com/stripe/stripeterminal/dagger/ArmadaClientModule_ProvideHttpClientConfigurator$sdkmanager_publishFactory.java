package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.dagger.HttpClientConfigurator;
import com.stripe.stripeterminal.internal.common.crpc.IdentifierHeadersInterceptor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory implements Factory<HttpClientConfigurator> {
    private final Provider<IdentifierHeadersInterceptor> headerInterceptorProvider;

    public ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory(Provider<IdentifierHeadersInterceptor> provider) {
        this.headerInterceptorProvider = provider;
    }

    @Override // javax.inject.Provider
    public HttpClientConfigurator get() {
        return provideHttpClientConfigurator$sdkmanager_publish(this.headerInterceptorProvider.get());
    }

    public static ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory create(Provider<IdentifierHeadersInterceptor> provider) {
        return new ArmadaClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory(provider);
    }

    public static HttpClientConfigurator provideHttpClientConfigurator$sdkmanager_publish(IdentifierHeadersInterceptor identifierHeadersInterceptor) {
        return (HttpClientConfigurator) Preconditions.checkNotNullFromProvides(ArmadaClientModule.INSTANCE.provideHttpClientConfigurator$sdkmanager_publish(identifierHeadersInterceptor));
    }
}
