package com.stripe.stripeterminal.dagger;

import com.stripe.jvmcore.crpcclient.CrpcClient;
import com.stripe.jvmcore.environment.EnvironmentProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class LogModule_ProvideServiceUrlProviderFactory implements Factory<CrpcClient.BaseUrlProvider> {
    private final Provider<EnvironmentProvider> environmentProvider;

    public LogModule_ProvideServiceUrlProviderFactory(Provider<EnvironmentProvider> provider) {
        this.environmentProvider = provider;
    }

    @Override // javax.inject.Provider
    public CrpcClient.BaseUrlProvider get() {
        return provideServiceUrlProvider(this.environmentProvider.get());
    }

    public static LogModule_ProvideServiceUrlProviderFactory create(Provider<EnvironmentProvider> provider) {
        return new LogModule_ProvideServiceUrlProviderFactory(provider);
    }

    public static CrpcClient.BaseUrlProvider provideServiceUrlProvider(EnvironmentProvider environmentProvider) {
        return (CrpcClient.BaseUrlProvider) Preconditions.checkNotNullFromProvides(LogModule.INSTANCE.provideServiceUrlProvider(environmentProvider));
    }
}
