package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.ReaderConnectionController;
import com.stripe.core.hardware.reactive.status.ReactiveReaderStatusListener;
import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.readerupdate.BbposAssetInstallProcessor;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.rxjava3.core.Scheduler;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public final class BbposModule_ProvideBbposAssetInstallProcessorFactory implements Factory<BbposAssetInstallProcessor> {
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<ReaderConnectionController> readerConnectionControllerProvider;
    private final Provider<Scheduler> schedulerProvider;
    private final Provider<ReactiveReaderStatusListener> statusListenerProvider;
    private final Provider<ReaderUpdateController> updateControllerProvider;
    private final Provider<ReactiveReaderUpdateListener> updateListenerProvider;

    public BbposModule_ProvideBbposAssetInstallProcessorFactory(Provider<Scheduler> provider, Provider<ReactiveReaderUpdateListener> provider2, Provider<ReactiveReaderStatusListener> provider3, Provider<ReaderUpdateController> provider4, Provider<ReaderConnectionController> provider5, Provider<LoggerFactory> provider6) {
        this.schedulerProvider = provider;
        this.updateListenerProvider = provider2;
        this.statusListenerProvider = provider3;
        this.updateControllerProvider = provider4;
        this.readerConnectionControllerProvider = provider5;
        this.loggerFactoryProvider = provider6;
    }

    @Override // javax.inject.Provider
    public BbposAssetInstallProcessor get() {
        return provideBbposAssetInstallProcessor(this.schedulerProvider.get(), this.updateListenerProvider.get(), this.statusListenerProvider.get(), this.updateControllerProvider.get(), this.readerConnectionControllerProvider.get(), this.loggerFactoryProvider.get());
    }

    public static BbposModule_ProvideBbposAssetInstallProcessorFactory create(Provider<Scheduler> provider, Provider<ReactiveReaderUpdateListener> provider2, Provider<ReactiveReaderStatusListener> provider3, Provider<ReaderUpdateController> provider4, Provider<ReaderConnectionController> provider5, Provider<LoggerFactory> provider6) {
        return new BbposModule_ProvideBbposAssetInstallProcessorFactory(provider, provider2, provider3, provider4, provider5, provider6);
    }

    public static BbposAssetInstallProcessor provideBbposAssetInstallProcessor(Scheduler scheduler, ReactiveReaderUpdateListener reactiveReaderUpdateListener, ReactiveReaderStatusListener reactiveReaderStatusListener, ReaderUpdateController readerUpdateController, ReaderConnectionController readerConnectionController, LoggerFactory loggerFactory) {
        return (BbposAssetInstallProcessor) Preconditions.checkNotNullFromProvides(BbposModule.INSTANCE.provideBbposAssetInstallProcessor(scheduler, reactiveReaderUpdateListener, reactiveReaderStatusListener, readerUpdateController, readerConnectionController, loggerFactory));
    }
}
