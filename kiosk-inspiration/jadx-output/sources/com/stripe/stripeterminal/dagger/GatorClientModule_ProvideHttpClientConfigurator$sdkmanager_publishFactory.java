package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.client.dagger.HttpClientConfigurator;
import com.stripe.jvmcore.environment.UserAgentProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class GatorClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory implements Factory<HttpClientConfigurator> {
    private final Provider<UserAgentProvider> userAgentProvider;

    public GatorClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory(Provider<UserAgentProvider> provider) {
        this.userAgentProvider = provider;
    }

    @Override // javax.inject.Provider
    public HttpClientConfigurator get() {
        return provideHttpClientConfigurator$sdkmanager_publish(this.userAgentProvider.get());
    }

    public static GatorClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory create(Provider<UserAgentProvider> provider) {
        return new GatorClientModule_ProvideHttpClientConfigurator$sdkmanager_publishFactory(provider);
    }

    public static HttpClientConfigurator provideHttpClientConfigurator$sdkmanager_publish(UserAgentProvider userAgentProvider) {
        return (HttpClientConfigurator) Preconditions.checkNotNullFromProvides(GatorClientModule.INSTANCE.provideHttpClientConfigurator$sdkmanager_publish(userAgentProvider));
    }
}
