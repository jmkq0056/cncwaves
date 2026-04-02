package com.stripe.stripeterminal.internal.common.log;

import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: DefaultMposReaderEventLogger.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$eventStream$1$1", f = "DefaultMposReaderEventLogger.kt", i = {0}, l = {116, WinError.ERROR_CALL_NOT_IMPLEMENTED}, m = "invokeSuspend", n = {"$this$flow"}, s = {"L$0"})
final class DefaultMposReaderEventLogger$eventStream$1$1 extends SuspendLambda implements Function2<FlowCollector<? super MposReaderLogEvent>, Continuation<? super Unit>, Object> {
    final /* synthetic */ MposReaderLogEvent $it;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ DefaultMposReaderEventLogger this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DefaultMposReaderEventLogger$eventStream$1$1(MposReaderLogEvent mposReaderLogEvent, DefaultMposReaderEventLogger defaultMposReaderEventLogger, Continuation<? super DefaultMposReaderEventLogger$eventStream$1$1> continuation) {
        super(2, continuation);
        this.$it = mposReaderLogEvent;
        this.this$0 = defaultMposReaderEventLogger;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DefaultMposReaderEventLogger$eventStream$1$1 defaultMposReaderEventLogger$eventStream$1$1 = new DefaultMposReaderEventLogger$eventStream$1$1(this.$it, this.this$0, continuation);
        defaultMposReaderEventLogger$eventStream$1$1.L$0 = obj;
        return defaultMposReaderEventLogger$eventStream$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super MposReaderLogEvent> flowCollector, Continuation<? super Unit> continuation) {
        return ((DefaultMposReaderEventLogger$eventStream$1$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006e, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.emitAll(r1, r10, r9) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r9.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r10)
            goto L7d
        L12:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L1a:
            java.lang.Object r1 = r9.L$0
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.throwOnFailure(r10)
            goto L3a
        L22:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.Object r10 = r9.L$0
            r1 = r10
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent r10 = r9.$it
            r4 = r9
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            r9.L$0 = r1
            r9.label = r3
            java.lang.Object r10 = r1.emit(r10, r4)
            if (r10 != r0) goto L3a
            goto L70
        L3a:
            com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent r10 = r9.$it
            boolean r4 = r10 instanceof com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent.Connect
            if (r4 == 0) goto L71
            com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger r10 = r9.this$0
            kotlinx.coroutines.flow.Flow r10 = com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger.access$getReaderInfos(r10)
            com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger r4 = r9.this$0
            com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent r5 = r9.$it
            kotlinx.coroutines.flow.Flow[] r6 = new kotlinx.coroutines.flow.Flow[r2]
            com.stripe.stripeterminal.external.models.Reader r7 = r5.getReader()
            kotlinx.coroutines.flow.Flow r7 = com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger.access$batteryEventStream(r4, r10, r7)
            r8 = 0
            r6[r8] = r7
            com.stripe.stripeterminal.external.models.Reader r5 = r5.getReader()
            kotlinx.coroutines.flow.Flow r10 = com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger.access$coinCellVoltageEventStream(r4, r10, r5)
            r6[r3] = r10
            kotlinx.coroutines.flow.Flow r10 = kotlinx.coroutines.flow.FlowKt.merge(r6)
            r3 = 0
            r9.L$0 = r3
            r9.label = r2
            java.lang.Object r10 = kotlinx.coroutines.flow.FlowKt.emitAll(r1, r10, r9)
            if (r10 != r0) goto L7d
        L70:
            return r0
        L71:
            boolean r0 = r10 instanceof com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent.Battery
            if (r0 == 0) goto L76
            goto L78
        L76:
            boolean r3 = r10 instanceof com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent.CoinCellVoltage
        L78:
            if (r3 == 0) goto L7b
            goto L7d
        L7b:
            boolean r10 = r10 instanceof com.stripe.stripeterminal.internal.common.log.MposReaderLogEvent.Disconnect
        L7d:
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.log.DefaultMposReaderEventLogger$eventStream$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
