package com.stripe.stripeterminal.internal.common.connectivity;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Triple;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: Merge.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2", f = "DefaultStripeConnectivityRepository.kt", i = {}, l = {WinError.ERROR_INVALID_STACKSEG}, m = "invokeSuspend", n = {}, s = {})
public final class DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2 extends SuspendLambda implements Function3<FlowCollector<? super StripeConnectivityStatus>, Triple<? extends Boolean, ? extends Boolean, ? extends Boolean>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ DefaultStripeConnectivityRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2(Continuation continuation, DefaultStripeConnectivityRepository defaultStripeConnectivityRepository) {
        super(3, continuation);
        this.this$0 = defaultStripeConnectivityRepository;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super StripeConnectivityStatus> flowCollector, Triple<? extends Boolean, ? extends Boolean, ? extends Boolean> triple, Continuation<? super Unit> continuation) {
        DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2 defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2 = new DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2(continuation, this.this$0);
        defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2.L$0 = flowCollector;
        defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2.L$1 = triple;
        return defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2 defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2 = this;
            Triple triple = (Triple) this.L$1;
            Flow flowFlowOf = !((Boolean) triple.component1()).booleanValue() ? FlowKt.flowOf(StripeConnectivityStatus.NO_NETWORK) : ((Boolean) triple.component2()).booleanValue() ? FlowKt.flowOf(StripeConnectivityStatus.OFFLINE_STICKY) : FlowKt.onStart(FlowKt.transformLatest(this.this$0.enableHealthCheckCriteriaFlow, new DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1(null, ((Boolean) triple.component3()).booleanValue(), this.this$0)), new DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$2(null));
            this.label = 1;
            if (FlowKt.emitAll(flowCollector, flowFlowOf, defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$2) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
