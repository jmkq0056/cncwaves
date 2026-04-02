package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.offlinemode.storage.UnsupportedOfflineRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineStorageModule_ProvideDefaultOfflineRepositoryFactory implements Factory<OfflineRepository> {
    private final Provider<DefaultOfflineRepositoryFactory> defaultOfflineRepositoryFactoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<UnsupportedOfflineRepository> unsupportedOfflineRepositoryProvider;

    public OfflineStorageModule_ProvideDefaultOfflineRepositoryFactory(Provider<UnsupportedOfflineRepository> unsupportedOfflineRepositoryProvider, Provider<DefaultOfflineRepositoryFactory> defaultOfflineRepositoryFactoryProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        this.unsupportedOfflineRepositoryProvider = unsupportedOfflineRepositoryProvider;
        this.defaultOfflineRepositoryFactoryProvider = defaultOfflineRepositoryFactoryProvider;
        this.loggerFactoryProvider = loggerFactoryProvider;
    }

    @Override // javax.inject.Provider
    public OfflineRepository get() {
        return provideDefaultOfflineRepository(this.unsupportedOfflineRepositoryProvider.get(), this.defaultOfflineRepositoryFactoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static OfflineStorageModule_ProvideDefaultOfflineRepositoryFactory create(Provider<UnsupportedOfflineRepository> unsupportedOfflineRepositoryProvider, Provider<DefaultOfflineRepositoryFactory> defaultOfflineRepositoryFactoryProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        return new OfflineStorageModule_ProvideDefaultOfflineRepositoryFactory(unsupportedOfflineRepositoryProvider, defaultOfflineRepositoryFactoryProvider, loggerFactoryProvider);
    }

    public static OfflineRepository provideDefaultOfflineRepository(UnsupportedOfflineRepository unsupportedOfflineRepository, DefaultOfflineRepositoryFactory defaultOfflineRepositoryFactory, LoggerFactory loggerFactory) {
        return (OfflineRepository) Preconditions.checkNotNullFromProvides(OfflineStorageModule.INSTANCE.provideDefaultOfflineRepository(unsupportedOfflineRepository, defaultOfflineRepositoryFactory, loggerFactory));
    }
}
