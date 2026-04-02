package com.stripe.jvmcore.offlinemode.repositories;

import com.stripe.jvmcore.offlinemode.callable.OfflineStatusChangeListener;
import com.stripe.stripeterminal.external.models.NetworkStatus;
import com.stripe.stripeterminal.external.models.OfflineStatus;
import com.stripe.stripeterminal.external.models.OfflineStatusDetails;
import kotlin.Function;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: compiled from: DefaultOfflineStatusRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\b\u0010\u0012\u001a\u00020\fH\u0016J\u000e\u0010\u0013\u001a\u00020\u0014*\u0004\u0018\u00010\u0014H\u0002R\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010¨\u0006\u0016"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/repositories/DefaultOfflineStatusRepository;", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusRepository;", "readerOfflineStatsRepository", "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;", "sdkOfflineStatsRepository", "scope", "Lkotlinx/coroutines/CoroutineScope;", "proxyOfflineListener", "Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;", "(Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/offlinemode/callable/OfflineStatusChangeListener;)V", "offlineStatusStateFlow", "Lkotlinx/coroutines/flow/StateFlow;", "Lcom/stripe/stripeterminal/external/models/OfflineStatus;", "getOfflineStatusStateFlow", "()Lkotlinx/coroutines/flow/StateFlow;", "getReaderOfflineStatsRepository", "()Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;", "getSdkOfflineStatsRepository", "requestOfflineStatusStateUpdate", "orDefault", "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;", "Companion", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultOfflineStatusRepository implements OfflineStatusRepository {
    private static final OfflineStatusDetails EMPTY_OFFLINE_STATUS_DETAILS = new OfflineStatusDetails(0, 0, MapsKt.emptyMap(), NetworkStatus.UNKNOWN);
    private final StateFlow<OfflineStatus> offlineStatusStateFlow;
    private final OfflineStatusChangeListener proxyOfflineListener;
    private final OfflineStatusDetailsRepository readerOfflineStatsRepository;
    private final OfflineStatusDetailsRepository sdkOfflineStatsRepository;

    public DefaultOfflineStatusRepository(OfflineStatusDetailsRepository readerOfflineStatsRepository, OfflineStatusDetailsRepository sdkOfflineStatsRepository, CoroutineScope scope, OfflineStatusChangeListener proxyOfflineListener) {
        Intrinsics.checkNotNullParameter(readerOfflineStatsRepository, "readerOfflineStatsRepository");
        Intrinsics.checkNotNullParameter(sdkOfflineStatsRepository, "sdkOfflineStatsRepository");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(proxyOfflineListener, "proxyOfflineListener");
        this.readerOfflineStatsRepository = readerOfflineStatsRepository;
        this.sdkOfflineStatsRepository = sdkOfflineStatsRepository;
        this.proxyOfflineListener = proxyOfflineListener;
        this.offlineStatusStateFlow = FlowKt.stateIn(FlowKt.combine(readerOfflineStatsRepository.getOfflineStatusDetailsStateFlow(), sdkOfflineStatsRepository.getOfflineStatusDetailsStateFlow(), new DefaultOfflineStatusRepository$offlineStatusStateFlow$1(this, null)), scope, SharingStarted.INSTANCE.getEagerly(), new OfflineStatus(readerOfflineStatsRepository.getOfflineStatusDetailsStateFlow().getValue(), orDefault(sdkOfflineStatsRepository.getOfflineStatusDetailsStateFlow().getValue())));
        BuildersKt__Builders_commonKt.launch$default(scope, null, null, new AnonymousClass1(null), 3, null);
    }

    public final OfflineStatusDetailsRepository getReaderOfflineStatsRepository() {
        return this.readerOfflineStatsRepository;
    }

    public final OfflineStatusDetailsRepository getSdkOfflineStatsRepository() {
        return this.sdkOfflineStatsRepository;
    }

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusRepository
    public StateFlow<OfflineStatus> getOfflineStatusStateFlow() {
        return this.offlineStatusStateFlow;
    }

    @Override // com.stripe.jvmcore.offlinemode.repositories.OfflineStatusRepository
    public OfflineStatus requestOfflineStatusStateUpdate() {
        OfflineStatusDetails offlineStatusDetailsRequestOfflineStatusDetailsUpdate = this.readerOfflineStatsRepository.requestOfflineStatusDetailsUpdate();
        if (offlineStatusDetailsRequestOfflineStatusDetailsUpdate == null) {
            offlineStatusDetailsRequestOfflineStatusDetailsUpdate = getOfflineStatusStateFlow().getValue().getReader();
        }
        OfflineStatusDetails offlineStatusDetailsRequestOfflineStatusDetailsUpdate2 = this.sdkOfflineStatsRepository.requestOfflineStatusDetailsUpdate();
        if (offlineStatusDetailsRequestOfflineStatusDetailsUpdate2 == null) {
            offlineStatusDetailsRequestOfflineStatusDetailsUpdate2 = getOfflineStatusStateFlow().getValue().getSdk();
        }
        return new OfflineStatus(offlineStatusDetailsRequestOfflineStatusDetailsUpdate, orDefault(offlineStatusDetailsRequestOfflineStatusDetailsUpdate2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final OfflineStatusDetails orDefault(OfflineStatusDetails offlineStatusDetails) {
        return offlineStatusDetails == null ? EMPTY_OFFLINE_STATUS_DETAILS : offlineStatusDetails;
    }

    /* JADX INFO: renamed from: com.stripe.jvmcore.offlinemode.repositories.DefaultOfflineStatusRepository$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultOfflineStatusRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.jvmcore.offlinemode.repositories.DefaultOfflineStatusRepository$1", f = "DefaultOfflineStatusRepository.kt", i = {}, l = {52}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultOfflineStatusRepository.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.stripe.jvmcore.offlinemode.repositories.DefaultOfflineStatusRepository$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: DefaultOfflineStatusRepository.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        /* synthetic */ class C00501 implements FlowCollector, FunctionAdapter {
            final /* synthetic */ OfflineStatusChangeListener $tmp0;

            C00501(OfflineStatusChangeListener offlineStatusChangeListener) {
                this.$tmp0 = offlineStatusChangeListener;
            }

            public final boolean equals(Object obj) {
                if ((obj instanceof FlowCollector) && (obj instanceof FunctionAdapter)) {
                    return Intrinsics.areEqual(getFunctionDelegate(), ((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            }

            @Override // kotlin.jvm.internal.FunctionAdapter
            public final Function<?> getFunctionDelegate() {
                return new AdaptedFunctionReference(2, this.$tmp0, OfflineStatusChangeListener.class, "onOfflineStatusChange", "onOfflineStatusChange(Lcom/stripe/stripeterminal/external/models/OfflineStatus;)V", 4);
            }

            public final int hashCode() {
                return getFunctionDelegate().hashCode();
            }

            public final Object emit(OfflineStatus offlineStatus, Continuation<? super Unit> continuation) {
                Object objInvokeSuspend$onOfflineStatusChange = AnonymousClass1.invokeSuspend$onOfflineStatusChange(this.$tmp0, offlineStatus, continuation);
                return objInvokeSuspend$onOfflineStatusChange == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvokeSuspend$onOfflineStatusChange : Unit.INSTANCE;
            }

            @Override // kotlinx.coroutines.flow.FlowCollector
            public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
                return emit((OfflineStatus) obj, (Continuation<? super Unit>) continuation);
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (DefaultOfflineStatusRepository.this.getOfflineStatusStateFlow().collect(new C00501(DefaultOfflineStatusRepository.this.proxyOfflineListener), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            throw new KotlinNothingValueException();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ Object invokeSuspend$onOfflineStatusChange(OfflineStatusChangeListener offlineStatusChangeListener, OfflineStatus offlineStatus, Continuation continuation) {
            offlineStatusChangeListener.onOfflineStatusChange(offlineStatus);
            return Unit.INSTANCE;
        }
    }
}
