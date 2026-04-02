package com.stripe.offlinemode.dagger;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.offlinemode.storage.OfflineKeyValueStore;
import com.stripe.offlinemode.cipher.OfflineAesKeyProvider;
import com.stripe.offlinemode.cipher.OfflineCipherProvider;
import com.stripe.offlinemode.helpers.DefaultOfflineRequestHelper;
import com.stripe.offlinemode.storage.OfflineDatabaseProvider;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.OfflineDomain;
import com.stripe.time.Clock;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory implements Factory<DefaultOfflineRepositoryFactory> {
    private final Provider<OfflineCipherProvider> cipherProvider;
    private final Provider<Clock> clockProvider;
    private final Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider;
    private final Provider<OfflineAesKeyProvider> keyProvider;
    private final Provider<OfflineDatabaseProvider> offlineDatabaseProvider;
    private final Provider<CoroutineDispatcher> offlineDispatcherProvider;
    private final Provider<OfflineKeyValueStore> offlineKeyValueStoreProvider;
    private final Provider<DefaultOfflineRequestHelper> offlineRequestHelperProvider;

    public OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory(Provider<OfflineDatabaseProvider> offlineDatabaseProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider, Provider<OfflineCipherProvider> cipherProvider, Provider<OfflineAesKeyProvider> keyProvider, Provider<DefaultOfflineRequestHelper> offlineRequestHelperProvider, Provider<CoroutineDispatcher> offlineDispatcherProvider, Provider<OfflineKeyValueStore> offlineKeyValueStoreProvider, Provider<Clock> clockProvider) {
        this.offlineDatabaseProvider = offlineDatabaseProvider;
        this.discreteLoggerProvider = discreteLoggerProvider;
        this.cipherProvider = cipherProvider;
        this.keyProvider = keyProvider;
        this.offlineRequestHelperProvider = offlineRequestHelperProvider;
        this.offlineDispatcherProvider = offlineDispatcherProvider;
        this.offlineKeyValueStoreProvider = offlineKeyValueStoreProvider;
        this.clockProvider = clockProvider;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineRepositoryFactory get() {
        return provideOfflineRepositoryFactory(this.offlineDatabaseProvider.get(), this.discreteLoggerProvider.get(), this.cipherProvider.get(), this.keyProvider.get(), this.offlineRequestHelperProvider.get(), this.offlineDispatcherProvider.get(), this.offlineKeyValueStoreProvider.get(), this.clockProvider.get());
    }

    public static OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory create(Provider<OfflineDatabaseProvider> offlineDatabaseProvider, Provider<HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder>> discreteLoggerProvider, Provider<OfflineCipherProvider> cipherProvider, Provider<OfflineAesKeyProvider> keyProvider, Provider<DefaultOfflineRequestHelper> offlineRequestHelperProvider, Provider<CoroutineDispatcher> offlineDispatcherProvider, Provider<OfflineKeyValueStore> offlineKeyValueStoreProvider, Provider<Clock> clockProvider) {
        return new OfflineStorageModule_ProvideOfflineRepositoryFactoryFactory(offlineDatabaseProvider, discreteLoggerProvider, cipherProvider, keyProvider, offlineRequestHelperProvider, offlineDispatcherProvider, offlineKeyValueStoreProvider, clockProvider);
    }

    public static DefaultOfflineRepositoryFactory provideOfflineRepositoryFactory(OfflineDatabaseProvider offlineDatabaseProvider, HealthLogger<OfflineDomain, OfflineDomain.Builder, DiscreteScope, DiscreteScope.Builder> discreteLogger, OfflineCipherProvider cipherProvider, OfflineAesKeyProvider keyProvider, DefaultOfflineRequestHelper offlineRequestHelper, CoroutineDispatcher offlineDispatcher, OfflineKeyValueStore offlineKeyValueStore, Clock clock) {
        return (DefaultOfflineRepositoryFactory) Preconditions.checkNotNullFromProvides(OfflineStorageModule.INSTANCE.provideOfflineRepositoryFactory(offlineDatabaseProvider, discreteLogger, cipherProvider, keyProvider, offlineRequestHelper, offlineDispatcher, offlineKeyValueStore, clock));
    }
}
