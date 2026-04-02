package com.stripe.offlinemode.dagger;

import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.offlinemode.storage.UnsupportedOfflineRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory implements Factory<OfflineRepository> {
    private final Provider<DefaultOfflineRepositoryFactory> defaultOfflineRepositoryFactoryProvider;
    private final Provider<OfflineForwardingTraceLogger> forwardingLoggerProvider;
    private final Provider<UnsupportedOfflineRepository> unsupportedOfflineRepositoryProvider;

    public OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory(Provider<UnsupportedOfflineRepository> unsupportedOfflineRepositoryProvider, Provider<DefaultOfflineRepositoryFactory> defaultOfflineRepositoryFactoryProvider, Provider<OfflineForwardingTraceLogger> forwardingLoggerProvider) {
        this.unsupportedOfflineRepositoryProvider = unsupportedOfflineRepositoryProvider;
        this.defaultOfflineRepositoryFactoryProvider = defaultOfflineRepositoryFactoryProvider;
        this.forwardingLoggerProvider = forwardingLoggerProvider;
    }

    @Override // javax.inject.Provider
    public OfflineRepository get() {
        return provideForwardingOfflineRepository(this.unsupportedOfflineRepositoryProvider.get(), this.defaultOfflineRepositoryFactoryProvider.get(), this.forwardingLoggerProvider.get());
    }

    public static OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory create(Provider<UnsupportedOfflineRepository> unsupportedOfflineRepositoryProvider, Provider<DefaultOfflineRepositoryFactory> defaultOfflineRepositoryFactoryProvider, Provider<OfflineForwardingTraceLogger> forwardingLoggerProvider) {
        return new OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory(unsupportedOfflineRepositoryProvider, defaultOfflineRepositoryFactoryProvider, forwardingLoggerProvider);
    }

    public static OfflineRepository provideForwardingOfflineRepository(UnsupportedOfflineRepository unsupportedOfflineRepository, DefaultOfflineRepositoryFactory defaultOfflineRepositoryFactory, OfflineForwardingTraceLogger forwardingLogger) {
        return (OfflineRepository) Preconditions.checkNotNullFromProvides(OfflineStorageModule.INSTANCE.provideForwardingOfflineRepository(unsupportedOfflineRepository, defaultOfflineRepositoryFactory, forwardingLogger));
    }
}
