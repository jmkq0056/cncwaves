package com.stripe.core.dagger.modules;

import android.app.admin.DevicePolicyManager;
import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideDevicePolicyManagerFactory implements Factory<DevicePolicyManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideDevicePolicyManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public DevicePolicyManager get() {
        return provideDevicePolicyManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideDevicePolicyManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideDevicePolicyManagerFactory(provider);
    }

    public static DevicePolicyManager provideDevicePolicyManager(Context context) {
        return (DevicePolicyManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideDevicePolicyManager(context));
    }
}
