package com.stripe.core.dagger.modules;

import android.app.NotificationManager;
import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemServiceModule_ProvideNotificationManagerFactory implements Factory<NotificationManager> {
    private final Provider<Context> contextProvider;

    public SystemServiceModule_ProvideNotificationManagerFactory(Provider<Context> provider) {
        this.contextProvider = provider;
    }

    @Override // javax.inject.Provider
    public NotificationManager get() {
        return provideNotificationManager(this.contextProvider.get());
    }

    public static SystemServiceModule_ProvideNotificationManagerFactory create(Provider<Context> provider) {
        return new SystemServiceModule_ProvideNotificationManagerFactory(provider);
    }

    public static NotificationManager provideNotificationManager(Context context) {
        return (NotificationManager) Preconditions.checkNotNullFromProvides(SystemServiceModule.INSTANCE.provideNotificationManager(context));
    }
}
