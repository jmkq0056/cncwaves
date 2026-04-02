package com.stripe.stripeterminal.internal.common.dagger;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.le.BluetoothLeScanner;
import dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class BbposDiscoveryModule_ProvideBluetoothLeScannerFactory implements Factory<BluetoothLeScanner> {
    private final Provider<BluetoothAdapter> adapterProvider;

    public BbposDiscoveryModule_ProvideBluetoothLeScannerFactory(Provider<BluetoothAdapter> provider) {
        this.adapterProvider = provider;
    }

    @Override // javax.inject.Provider
    public BluetoothLeScanner get() {
        return provideBluetoothLeScanner(this.adapterProvider.get());
    }

    public static BbposDiscoveryModule_ProvideBluetoothLeScannerFactory create(Provider<BluetoothAdapter> provider) {
        return new BbposDiscoveryModule_ProvideBluetoothLeScannerFactory(provider);
    }

    public static BluetoothLeScanner provideBluetoothLeScanner(BluetoothAdapter bluetoothAdapter) {
        return BbposDiscoveryModule.INSTANCE.provideBluetoothLeScanner(bluetoothAdapter);
    }
}
