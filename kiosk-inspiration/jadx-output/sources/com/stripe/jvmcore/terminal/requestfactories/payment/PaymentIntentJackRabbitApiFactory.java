package com.stripe.jvmcore.terminal.requestfactories.payment;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.sdk.CancelCollectPaymentMethodRequest;
import com.stripe.proto.api.sdk.CancelConfirmPaymentIntentRequest;
import com.stripe.proto.api.sdk.CancelPaymentIntentRequest;
import com.stripe.proto.api.sdk.CollectPaymentMethodRequest;
import com.stripe.proto.api.sdk.ConfirmPaymentRequest;
import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
import com.stripe.proto.api.sdk.CreatePaymentIntentRequest;
import com.stripe.proto.api.sdk.HandlePaymentIntentNextActionsRequest;
import com.stripe.proto.api.sdk.OfflinePaymentDetails;
import com.stripe.proto.api.sdk.OnPaymentMethodCollectedForPaymentIntentRequest;
import com.stripe.proto.api.sdk.ResumeCollectPaymentMethodRequest;
import com.stripe.proto.model.rest.AllowRedisplay;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: PaymentIntentJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&J\u0098\u0001\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\t2\b\u0010\u0013\u001a\u0004\u0018\u00010\r2\u000e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0016\u0018\u00010\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\t2\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u001a\u001a\u00020\u000f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u000f2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010 \u001a\u0004\u0018\u00010\t2\b\u0010!\u001a\u0004\u0018\u00010\"H&JA\u0010#\u001a\u00020$2\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010%\u001a\u0004\u0018\u00010&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H&¢\u0006\u0002\u0010*J\u0018\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H&J\u0010\u00101\u001a\u0002022\u0006\u0010\b\u001a\u00020\tH&J\b\u00103\u001a\u000204H&J\u001e\u00105\u001a\u0002062\b\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00067À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;", "", "cancelCollectPaymentMethod", "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;", "cancelConfirmPaymentIntent", "Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;", "cancelPaymentIntent", "Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;", OfflineStorageConstantsKt.ID, "", "collectPaymentMethod", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "skipTipping", "", "manualEntry", "updatePaymentIntent", "intentId", "tipEligibleAmount", "computedPriorities", "", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "stripeAccountId", "offlineDetails", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "enableCustomerCancellation", "paymentIntent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "requestDynamicCurrencyConversion", "offlineBehavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "surchargeNotice", "allowRedisplay", "Lcom/stripe/proto/model/rest/AllowRedisplay;", "confirmPayment", "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "paymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "amountSurcharge", "", "returnUrl", "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "createPaymentIntent", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;", "params", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "config", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "handlePaymentIntentNextActions", "Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;", "onPaymentMethodCollectedForPaymentIntent", "Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;", "resumeCollectPaymentMethod", "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface PaymentIntentJackRabbitApiFactory {
    CancelCollectPaymentMethodRequest cancelCollectPaymentMethod();

    CancelConfirmPaymentIntentRequest cancelConfirmPaymentIntent();

    CancelPaymentIntentRequest cancelPaymentIntent(String id);

    CollectPaymentMethodRequest collectPaymentMethod(Amount amount, boolean skipTipping, boolean manualEntry, boolean updatePaymentIntent, String intentId, Amount tipEligibleAmount, List<? extends PaymentMethodOptions.RoutingPriority> computedPriorities, String stripeAccountId, OfflinePaymentDetails offlineDetails, boolean enableCustomerCancellation, PaymentIntent paymentIntent, boolean requestDynamicCurrencyConversion, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, String surchargeNotice, AllowRedisplay allowRedisplay);

    ConfirmPaymentRequest confirmPayment(String id, PaymentMethod paymentMethod, Long amountSurcharge, String returnUrl, OfflinePaymentDetails offlineDetails);

    CreatePaymentIntentRequest createPaymentIntent(PaymentIntentParameters params, CreateConfiguration config);

    HandlePaymentIntentNextActionsRequest handlePaymentIntentNextActions(String id);

    OnPaymentMethodCollectedForPaymentIntentRequest onPaymentMethodCollectedForPaymentIntent();

    ResumeCollectPaymentMethodRequest resumeCollectPaymentMethod(String id, OfflinePaymentDetails offlineDetails);

    static /* synthetic */ ResumeCollectPaymentMethodRequest resumeCollectPaymentMethod$default(PaymentIntentJackRabbitApiFactory paymentIntentJackRabbitApiFactory, String str, OfflinePaymentDetails offlinePaymentDetails, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeCollectPaymentMethod");
        }
        if ((i & 2) != 0) {
            offlinePaymentDetails = null;
        }
        return paymentIntentJackRabbitApiFactory.resumeCollectPaymentMethod(str, offlinePaymentDetails);
    }

    static /* synthetic */ ConfirmPaymentRequest confirmPayment$default(PaymentIntentJackRabbitApiFactory paymentIntentJackRabbitApiFactory, String str, PaymentMethod paymentMethod, Long l, String str2, OfflinePaymentDetails offlinePaymentDetails, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: confirmPayment");
        }
        if ((i & 16) != 0) {
            offlinePaymentDetails = null;
        }
        return paymentIntentJackRabbitApiFactory.confirmPayment(str, paymentMethod, l, str2, offlinePaymentDetails);
    }
}
