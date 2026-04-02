package com.stripe.stripeterminal.internal.common.connectivity;

import com.stripe.jvmcore.dagger.IO;
import com.stripe.jvmcore.dagger.Offline;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineRepository;
import com.stripe.stripeterminal.internal.common.callable.ProxyOfflineListener;
import com.stripe.stripeterminal.internal.common.repositories.SdkStatusRepository;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: DefaultStripeConnectivityRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010BC\b\u0007\u0012\b\b\u0001\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0001\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\u000e\u0010(\u001a\b\u0012\u0004\u0012\u00020\u001d0&H\u0016J\b\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020*H\u0016J\b\u0010,\u001a\u00020*H\u0016J\r\u0010-\u001a\u00020\u0014H\u0001¢\u0006\u0002\b.J\b\u0010/\u001a\u00020*H\u0016R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0!j\u0002`$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001b0&X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020\u001d0&X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00061"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeConnectivityRepository;", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;", "Lkotlinx/coroutines/CoroutineScope;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "networkConnectivityRepository", "Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;", "stripeNetworkHealthChecker", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;", "offlineRepository", "Lcom/stripe/offlinemode/storage/OfflineRepository;", "proxyOfflineListener", "Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;", "sdkStatusRepository", "Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/internal/common/connectivity/NetworkConnectivityRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeNetworkHealthChecker;Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/internal/common/callable/ProxyOfflineListener;Lcom/stripe/stripeterminal/internal/common/repositories/SdkStatusRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "consecutiveNetworkFailureReports", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "enableHealthCheckCriteriaFlow", "Lkotlinx/coroutines/flow/Flow;", "", "initialStatus", "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityStatus;", "isApplicationInBackgroundFlow", "isOfflineReaderConfigEnabledFlow", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "offlineStickyStateFlow", "Lkotlinx/coroutines/flow/StateFlow;", "stripeConnectivityFlow", "currentState", "pauseNetworkHealthChecks", "", "reportNetworkFailure", "reportNetworkSuccess", "reportedFailuresCount", "reportedFailuresCount$connectivity_release", "resumeNetworkHealthChecks", "Companion", "connectivity_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultStripeConnectivityRepository implements StripeConnectivityRepository, CoroutineScope {
    private static final long DELAY_QUANTUM_MS = 30000;
    private static final double EXP_DELAY_BASE = 2.0d;
    private static final long MAX_NETWORK_FAILURE_DELAY_MS = 600000;
    private final MutableStateFlow<Integer> consecutiveNetworkFailureReports;
    private final CoroutineDispatcher dispatcher;
    private final Flow<Boolean> enableHealthCheckCriteriaFlow;
    private final StripeConnectivityStatus initialStatus;
    private final MutableStateFlow<Boolean> isApplicationInBackgroundFlow;
    private final Flow<Boolean> isOfflineReaderConfigEnabledFlow;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final StateFlow<Boolean> offlineStickyStateFlow;
    private final SdkStatusRepository sdkStatusRepository;
    private final StateFlow<StripeConnectivityStatus> stripeConnectivityFlow;
    private final StripeNetworkHealthChecker stripeNetworkHealthChecker;

    @Inject
    public DefaultStripeConnectivityRepository(@IO CoroutineDispatcher dispatcher, NetworkConnectivityRepository networkConnectivityRepository, StripeNetworkHealthChecker stripeNetworkHealthChecker, @Offline OfflineRepository offlineRepository, ProxyOfflineListener proxyOfflineListener, SdkStatusRepository sdkStatusRepository, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(networkConnectivityRepository, "networkConnectivityRepository");
        Intrinsics.checkNotNullParameter(stripeNetworkHealthChecker, "stripeNetworkHealthChecker");
        Intrinsics.checkNotNullParameter(offlineRepository, "offlineRepository");
        Intrinsics.checkNotNullParameter(proxyOfflineListener, "proxyOfflineListener");
        Intrinsics.checkNotNullParameter(sdkStatusRepository, "sdkStatusRepository");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.dispatcher = dispatcher;
        this.stripeNetworkHealthChecker = stripeNetworkHealthChecker;
        this.sdkStatusRepository = sdkStatusRepository;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(DefaultStripeConnectivityRepository.class));
        Flow<Boolean> flowRunningFold = FlowKt.runningFold(offlineRepository.activeReaderOfflineEnabledFlow(), false, new DefaultStripeConnectivityRepository$isOfflineReaderConfigEnabledFlow$1(null));
        this.isOfflineReaderConfigEnabledFlow = flowRunningFold;
        MutableStateFlow<Boolean> MutableStateFlow = StateFlowKt.MutableStateFlow(false);
        this.isApplicationInBackgroundFlow = MutableStateFlow;
        this.enableHealthCheckCriteriaFlow = FlowKt.distinctUntilChanged(FlowKt.flowCombine(proxyOfflineListener.isListenerSetFlow(), flowRunningFold, new DefaultStripeConnectivityRepository$enableHealthCheckCriteriaFlow$1(null)));
        MutableStateFlow<Integer> MutableStateFlow2 = StateFlowKt.MutableStateFlow(0);
        this.consecutiveNetworkFailureReports = MutableStateFlow2;
        DefaultStripeConnectivityRepository defaultStripeConnectivityRepository = this;
        StateFlow<Boolean> stateFlowStateIn = FlowKt.stateIn(FlowKt.transformLatest(MutableStateFlow2, new DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1(null)), defaultStripeConnectivityRepository, SharingStarted.INSTANCE.getLazily(), false);
        this.offlineStickyStateFlow = stateFlowStateIn;
        StripeConnectivityStatus stripeConnectivityStatus = networkConnectivityRepository.hasNetwork() ? StripeConnectivityStatus.HEALTH_CHECKS_NOT_STARTED : StripeConnectivityStatus.NO_NETWORK;
        this.initialStatus = stripeConnectivityStatus;
        this.stripeConnectivityFlow = FlowKt.stateIn(FlowKt.m2361catch(FlowKt.transformLatest(FlowKt.combine(networkConnectivityRepository.getNetworkConnectivityState(), stateFlowStateIn, MutableStateFlow, DefaultStripeConnectivityRepository$stripeConnectivityFlow$2.INSTANCE), new DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2(null, this)), new DefaultStripeConnectivityRepository$stripeConnectivityFlow$4(this, null)), defaultStripeConnectivityRepository, SharingStarted.INSTANCE.getEagerly(), stripeConnectivityStatus);
    }

    public final int reportedFailuresCount$connectivity_release() {
        return this.consecutiveNetworkFailureReports.getValue().intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object stripeConnectivityFlow$lambda$2(boolean z, boolean z2, boolean z3, Continuation continuation) {
        return new Triple(Boxing.boxBoolean(z), Boxing.boxBoolean(z2), Boxing.boxBoolean(z3));
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public CoroutineContext getCoroutineContext() {
        return SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null).plus(this.dispatcher);
    }

    @Override // com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository
    public StateFlow<StripeConnectivityStatus> currentState() {
        return this.stripeConnectivityFlow;
    }

    @Override // com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository
    public void reportNetworkFailure() {
        MutableStateFlow<Integer> mutableStateFlow = this.consecutiveNetworkFailureReports;
        mutableStateFlow.setValue(Integer.valueOf(mutableStateFlow.getValue().intValue() + 1));
    }

    @Override // com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository
    public void reportNetworkSuccess() {
        this.consecutiveNetworkFailureReports.setValue(0);
    }

    @Override // com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository
    public void pauseNetworkHealthChecks() {
        this.isApplicationInBackgroundFlow.setValue(true);
    }

    @Override // com.stripe.stripeterminal.internal.common.connectivity.StripeConnectivityRepository
    public void resumeNetworkHealthChecks() {
        this.isApplicationInBackgroundFlow.setValue(false);
    }
}
