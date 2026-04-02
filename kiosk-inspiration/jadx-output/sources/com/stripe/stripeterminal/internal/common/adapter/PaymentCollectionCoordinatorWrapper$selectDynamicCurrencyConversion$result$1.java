package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.transaction.DynamicCurrencyConversionData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: PaymentCollectionCoordinatorWrapper.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.PaymentCollectionCoordinatorWrapper$selectDynamicCurrencyConversion$result$1", f = "PaymentCollectionCoordinatorWrapper.kt", i = {}, l = {271, 271}, m = "invokeSuspend", n = {}, s = {})
final class PaymentCollectionCoordinatorWrapper$selectDynamicCurrencyConversion$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ DynamicCurrencyConversionData $dynamicCurrencyConversionData;
    int label;
    final /* synthetic */ PaymentCollectionCoordinatorWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PaymentCollectionCoordinatorWrapper$selectDynamicCurrencyConversion$result$1(PaymentCollectionCoordinatorWrapper paymentCollectionCoordinatorWrapper, DynamicCurrencyConversionData dynamicCurrencyConversionData, Continuation<? super PaymentCollectionCoordinatorWrapper$selectDynamicCurrencyConversion$result$1> continuation) {
        super(2, continuation);
        this.this$0 = paymentCollectionCoordinatorWrapper;
        this.$dynamicCurrencyConversionData = dynamicCurrencyConversionData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaymentCollectionCoordinatorWrapper$selectDynamicCurrencyConversion$result$1(this.this$0, this.$dynamicCurrencyConversionData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((PaymentCollectionCoordinatorWrapper$selectDynamicCurrencyConversion$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
    
        if (r6 == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
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
            goto L45
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L35
        L1e:
            kotlin.ResultKt.throwOnFailure(r6)
            com.stripe.stripeterminal.internal.common.adapter.PaymentCollectionCoordinatorWrapper r6 = r5.this$0
            com.stripe.paymentcollection.PaymentCollectionCoordinator r6 = com.stripe.stripeterminal.internal.common.adapter.PaymentCollectionCoordinatorWrapper.access$getPaymentCollectionCoordinator$p(r6)
            com.stripe.transaction.DynamicCurrencyConversionData r1 = r5.$dynamicCurrencyConversionData
            r4 = r5
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            r5.label = r3
            java.lang.Object r6 = r6.selectDynamicCurrencyConversion(r1, r4)
            if (r6 != r0) goto L35
            goto L44
        L35:
            kotlinx.coroutines.Deferred r6 = (kotlinx.coroutines.Deferred) r6
            if (r6 == 0) goto L48
            r1 = r5
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r5.label = r2
            java.lang.Object r6 = r6.await(r1)
            if (r6 != r0) goto L45
        L44:
            return r0
        L45:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            return r6
        L48:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.adapter.PaymentCollectionCoordinatorWrapper$selectDynamicCurrencyConversion$result$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
