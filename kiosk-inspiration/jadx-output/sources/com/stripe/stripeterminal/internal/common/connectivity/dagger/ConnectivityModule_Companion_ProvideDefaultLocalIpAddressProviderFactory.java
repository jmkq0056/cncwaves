package com.stripe.stripeterminal.internal.common.connectivity.dagger;

import com.stripe.stripeterminal.internal.common.connectivity.DefaultLocalIpAddressProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory implements Factory<DefaultLocalIpAddressProvider> {
    @Override // javax.inject.Provider
    public DefaultLocalIpAddressProvider get() {
        return provideDefaultLocalIpAddressProvider();
    }

    public static ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static DefaultLocalIpAddressProvider provideDefaultLocalIpAddressProvider() {
        return (DefaultLocalIpAddressProvider) Preconditions.checkNotNullFromProvides(ConnectivityModule.INSTANCE.provideDefaultLocalIpAddressProvider());
    }

    private static final class InstanceHolder {
        private static final ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory INSTANCE = new ConnectivityModule_Companion_ProvideDefaultLocalIpAddressProviderFactory();

        private InstanceHolder() {
        }
    }
}
