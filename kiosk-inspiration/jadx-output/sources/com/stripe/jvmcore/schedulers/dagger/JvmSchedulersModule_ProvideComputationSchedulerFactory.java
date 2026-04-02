package com.stripe.jvmcore.schedulers.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.rxjava3.core.Scheduler;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmSchedulersModule_ProvideComputationSchedulerFactory implements Factory<Scheduler> {
    @Override // javax.inject.Provider
    public Scheduler get() {
        return provideComputationScheduler();
    }

    public static JvmSchedulersModule_ProvideComputationSchedulerFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static Scheduler provideComputationScheduler() {
        return (Scheduler) Preconditions.checkNotNullFromProvides(JvmSchedulersModule.INSTANCE.provideComputationScheduler());
    }

    private static final class InstanceHolder {
        private static final JvmSchedulersModule_ProvideComputationSchedulerFactory INSTANCE = new JvmSchedulersModule_ProvideComputationSchedulerFactory();

        private InstanceHolder() {
        }
    }
}
