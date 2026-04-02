package com.stripe.core.bbpos.hardware.dagger;

import android.hardware.usb.UsbManager;
import com.stripe.core.bbpos.hardware.BbposReaderConnectionController;
import com.stripe.core.bbpos.hardware.api.DeviceControllerWrapper;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory implements Factory<BbposReaderConnectionController> {
    private final Provider<DeviceControllerWrapper> deviceControllerProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<UsbManager> usbManagerProvider;

    public BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory(Provider<DeviceControllerWrapper> provider, Provider<UsbManager> provider2, Provider<LoggerFactory> provider3) {
        this.deviceControllerProvider = provider;
        this.usbManagerProvider = provider2;
        this.loggerFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public BbposReaderConnectionController get() {
        return provideBbposReaderConnectionController(this.deviceControllerProvider.get(), this.usbManagerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory create(Provider<DeviceControllerWrapper> provider, Provider<UsbManager> provider2, Provider<LoggerFactory> provider3) {
        return new BbposConnectionAndInfoModule_ProvideBbposReaderConnectionControllerFactory(provider, provider2, provider3);
    }

    public static BbposReaderConnectionController provideBbposReaderConnectionController(DeviceControllerWrapper deviceControllerWrapper, UsbManager usbManager, LoggerFactory loggerFactory) {
        return (BbposReaderConnectionController) Preconditions.checkNotNullFromProvides(BbposConnectionAndInfoModule.INSTANCE.provideBbposReaderConnectionController(deviceControllerWrapper, usbManager, loggerFactory));
    }
}
