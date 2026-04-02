package com.stripe.offlinemode.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineStorageModule_ProvideCoroutineDispatcherFactory implements Factory<CoroutineDispatcher> {
    @Override // javax.inject.Provider
    public CoroutineDispatcher get() {
        return provideCoroutineDispatcher();
    }

    public static OfflineStorageModule_ProvideCoroutineDispatcherFactory create() {
        return InstanceHolder.INSTANCE;
    }

    public static CoroutineDispatcher provideCoroutineDispatcher() {
        return (CoroutineDispatcher) Preconditions.checkNotNullFromProvides(OfflineStorageModule.INSTANCE.provideCoroutineDispatcher());
    }

    private static final class InstanceHolder {
        private static final OfflineStorageModule_ProvideCoroutineDispatcherFactory INSTANCE = new OfflineStorageModule_ProvideCoroutineDispatcherFactory();

        private InstanceHolder() {
        }
    }
}
