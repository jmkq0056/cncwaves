package com.stripe.offlinemode.forwarding;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.loggingmodels.Outcome;
import com.stripe.offlinemode.log.OfflineForwardingTraceLogger;
import com.stripe.offlinemode.models.OfflineForwardingResponse;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;", "error", ""}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$3$6", f = "DefaultOfflineForwardingManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DefaultOfflineForwardingManager$startForwarding$2$3$6 extends SuspendLambda implements Function3<FlowCollector<? super OfflineForwardingResponse>, Throwable, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.ObjectRef<PendingTimer> $pendingTimer;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DefaultOfflineForwardingManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineForwardingManager$startForwarding$2$3$6(Ref.ObjectRef<PendingTimer> objectRef, DefaultOfflineForwardingManager defaultOfflineForwardingManager, Continuation<? super DefaultOfflineForwardingManager$startForwarding$2$3$6> continuation) {
        super(3, continuation);
        this.$pendingTimer = objectRef;
        this.this$0 = defaultOfflineForwardingManager;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(FlowCollector<? super OfflineForwardingResponse> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
        DefaultOfflineForwardingManager$startForwarding$2$3$6 defaultOfflineForwardingManager$startForwarding$2$3$6 = new DefaultOfflineForwardingManager$startForwarding$2$3$6(this.$pendingTimer, this.this$0, continuation);
        defaultOfflineForwardingManager$startForwarding$2$3$6.L$0 = th;
        return defaultOfflineForwardingManager$startForwarding$2$3$6.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        Throwable th = (Throwable) this.L$0;
        PendingTimer pendingTimer = this.$pendingTimer.element;
        if (pendingTimer != null) {
            DefaultOfflineForwardingManager defaultOfflineForwardingManager = this.this$0;
            HealthLogger.endTimer$default(defaultOfflineForwardingManager.endToEndLogger, pendingTimer, Outcome.Canceled.INSTANCE, defaultOfflineForwardingManager.tags(th), null, 8, null);
        }
        OfflineForwardingTraceLogger.endOperation$default(this.this$0.traceLogger, th, null, 2, null);
        this.$pendingTimer.element = null;
        return Unit.INSTANCE;
    }
}
