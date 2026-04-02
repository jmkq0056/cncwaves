package com.stripe.stripeterminal.internal.common.api;

import com.stripe.core.transaction.TransactionRepository;
import com.stripe.jvmcore.restclient.RestRequest;
import com.stripe.proto.api.rest.UpdatePaymentIntentRequest;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.TerminalStatusManager;
import com.stripe.transaction.CollectiblePayment;
import com.stripe.transaction.payment.ManualEntryPayment;
import com.stripe.transaction.payment.NonCardPayment;
import com.stripe.transaction.payment.Payment;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ApiPaymentIntentUpdater.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B'\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\u000eJ#\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0096\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/api/ApiPaymentIntentUpdater;", "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;", "apiClient", "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;", "statusManager", "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;", "transactionRepository", "Lcom/stripe/core/transaction/TransactionRepository;", "apiRequestFactory", "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;", "(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)V", "connectedReader", "Lkotlin/Function0;", "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lkotlin/jvm/functions/Function0;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;)V", "invoke", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "paymentIntent", "collectiblePayment", "Lcom/stripe/transaction/CollectiblePayment;", "requestDynamicCurrencyConversion", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiPaymentIntentUpdater implements PaymentIntentUpdater {
    private final ApiClient apiClient;
    private final ApiRequestFactory apiRequestFactory;
    private final Function0<Reader> connectedReader;
    private final TransactionRepository transactionRepository;

    public ApiPaymentIntentUpdater(ApiClient apiClient, Function0<Reader> connectedReader, TransactionRepository transactionRepository, ApiRequestFactory apiRequestFactory) {
        Intrinsics.checkNotNullParameter(apiClient, "apiClient");
        Intrinsics.checkNotNullParameter(connectedReader, "connectedReader");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(apiRequestFactory, "apiRequestFactory");
        this.apiClient = apiClient;
        this.connectedReader = connectedReader;
        this.transactionRepository = transactionRepository;
        this.apiRequestFactory = apiRequestFactory;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ApiPaymentIntentUpdater(ApiClient apiClient, final TerminalStatusManager statusManager, TransactionRepository transactionRepository, ApiRequestFactory apiRequestFactory) {
        this(apiClient, new Function0<Reader>() { // from class: com.stripe.stripeterminal.internal.common.api.ApiPaymentIntentUpdater.1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Reader invoke() {
                return statusManager.getConnectedReader();
            }
        }, transactionRepository, apiRequestFactory);
        Intrinsics.checkNotNullParameter(apiClient, "apiClient");
        Intrinsics.checkNotNullParameter(statusManager, "statusManager");
        Intrinsics.checkNotNullParameter(transactionRepository, "transactionRepository");
        Intrinsics.checkNotNullParameter(apiRequestFactory, "apiRequestFactory");
    }

    @Override // com.stripe.stripeterminal.internal.common.api.PaymentIntentUpdater
    public PaymentIntent invoke(PaymentIntent paymentIntent, CollectiblePayment collectiblePayment, boolean requestDynamicCurrencyConversion) throws TerminalException {
        RestRequest<UpdatePaymentIntentRequest, UpdatePaymentIntentRequest.Builder> restRequestUpdateNonCardPaymentMethodPaymentIntent;
        Intrinsics.checkNotNullParameter(paymentIntent, "paymentIntent");
        RestRequest<UpdatePaymentIntentRequest, UpdatePaymentIntentRequest.Builder> restRequest = null;
        if (collectiblePayment != null) {
            Payment payment = collectiblePayment.getPayment();
            if (payment instanceof ManualEntryPayment) {
                restRequestUpdateNonCardPaymentMethodPaymentIntent = this.apiRequestFactory.updateManualEntryPaymentIntent(paymentIntent, (ManualEntryPayment) payment);
            } else if (payment instanceof NonCardPayment) {
                restRequestUpdateNonCardPaymentMethodPaymentIntent = this.apiRequestFactory.updateNonCardPaymentMethodPaymentIntent(paymentIntent, (NonCardPayment) payment, this.transactionRepository.getAmountTip());
            }
            restRequest = restRequestUpdateNonCardPaymentMethodPaymentIntent;
        }
        if (restRequest != null) {
            return this.apiClient.updatePaymentIntentExpandedMethod((UpdatePaymentIntentRequest) restRequest.getBody(), restRequest.getHeaders());
        }
        return this.apiClient.updatePaymentIntentExpandMethod(paymentIntent, this.connectedReader.invoke(), this.transactionRepository.getAmountTip(), requestDynamicCurrencyConversion, this.transactionRepository.getAllowRedisplay());
    }
}
