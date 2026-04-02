package com.stripe.core.readerupdate;

import com.sun.jna.platform.win32.Ddeml;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Add missing generic type declarations: [Status] */
/* JADX INFO: compiled from: ProgressFlowUpdater.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0004*\b\u0012\u0004\u0012\u0002H\u00040\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Coordinates", "Image", Ddeml.SZDDESYS_ITEM_STATUS, "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.readerupdate.ProgressFlowUpdater$updateFlow$1", f = "ProgressFlowUpdater.kt", i = {0, 1}, l = {41, 55, 61, 61}, m = "invokeSuspend", n = {"$this$invokeSuspend_u24lambda_u240", "$this$invokeSuspend_u24lambda_u240"}, s = {"L$1", "L$1"})
final class ProgressFlowUpdater$updateFlow$1<Status> extends SuspendLambda implements Function2<FlowCollector<? super Status>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ ProgressFlowUpdater<Coordinates, Image, Status> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressFlowUpdater$updateFlow$1(ProgressFlowUpdater<Coordinates, Image, Status> progressFlowUpdater, Continuation<? super ProgressFlowUpdater$updateFlow$1> continuation) {
        super(2, continuation);
        this.this$0 = progressFlowUpdater;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ProgressFlowUpdater$updateFlow$1 progressFlowUpdater$updateFlow$1 = new ProgressFlowUpdater$updateFlow$1(this.this$0, continuation);
        progressFlowUpdater$updateFlow$1.L$0 = obj;
        return progressFlowUpdater$updateFlow$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super Status> flowCollector, Continuation<? super Unit> continuation) {
        return ((ProgressFlowUpdater$updateFlow$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x0166, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.emitAll(r1, r0, r18) != r9) goto L40;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x014f A[Catch: all -> 0x0170, PHI: r0 r1 r2
      0x014f: PHI (r0v21 java.lang.Object) = (r0v20 java.lang.Object), (r0v35 java.lang.Object) binds: [B:35:0x014c, B:14:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x014f: PHI (r1v16 kotlinx.coroutines.flow.FlowCollector) = (r1v15 kotlinx.coroutines.flow.FlowCollector), (r1v25 kotlinx.coroutines.flow.FlowCollector) binds: [B:35:0x014c, B:14:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x014f: PHI (r2v14 com.stripe.core.readerupdate.ProgressFlowUpdater) = (r2v13 com.stripe.core.readerupdate.ProgressFlowUpdater), (r2v17 com.stripe.core.readerupdate.ProgressFlowUpdater) binds: [B:35:0x014c, B:14:0x0036] A[DONT_GENERATE, DONT_INLINE], TryCatch #0 {all -> 0x0170, blocks: (B:8:0x001e, B:40:0x0169, B:13:0x0033, B:37:0x014f, B:16:0x0044, B:34:0x011d, B:19:0x0055, B:26:0x00ab, B:28:0x00b8, B:30:0x00d3, B:22:0x0066), top: B:53:0x0014 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.readerupdate.ProgressFlowUpdater$updateFlow$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
