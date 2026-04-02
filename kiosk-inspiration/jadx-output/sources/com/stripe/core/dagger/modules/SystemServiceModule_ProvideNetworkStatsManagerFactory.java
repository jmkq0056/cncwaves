package com.stripe.core.dagger.modules;

import android.app.usage.NetworkStatsManager;
import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideNetworkStatsManagerFactory implements Factory<NetworkStatsManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideNetworkStatsManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public NetworkStatsManager get() {
        return provideNetworkStatsManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideNetworkStatsManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideNetworkStatsManagerFactory(provider);
    }

    public static NetworkStatsManager provideNetworkStatsManager(Context context) {
        return (NetworkStatsManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideNetworkStatsManager(context));
    }
}
