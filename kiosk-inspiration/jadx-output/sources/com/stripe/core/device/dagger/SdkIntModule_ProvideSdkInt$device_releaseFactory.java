package com.stripe.core.device.dagger;

import com.stripe.core.device.SdkInt;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class SdkIntModule_ProvideSdkInt$device_releaseFactory implements Factory<SdkInt> {
    private final SdkIntModule module;

    public SdkIntModule_ProvideSdkInt$device_releaseFactory(SdkIntModule sdkIntModule) {
        this.module = sdkIntModule;
    }

    @Override // javax.inject.Provider
    public SdkInt get() {
        return provideSdkInt$device_release(this.module);
    }

    public static SdkIntModule_ProvideSdkInt$device_releaseFactory create(SdkIntModule sdkIntModule) {
        return new SdkIntModule_ProvideSdkInt$device_releaseFactory(sdkIntModule);
    }

    public static SdkInt provideSdkInt$device_release(SdkIntModule sdkIntModule) {
        return (SdkInt) Preconditions.checkNotNullFromProvides(sdkIntModule.provideSdkInt$device_release());
    }
}
