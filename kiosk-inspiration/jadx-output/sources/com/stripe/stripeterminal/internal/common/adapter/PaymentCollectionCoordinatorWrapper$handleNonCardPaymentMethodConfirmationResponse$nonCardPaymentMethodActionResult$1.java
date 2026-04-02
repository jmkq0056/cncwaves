package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.hardware.emv.TransactionResult;
import com.stripe.transaction.NonCardPaymentMethodData;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaymentCollectionCoordinatorWrapper.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/hardware/emv/TransactionResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.PaymentCollectionCoordinatorWrapper$handleNonCardPaymentMethodConfirmationResponse$nonCardPaymentMethodActionResult$1", f = "PaymentCollectionCoordinatorWrapper.kt", i = {}, l = {303}, m = "invokeSuspend", n = {}, s = {})
final class PaymentCollectionCoordinatorWrapper$handleNonCardPaymentMethodConfirmationResponse$nonCardPaymentMethodActionResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super TransactionResult>, Object> {
    final /* synthetic */ NonCardPaymentMethodData $data;
    int label;
    final /* synthetic */ PaymentCollectionCoordinatorWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentCollectionCoordinatorWrapper$handleNonCardPaymentMethodConfirmationResponse$nonCardPaymentMethodActionResult$1(PaymentCollectionCoordinatorWrapper paymentCollectionCoordinatorWrapper, NonCardPaymentMethodData nonCardPaymentMethodData, Continuation<? super PaymentCollectionCoordinatorWrapper$handleNonCardPaymentMethodConfirmationResponse$nonCardPaymentMethodActionResult$1> continuation) {
        super(2, continuation);
        this.this$0 = paymentCollectionCoordinatorWrapper;
        this.$data = nonCardPaymentMethodData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaymentCollectionCoordinatorWrapper$handleNonCardPaymentMethodConfirmationResponse$nonCardPaymentMethodActionResult$1(this.this$0, this.$data, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super TransactionResult> continuation) {
        return ((PaymentCollectionCoordinatorWrapper$handleNonCardPaymentMethodConfirmationResponse$nonCardPaymentMethodActionResult$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
        Object objAwait = this.this$0.paymentCollectionCoordinator.handleNonCardPaymentMethodConfirmationResponse(this.$data).await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
