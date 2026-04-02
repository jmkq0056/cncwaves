package com.stripe.jvmcore.schedulers.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.rxjava3.core.Scheduler;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmSchedulersModule_ProvideIoSchedulerFactory implements Factory<Scheduler> {
    @Override // javax.inject.Provider
    public Scheduler get() {
        return provideIoScheduler();
    }

    public static JvmSchedulersModule_ProvideIoSchedulerFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Scheduler provideIoScheduler() {
        return (Scheduler) Preconditions.checkNotNullFromProvides(JvmSchedulersModule.INSTANCE.provideIoScheduler());
    }

    private static final class InstanceHolder {
        private static final JvmSchedulersModule_ProvideIoSchedulerFactory INSTANCE = new JvmSchedulersModule_ProvideIoSchedulerFactory();

        private InstanceHolder() {
        }
    }
}
