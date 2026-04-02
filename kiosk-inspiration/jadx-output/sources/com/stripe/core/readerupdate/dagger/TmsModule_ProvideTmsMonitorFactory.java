package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.reactive.updates.ReactiveReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderUpdateController;
import com.stripe.core.hardware.updates.ReaderVersion;
import com.stripe.core.readerupdate.EmbeddedSoftwareVersionProvider;
import com.stripe.core.updater.Monitor;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import io.reactivex.rxjava3.core.Scheduler;
import javax.inject.Provider;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class TmsModule_ProvideTmsMonitorFactory implements Factory<Monitor<Flow<ReaderVersion>>> {
    private final Provider<EmbeddedSoftwareVersionProvider> embeddedSoftwareVersionProvider;
    private final Provider<Scheduler> schedulerProvider;
    private final Provider<ReaderUpdateController> updateControllerProvider;
    private final Provider<ReactiveReaderUpdateListener> updateListenerProvider;

    public TmsModule_ProvideTmsMonitorFactory(Provider<ReaderUpdateController> provider, Provider<ReactiveReaderUpdateListener> provider2, Provider<Scheduler> provider3, Provider<EmbeddedSoftwareVersionProvider> provider4) {
        this.updateControllerProvider = provider;
        this.updateListenerProvider = provider2;
        this.schedulerProvider = provider3;
        this.embeddedSoftwareVersionProvider = provider4;
    }

    @Override // javax.inject.Provider
    public Monitor<Flow<ReaderVersion>> get() {
        return provideTmsMonitor(this.updateControllerProvider.get(), this.updateListenerProvider.get(), this.schedulerProvider.get(), this.embeddedSoftwareVersionProvider.get());
    }

    public static TmsModule_ProvideTmsMonitorFactory create(Provider<ReaderUpdateController> provider, Provider<ReactiveReaderUpdateListener> provider2, Provider<Scheduler> provider3, Provider<EmbeddedSoftwareVersionProvider> provider4) {
        return new TmsModule_ProvideTmsMonitorFactory(provider, provider2, provider3, provider4);
    }

    public static Monitor<Flow<ReaderVersion>> provideTmsMonitor(ReaderUpdateController readerUpdateController, ReactiveReaderUpdateListener reactiveReaderUpdateListener, Scheduler scheduler, EmbeddedSoftwareVersionProvider embeddedSoftwareVersionProvider) {
        return (Monitor) Preconditions.checkNotNullFromProvides(TmsModule.INSTANCE.provideTmsMonitor(readerUpdateController, reactiveReaderUpdateListener, scheduler, embeddedSoftwareVersionProvider));
    }
}
