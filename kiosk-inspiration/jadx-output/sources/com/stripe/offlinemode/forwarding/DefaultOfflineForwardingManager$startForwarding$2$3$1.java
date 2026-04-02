package com.stripe.offlinemode.forwarding;

import com.stripe.offlinemode.log.OfflineTrace;
import com.stripe.offlinemode.models.OfflineForwardingRequest;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: DefaultOfflineForwardingManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "it", "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.offlinemode.forwarding.DefaultOfflineForwardingManager$startForwarding$2$3$1", f = "DefaultOfflineForwardingManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class DefaultOfflineForwardingManager$startForwarding$2$3$1 extends SuspendLambda implements Function2<OfflineForwardingRequest, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DefaultOfflineForwardingManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultOfflineForwardingManager$startForwarding$2$3$1(DefaultOfflineForwardingManager defaultOfflineForwardingManager, Continuation<? super DefaultOfflineForwardingManager$startForwarding$2$3$1> continuation) {
        super(2, continuation);
        this.this$0 = defaultOfflineForwardingManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultOfflineForwardingManager$startForwarding$2$3$1 defaultOfflineForwardingManager$startForwarding$2$3$1 = new DefaultOfflineForwardingManager$startForwarding$2$3$1(this.this$0, continuation);
        defaultOfflineForwardingManager$startForwarding$2$3$1.L$0 = obj;
        return defaultOfflineForwardingManager$startForwarding$2$3$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(OfflineForwardingRequest offlineForwardingRequest, Continuation<? super Unit> continuation) {
        return ((DefaultOfflineForwardingManager$startForwarding$2$3$1) create(offlineForwardingRequest, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        OfflineForwardingRequest offlineForwardingRequest = (OfflineForwardingRequest) this.L$0;
        this.this$0.traceLogger.startOperation(new OfflineTrace.OfflineForwarding(offlineForwardingRequest.getOfflineApiRequest().stripe_entity_id, offlineForwardingRequest.getOfflineApiRequest().offline_id, offlineForwardingRequest.getOfflineApiRequest().type, offlineForwardingRequest.getOfflineReader().serial_number));
        return Unit.INSTANCE;
    }
}
