package com.stripe.core.readerupdate;

import com.sun.jna.platform.win32.Ddeml;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Add missing generic type declarations: [Image] */
/* JADX INFO: compiled from: ProgressFlowUpdater.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0004\n\u0002\b\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0003H\u008a@"}, d2 = {"<anonymous>", "Image", "Coordinates", Ddeml.SZDDESYS_ITEM_STATUS}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.readerupdate.ProgressFlowUpdater$updateFlow$1$1$image$1", f = "ProgressFlowUpdater.kt", i = {}, l = {56}, m = "invokeSuspend", n = {}, s = {})
final class ProgressFlowUpdater$updateFlow$1$1$image$1<Image> extends SuspendLambda implements Function1<Continuation<? super Image>, Object> {
    final /* synthetic */ Coordinates $coordinates;
    int label;
    final /* synthetic */ ProgressFlowUpdater<Coordinates, Image, Status> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressFlowUpdater$updateFlow$1$1$image$1(ProgressFlowUpdater<Coordinates, Image, Status> progressFlowUpdater, Coordinates coordinates, Continuation<? super ProgressFlowUpdater$updateFlow$1$1$image$1> continuation) {
        super(1, continuation);
        this.this$0 = progressFlowUpdater;
        this.$coordinates = coordinates;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new ProgressFlowUpdater$updateFlow$1$1$image$1(this.this$0, this.$coordinates, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Image> continuation) {
        return ((ProgressFlowUpdater$updateFlow$1$1$image$1) create(continuation)).invokeSuspend(Unit.INSTANCE);
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
        Object objIngest = ((ProgressFlowUpdater) this.this$0).ingester.ingest(this.$coordinates, this);
        return objIngest == coroutine_suspended ? coroutine_suspended : objIngest;
    }
}
