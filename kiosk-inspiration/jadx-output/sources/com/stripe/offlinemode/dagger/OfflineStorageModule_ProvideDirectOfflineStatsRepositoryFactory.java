package com.stripe.offlinemode.dagger;

import com.stripe.offlinemode.storage.DirectOfflineStatusDetailsRepository;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory implements Factory<DirectOfflineStatusDetailsRepository> {
    private final Provider<CoroutineDispatcher> ioDispatcherProvider;
    private final Provider<Flow<NetworkStatus>> networkStatusFlowProvider;
    private final Provider<OfflineRepository> offlineRepositoryProvider;

    public OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory(Provider<CoroutineDispatcher> ioDispatcherProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<Flow<NetworkStatus>> networkStatusFlowProvider) {
        this.ioDispatcherProvider = ioDispatcherProvider;
        this.offlineRepositoryProvider = offlineRepositoryProvider;
        this.networkStatusFlowProvider = networkStatusFlowProvider;
    }

    @Override // javax.inject.Provider
    public DirectOfflineStatusDetailsRepository get() {
        return provideDirectOfflineStatsRepository(this.ioDispatcherProvider.get(), this.offlineRepositoryProvider.get(), this.networkStatusFlowProvider);
    }

    public static OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory create(Provider<CoroutineDispatcher> ioDispatcherProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<Flow<NetworkStatus>> networkStatusFlowProvider) {
        return new OfflineStorageModule_ProvideDirectOfflineStatsRepositoryFactory(ioDispatcherProvider, offlineRepositoryProvider, networkStatusFlowProvider);
    }

    public static DirectOfflineStatusDetailsRepository provideDirectOfflineStatsRepository(CoroutineDispatcher ioDispatcher, OfflineRepository offlineRepository, Provider<Flow<NetworkStatus>> networkStatusFlowProvider) {
        return (DirectOfflineStatusDetailsRepository) Preconditions.checkNotNullFromProvides(OfflineStorageModule.INSTANCE.provideDirectOfflineStatsRepository(ioDispatcher, offlineRepository, networkStatusFlowProvider));
    }
}
