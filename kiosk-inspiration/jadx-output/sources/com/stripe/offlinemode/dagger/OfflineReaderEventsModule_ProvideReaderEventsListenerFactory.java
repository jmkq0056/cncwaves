package com.stripe.offlinemode.dagger;

import com.stripe.offlinemode.ReaderEventListener;
import com.stripe.stripeterminal.external.callable.OfflineListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineReaderEventsModule_ProvideReaderEventsListenerFactory implements Factory<ReaderEventListener> {
    private final Provider<OfflineListener> offlineListenerProvider;

    public OfflineReaderEventsModule_ProvideReaderEventsListenerFactory(Provider<OfflineListener> offlineListenerProvider) {
        this.offlineListenerProvider = offlineListenerProvider;
    }

    @Override // javax.inject.Provider
    public ReaderEventListener get() {
        return provideReaderEventsListener(this.offlineListenerProvider.get());
    }

    public static OfflineReaderEventsModule_ProvideReaderEventsListenerFactory create(Provider<OfflineListener> offlineListenerProvider) {
        return new OfflineReaderEventsModule_ProvideReaderEventsListenerFactory(offlineListenerProvider);
    }

    public static ReaderEventListener provideReaderEventsListener(OfflineListener offlineListener) {
        return (ReaderEventListener) Preconditions.checkNotNullFromProvides(OfflineReaderEventsModule.INSTANCE.provideReaderEventsListener(offlineListener));
    }
}
