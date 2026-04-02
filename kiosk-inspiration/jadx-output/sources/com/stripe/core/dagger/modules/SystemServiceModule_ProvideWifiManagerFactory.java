package com.stripe.core.dagger.modules;

import android.content.Context;
import android.net.wifi.WifiManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideWifiManagerFactory implements Factory<WifiManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideWifiManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public WifiManager get() {
        return provideWifiManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideWifiManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideWifiManagerFactory(provider);
    }

    public static WifiManager provideWifiManager(Context context) {
        return (WifiManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideWifiManager(context));
    }
}
