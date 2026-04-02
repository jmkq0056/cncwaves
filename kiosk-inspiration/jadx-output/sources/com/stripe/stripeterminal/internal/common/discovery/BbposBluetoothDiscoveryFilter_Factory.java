package com.stripe.stripeterminal.internal.common.discovery;

import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class BbposBluetoothDiscoveryFilter_Factory implements Factory<BbposBluetoothDiscoveryFilter> {
    @Override // javax.inject.Provider
    public BbposBluetoothDiscoveryFilter get() {
        return newInstance();
    }

    public static BbposBluetoothDiscoveryFilter_Factory create() {
        return InstanceHolder.INSTANCE;
    }

    public static BbposBluetoothDiscoveryFilter newInstance() {
        return new BbposBluetoothDiscoveryFilter();
    }

    private static final class InstanceHolder {
        private static final BbposBluetoothDiscoveryFilter_Factory INSTANCE = new BbposBluetoothDiscoveryFilter_Factory();

        private InstanceHolder() {
        }
    }
}
