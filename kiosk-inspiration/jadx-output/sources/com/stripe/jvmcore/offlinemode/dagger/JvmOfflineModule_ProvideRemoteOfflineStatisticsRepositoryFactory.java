package com.stripe.jvmcore.offlinemode.dagger;

import com.stripe.jvmcore.offlinemode.repositories.RemoteOfflineStatusDetailsRepository;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes3.dex */
public final class JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory implements Factory<RemoteOfflineStatusDetailsRepository> {
    private final JvmOfflineModule module;

    public JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory(JvmOfflineModule jvmOfflineModule) {
        this.module = jvmOfflineModule;
    }

    @Override // javax.inject.Provider
    public RemoteOfflineStatusDetailsRepository get() {
        return provideRemoteOfflineStatisticsRepository(this.module);
    }

    public static JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory create(JvmOfflineModule jvmOfflineModule) {
        return new JvmOfflineModule_ProvideRemoteOfflineStatisticsRepositoryFactory(jvmOfflineModule);
    }

    public static RemoteOfflineStatusDetailsRepository provideRemoteOfflineStatisticsRepository(JvmOfflineModule jvmOfflineModule) {
        return (RemoteOfflineStatusDetailsRepository) Preconditions.checkNotNullFromProvides(jvmOfflineModule.provideRemoteOfflineStatisticsRepository());
    }
}
