package com.stripe.jvmcore.client.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.environment.EnvironmentProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class WardenModule_ProvideWireServiceUrlProviderFactory implements Factory<CrpcClient.BaseUrlProvider> {
    private final Provider<EnvironmentProvider> environmentProvider;

    public WardenModule_ProvideWireServiceUrlProviderFactory(Provider<EnvironmentProvider> provider) {
        this.environmentProvider = provider;
    }

    @Override // javax.inject.Provider
    public CrpcClient.BaseUrlProvider get() {
        return provideWireServiceUrlProvider(this.environmentProvider.get());
    }

    public static WardenModule_ProvideWireServiceUrlProviderFactory create(Provider<EnvironmentProvider> provider) {
        return new WardenModule_ProvideWireServiceUrlProviderFactory(provider);
    }

    public static CrpcClient.BaseUrlProvider provideWireServiceUrlProvider(EnvironmentProvider environmentProvider) {
        return (CrpcClient.BaseUrlProvider) Preconditions.checkNotNullFromProvides(WardenModule.INSTANCE.provideWireServiceUrlProvider(environmentProvider));
    }
}
