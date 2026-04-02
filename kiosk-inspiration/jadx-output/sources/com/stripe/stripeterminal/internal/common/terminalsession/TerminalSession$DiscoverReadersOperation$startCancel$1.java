package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.discoverreaders.CancelDiscoverReadersReason;
import com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TerminalSession.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.terminalsession.TerminalSession$DiscoverReadersOperation$startCancel$1", f = "TerminalSession.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class TerminalSession$DiscoverReadersOperation$startCancel$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ TerminalSession this$0;
    final /* synthetic */ TerminalSession.DiscoverReadersOperation this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TerminalSession$DiscoverReadersOperation$startCancel$1(TerminalSession terminalSession, TerminalSession.DiscoverReadersOperation discoverReadersOperation, Continuation<? super TerminalSession$DiscoverReadersOperation$startCancel$1> continuation) {
        super(2, continuation);
        this.this$0 = terminalSession;
        this.this$1 = discoverReadersOperation;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TerminalSession$DiscoverReadersOperation$startCancel$1(this.this$0, this.this$1, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TerminalSession$DiscoverReadersOperation$startCancel$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.adapter.cancelDiscoverReaders(CancelDiscoverReadersReason.MerchantRequestedCancellation.INSTANCE);
            this.this$1.onCancelSuccess();
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
