package com.stripe.core.storage;

import android.content.Context;
import dagger.internal.Factory;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class AndroidKeyValueStore_Factory implements Factory<AndroidKeyValueStore> {
    private final Provider<Context> contextProvider;
    private final Provider<CoroutineDispatcher> dispatcherProvider;

    public AndroidKeyValueStore_Factory(Provider<Context> contextProvider, Provider<CoroutineDispatcher> dispatcherProvider) {
        this.contextProvider = contextProvider;
        this.dispatcherProvider = dispatcherProvider;
    }

    @Override // javax.inject.Provider
    public AndroidKeyValueStore get() {
        return newInstance(this.contextProvider.get(), this.dispatcherProvider.get());
    }

    public static AndroidKeyValueStore_Factory create(Provider<Context> contextProvider, Provider<CoroutineDispatcher> dispatcherProvider) {
        return new AndroidKeyValueStore_Factory(contextProvider, dispatcherProvider);
    }

    public static AndroidKeyValueStore newInstance(Context context, CoroutineDispatcher dispatcher) {
        return new AndroidKeyValueStore(context, dispatcher);
    }
}
