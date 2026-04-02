package com.stripe.core.readerupdate;

import com.sun.jna.platform.win32.Ddeml;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Add missing generic type declarations: [Status] */
/* JADX INFO: compiled from: ProgressFlowUpdater.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u00042\u0006\u0010\u0005\u001a\u0002H\u0004H\u008a@"}, d2 = {"<anonymous>", "", "Coordinates", "Image", Ddeml.SZDDESYS_ITEM_STATUS, "it"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.readerupdate.ProgressFlowUpdater$updateFlow$1$1$1", f = "ProgressFlowUpdater.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class ProgressFlowUpdater$updateFlow$1$1$1<Status> extends SuspendLambda implements Function2<Status, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ProgressFlowUpdater<Coordinates, Image, Status> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressFlowUpdater$updateFlow$1$1$1(ProgressFlowUpdater<Coordinates, Image, Status> progressFlowUpdater, Continuation<? super ProgressFlowUpdater$updateFlow$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = progressFlowUpdater;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ProgressFlowUpdater$updateFlow$1$1$1 progressFlowUpdater$updateFlow$1$1$1 = new ProgressFlowUpdater$updateFlow$1$1$1(this.this$0, continuation);
        progressFlowUpdater$updateFlow$1$1$1.L$0 = obj;
        return progressFlowUpdater$updateFlow$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Status status, Continuation<? super Unit> continuation) {
        return ((ProgressFlowUpdater$updateFlow$1$1$1) create(status, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        ((ProgressFlowUpdater) this.this$0).installHealthReporter.reportInstallProgress(this.L$0);
        return Unit.INSTANCE;
    }
}
