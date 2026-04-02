package com.stripe.core.dagger.modules;

import android.app.ActivityManager;
import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideActivityManagerFactory implements Factory<ActivityManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideActivityManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public ActivityManager get() {
        return provideActivityManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideActivityManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideActivityManagerFactory(provider);
    }

    public static ActivityManager provideActivityManager(Context context) {
        return (ActivityManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideActivityManager(context));
    }
}
