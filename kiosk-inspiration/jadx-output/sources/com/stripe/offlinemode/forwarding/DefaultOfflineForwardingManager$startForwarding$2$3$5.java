package com.stripe.offlinemode.forwarding;

import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.PendingTimer;
import com.stripe.offlinemode.models.OfflineForwardingResponse;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "response", "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$3$5", f = "DefaultOfflineForwardingManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DefaultOfflineForwardingManager$startForwarding$2$3$5 extends SuspendLambda implements Function2<OfflineForwardingResponse, Continuation<? super Unit>, Object> {
    final /* synthetic */ Ref.IntRef $consecutiveSuccesses;
    final /* synthetic */ Ref.ObjectRef<PendingTimer> $pendingTimer;
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DefaultOfflineForwardingManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineForwardingManager$startForwarding$2$3$5(Ref.IntRef intRef, Ref.ObjectRef<PendingTimer> objectRef, DefaultOfflineForwardingManager defaultOfflineForwardingManager, Continuation<? super DefaultOfflineForwardingManager$startForwarding$2$3$5> continuation) {
        super(2, continuation);
        this.$consecutiveSuccesses = intRef;
        this.$pendingTimer = objectRef;
        this.this$0 = defaultOfflineForwardingManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultOfflineForwardingManager$startForwarding$2$3$5 defaultOfflineForwardingManager$startForwarding$2$3$5 = new DefaultOfflineForwardingManager$startForwarding$2$3$5(this.$consecutiveSuccesses, this.$pendingTimer, this.this$0, continuation);
        defaultOfflineForwardingManager$startForwarding$2$3$5.L$0 = obj;
        return defaultOfflineForwardingManager$startForwarding$2$3$5;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(OfflineForwardingResponse offlineForwardingResponse, Continuation<? super Unit> continuation) {
        return ((DefaultOfflineForwardingManager$startForwarding$2$3$5) create(offlineForwardingResponse, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        OfflineForwardingResponse offlineForwardingResponse = (OfflineForwardingResponse) this.L$0;
        if (offlineForwardingResponse instanceof OfflineForwardingResponse.Success) {
            this.$consecutiveSuccesses.element++;
        } else {
            this.$consecutiveSuccesses.element = 0;
        }
        if (!offlineForwardingResponse.getRequest().getHasMore()) {
            PendingTimer pendingTimer = this.$pendingTimer.element;
            if (pendingTimer != null) {
                HealthLogger.endTimer$default(this.this$0.endToEndLogger, pendingTimer, null, null, null, 14, null);
            }
            this.$pendingTimer.element = null;
            this.this$0.traceLogger.endSession();
        }
        return Unit.INSTANCE;
    }
}
