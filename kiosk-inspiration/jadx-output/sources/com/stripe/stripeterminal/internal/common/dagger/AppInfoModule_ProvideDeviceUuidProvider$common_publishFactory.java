package com.stripe.stripeterminal.internal.common.dagger;

import android.content.Context;
import com.stripe.core.device.HardwareManufacturer;
import com.stripe.core.device.SerialSupplier;
import com.stripe.stripeterminal.internal.common.deviceinfo.DeviceUuidSharedPrefsProvider;
import com.stripe.terminal.appinfo.DeviceUuidProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
public final class AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory implements Factory<DeviceUuidProvider> {
    private final Provider<Context> contextProvider;
    private final Provider<DeviceUuidSharedPrefsProvider> deviceUuidSharedPrefsProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<HardwareManufacturer> manufacturerProvider;
    private final AppInfoModule module;
    private final Provider<SerialSupplier> serialSupplierProvider;

    public AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory(AppInfoModule appInfoModule, Provider<DeviceUuidSharedPrefsProvider> provider, Provider<Context> provider2, Provider<CoroutineDispatcher> provider3, Provider<HardwareManufacturer> provider4, Provider<SerialSupplier> provider5) {
        this.module = appInfoModule;
        this.deviceUuidSharedPrefsProvider = provider;
        this.contextProvider = provider2;
        this.ioProvider = provider3;
        this.manufacturerProvider = provider4;
        this.serialSupplierProvider = provider5;
    }

    @Override // javax.inject.Provider
    public DeviceUuidProvider get() {
        return provideDeviceUuidProvider$common_publish(this.module, this.deviceUuidSharedPrefsProvider.get(), this.contextProvider.get(), this.ioProvider.get(), this.manufacturerProvider.get(), this.serialSupplierProvider.get());
    }

    public static AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory create(AppInfoModule appInfoModule, Provider<DeviceUuidSharedPrefsProvider> provider, Provider<Context> provider2, Provider<CoroutineDispatcher> provider3, Provider<HardwareManufacturer> provider4, Provider<SerialSupplier> provider5) {
        return new AppInfoModule_ProvideDeviceUuidProvider$common_publishFactory(appInfoModule, provider, provider2, provider3, provider4, provider5);
    }

    public static DeviceUuidProvider provideDeviceUuidProvider$common_publish(AppInfoModule appInfoModule, DeviceUuidSharedPrefsProvider deviceUuidSharedPrefsProvider, Context context, CoroutineDispatcher coroutineDispatcher, HardwareManufacturer hardwareManufacturer, SerialSupplier serialSupplier) {
        return (DeviceUuidProvider) Preconditions.checkNotNullFromProvides(appInfoModule.provideDeviceUuidProvider$common_publish(deviceUuidSharedPrefsProvider, context, coroutineDispatcher, hardwareManufacturer, serialSupplier));
    }
}
