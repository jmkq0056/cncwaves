package com.stripe.core.readerupdate.dagger;

import com.stripe.core.hardware.updates.ReaderVersion;
import com.stripe.core.readerupdate.ProgressFlowUpdater;
import com.stripe.core.readerupdate.ProgressStatus;
import com.stripe.core.readerupdate.UpdatePackage;
import com.stripe.core.readerupdate.healthreporter.InstallHealthReporter;
import com.stripe.core.readerupdate.healthreporter.UpdateEndToEndHealthReporter;
import com.stripe.core.readerupdate.healthreporter.UpdateStepHealthReporter;
import com.stripe.core.updater.Applicator;
import com.stripe.core.updater.Ingester;
import com.stripe.core.updater.Monitor;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
public final class FlowUpdaterModule_ProvideTmsFlowUpdaterFactory implements Factory<ProgressFlowUpdater<ReaderVersion, UpdatePackage, ProgressStatus>> {
    private final Provider<Applicator<UpdatePackage, Flow<ProgressStatus>>> applicatorProvider;
    private final Provider<UpdateEndToEndHealthReporter> endToEndHealthReporterProvider;
    private final Provider<Ingester<ReaderVersion, UpdatePackage>> ingesterProvider;
    private final Provider<InstallHealthReporter<ProgressStatus>> installHealthReporterProvider;
    private final Provider<LoggerFactory> loggerFactoryProvider;
    private final Provider<Monitor<Flow<ReaderVersion>>> monitorProvider;
    private final Provider<UpdateStepHealthReporter> stepHealthReporterProvider;

    public FlowUpdaterModule_ProvideTmsFlowUpdaterFactory(Provider<Monitor<Flow<ReaderVersion>>> provider, Provider<Ingester<ReaderVersion, UpdatePackage>> provider2, Provider<Applicator<UpdatePackage, Flow<ProgressStatus>>> provider3, Provider<UpdateEndToEndHealthReporter> provider4, Provider<UpdateStepHealthReporter> provider5, Provider<InstallHealthReporter<ProgressStatus>> provider6, Provider<LoggerFactory> provider7) {
        this.monitorProvider = provider;
        this.ingesterProvider = provider2;
        this.applicatorProvider = provider3;
        this.endToEndHealthReporterProvider = provider4;
        this.stepHealthReporterProvider = provider5;
        this.installHealthReporterProvider = provider6;
        this.loggerFactoryProvider = provider7;
    }

    @Override // javax.inject.Provider
    public ProgressFlowUpdater<ReaderVersion, UpdatePackage, ProgressStatus> get() {
        return provideTmsFlowUpdater(this.monitorProvider.get(), this.ingesterProvider.get(), this.applicatorProvider.get(), this.endToEndHealthReporterProvider.get(), this.stepHealthReporterProvider.get(), this.installHealthReporterProvider.get(), this.loggerFactoryProvider.get());
    }

    public static FlowUpdaterModule_ProvideTmsFlowUpdaterFactory create(Provider<Monitor<Flow<ReaderVersion>>> provider, Provider<Ingester<ReaderVersion, UpdatePackage>> provider2, Provider<Applicator<UpdatePackage, Flow<ProgressStatus>>> provider3, Provider<UpdateEndToEndHealthReporter> provider4, Provider<UpdateStepHealthReporter> provider5, Provider<InstallHealthReporter<ProgressStatus>> provider6, Provider<LoggerFactory> provider7) {
        return new FlowUpdaterModule_ProvideTmsFlowUpdaterFactory(provider, provider2, provider3, provider4, provider5, provider6, provider7);
    }

    public static ProgressFlowUpdater<ReaderVersion, UpdatePackage, ProgressStatus> provideTmsFlowUpdater(Monitor<Flow<ReaderVersion>> monitor, Ingester<ReaderVersion, UpdatePackage> ingester, Applicator<UpdatePackage, Flow<ProgressStatus>> applicator, UpdateEndToEndHealthReporter updateEndToEndHealthReporter, UpdateStepHealthReporter updateStepHealthReporter, InstallHealthReporter<ProgressStatus> installHealthReporter, LoggerFactory loggerFactory) {
        return (ProgressFlowUpdater) Preconditions.checkNotNullFromProvides(FlowUpdaterModule.INSTANCE.provideTmsFlowUpdater(monitor, ingester, applicator, updateEndToEndHealthReporter, updateStepHealthReporter, installHealthReporter, loggerFactory));
    }
}
