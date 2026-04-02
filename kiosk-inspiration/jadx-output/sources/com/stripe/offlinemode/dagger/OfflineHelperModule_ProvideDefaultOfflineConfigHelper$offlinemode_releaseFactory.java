package com.stripe.offlinemode.dagger;

import com.stripe.core.transaction.SettingsRepository;
import com.stripe.device.ActiveLocationConfigRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.offlinemode.helpers.DefaultOfflineConfigHelper;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory implements Factory<DefaultOfflineConfigHelper> {
    private final Provider<ActiveLocationConfigRepository> activeLocationConfigRepositoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<OfflineRepository> offlineRepositoryProvider;
    private final Provider<ProxyOfflineListener> proxyOfflineListenerProvider;
    private final Provider<SettingsRepository> settingsRepositoryProvider;

    public OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory(Provider<SettingsRepository> settingsRepositoryProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<ProxyOfflineListener> proxyOfflineListenerProvider, Provider<ActiveLocationConfigRepository> activeLocationConfigRepositoryProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        this.settingsRepositoryProvider = settingsRepositoryProvider;
        this.offlineRepositoryProvider = offlineRepositoryProvider;
        this.proxyOfflineListenerProvider = proxyOfflineListenerProvider;
        this.activeLocationConfigRepositoryProvider = activeLocationConfigRepositoryProvider;
        this.loggerFactoryProvider = loggerFactoryProvider;
    }

    @Override // javax.inject.Provider
    public DefaultOfflineConfigHelper get() {
        return provideDefaultOfflineConfigHelper$offlinemode_release(this.settingsRepositoryProvider.get(), this.offlineRepositoryProvider.get(), this.proxyOfflineListenerProvider.get(), this.activeLocationConfigRepositoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory create(Provider<SettingsRepository> settingsRepositoryProvider, Provider<OfflineRepository> offlineRepositoryProvider, Provider<ProxyOfflineListener> proxyOfflineListenerProvider, Provider<ActiveLocationConfigRepository> activeLocationConfigRepositoryProvider, Provider<LoggerFactory> loggerFactoryProvider) {
        return new OfflineHelperModule_ProvideDefaultOfflineConfigHelper$offlinemode_releaseFactory(settingsRepositoryProvider, offlineRepositoryProvider, proxyOfflineListenerProvider, activeLocationConfigRepositoryProvider, loggerFactoryProvider);
    }

    public static DefaultOfflineConfigHelper provideDefaultOfflineConfigHelper$offlinemode_release(SettingsRepository settingsRepository, OfflineRepository offlineRepository, ProxyOfflineListener proxyOfflineListener, ActiveLocationConfigRepository activeLocationConfigRepository, LoggerFactory loggerFactory) {
        return (DefaultOfflineConfigHelper) Preconditions.checkNotNullFromProvides(OfflineHelperModule.INSTANCE.provideDefaultOfflineConfigHelper$offlinemode_release(settingsRepository, offlineRepository, proxyOfflineListener, activeLocationConfigRepository, loggerFactory));
    }
}
