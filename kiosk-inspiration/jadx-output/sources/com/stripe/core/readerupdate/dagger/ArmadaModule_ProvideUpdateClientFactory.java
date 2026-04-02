package com.stripe.core.readerupdate.dagger;

import com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.proto.api.armada.ArmadaApi;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class ArmadaModule_ProvideUpdateClientFactory implements Factory<UpdateClient> {
    private final Provider<ArmadaApi> armadaApiProvider;
    private final Provider<DeviceInfoRepository> deviceInfoRepositoryProvider;
    private final Provider<EmbeddedSoftwareVersionProvider> embeddedSoftwareVersionProvider;
    private final Provider<FeatureFlagsRepository> featureFlagRepositoryProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<UpdateClient.OfflineConfigUpdateListener> offlineConfigUpdateListenerProvider;
    private final Provider<OkHttpClientProvider> okHttpClientProvider;
    private final Provider<SettingsRepository> settingsRepositoryProvider;

    public ArmadaModule_ProvideUpdateClientFactory(Provider<ArmadaApi> provider, Provider<OkHttpClientProvider> provider2, Provider<DeviceInfoRepository> provider3, Provider<EmbeddedSoftwareVersionProvider> provider4, Provider<FeatureFlagsRepository> provider5, Provider<SettingsRepository> provider6, Provider<UpdateClient.OfflineConfigUpdateListener> provider7, Provider<LoggerFactory> provider8) {
        this.armadaApiProvider = provider;
        this.okHttpClientProvider = provider2;
        this.deviceInfoRepositoryProvider = provider3;
        this.embeddedSoftwareVersionProvider = provider4;
        this.featureFlagRepositoryProvider = provider5;
        this.settingsRepositoryProvider = provider6;
        this.offlineConfigUpdateListenerProvider = provider7;
        this.loggerFactoryProvider = provider8;
    }

    @Override // javax.inject.Provider
    public UpdateClient get() {
        return provideUpdateClient(this.armadaApiProvider.get(), this.okHttpClientProvider.get(), this.deviceInfoRepositoryProvider.get(), this.embeddedSoftwareVersionProvider.get(), this.featureFlagRepositoryProvider.get(), this.settingsRepositoryProvider.get(), this.offlineConfigUpdateListenerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static ArmadaModule_ProvideUpdateClientFactory create(Provider<ArmadaApi> provider, Provider<OkHttpClientProvider> provider2, Provider<DeviceInfoRepository> provider3, Provider<EmbeddedSoftwareVersionProvider> provider4, Provider<FeatureFlagsRepository> provider5, Provider<SettingsRepository> provider6, Provider<UpdateClient.OfflineConfigUpdateListener> provider7, Provider<LoggerFactory> provider8) {
        return new ArmadaModule_ProvideUpdateClientFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    public static UpdateClient provideUpdateClient(ArmadaApi armadaApi, OkHttpClientProvider okHttpClientProvider, DeviceInfoRepository deviceInfoRepository, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider, FeatureFlagsRepository featureFlagsRepository, SettingsRepository settingsRepository, UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener, LoggerFactory loggerFactory) {
        return (UpdateClient) Preconditions.checkNotNullFromProvides(ArmadaModule.INSTANCE.provideUpdateClient(armadaApi, okHttpClientProvider, deviceInfoRepository, embeddedSoftwareVersionProvider, featureFlagsRepository, settingsRepository, offlineConfigUpdateListener, loggerFactory));
    }
}
