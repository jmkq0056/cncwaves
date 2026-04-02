package com.stripe.stripeterminal.internal.common.connectandupdate;

import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class DiscoveryHandler_Factory implements Factory<DiscoveryHandler> {
    private final Provider<DiscoveryController> discoveryControllerProvider;

    public DiscoveryHandler_Factory(Provider<DiscoveryController> provider) {
        this.discoveryControllerProvider = provider;
    }

    @Override // javax.inject.Provider
    public DiscoveryHandler get() {
        return newInstance(this.discoveryControllerProvider.get());
    }

    public static DiscoveryHandler_Factory create(Provider<DiscoveryController> provider) {
        return new DiscoveryHandler_Factory(provider);
    }

    public static DiscoveryHandler newInstance(DiscoveryController discoveryController) {
        return new DiscoveryHandler(discoveryController);
    }
}
