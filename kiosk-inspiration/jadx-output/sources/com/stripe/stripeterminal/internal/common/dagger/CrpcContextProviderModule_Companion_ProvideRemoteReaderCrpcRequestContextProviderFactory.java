package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.stripeterminal.internal.common.crpc.LocalIpAddressProvider;
import com.stripe.stripeterminal.internal.common.crpc.RemoteReaderRequestContextProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory implements Factory<RemoteReaderRequestContextProvider> {
    private final Provider<LocalIpAddressProvider> localIpAddressProvider;
    private final Provider<PosInfoFactory> posInfoFactoryProvider;

    public CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory(Provider<PosInfoFactory> provider, Provider<LocalIpAddressProvider> provider2) {
        this.posInfoFactoryProvider = provider;
        this.localIpAddressProvider = provider2;
    }

    @Override // javax.inject.Provider
    public RemoteReaderRequestContextProvider get() {
        return provideRemoteReaderCrpcRequestContextProvider(this.posInfoFactoryProvider.get(), this.localIpAddressProvider.get());
    }

    public static CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory create(Provider<PosInfoFactory> provider, Provider<LocalIpAddressProvider> provider2) {
        return new CrpcContextProviderModule_Companion_ProvideRemoteReaderCrpcRequestContextProviderFactory(provider, provider2);
    }

    public static RemoteReaderRequestContextProvider provideRemoteReaderCrpcRequestContextProvider(PosInfoFactory posInfoFactory, LocalIpAddressProvider localIpAddressProvider) {
        return (RemoteReaderRequestContextProvider) Preconditions.checkNotNullFromProvides(CrpcContextProviderModule.INSTANCE.provideRemoteReaderCrpcRequestContextProvider(posInfoFactory, localIpAddressProvider));
    }
}
