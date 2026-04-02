package com.stripe.core.schedulers.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class SchedulersModule_ProvideMainDispatcherFactory implements Factory<CoroutineDispatcher> {
    @Override // javax.inject.Provider
    public CoroutineDispatcher get() {
        return provideMainDispatcher();
    }

    public static SchedulersModule_ProvideMainDispatcherFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CoroutineDispatcher provideMainDispatcher() {
        return (CoroutineDispatcher) Preconditions.checkNotNullFromProvides(SchedulersModule.INSTANCE.provideMainDispatcher());
    }

    private static final class InstanceHolder {
        private static final SchedulersModule_ProvideMainDispatcherFactory INSTANCE = new SchedulersModule_ProvideMainDispatcherFactory();

        private InstanceHolder() {
        }
    }
}
