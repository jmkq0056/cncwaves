package com.stripe.core.readerupdate;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: UpdateInstaller.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/core/readerupdate/UpdatePackage;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.readerupdate.UpdateInstaller$install$updates$1", f = "UpdateInstaller.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
final class UpdateInstaller$install$updates$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super UpdatePackage>, Object> {
    final /* synthetic */ UpdateSummary $summary;
    int label;
    final /* synthetic */ UpdateInstaller this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    UpdateInstaller$install$updates$1(UpdateInstaller updateInstaller, UpdateSummary updateSummary, Continuation<? super UpdateInstaller$install$updates$1> continuation) {
        super(2, continuation);
        this.this$0 = updateInstaller;
        this.$summary = updateSummary;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new UpdateInstaller$install$updates$1(this.this$0, this.$summary, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super UpdatePackage> continuation) {
        return ((UpdateInstaller$install$updates$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Object objIngest = this.this$0.ingester.ingest(this.$summary, this);
        return objIngest == coroutine_suspended ? coroutine_suspended : objIngest;
    }
}
