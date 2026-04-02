package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.stripeterminal.internal.common.crpc.LoggingRequestContextProvider;
import com.stripe.stripeterminal.internal.common.crpc.PlymouthRequestContextProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class CrpcContextProviderModule_Companion_ProvideLoggingRequestContextProviderFactory implements Factory<LoggingRequestContextProvider> {
    private final Provider<PlymouthRequestContextProvider> plymouthRequestContextProvider;
    private final Provider<PosInfoFactory> posInfoFactoryProvider;

    public CrpcContextProviderModule_Companion_ProvideLoggingRequestContextProviderFactory(Provider<PosInfoFactory> provider, Provider<PlymouthRequestContextProvider> provider2) {
        this.posInfoFactoryProvider = provider;
        this.plymouthRequestContextProvider = provider2;
    }

    @Override // javax.inject.Provider
    public LoggingRequestContextProvider get() {
        return provideLoggingRequestContextProvider(this.posInfoFactoryProvider.get(), this.plymouthRequestContextProvider.get());
    }

    public static CrpcContextProviderModule_Companion_ProvideLoggingRequestContextProviderFactory create(Provider<PosInfoFactory> provider, Provider<PlymouthRequestContextProvider> provider2) {
        return new CrpcContextProviderModule_Companion_ProvideLoggingRequestContextProviderFactory(provider, provider2);
    }

    public static LoggingRequestContextProvider provideLoggingRequestContextProvider(PosInfoFactory posInfoFactory, PlymouthRequestContextProvider plymouthRequestContextProvider) {
        return (LoggingRequestContextProvider) Preconditions.checkNotNullFromProvides(CrpcContextProviderModule.INSTANCE.provideLoggingRequestContextProvider(posInfoFactory, plymouthRequestContextProvider));
    }
}
