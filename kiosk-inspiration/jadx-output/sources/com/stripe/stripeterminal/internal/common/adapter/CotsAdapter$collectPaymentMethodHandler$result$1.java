package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.cots.aidlservice.CotsContactlessResult;
import com.stripe.cots.common.CotsClientInterface;
import com.stripe.transaction.PaymentMethodCollectionType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: CotsAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/cots/aidlservice/CotsContactlessResult;", "Lcom/stripe/cots/common/CotsClientInterface;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$collectPaymentMethodHandler$result$1", f = "CotsAdapter.kt", i = {}, l = {307, 314}, m = "invokeSuspend", n = {}, s = {})
final class CotsAdapter$collectPaymentMethodHandler$result$1 extends SuspendLambda implements Function2<CotsClientInterface, Continuation<? super CotsContactlessResult>, Object> {
    final /* synthetic */ PaymentMethodCollectionType $paymentMethodCollectionType;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CotsAdapter$collectPaymentMethodHandler$result$1(PaymentMethodCollectionType paymentMethodCollectionType, Continuation<? super CotsAdapter$collectPaymentMethodHandler$result$1> continuation) {
        super(2, continuation);
        this.$paymentMethodCollectionType = paymentMethodCollectionType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        CotsAdapter$collectPaymentMethodHandler$result$1 cotsAdapter$collectPaymentMethodHandler$result$1 = new CotsAdapter$collectPaymentMethodHandler$result$1(this.$paymentMethodCollectionType, continuation);
        cotsAdapter$collectPaymentMethodHandler$result$1.L$0 = obj;
        return cotsAdapter$collectPaymentMethodHandler$result$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CotsClientInterface cotsClientInterface, Continuation<? super CotsContactlessResult> continuation) {
        return ((CotsAdapter$collectPaymentMethodHandler$result$1) create(cotsClientInterface, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
    
        if (r6 == r0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0068, code lost:
    
        if (r6 == r0) goto L19;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) throws com.stripe.core.aidlrpc.AidlRpcException {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            kotlin.ResultKt.throwOnFailure(r6)
            goto L6b
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L51
        L1e:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.Object r6 = r5.L$0
            com.stripe.cots.common.CotsClientInterface r6 = (com.stripe.cots.common.CotsClientInterface) r6
            com.stripe.stripeterminal.internal.common.adapter.TapToPayUxConfigurationRepository r1 = com.stripe.stripeterminal.internal.common.adapter.TapToPayUxConfigurationRepository.INSTANCE
            com.stripe.stripeterminal.external.models.TapToPayUxConfiguration r1 = r1.getUxConfig()
            if (r1 == 0) goto L54
            com.stripe.cots.common.CotsCollectionParameters r1 = new com.stripe.cots.common.CotsCollectionParameters
            com.stripe.transaction.PaymentMethodCollectionType r2 = r5.$paymentMethodCollectionType
            com.stripe.currency.Amount r2 = r2.getAmount()
            com.stripe.stripeterminal.internal.common.adapter.TapToPayUxConfigurationRepository r4 = com.stripe.stripeterminal.internal.common.adapter.TapToPayUxConfigurationRepository.INSTANCE
            com.stripe.stripeterminal.external.models.TapToPayUxConfiguration r4 = r4.getUxConfig()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r4)
            com.stripe.cots.aidlservice.CotsUxConfig r4 = com.stripe.stripeterminal.internal.common.adapter.CotsAdapterKt.toProto(r4)
            r1.<init>(r2, r4)
            r2 = r5
            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
            r5.label = r3
            java.lang.Object r6 = r6.collectPayment(r1, r2)
            if (r6 != r0) goto L51
            goto L6a
        L51:
            com.stripe.cots.aidlservice.CotsContactlessResult r6 = (com.stripe.cots.aidlservice.CotsContactlessResult) r6
            return r6
        L54:
            com.stripe.cots.common.CotsCollectionParameters r1 = new com.stripe.cots.common.CotsCollectionParameters
            com.stripe.transaction.PaymentMethodCollectionType r3 = r5.$paymentMethodCollectionType
            com.stripe.currency.Amount r3 = r3.getAmount()
            r1.<init>(r3)
            r3 = r5
            kotlin.coroutines.Continuation r3 = (kotlin.coroutines.Continuation) r3
            r5.label = r2
            java.lang.Object r6 = r6.collectPayment(r1, r3)
            if (r6 != r0) goto L6b
        L6a:
            return r0
        L6b:
            com.stripe.cots.aidlservice.CotsContactlessResult r6 = (com.stripe.cots.aidlservice.CotsContactlessResult) r6
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.CotsAdapter$collectPaymentMethodHandler$result$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
