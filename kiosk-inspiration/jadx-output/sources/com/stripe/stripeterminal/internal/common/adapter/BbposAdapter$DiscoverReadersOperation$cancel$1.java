package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.discoverreaders.CancelDiscoverReadersReason;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.ExceptionsKt;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: BbposAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$DiscoverReadersOperation$cancel$1", f = "BbposAdapter.kt", i = {}, l = {1269}, m = "invokeSuspend", n = {}, s = {})
final class BbposAdapter$DiscoverReadersOperation$cancel$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CancelDiscoverReadersReason $cancelDiscoverReadersReason;
    int label;
    final /* synthetic */ BbposAdapter.DiscoverReadersOperation this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposAdapter$DiscoverReadersOperation$cancel$1(BbposAdapter.DiscoverReadersOperation discoverReadersOperation, CancelDiscoverReadersReason cancelDiscoverReadersReason, Continuation<? super BbposAdapter$DiscoverReadersOperation$cancel$1> continuation) {
        super(2, continuation);
        this.this$0 = discoverReadersOperation;
        this.$cancelDiscoverReadersReason = cancelDiscoverReadersReason;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BbposAdapter$DiscoverReadersOperation$cancel$1(this.this$0, this.$cancelDiscoverReadersReason, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BbposAdapter$DiscoverReadersOperation$cancel$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CancellationException CancellationException;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Job job = this.this$0.discoveryJob;
            CancelDiscoverReadersReason cancelDiscoverReadersReason = this.$cancelDiscoverReadersReason;
            if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.ConnectReaderInProgress.INSTANCE)) {
                CancellationException = new CancellationException("Auto-cancel discoverReaders to start connection.");
            } else if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.DiscoveryCompleted.INSTANCE)) {
                CancellationException = new CancellationException("Auto-cancel discoverReaders because discovery is complete");
            } else if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.MerchantRequestedCancellation.INSTANCE)) {
                CancellationException = ExceptionsKt.CancellationException("DiscoverReaders was canceled by the user", new TerminalException(TerminalErrorCode.CANCELED, "DiscoverReaders was canceled by the user.", null, null, 12, null));
            } else if (Intrinsics.areEqual(cancelDiscoverReadersReason, CancelDiscoverReadersReason.NewDiscoverReadersQueued.INSTANCE)) {
                CancellationException = ExceptionsKt.CancellationException("Auto-cancel discoverReaders because multiple discovery calls were attempted.", new TerminalException(TerminalErrorCode.CANCELED_DUE_TO_INTEGRATION_ERROR, "DiscoverReaders was canceled because of a new discovery call. The SDK can process a single discovery operation at a time.", null, null, 12, null));
            } else {
                throw new NoWhenBranchMatchedException();
            }
            job.cancel(CancellationException);
            this.label = 1;
            if (this.this$0.discoveryJob.join(this) == coroutine_suspended) {
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
