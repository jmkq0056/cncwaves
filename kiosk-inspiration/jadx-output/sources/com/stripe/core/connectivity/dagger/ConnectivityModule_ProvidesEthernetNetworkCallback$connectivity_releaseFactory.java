package com.stripe.core.connectivity.dagger;

import com.stripe.core.connectivity.ethernet.EthernetNetworkCallback;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory implements Factory<EthernetNetworkCallback> {
    @Override // javax.inject.Provider
    public EthernetNetworkCallback get() {
        return providesEthernetNetworkCallback$connectivity_release();
    }

    public static ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static EthernetNetworkCallback providesEthernetNetworkCallback$connectivity_release() {
        return (EthernetNetworkCallback) Preconditions.checkNotNullFromProvides(ConnectivityModule.INSTANCE.providesEthernetNetworkCallback$connectivity_release());
    }

    /* JADX INFO: compiled from: ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory.java */
    private static final class InstanceHolder {
        private static final ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory INSTANCE = new ConnectivityModule_ProvidesEthernetNetworkCallback$connectivity_releaseFactory();

        private InstanceHolder() {
        }
    }
}
