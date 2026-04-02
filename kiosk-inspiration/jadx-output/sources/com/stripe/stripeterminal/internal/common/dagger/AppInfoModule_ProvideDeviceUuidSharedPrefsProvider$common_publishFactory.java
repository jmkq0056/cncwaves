package com.stripe.stripeterminal.internal.common.dagger;

import android.content.Context;
import com.stripe.stripeterminal.internal.common.deviceinfo.DeviceUuidSharedPrefsProvider;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes4.dex */
public final class AppInfoModule_ProvideDeviceUuidSharedPrefsProvider$common_publishFactory implements Factory<DeviceUuidSharedPrefsProvider> {
    private final Provider<Context> contextProvider;
    private final AppInfoModule module;

    public AppInfoModule_ProvideDeviceUuidSharedPrefsProvider$common_publishFactory(AppInfoModule appInfoModule, Provider<Context> provider) {
        this.module = appInfoModule;
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public DeviceUuidSharedPrefsProvider get() {
        return provideDeviceUuidSharedPrefsProvider$common_publish(this.module, this.contextProvider.get());
    }

    public static AppInfoModule_ProvideDeviceUuidSharedPrefsProvider$common_publishFactory create(AppInfoModule appInfoModule, Provider<Context> provider) {
        return new AppInfoModule_ProvideDeviceUuidSharedPrefsProvider$common_publishFactory(appInfoModule, provider);
    }

    public static DeviceUuidSharedPrefsProvider provideDeviceUuidSharedPrefsProvider$common_publish(AppInfoModule appInfoModule, Context context) {
        return (DeviceUuidSharedPrefsProvider) Preconditions.checkNotNullFromProvides(appInfoModule.provideDeviceUuidSharedPrefsProvider$common_publish(context));
    }
}
