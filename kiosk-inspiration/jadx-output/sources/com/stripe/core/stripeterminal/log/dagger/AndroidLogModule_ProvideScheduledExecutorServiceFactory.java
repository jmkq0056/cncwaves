package com.stripe.core.stripeterminal.log.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidLogModule_ProvideScheduledExecutorServiceFactory implements Factory<ScheduledExecutorService> {
    @Override // javax.inject.Provider
    public ScheduledExecutorService get() {
        return provideScheduledExecutorService();
    }

    public static AndroidLogModule_ProvideScheduledExecutorServiceFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static ScheduledExecutorService provideScheduledExecutorService() {
        return (ScheduledExecutorService) Preconditions.checkNotNullFromProvides(AndroidLogModule.INSTANCE.provideScheduledExecutorService());
    }

    private static final class InstanceHolder {
        private static final AndroidLogModule_ProvideScheduledExecutorServiceFactory INSTANCE = new AndroidLogModule_ProvideScheduledExecutorServiceFactory();

        private InstanceHolder() {
        }
    }
}
