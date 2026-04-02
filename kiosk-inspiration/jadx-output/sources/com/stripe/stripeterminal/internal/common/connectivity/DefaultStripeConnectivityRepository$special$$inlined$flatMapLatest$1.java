package com.stripe.stripeterminal.internal.common.connectivity;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: Merge.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1", f = "DefaultStripeConnectivityRepository.kt", i = {}, l = {WinError.ERROR_INVALID_STACKSEG}, m = "invokeSuspend", n = {}, s = {})
public final class DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super Boolean>, Integer, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    public DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1(Continuation continuation) {
        super(3, continuation);
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super Boolean> flowCollector, Integer num, Continuation<? super Unit> continuation) {
        DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1 defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1 = new DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1(continuation);
        defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1.L$0 = flowCollector;
        defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1.L$1 = num;
        return defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            DefaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1 defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1 = this;
            int iIntValue = ((Number) this.L$1).intValue();
            Flow flowFlowOf = iIntValue == 0 ? FlowKt.flowOf(Boxing.boxBoolean(false)) : FlowKt.flow(new DefaultStripeConnectivityRepository$offlineStickyStateFlow$1$1(iIntValue, null));
            this.label = 1;
            if (FlowKt.emitAll(flowCollector, flowFlowOf, defaultStripeConnectivityRepository$special$$inlined$flatMapLatest$1) == coroutine_suspended) {
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
