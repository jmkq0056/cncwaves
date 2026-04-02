package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.reactive.ReaderInfoRepository;
import com.stripe.core.hardware.reactive.emv.ConfigurationHandler;
import com.stripe.core.readerupdate.ArmadaIngesterImpl;
import com.stripe.core.readerupdate.ArmadaMonitorImpl;
import com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.readerupdate.UpdatePackage;
import com.stripe.core.readerupdate.UpdateSummary;
import com.stripe.core.transaction.SettingsRepository;
import com.stripe.core.updater.Ingester;
import com.stripe.core.updater.Monitor;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.jvmcore.client.OkHttpClientProvider;
import com.stripe.jvmcore.featureflag.FeatureFlagsRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.proto.api.armada.ArmadaApi;
import dagger.Module;
import dagger.Provides;
import javax.inject.Provider;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: ArmadaModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J@\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00072\u0006\u0010\b\u001a\u00020\t2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007JX\u0010\u0011\u001a\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00130\u0012j\u0002`\u00142\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\u000b2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007JH\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u000e2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020&2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007¨\u0006'"}, d2 = {"Lcom/stripe/core/readerupdate/dagger/ArmadaModule;", "", "()V", "provideArmadaIngester", "Lcom/stripe/core/updater/Ingester;", "Lcom/stripe/core/readerupdate/UpdateSummary;", "Lcom/stripe/core/readerupdate/UpdatePackage;", "Lcom/stripe/core/readerupdate/ArmadaIngester;", "updateClient", "Lcom/stripe/core/readerupdate/UpdateClient;", "readerProvider", "Ljavax/inject/Provider;", "Lcom/stripe/core/hardware/Reader;", "featureFlagsRepository", "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "provideArmadaMonitor", "Lcom/stripe/core/updater/Monitor;", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/core/readerupdate/ArmadaMonitor;", "embeddedSoftwareVersionProvider", "Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;", "readerInfoRepository", "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;", "settingsRepository", "Lcom/stripe/core/transaction/SettingsRepository;", "configurationHandler", "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;", "provideUpdateClient", "armadaApi", "Lcom/stripe/proto/api/armada/ArmadaApi;", "okHttpClientProvider", "Lcom/stripe/jvmcore/client/OkHttpClientProvider;", "deviceInfoRepository", "Lcom/stripe/device/DeviceInfoRepository;", "featureFlagRepository", "offlineConfigUpdateListener", "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class ArmadaModule {
    public static final ArmadaModule INSTANCE = new ArmadaModule();

    private ArmadaModule() {
    }

    @Provides
    public final Monitor<Flow<UpdateSummary>> provideArmadaMonitor(UpdateClient updateClient, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider, ReaderInfoRepository readerInfoRepository, SettingsRepository settingsRepository, Provider<Reader> readerProvider, ConfigurationHandler configurationHandler, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(updateClient, "updateClient");
        Intrinsics.checkNotNullParameter(embeddedSoftwareVersionProvider, "embeddedSoftwareVersionProvider");
        Intrinsics.checkNotNullParameter(readerInfoRepository, "readerInfoRepository");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(readerProvider, "readerProvider");
        Intrinsics.checkNotNullParameter(configurationHandler, "configurationHandler");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ArmadaMonitorImpl(updateClient, embeddedSoftwareVersionProvider, readerInfoRepository, settingsRepository, readerProvider, configurationHandler, loggerFactory.create(Reflection.getOrCreateKotlinClass(ArmadaMonitorImpl.class)));
    }

    @Provides
    public final Ingester<UpdateSummary, UpdatePackage> provideArmadaIngester(UpdateClient updateClient, Provider<Reader> readerProvider, FeatureFlagsRepository featureFlagsRepository, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(updateClient, "updateClient");
        Intrinsics.checkNotNullParameter(readerProvider, "readerProvider");
        Intrinsics.checkNotNullParameter(featureFlagsRepository, "featureFlagsRepository");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new ArmadaIngesterImpl(updateClient, readerProvider, featureFlagsRepository, loggerFactory.create(Reflection.getOrCreateKotlinClass(ArmadaIngesterImpl.class)));
    }

    @Provides
    @Singleton
    public final UpdateClient provideUpdateClient(ArmadaApi armadaApi, OkHttpClientProvider okHttpClientProvider, DeviceInfoRepository deviceInfoRepository, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider, FeatureFlagsRepository featureFlagRepository, SettingsRepository settingsRepository, UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(armadaApi, "armadaApi");
        Intrinsics.checkNotNullParameter(okHttpClientProvider, "okHttpClientProvider");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(embeddedSoftwareVersionProvider, "embeddedSoftwareVersionProvider");
        Intrinsics.checkNotNullParameter(featureFlagRepository, "featureFlagRepository");
        Intrinsics.checkNotNullParameter(settingsRepository, "settingsRepository");
        Intrinsics.checkNotNullParameter(offlineConfigUpdateListener, "offlineConfigUpdateListener");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        return new UpdateClient(armadaApi, okHttpClientProvider, deviceInfoRepository, embeddedSoftwareVersionProvider, featureFlagRepository, settingsRepository, offlineConfigUpdateListener, loggerFactory.create(Reflection.getOrCreateKotlinClass(UpdateClient.class)));
    }
}
