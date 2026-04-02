package com.stripe.core.dagger.modules;

import android.content.Context;
import android.telephony.TelephonyManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideTelephonyManagerFactory implements Factory<TelephonyManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideTelephonyManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public TelephonyManager get() {
        return provideTelephonyManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideTelephonyManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideTelephonyManagerFactory(provider);
    }

    public static TelephonyManager provideTelephonyManager(Context context) {
        return (TelephonyManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideTelephonyManager(context));
    }
}
