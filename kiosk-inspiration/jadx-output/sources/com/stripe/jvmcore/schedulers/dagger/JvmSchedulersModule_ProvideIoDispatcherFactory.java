package com.stripe.jvmcore.schedulers.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmSchedulersModule_ProvideIoDispatcherFactory implements Factory<CoroutineDispatcher> {
    @Override // javax.inject.Provider
    public CoroutineDispatcher get() {
        return provideIoDispatcher();
    }

    public static JvmSchedulersModule_ProvideIoDispatcherFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CoroutineDispatcher provideIoDispatcher() {
        return (CoroutineDispatcher) Preconditions.checkNotNullFromProvides(JvmSchedulersModule.INSTANCE.provideIoDispatcher());
    }

    private static final class InstanceHolder {
        private static final JvmSchedulersModule_ProvideIoDispatcherFactory INSTANCE = new JvmSchedulersModule_ProvideIoDispatcherFactory();

        private InstanceHolder() {
        }
    }
}
