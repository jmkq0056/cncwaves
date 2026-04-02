package com.stripe.jvmcore.schedulers.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmSchedulersModule_ProvideComputationDispatcherFactory implements Factory<CoroutineDispatcher> {
    @Override // javax.inject.Provider
    public CoroutineDispatcher get() {
        return provideComputationDispatcher();
    }

    public static JvmSchedulersModule_ProvideComputationDispatcherFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CoroutineDispatcher provideComputationDispatcher() {
        return (CoroutineDispatcher) Preconditions.checkNotNullFromProvides(JvmSchedulersModule.INSTANCE.provideComputationDispatcher());
    }

    private static final class InstanceHolder {
        private static final JvmSchedulersModule_ProvideComputationDispatcherFactory INSTANCE = new JvmSchedulersModule_ProvideComputationDispatcherFactory();

        private InstanceHolder() {
        }
    }
}
