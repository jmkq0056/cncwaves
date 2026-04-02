package com.stripe.stripeterminal.internal.common.connectivity;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt;

/* JADX INFO: compiled from: Merge.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u0002H\u0002H\u008a@¨\u0006\u0006"}, d2 = {"<anonymous>", "", "T", PrinterTextParser.TAGS_ALIGN_RIGHT, "Lkotlinx/coroutines/flow/FlowCollector;", "it", "kotlinx/coroutines/flow/FlowKt__MergeKt$flatMapLatest$1"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.connectivity.DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1", f = "DefaultStripeConnectivityRepository.kt", i = {}, l = {WinError.ERROR_INVALID_STACKSEG}, m = "invokeSuspend", n = {}, s = {})
public final class DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1 extends SuspendLambda implements Function3<FlowCollector<? super StripeConnectivityStatus>, Boolean, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $isApplicationInBackground$inlined;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;
    final /* synthetic */ DefaultStripeConnectivityRepository this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1(Continuation continuation, boolean z, DefaultStripeConnectivityRepository defaultStripeConnectivityRepository) {
        super(3, continuation);
        this.$isApplicationInBackground$inlined = z;
        this.this$0 = defaultStripeConnectivityRepository;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super StripeConnectivityStatus> flowCollector, Boolean bool, Continuation<? super Unit> continuation) {
        DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1 defaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1 = new DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1(continuation, this.$isApplicationInBackground$inlined, this.this$0);
        defaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1.L$0 = flowCollector;
        defaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1.L$1 = bool;
        return defaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Flow flowEmptyFlow;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            DefaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1 defaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1 = this;
            if (!((Boolean) this.L$1).booleanValue()) {
                flowEmptyFlow = FlowKt.emptyFlow();
            } else if (!this.$isApplicationInBackground$inlined || this.this$0.sdkStatusRepository.isEmbedded()) {
                this.this$0.logger.i("continuing health checks, sdk embedded status: " + this.this$0.sdkStatusRepository.isEmbedded(), new Pair[0]);
                flowEmptyFlow = FlowKt.mapLatest(FlowKt__ErrorsKt.retry$default(this.this$0.stripeNetworkHealthChecker.getNetworkHealthStatusFlow(), 0L, null, 3, null), new DefaultStripeConnectivityRepository$stripeConnectivityFlow$3$1$1(null));
            } else {
                this.this$0.logger.i("application backgrounded, pausing health checks", new Pair[0]);
                flowEmptyFlow = FlowKt.flowOf(StripeConnectivityStatus.HEALTH_CHECKS_PAUSED);
            }
            this.label = 1;
            if (FlowKt.emitAll(flowCollector, flowEmptyFlow, defaultStripeConnectivityRepository$stripeConnectivityFlow$lambda$4$$inlined$flatMapLatest$1) == coroutine_suspended) {
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
