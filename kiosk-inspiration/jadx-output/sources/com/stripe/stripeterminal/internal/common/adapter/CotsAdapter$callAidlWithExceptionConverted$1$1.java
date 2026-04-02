package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.cots.common.CotsClientInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: CotsAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "T", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$callAidlWithExceptionConverted$1$1", f = "CotsAdapter.kt", i = {}, l = {706}, m = "invokeSuspend", n = {}, s = {})
final class CotsAdapter$callAidlWithExceptionConverted$1$1<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super T>, Object> {
    final /* synthetic */ Function2<CotsClientInterface, Continuation<? super T>, Object> $call;
    final /* synthetic */ CotsAdapter $this_runCatching;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CotsAdapter$callAidlWithExceptionConverted$1$1(Function2<? super CotsClientInterface, ? super Continuation<? super T>, ? extends Object> function2, CotsAdapter cotsAdapter, Continuation<? super CotsAdapter$callAidlWithExceptionConverted$1$1> continuation) {
        super(2, continuation);
        this.$call = function2;
        this.$this_runCatching = cotsAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new CotsAdapter$callAidlWithExceptionConverted$1$1(this.$call, this.$this_runCatching, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super T> continuation) {
        return ((CotsAdapter$callAidlWithExceptionConverted$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Function2<CotsClientInterface, Continuation<? super T>, Object> function2 = this.$call;
        CotsClientInterface cotsClientInterface = this.$this_runCatching.cotsServiceClient;
        this.label = 1;
        Object objInvoke = function2.invoke(cotsClientInterface, this);
        return objInvoke == coroutine_suspended ? coroutine_suspended : objInvoke;
    }
}
