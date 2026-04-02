package com.stripe.device.dagger;

import com.stripe.device.DeviceInfoRepository;
import com.stripe.device.PlatformDeviceInfo;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory implements Factory<DeviceInfoRepository> {
    private final Provider<PlatformDeviceInfo> platformDeviceInfoProvider;

    public DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory(Provider<PlatformDeviceInfo> provider) {
        this.platformDeviceInfoProvider = provider;
    }

    @Override // javax.inject.Provider
    public DeviceInfoRepository get() {
        return provideDeviceInfoRepository$wiring(this.platformDeviceInfoProvider);
    }

    public static DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory create(Provider<PlatformDeviceInfo> provider) {
        return new DeviceInfoModule_ProvideDeviceInfoRepository$wiringFactory(provider);
    }

    public static DeviceInfoRepository provideDeviceInfoRepository$wiring(Provider<PlatformDeviceInfo> provider) {
        return (DeviceInfoRepository) Preconditions.checkNotNullFromProvides(DeviceInfoModule.INSTANCE.provideDeviceInfoRepository$wiring(provider));
    }
}
