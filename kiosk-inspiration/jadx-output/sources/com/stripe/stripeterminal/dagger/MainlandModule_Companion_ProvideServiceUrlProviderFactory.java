package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.environment.EnvironmentProvider;
import com.stripe.jvmcore.restclient.RestClient;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class MainlandModule_Companion_ProvideServiceUrlProviderFactory implements Factory<RestClient.BaseUrlProvider> {
    private final Provider<EnvironmentProvider> environmentProvider;

    public MainlandModule_Companion_ProvideServiceUrlProviderFactory(Provider<EnvironmentProvider> provider) {
        this.environmentProvider = provider;
    }

    @Override // javax.inject.Provider
    public RestClient.BaseUrlProvider get() {
        return provideServiceUrlProvider(this.environmentProvider.get());
    }

    public static MainlandModule_Companion_ProvideServiceUrlProviderFactory create(Provider<EnvironmentProvider> provider) {
        return new MainlandModule_Companion_ProvideServiceUrlProviderFactory(provider);
    }

    public static RestClient.BaseUrlProvider provideServiceUrlProvider(EnvironmentProvider environmentProvider) {
        return (RestClient.BaseUrlProvider) Preconditions.checkNotNullFromProvides(MainlandModule.INSTANCE.provideServiceUrlProvider(environmentProvider));
    }
}
