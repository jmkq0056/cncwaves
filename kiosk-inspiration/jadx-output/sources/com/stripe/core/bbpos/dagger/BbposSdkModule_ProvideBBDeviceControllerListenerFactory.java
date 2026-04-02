package com.stripe.core.bbpos.dagger;

import com.stripe.bbpos.bbdevice.BBDeviceController;
import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.core.bbpos.mappers.DeviceInfoCache;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposSdkModule_ProvideBBDeviceControllerListenerFactory implements Factory<BBDeviceController.BBDeviceControllerListener> {
    private final Provider<DeviceInfoCache> deviceInfoCacheProvider;
    private final Provider<DeviceListenerWrapper> listenerProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final BbposSdkModule module;

    public BbposSdkModule_ProvideBBDeviceControllerListenerFactory(BbposSdkModule bbposSdkModule, Provider<DeviceListenerWrapper> provider, Provider<DeviceInfoCache> provider2, Provider<LoggerFactory> provider3) {
        this.module = bbposSdkModule;
        this.listenerProvider = provider;
        this.deviceInfoCacheProvider = provider2;
        this.loggerFactoryProvider = provider3;
    }

    @Override // javax.inject.Provider
    public BBDeviceController.BBDeviceControllerListener get() {
        return provideBBDeviceControllerListener(this.module, this.listenerProvider.get(), this.deviceInfoCacheProvider.get(), this.loggerFactoryProvider.get());
    }

    public static BbposSdkModule_ProvideBBDeviceControllerListenerFactory create(BbposSdkModule bbposSdkModule, Provider<DeviceListenerWrapper> provider, Provider<DeviceInfoCache> provider2, Provider<LoggerFactory> provider3) {
        return new BbposSdkModule_ProvideBBDeviceControllerListenerFactory(bbposSdkModule, provider, provider2, provider3);
    }

    public static BBDeviceController.BBDeviceControllerListener provideBBDeviceControllerListener(BbposSdkModule bbposSdkModule, DeviceListenerWrapper deviceListenerWrapper, DeviceInfoCache deviceInfoCache, LoggerFactory loggerFactory) {
        return (BBDeviceController.BBDeviceControllerListener) Preconditions.checkNotNullFromProvides(bbposSdkModule.provideBBDeviceControllerListener(deviceListenerWrapper, deviceInfoCache, loggerFactory));
    }
}
