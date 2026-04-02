package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BbposUsbAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$disconnectUnsafe$1", f = "BbposUsbAdapter.kt", i = {}, l = {WinError.ERROR_PWD_HISTORY_CONFLICT, WinError.ERROR_PWD_HISTORY_CONFLICT}, m = "invokeSuspend", n = {}, s = {})
final class BbposUsbAdapter$DiscoverUsbReadersOperation$disconnectUnsafe$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BbposUsbAdapter.DiscoverUsbReadersOperation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposUsbAdapter$DiscoverUsbReadersOperation$disconnectUnsafe$1(BbposUsbAdapter.DiscoverUsbReadersOperation discoverUsbReadersOperation, Continuation<? super BbposUsbAdapter$DiscoverUsbReadersOperation$disconnectUnsafe$1> continuation) {
        super(2, continuation);
        this.this$0 = discoverUsbReadersOperation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BbposUsbAdapter$DiscoverUsbReadersOperation$disconnectUnsafe$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BbposUsbAdapter$DiscoverUsbReadersOperation$disconnectUnsafe$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003a, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.collect((kotlinx.coroutines.flow.Flow) r5, r4) == r0) goto L15;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r5)
            goto L3d
        L12:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L1a:
            kotlin.ResultKt.throwOnFailure(r5)
            goto L2f
        L1e:
            kotlin.ResultKt.throwOnFailure(r5)
            com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation r5 = r4.this$0
            r1 = r4
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r4.label = r3
            java.lang.Object r5 = com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter.DiscoverUsbReadersOperation.access$disconnect(r5, r1)
            if (r5 != r0) goto L2f
            goto L3c
        L2f:
            kotlinx.coroutines.flow.Flow r5 = (kotlinx.coroutines.flow.Flow) r5
            r1 = r4
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r4.label = r2
            java.lang.Object r5 = kotlinx.coroutines.flow.FlowKt.collect(r5, r1)
            if (r5 != r0) goto L3d
        L3c:
            return r0
        L3d:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$disconnectUnsafe$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
