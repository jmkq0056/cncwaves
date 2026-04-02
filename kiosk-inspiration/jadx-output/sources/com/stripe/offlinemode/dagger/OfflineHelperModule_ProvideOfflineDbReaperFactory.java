package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.offlinemode.helpers.OfflineDatabaseReaper;
import com.stripe.offlinemode.storage.OfflineRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineHelperModule_ProvideOfflineDbReaperFactory implements Factory<OfflineDatabaseReaper> {
    private final Provider<CoroutineDispatcher> computationDispatcherProvider;
    private final Provider<CoroutineDispatcher> ioDispatcherProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<OfflineRepository> offlineRepositoryProvider;

    public OfflineHelperModule_ProvideOfflineDbReaperFactory(Provider<CoroutineDispatcher> computationDispatcherProvider, Provider<CoroutineDispatcher> ioDispatcherProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        this.computationDispatcherProvider = computationDispatcherProvider;
        this.ioDispatcherProvider = ioDispatcherProvider;
        this.offlineRepositoryProvider = offlineRepositoryProvider;
        this.loggerFactoryProvider = loggerFactoryProvider;
    }

    @Override // javax.inject.Provider
    public OfflineDatabaseReaper get() {
        return provideOfflineDbReaper(this.computationDispatcherProvider.get(), this.ioDispatcherProvider.get(), this.offlineRepositoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static OfflineHelperModule_ProvideOfflineDbReaperFactory create(Provider<CoroutineDispatcher> computationDispatcherProvider, Provider<CoroutineDispatcher> ioDispatcherProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        return new OfflineHelperModule_ProvideOfflineDbReaperFactory(computationDispatcherProvider, ioDispatcherProvider, offlineRepositoryProvider, loggerFactoryProvider);
    }

    public static OfflineDatabaseReaper provideOfflineDbReaper(CoroutineDispatcher computationDispatcher, CoroutineDispatcher ioDispatcher, OfflineRepository offlineRepository, LoggerFactory loggerFactory) {
        return (OfflineDatabaseReaper) Preconditions.checkNotNullFromProvides(OfflineHelperModule.INSTANCE.provideOfflineDbReaper(computationDispatcher, ioDispatcher, offlineRepository, loggerFactory));
    }
}
