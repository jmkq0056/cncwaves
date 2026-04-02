package com.stripe.core.bbpos.dagger;

import com.stripe.core.bbpos.mappers.DeviceInfoCache;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory implements Factory<DeviceInfoCache> {
    private final BbposSdkModule module;

    public BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory(BbposSdkModule bbposSdkModule) {
        this.module = bbposSdkModule;
    }

    @Override // javax.inject.Provider
    public DeviceInfoCache get() {
        return provideDeviceInfoCache$sdk_release(this.module);
    }

    public static BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory create(BbposSdkModule bbposSdkModule) {
        return new BbposSdkModule_ProvideDeviceInfoCache$sdk_releaseFactory(bbposSdkModule);
    }

    public static DeviceInfoCache provideDeviceInfoCache$sdk_release(BbposSdkModule bbposSdkModule) {
        return (DeviceInfoCache) Preconditions.checkNotNullFromProvides(bbposSdkModule.provideDeviceInfoCache$sdk_release());
    }
}
