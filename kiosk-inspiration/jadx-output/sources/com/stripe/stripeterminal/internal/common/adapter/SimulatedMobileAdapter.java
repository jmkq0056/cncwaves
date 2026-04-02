package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.bbpos.hardware.BbposReaderInfoFactory;
import com.stripe.core.readerupdate.UpdateClient;
import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.dagger.Main;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import com.stripe.time.Clock;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: compiled from: SimulatedMobileAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001BY\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0001\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015¢\u0006\u0002\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedBbposAdapter;", "clock", "Lcom/stripe/time/Clock;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "mainDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "simulatorConfigurationRepository", "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "applicationInformationProvider", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "bbposReaderInfoFactory", "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;", "updateClient", "Lcom/stripe/core/readerupdate/UpdateClient;", "offlineConfigUpdateListener", "Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/time/Clock;Lcom/stripe/core/transaction/TransactionRepository;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatorConfigurationRepository;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/core/readerupdate/UpdateClient$OfflineConfigUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "adapter_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SimulatedMobileAdapter extends SimulatedBbposAdapter {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public SimulatedMobileAdapter(Clock clock, TransactionRepository transactionRepository, @Main CoroutineDispatcher mainDispatcher, SimulatorConfigurationRepository simulatorConfigurationRepository, TerminalStatusManager statusManager, ApplicationInformationProvider applicationInformationProvider, BbposReaderInfoFactory bbposReaderInfoFactory, UpdateClient updateClient, UpdateClient.OfflineConfigUpdateListener offlineConfigUpdateListener, LoggerFactory loggerFactory) {
        super(clock, transactionRepository, CoroutineScopeKt.CoroutineScope(mainDispatcher), simulatorConfigurationRepository, statusManager, applicationInformationProvider, bbposReaderInfoFactory, updateClient, offlineConfigUpdateListener, loggerFactory.create(Reflection.getOrCreateKotlinClass(SimulatedMobileAdapter.class)));
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(simulatorConfigurationRepository, "simulatorConfigurationRepository");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(applicationInformationProvider, "applicationInformationProvider");
        Intrinsics.checkNotNullParameter(bbposReaderInfoFactory, "bbposReaderInfoFactory");
        Intrinsics.checkNotNullParameter(updateClient, "updateClient");
        Intrinsics.checkNotNullParameter(offlineConfigUpdateListener, "offlineConfigUpdateListener");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
    }
}
