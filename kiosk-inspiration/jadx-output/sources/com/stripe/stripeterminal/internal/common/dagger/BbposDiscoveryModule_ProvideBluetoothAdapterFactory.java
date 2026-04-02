package com.stripe.stripeterminal.internal.common.dagger;

import android.bluetooth.BluetoothAdapter;
import dagger.internal.Factory;

/* JADX INFO: loaded from: classes4.dex */
public final class BbposDiscoveryModule_ProvideBluetoothAdapterFactory implements Factory<BluetoothAdapter> {
    @Override // javax.inject.Provider
    public BluetoothAdapter get() {
        return provideBluetoothAdapter();
    }

    public static BbposDiscoveryModule_ProvideBluetoothAdapterFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static BluetoothAdapter provideBluetoothAdapter() {
        return BbposDiscoveryModule.INSTANCE.provideBluetoothAdapter();
    }

    private static final class InstanceHolder {
        private static final BbposDiscoveryModule_ProvideBluetoothAdapterFactory INSTANCE = new BbposDiscoveryModule_ProvideBluetoothAdapterFactory();

        private InstanceHolder() {
        }
    }
}
