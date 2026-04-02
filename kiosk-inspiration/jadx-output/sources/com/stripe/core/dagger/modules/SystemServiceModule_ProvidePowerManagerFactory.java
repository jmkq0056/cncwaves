package com.stripe.core.dagger.modules;

import android.content.Context;
import android.os.PowerManager;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvidePowerManagerFactory implements Factory<PowerManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvidePowerManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public PowerManager get() {
        return providePowerManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvidePowerManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvidePowerManagerFactory(provider);
    }

    public static PowerManager providePowerManager(Context context) {
        return (PowerManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.providePowerManager(context));
    }
}
