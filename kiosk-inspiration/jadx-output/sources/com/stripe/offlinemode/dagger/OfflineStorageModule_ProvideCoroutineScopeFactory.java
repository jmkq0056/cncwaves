package com.stripe.offlinemode.dagger;

import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineStorageModule_ProvideCoroutineScopeFactory implements Factory<CoroutineScope> {
    private final Provider<CoroutineDispatcher> dispatcherProvider;

    public OfflineStorageModule_ProvideCoroutineScopeFactory(Provider<CoroutineDispatcher> dispatcherProvider) {
        this.dispatcherProvider = dispatcherProvider;
    }

    @Override // javax.inject.Provider
    public CoroutineScope get() {
        return provideCoroutineScope(this.dispatcherProvider.get());
    }

    public static OfflineStorageModule_ProvideCoroutineScopeFactory create(Provider<CoroutineDispatcher> dispatcherProvider) {
        return new OfflineStorageModule_ProvideCoroutineScopeFactory(dispatcherProvider);
    }

    public static CoroutineScope provideCoroutineScope(CoroutineDispatcher dispatcher) {
        return (CoroutineScope) Preconditions.checkNotNullFromProvides(OfflineStorageModule.INSTANCE.provideCoroutineScope(dispatcher));
    }
}
