package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothScanner;
import com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory implements Factory<DefaultBluetoothDiscoveryController> {
    private final Provider<BbposBluetoothScanner> bluetoothScannerProvider;
    private final Provider<Clock> clockProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<ReaderStatusListener> readerStatusListenerProvider;

    public BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory(Provider<CoroutineDispatcher> provider, Provider<BbposBluetoothScanner> provider2, Provider<ReaderStatusListener> provider3, Provider<Clock> provider4) {
        this.ioProvider = provider;
        this.bluetoothScannerProvider = provider2;
        this.readerStatusListenerProvider = provider3;
        this.clockProvider = provider4;
    }

    @Override // javax.inject.Provider
    public DefaultBluetoothDiscoveryController get() {
        return provideDefaultBluetoothDiscoveryController(this.ioProvider.get(), this.bluetoothScannerProvider.get(), this.readerStatusListenerProvider.get(), this.clockProvider.get());
    }

    public static BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory create(Provider<CoroutineDispatcher> provider, Provider<BbposBluetoothScanner> provider2, Provider<ReaderStatusListener> provider3, Provider<Clock> provider4) {
        return new BbposDiscoveryModule_ProvideDefaultBluetoothDiscoveryControllerFactory(provider, provider2, provider3, provider4);
    }

    public static DefaultBluetoothDiscoveryController provideDefaultBluetoothDiscoveryController(CoroutineDispatcher coroutineDispatcher, BbposBluetoothScanner bbposBluetoothScanner, ReaderStatusListener readerStatusListener, Clock clock) {
        return (DefaultBluetoothDiscoveryController) Preconditions.checkNotNullFromProvides(BbposDiscoveryModule.INSTANCE.provideDefaultBluetoothDiscoveryController(coroutineDispatcher, bbposBluetoothScanner, readerStatusListener, clock));
    }
}
