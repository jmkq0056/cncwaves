package com.stripe.core.hardware.reactive.dagger;

import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory implements Factory<ReaderUpdateListener> {
    private final Provider<ReactiveReaderUpdateListener> listenerProvider;

    public ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory(Provider<ReactiveReaderUpdateListener> provider) {
        this.listenerProvider = provider;
    }

    @Override // javax.inject.Provider
    public ReaderUpdateListener get() {
        return provideReaderUpdateListener(this.listenerProvider.get());
    }

    public static ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory create(Provider<ReactiveReaderUpdateListener> provider) {
        return new ReaderUpdateListenerModule_ProvideReaderUpdateListenerFactory(provider);
    }

    public static ReaderUpdateListener provideReaderUpdateListener(ReactiveReaderUpdateListener reactiveReaderUpdateListener) {
        return (ReaderUpdateListener) Preconditions.checkNotNullFromProvides(ReaderUpdateListenerModule.INSTANCE.provideReaderUpdateListener(reactiveReaderUpdateListener));
    }
}
