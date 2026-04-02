package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.environment.EnvironmentProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class GatorModule_ProvideServiceUrlProviderFactory implements Factory<CrpcClient.BaseUrlProvider> {
    private final Provider<EnvironmentProvider> environmentProvider;

    public GatorModule_ProvideServiceUrlProviderFactory(Provider<EnvironmentProvider> provider) {
        this.environmentProvider = provider;
    }

    @Override // javax.inject.Provider
    public CrpcClient.BaseUrlProvider get() {
        return provideServiceUrlProvider(this.environmentProvider.get());
    }

    public static GatorModule_ProvideServiceUrlProviderFactory create(Provider<EnvironmentProvider> provider) {
        return new GatorModule_ProvideServiceUrlProviderFactory(provider);
    }

    public static CrpcClient.BaseUrlProvider provideServiceUrlProvider(EnvironmentProvider environmentProvider) {
        return (CrpcClient.BaseUrlProvider) Preconditions.checkNotNullFromProvides(GatorModule.INSTANCE.provideServiceUrlProvider(environmentProvider));
    }
}
