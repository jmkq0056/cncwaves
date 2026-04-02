package com.stripe.jvmcore.offlinemode.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.offlinemode.readerevent.ReaderEventContracts;
import com.stripe.jvmcore.offlinemode.readerevent.UnacknowledgedReaderEventsHandler;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory implements Factory<UnacknowledgedReaderEventsHandler> {
    private final Provider<CoroutineDispatcher> dispatcherProvider;
    private final Provider<ReaderEventContracts.Fetcher> fetcherProvider;
    private final Provider<ReaderEventContracts.Listener> listenerProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final JvmOfflineModule module;

    public JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory(JvmOfflineModule jvmOfflineModule, Provider<CoroutineDispatcher> provider, Provider<ReaderEventContracts.Fetcher> provider2, Provider<ReaderEventContracts.Listener> provider3, Provider<LoggerFactory> provider4) {
        this.module = jvmOfflineModule;
        this.dispatcherProvider = provider;
        this.fetcherProvider = provider2;
        this.listenerProvider = provider3;
        this.loggerFactoryProvider = provider4;
    }

    @Override // javax.inject.Provider
    public UnacknowledgedReaderEventsHandler get() {
        return providesUnAckedEventsHandler(this.module, this.dispatcherProvider.get(), this.fetcherProvider.get(), this.listenerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory create(JvmOfflineModule jvmOfflineModule, Provider<CoroutineDispatcher> provider, Provider<ReaderEventContracts.Fetcher> provider2, Provider<ReaderEventContracts.Listener> provider3, Provider<LoggerFactory> provider4) {
        return new JvmOfflineModule_ProvidesUnAckedEventsHandlerFactory(jvmOfflineModule, provider, provider2, provider3, provider4);
    }

    public static UnacknowledgedReaderEventsHandler providesUnAckedEventsHandler(JvmOfflineModule jvmOfflineModule, CoroutineDispatcher coroutineDispatcher, ReaderEventContracts.Fetcher fetcher, ReaderEventContracts.Listener listener, LoggerFactory loggerFactory) {
        return (UnacknowledgedReaderEventsHandler) Preconditions.checkNotNullFromProvides(jvmOfflineModule.providesUnAckedEventsHandler(coroutineDispatcher, fetcher, listener, loggerFactory));
    }
}
