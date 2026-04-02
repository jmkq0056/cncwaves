package com.stripe.stripeterminal.internal.common.dagger;

import android.hardware.usb.UsbManager;
import com.stripe.core.hardware.status.ReaderStatusListener;
import com.stripe.stripeterminal.internal.common.discovery.BbposUsbDiscoveryController;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
public final class BbposDiscoveryModule_ProvideBbposUsbDiscoveryControllerFactory implements Factory<BbposUsbDiscoveryController> {
    private final Provider<CoroutineScope> appScopeProvider;
    private final Provider<ReaderStatusListener> readerStatusListenerProvider;
    private final Provider<UsbManager> usbManagerProvider;

    public BbposDiscoveryModule_ProvideBbposUsbDiscoveryControllerFactory(Provider<CoroutineScope> provider, Provider<ReaderStatusListener> provider2, Provider<UsbManager> provider3) {
        this.appScopeProvider = provider;
        this.readerStatusListenerProvider = provider2;
        this.usbManagerProvider = provider3;
    }

    @Override // javax.inject.Provider
    public BbposUsbDiscoveryController get() {
        return provideBbposUsbDiscoveryController(this.appScopeProvider.get(), this.readerStatusListenerProvider.get(), this.usbManagerProvider.get());
    }

    public static BbposDiscoveryModule_ProvideBbposUsbDiscoveryControllerFactory create(Provider<CoroutineScope> provider, Provider<ReaderStatusListener> provider2, Provider<UsbManager> provider3) {
        return new BbposDiscoveryModule_ProvideBbposUsbDiscoveryControllerFactory(provider, provider2, provider3);
    }

    public static BbposUsbDiscoveryController provideBbposUsbDiscoveryController(CoroutineScope coroutineScope, ReaderStatusListener readerStatusListener, UsbManager usbManager) {
        return (BbposUsbDiscoveryController) Preconditions.checkNotNullFromProvides(BbposDiscoveryModule.INSTANCE.provideBbposUsbDiscoveryController(coroutineScope, readerStatusListener, usbManager));
    }
}
