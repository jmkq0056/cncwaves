package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.currency.Amount;
import com.stripe.hardware.ReaderConfiguration;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.paymentcollection.PaymentCollectionListener;
import com.stripe.paymentcollection.PaymentCollectionResult;
import com.stripe.paymentcollection.SCARequirement;
import com.stripe.stripeterminal.external.models.PaymentMethodType;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: compiled from: PaymentCollectionCoordinatorWrapper.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/paymentcollection/PaymentCollectionResult;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1", f = "PaymentCollectionCoordinatorWrapper.kt", i = {}, l = {382, 399}, m = "invokeSuspend", n = {}, s = {})
final class PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super PaymentCollectionResult>, Object> {
    final /* synthetic */ Amount $amount;
    final /* synthetic */ ReaderConfiguration.DomesticDebitPriority $domesticDebitPriority;
    final /* synthetic */ boolean $enableCustomerCancellation;
    final /* synthetic */ boolean $forcePinEntry;
    final /* synthetic */ boolean $isDeferredAuthorizationCountry;
    final /* synthetic */ boolean $isOffline;
    final /* synthetic */ PaymentCollectionListener $listener;
    final /* synthetic */ boolean $manualEntry;
    final /* synthetic */ List<PaymentMethodType> $nonCardPaymentMethodTypes;
    final /* synthetic */ boolean $requestIncrementalAuthorizationSupport;
    final /* synthetic */ SCARequirement $scaRequirement;
    final /* synthetic */ boolean $skipTipping;
    final /* synthetic */ String $surchargeNotice;
    final /* synthetic */ Amount $tipEligibleAmount;
    final /* synthetic */ Amount $tippingAmount;
    final /* synthetic */ TransactionType $transactionType;
    int label;
    final /* synthetic */ PaymentCollectionCoordinatorWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1(PaymentCollectionCoordinatorWrapper paymentCollectionCoordinatorWrapper, Amount amount, TransactionType transactionType, PaymentCollectionListener paymentCollectionListener, SCARequirement sCARequirement, Amount amount2, boolean z, boolean z2, boolean z3, Amount amount3, boolean z4, ReaderConfiguration.DomesticDebitPriority domesticDebitPriority, boolean z5, String str, List<? extends PaymentMethodType> list, boolean z6, boolean z7, Continuation<? super PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1> continuation) {
        super(2, continuation);
        this.this$0 = paymentCollectionCoordinatorWrapper;
        this.$amount = amount;
        this.$transactionType = transactionType;
        this.$listener = paymentCollectionListener;
        this.$scaRequirement = sCARequirement;
        this.$tippingAmount = amount2;
        this.$skipTipping = z;
        this.$manualEntry = z2;
        this.$isOffline = z3;
        this.$tipEligibleAmount = amount3;
        this.$isDeferredAuthorizationCountry = z4;
        this.$domesticDebitPriority = domesticDebitPriority;
        this.$enableCustomerCancellation = z5;
        this.$surchargeNotice = str;
        this.$nonCardPaymentMethodTypes = list;
        this.$requestIncrementalAuthorizationSupport = z6;
        this.$forcePinEntry = z7;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1(this.this$0, this.$amount, this.$transactionType, this.$listener, this.$scaRequirement, this.$tippingAmount, this.$skipTipping, this.$manualEntry, this.$isOffline, this.$tipEligibleAmount, this.$isDeferredAuthorizationCountry, this.$domesticDebitPriority, this.$enableCustomerCancellation, this.$surchargeNotice, this.$nonCardPaymentMethodTypes, this.$requestIncrementalAuthorizationSupport, this.$forcePinEntry, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super PaymentCollectionResult> continuation) {
        return ((PaymentCollectionCoordinatorWrapper$collectPaymentMethodHelper$paymentCollectionResult$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objCollectPaymentMethod;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            objCollectPaymentMethod = this.this$0.paymentCollectionCoordinator.collectPaymentMethod(this.$amount, this.$transactionType, this.$listener, this.$scaRequirement, this.$tippingAmount, this.$skipTipping, this.$manualEntry, this.$isOffline, this.$tipEligibleAmount, this.$isDeferredAuthorizationCountry, this.$domesticDebitPriority, this.$enableCustomerCancellation, this.$surchargeNotice, this.$nonCardPaymentMethodTypes, this.$requestIncrementalAuthorizationSupport, this.$forcePinEntry, this);
            if (objCollectPaymentMethod != coroutine_suspended) {
            }
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return obj;
        }
        ResultKt.throwOnFailure(obj);
        objCollectPaymentMethod = obj;
        this.label = 2;
        Object objAwait = ((Deferred) objCollectPaymentMethod).await(this);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }
}
