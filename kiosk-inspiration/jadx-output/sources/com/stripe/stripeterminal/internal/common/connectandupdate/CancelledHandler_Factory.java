package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.readerupdate.UpdateInstaller;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class CancelledHandler_Factory implements Factory<CancelledHandler> {
    private final Provider<DiscoveryController> discoveryControllerProvider;
    private final Provider<UpdateInstaller> updateInstallerProvider;

    public CancelledHandler_Factory(Provider<DiscoveryController> provider, Provider<UpdateInstaller> provider2) {
        this.discoveryControllerProvider = provider;
        this.updateInstallerProvider = provider2;
    }

    @Override // javax.inject.Provider
    public CancelledHandler get() {
        return newInstance(this.discoveryControllerProvider.get(), this.updateInstallerProvider.get());
    }

    public static CancelledHandler_Factory create(Provider<DiscoveryController> provider, Provider<UpdateInstaller> provider2) {
        return new CancelledHandler_Factory(provider, provider2);
    }

    public static CancelledHandler newInstance(DiscoveryController discoveryController, UpdateInstaller updateInstaller) {
        return new CancelledHandler(discoveryController, updateInstaller);
    }
}
