package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.core.aidlrpc.AidlRpcException;
import com.stripe.cots.aidlservice.CotsReader;
import com.stripe.cots.common.CotsClientInterface;
import com.sun.jna.platform.win32.WinError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: CotsAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/cots/aidlservice/CotsReader;", "Lcom/stripe/cots/common/CotsClientInterface;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$DiscoverReadersOperation$execute$cotsReader$1", f = "CotsAdapter.kt", i = {}, l = {WinError.ERROR_KERNEL_APC}, m = "invokeSuspend", n = {}, s = {})
final class CotsAdapter$DiscoverReadersOperation$execute$cotsReader$1 extends SuspendLambda implements Function2<CotsClientInterface, Continuation<? super CotsReader>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    CotsAdapter$DiscoverReadersOperation$execute$cotsReader$1(Continuation<? super CotsAdapter$DiscoverReadersOperation$execute$cotsReader$1> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CotsAdapter$DiscoverReadersOperation$execute$cotsReader$1 cotsAdapter$DiscoverReadersOperation$execute$cotsReader$1 = new CotsAdapter$DiscoverReadersOperation$execute$cotsReader$1(continuation);
        cotsAdapter$DiscoverReadersOperation$execute$cotsReader$1.L$0 = obj;
        return cotsAdapter$DiscoverReadersOperation$execute$cotsReader$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CotsClientInterface cotsClientInterface, Continuation<? super CotsReader> continuation) {
        return ((CotsAdapter$DiscoverReadersOperation$execute$cotsReader$1) create(cotsClientInterface, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws AidlRpcException {
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
        Object objDiscover = ((CotsClientInterface) this.L$0).discover(this);
        return objDiscover == coroutine_suspended ? coroutine_suspended : objDiscover;
    }
}
