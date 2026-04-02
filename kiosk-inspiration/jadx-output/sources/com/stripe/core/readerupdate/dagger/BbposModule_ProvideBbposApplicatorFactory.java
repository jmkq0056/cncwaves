package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.Reader;
import com.stripe.core.hardware.reactive.emv.ConfigurationHandler;
import com.stripe.core.readerupdate.BbposAssetInstallProcessor;
import com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider;
import com.stripe.core.readerupdate.ProgressStatus;
import com.stripe.core.readerupdate.UpdatePackage;
import com.stripe.core.updater.Applicator;
import com.stripe.device.DeviceInfoRepository;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposModule_ProvideBbposApplicatorFactory implements Factory<Applicator<UpdatePackage, Flow<ProgressStatus>>> {
    private final Provider<BbposAssetInstallProcessor> bbposAssetInstallProcessorProvider;
    private final Provider<ConfigurationHandler> configurationHandlerProvider;
    private final Provider<DeviceInfoRepository> deviceInfoRepositoryProvider;
    private final Provider<EmbeddedSoftwareVersionProvider> embeddedSoftwareVersionProvider;
    private final Provider<CoroutineDispatcher> ioProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<Reader> readerProvider;

    public BbposModule_ProvideBbposApplicatorFactory(Provider<CoroutineDispatcher> provider, Provider<Reader> provider2, Provider<ConfigurationHandler> provider3, Provider<EmbeddedSoftwareVersionProvider> provider4, Provider<BbposAssetInstallProcessor> provider5, Provider<DeviceInfoRepository> provider6, Provider<LoggerFactory> provider7) {
        this.ioProvider = provider;
        this.readerProvider = provider2;
        this.configurationHandlerProvider = provider3;
        this.embeddedSoftwareVersionProvider = provider4;
        this.bbposAssetInstallProcessorProvider = provider5;
        this.deviceInfoRepositoryProvider = provider6;
        this.loggerFactoryProvider = provider7;
    }

    @Override // javax.inject.Provider
    public Applicator<UpdatePackage, Flow<ProgressStatus>> get() {
        return provideBbposApplicator(this.ioProvider.get(), this.readerProvider, this.configurationHandlerProvider.get(), this.embeddedSoftwareVersionProvider.get(), this.bbposAssetInstallProcessorProvider.get(), this.deviceInfoRepositoryProvider.get(), this.loggerFactoryProvider.get());
    }

    public static BbposModule_ProvideBbposApplicatorFactory create(Provider<CoroutineDispatcher> provider, Provider<Reader> provider2, Provider<ConfigurationHandler> provider3, Provider<EmbeddedSoftwareVersionProvider> provider4, Provider<BbposAssetInstallProcessor> provider5, Provider<DeviceInfoRepository> provider6, Provider<LoggerFactory> provider7) {
        return new BbposModule_ProvideBbposApplicatorFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static Applicator<UpdatePackage, Flow<ProgressStatus>> provideBbposApplicator(CoroutineDispatcher coroutineDispatcher, Provider<Reader> provider, ConfigurationHandler configurationHandler, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider, BbposAssetInstallProcessor bbposAssetInstallProcessor, DeviceInfoRepository deviceInfoRepository, LoggerFactory loggerFactory) {
        return (Applicator) Preconditions.checkNotNullFromProvides(BbposModule.INSTANCE.provideBbposApplicator(coroutineDispatcher, provider, configurationHandler, embeddedSoftwareVersionProvider, bbposAssetInstallProcessor, deviceInfoRepository, loggerFactory));
    }
}
