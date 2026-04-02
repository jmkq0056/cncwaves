package com.stripe.core.bbpos.hardware.dagger;

import com.stripe.core.bbpos.hardware.DeviceListenerRegistryImpl;
import com.stripe.core.bbpos.hardware.api.DeviceListenerWrapper;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DeviceListenerModule_ProvideListenerRegistry$hardware_releaseFactory implements Factory<DeviceListenerRegistryImpl> {
    private final Provider<DeviceListenerWrapper> encryptionHandlerProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<DeviceListenerWrapper> missingKeyHandlerProvider;
    private final Provider<DeviceListenerWrapper> observabilityHandlerProvider;
    private final Provider<DeviceListenerWrapper> readerStatusHandlerProvider;

    public DeviceListenerModule_ProvideListenerRegistry$hardware_releaseFactory(Provider<DeviceListenerWrapper> provider, Provider<DeviceListenerWrapper> provider2, Provider<DeviceListenerWrapper> provider3, Provider<DeviceListenerWrapper> provider4, Provider<LoggerFactory> provider5) {
        this.encryptionHandlerProvider = provider;
        this.observabilityHandlerProvider = provider2;
        this.missingKeyHandlerProvider = provider3;
        this.readerStatusHandlerProvider = provider4;
        this.loggerFactoryProvider = provider5;
    }

    @Override // javax.inject.Provider
    public DeviceListenerRegistryImpl get() {
        return provideListenerRegistry$hardware_release(this.encryptionHandlerProvider.get(), this.observabilityHandlerProvider.get(), this.missingKeyHandlerProvider.get(), this.readerStatusHandlerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static DeviceListenerModule_ProvideListenerRegistry$hardware_releaseFactory create(Provider<DeviceListenerWrapper> provider, Provider<DeviceListenerWrapper> provider2, Provider<DeviceListenerWrapper> provider3, Provider<DeviceListenerWrapper> provider4, Provider<LoggerFactory> provider5) {
        return new DeviceListenerModule_ProvideListenerRegistry$hardware_releaseFactory(provider, provider2, provider3, provider4, provider5);
    }

    public static DeviceListenerRegistryImpl provideListenerRegistry$hardware_release(DeviceListenerWrapper deviceListenerWrapper, DeviceListenerWrapper deviceListenerWrapper2, DeviceListenerWrapper deviceListenerWrapper3, DeviceListenerWrapper deviceListenerWrapper4, LoggerFactory loggerFactory) {
        return (DeviceListenerRegistryImpl) Preconditions.checkNotNullFromProvides(DeviceListenerModule.INSTANCE.provideListenerRegistry$hardware_release(deviceListenerWrapper, deviceListenerWrapper2, deviceListenerWrapper3, deviceListenerWrapper4, loggerFactory));
    }
}
