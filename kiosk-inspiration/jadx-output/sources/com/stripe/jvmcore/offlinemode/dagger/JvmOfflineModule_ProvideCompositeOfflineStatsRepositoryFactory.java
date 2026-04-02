package com.stripe.jvmcore.offlinemode.dagger;

import com.stripe.jvmcore.offlinemode.callable.OfflineStatusChangeListener;
import com.stripe.jvmcore.offlinemode.repositories.DefaultOfflineStatusRepository;
import com.stripe.jvmcore.offlinemode.repositories.OfflineStatusDetailsRepository;
import com.stripe.jvmcore.offlinemode.repositories.RemoteOfflineStatusDetailsRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory implements Factory<DefaultOfflineStatusRepository> {
    private final Provider<OfflineStatusDetailsRepository> directOfflineStatusDetailsRepositoryProvider;
    private final Provider<CoroutineDispatcher> dispatcherProvider;
    private final JvmOfflineModule module;
    private final Provider<OfflineStatusChangeListener> offlineListenerProvider;
    private final Provider<RemoteOfflineStatusDetailsRepository> remoteOfflineStatisticsRepositoryProvider;

    public JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory(JvmOfflineModule jvmOfflineModule, Provider<RemoteOfflineStatusDetailsRepository> provider, Provider<OfflineStatusDetailsRepository> provider2, Provider<OfflineStatusChangeListener> provider3, Provider<CoroutineDispatcher> provider4) {
        this.module = jvmOfflineModule;
        this.remoteOfflineStatisticsRepositoryProvider = provider;
        this.directOfflineStatusDetailsRepositoryProvider = provider2;
        this.offlineListenerProvider = provider3;
        this.dispatcherProvider = provider4;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineStatusRepository get() {
        return provideCompositeOfflineStatsRepository(this.module, this.remoteOfflineStatisticsRepositoryProvider.get(), this.directOfflineStatusDetailsRepositoryProvider.get(), this.offlineListenerProvider.get(), this.dispatcherProvider.get());
    }

    public static JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory create(JvmOfflineModule jvmOfflineModule, Provider<RemoteOfflineStatusDetailsRepository> provider, Provider<OfflineStatusDetailsRepository> provider2, Provider<OfflineStatusChangeListener> provider3, Provider<CoroutineDispatcher> provider4) {
        return new JvmOfflineModule_ProvideCompositeOfflineStatsRepositoryFactory(jvmOfflineModule, provider, provider2, provider3, provider4);
    }

    public static DefaultOfflineStatusRepository provideCompositeOfflineStatsRepository(JvmOfflineModule jvmOfflineModule, RemoteOfflineStatusDetailsRepository remoteOfflineStatusDetailsRepository, OfflineStatusDetailsRepository offlineStatusDetailsRepository, OfflineStatusChangeListener offlineStatusChangeListener, CoroutineDispatcher coroutineDispatcher) {
        return (DefaultOfflineStatusRepository) Preconditions.checkNotNullFromProvides(jvmOfflineModule.provideCompositeOfflineStatsRepository(remoteOfflineStatusDetailsRepository, offlineStatusDetailsRepository, offlineStatusChangeListener, coroutineDispatcher));
    }
}
