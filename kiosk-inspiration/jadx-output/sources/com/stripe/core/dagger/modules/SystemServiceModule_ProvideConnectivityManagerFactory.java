package com.stripe.core.dagger.modules;

import android.content.Context;
import android.net.ConnectivityManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideConnectivityManagerFactory implements Factory<ConnectivityManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideConnectivityManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public ConnectivityManager get() {
        return provideConnectivityManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideConnectivityManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideConnectivityManagerFactory(provider);
    }

    public static ConnectivityManager provideConnectivityManager(Context context) {
        return (ConnectivityManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideConnectivityManager(context));
    }
}
