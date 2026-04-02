package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import com.stripe.core.hardware.reactive.emv.ConfigurationHandler;
import com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.readerupdate.UpdateSummary;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.updater.Monitor;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class ArmadaModule_ProvideArmadaMonitorFactory implements Factory<Monitor<Flow<UpdateSummary>>> {
    private final Provider<ConfigurationHandler> configurationHandlerProvider;
    private final Provider<EmbeddedSoftwareVersionProvider> embeddedSoftwareVersionProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<ReaderInfoRepository> readerInfoRepositoryProvider;
    private final Provider<Reader> readerProvider;
    private final Provider<SettingsRepository> settingsRepositoryProvider;
    private final Provider<UpdateClient> updateClientProvider;

    public ArmadaModule_ProvideArmadaMonitorFactory(Provider<UpdateClient> provider, Provider<EmbeddedSoftwareVersionProvider> provider2, Provider<ReaderInfoRepository> provider3, Provider<SettingsRepository> provider4, Provider<Reader> provider5, Provider<ConfigurationHandler> provider6, Provider<LoggerFactory> provider7) {
        this.updateClientProvider = provider;
        this.embeddedSoftwareVersionProvider = provider2;
        this.readerInfoRepositoryProvider = provider3;
        this.settingsRepositoryProvider = provider4;
        this.readerProvider = provider5;
        this.configurationHandlerProvider = provider6;
        this.loggerFactoryProvider = provider7;
    }

    @Override // javax.inject.Provider
    public Monitor<Flow<UpdateSummary>> get() {
        return provideArmadaMonitor(this.updateClientProvider.get(), this.embeddedSoftwareVersionProvider.get(), this.readerInfoRepositoryProvider.get(), this.settingsRepositoryProvider.get(), this.readerProvider, this.configurationHandlerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ArmadaModule_ProvideArmadaMonitorFactory create(Provider<UpdateClient> provider, Provider<EmbeddedSoftwareVersionProvider> provider2, Provider<ReaderInfoRepository> provider3, Provider<SettingsRepository> provider4, Provider<Reader> provider5, Provider<ConfigurationHandler> provider6, Provider<LoggerFactory> provider7) {
        return new ArmadaModule_ProvideArmadaMonitorFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static Monitor<Flow<UpdateSummary>> provideArmadaMonitor(UpdateClient updateClient, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider, ReaderInfoRepository readerInfoRepository, SettingsRepository settingsRepository, Provider<Reader> provider, ConfigurationHandler configurationHandler, LoggerFactory loggerFactory) {
        return (Monitor) Preconditions.checkNotNullFromProvides(ArmadaModule.INSTANCE.provideArmadaMonitor(updateClient, embeddedSoftwareVersionProvider, readerInfoRepository, settingsRepository, provider, configurationHandler, loggerFactory));
    }
}
