package com.stripe.stripeterminal.internal.common.tokenrepositories;

import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ConnectionTokenRepository.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.tokenrepositories.ConnectionTokenRepository$refreshToken$1$2", f = "ConnectionTokenRepository.kt", i = {}, l = {WinError.ERROR_NO_MORE_SEARCH_HANDLES}, m = "invokeSuspend", n = {}, s = {})
final class ConnectionTokenRepository$refreshToken$1$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    final /* synthetic */ CompletableDeferred<String> $tokenResult;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConnectionTokenRepository$refreshToken$1$2(CompletableDeferred<String> completableDeferred, Continuation<? super ConnectionTokenRepository$refreshToken$1$2> continuation) {
        super(2, continuation);
        this.$tokenResult = completableDeferred;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConnectionTokenRepository$refreshToken$1$2(this.$tokenResult, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((ConnectionTokenRepository$refreshToken$1$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        this.label = 1;
        Object objAwait = this.$tokenResult.await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
