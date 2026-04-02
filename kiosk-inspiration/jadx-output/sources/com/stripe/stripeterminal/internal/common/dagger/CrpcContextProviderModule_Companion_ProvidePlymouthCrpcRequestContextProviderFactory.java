package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.jvmcore.crpcclient.interfaces.RpcSessionTokenProvider;
import com.stripe.jvmcore.terminal.api.PosInfoFactory;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.stripeterminal.internal.common.crpc.LocalIpAddressProvider;
import com.stripe.stripeterminal.internal.common.crpc.PlymouthRequestContextProvider;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory implements Factory<PlymouthRequestContextProvider> {
    private final Provider<ApplicationInformationProvider> applicationInformationProvider;
    private final Provider<LocalIpAddressProvider> localIpAddressProvider;
    private final Provider<PosInfoFactory> posInfoFactoryProvider;
    private final Provider<RpcSessionTokenProvider> rpcSessionTokenProvider;
    private final Provider<TerminalStatusManager> terminalStatusManagerProvider;

    public CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory(Provider<RpcSessionTokenProvider> provider, Provider<ApplicationInformationProvider> provider2, Provider<TerminalStatusManager> provider3, Provider<PosInfoFactory> provider4, Provider<LocalIpAddressProvider> provider5) {
        this.rpcSessionTokenProvider = provider;
        this.applicationInformationProvider = provider2;
        this.terminalStatusManagerProvider = provider3;
        this.posInfoFactoryProvider = provider4;
        this.localIpAddressProvider = provider5;
    }

    @Override // javax.inject.Provider
    public PlymouthRequestContextProvider get() {
        return providePlymouthCrpcRequestContextProvider(this.rpcSessionTokenProvider.get(), this.applicationInformationProvider.get(), this.terminalStatusManagerProvider.get(), this.posInfoFactoryProvider.get(), this.localIpAddressProvider.get());
    }

    public static CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory create(Provider<RpcSessionTokenProvider> provider, Provider<ApplicationInformationProvider> provider2, Provider<TerminalStatusManager> provider3, Provider<PosInfoFactory> provider4, Provider<LocalIpAddressProvider> provider5) {
        return new CrpcContextProviderModule_Companion_ProvidePlymouthCrpcRequestContextProviderFactory(provider, provider2, provider3, provider4, provider5);
    }

    public static PlymouthRequestContextProvider providePlymouthCrpcRequestContextProvider(RpcSessionTokenProvider rpcSessionTokenProvider, ApplicationInformationProvider applicationInformationProvider, TerminalStatusManager terminalStatusManager, PosInfoFactory posInfoFactory, LocalIpAddressProvider localIpAddressProvider) {
        return (PlymouthRequestContextProvider) Preconditions.checkNotNullFromProvides(CrpcContextProviderModule.INSTANCE.providePlymouthCrpcRequestContextProvider(rpcSessionTokenProvider, applicationInformationProvider, terminalStatusManager, posInfoFactory, localIpAddressProvider));
    }
}
