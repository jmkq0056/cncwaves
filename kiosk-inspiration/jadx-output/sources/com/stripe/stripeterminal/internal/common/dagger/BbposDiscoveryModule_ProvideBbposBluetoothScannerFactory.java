package com.stripe.stripeterminal.internal.common.dagger;

import android.bluetooth.le.BluetoothLeScanner;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothScanner;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory implements Factory<BbposBluetoothScanner> {
    private final Provider<CoroutineDispatcher> dispatcherProvider;
    private final Provider<ReaderStatusListener> readerStatusListenerProvider;
    private final Provider<BluetoothLeScanner> scannerProvider;

    public BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory(Provider<CoroutineDispatcher> provider, Provider<ReaderStatusListener> provider2, Provider<BluetoothLeScanner> provider3) {
        this.dispatcherProvider = provider;
        this.readerStatusListenerProvider = provider2;
        this.scannerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public BbposBluetoothScanner get() {
        return provideBbposBluetoothScanner(this.dispatcherProvider.get(), this.readerStatusListenerProvider.get(), this.scannerProvider);
    }

    public static BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory create(Provider<CoroutineDispatcher> provider, Provider<ReaderStatusListener> provider2, Provider<BluetoothLeScanner> provider3) {
        return new BbposDiscoveryModule_ProvideBbposBluetoothScannerFactory(provider, provider2, provider3);
    }

    public static BbposBluetoothScanner provideBbposBluetoothScanner(CoroutineDispatcher coroutineDispatcher, ReaderStatusListener readerStatusListener, Provider<BluetoothLeScanner> provider) {
        return (BbposBluetoothScanner) Preconditions.checkNotNullFromProvides(BbposDiscoveryModule.INSTANCE.provideBbposBluetoothScanner(coroutineDispatcher, readerStatusListener, provider));
    }
}
