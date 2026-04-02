package com.stripe.stripeterminal.internal.common;

import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.Reader;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: TerminalStatusManager.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.TerminalStatusManager$reportDisconnect$1$1", f = "TerminalStatusManager.kt", i = {}, l = {253}, m = "invokeSuspend", n = {}, s = {})
final class TerminalStatusManager$reportDisconnect$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ DisconnectReason $disconnectReason;
    final /* synthetic */ Reader $it;
    int label;
    final /* synthetic */ TerminalStatusManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TerminalStatusManager$reportDisconnect$1$1(TerminalStatusManager terminalStatusManager, Reader reader, DisconnectReason disconnectReason, Continuation<? super TerminalStatusManager$reportDisconnect$1$1> continuation) {
        super(2, continuation);
        this.this$0 = terminalStatusManager;
        this.$it = reader;
        this.$disconnectReason = disconnectReason;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TerminalStatusManager$reportDisconnect$1$1(this.this$0, this.$it, this.$disconnectReason, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((TerminalStatusManager$reportDisconnect$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (this.this$0._readerDisconnectedFlow.emit(new Pair(this.$it, this.$disconnectReason), this) == coroutine_suspended) {
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
