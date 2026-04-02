package com.stripe.stripeterminal.internal.common.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothDiscoveryController;
import com.stripe.stripeterminal.internal.common.discovery.BbposProxyDiscoveryController;
import com.stripe.stripeterminal.internal.common.discovery.BbposUsbDiscoveryController;
import com.stripe.stripeterminal.internal.common.discovery.DefaultBluetoothDiscoveryController;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class BbposProxyDiscoveryModule_ProvideDiscoveryControllerFactory implements Factory<BbposProxyDiscoveryController> {
    private final Provider<BbposBluetoothDiscoveryController> bbposBluetoothDiscoveryControllerProvider;
    private final Provider<DefaultBluetoothDiscoveryController> defaultBluetoothDiscoveryControllerProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<BbposUsbDiscoveryController> usbDiscoveryControllerProvider;

    public BbposProxyDiscoveryModule_ProvideDiscoveryControllerFactory(Provider<DefaultBluetoothDiscoveryController> provider, Provider<BbposBluetoothDiscoveryController> provider2, Provider<BbposUsbDiscoveryController> provider3, Provider<LoggerFactory> provider4) {
        this.defaultBluetoothDiscoveryControllerProvider = provider;
        this.bbposBluetoothDiscoveryControllerProvider = provider2;
        this.usbDiscoveryControllerProvider = provider3;
        this.loggerFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public BbposProxyDiscoveryController get() {
        return provideDiscoveryController(this.defaultBluetoothDiscoveryControllerProvider.get(), this.bbposBluetoothDiscoveryControllerProvider.get(), this.usbDiscoveryControllerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static BbposProxyDiscoveryModule_ProvideDiscoveryControllerFactory create(Provider<DefaultBluetoothDiscoveryController> provider, Provider<BbposBluetoothDiscoveryController> provider2, Provider<BbposUsbDiscoveryController> provider3, Provider<LoggerFactory> provider4) {
        return new BbposProxyDiscoveryModule_ProvideDiscoveryControllerFactory(provider, provider2, provider3, provider4);
    }

    public static BbposProxyDiscoveryController provideDiscoveryController(DefaultBluetoothDiscoveryController defaultBluetoothDiscoveryController, BbposBluetoothDiscoveryController bbposBluetoothDiscoveryController, BbposUsbDiscoveryController bbposUsbDiscoveryController, LoggerFactory loggerFactory) {
        return (BbposProxyDiscoveryController) Preconditions.checkNotNullFromProvides(BbposProxyDiscoveryModule.INSTANCE.provideDiscoveryController(defaultBluetoothDiscoveryController, bbposBluetoothDiscoveryController, bbposUsbDiscoveryController, loggerFactory));
    }
}
