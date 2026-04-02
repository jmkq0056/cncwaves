package com.stripe.jvmcore.terminal.requestfactories.payment;

import androidx.core.view.InputDeviceCompat;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.currency.AmountExtensionsKt;
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
import com.stripe.proto.model.sdk.ChargeAmount;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.internal.common.extensions.OfflineBehaviorExtensionsKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultPaymentJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\u0098\u0001\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\b\u0010\u0015\u001a\u0004\u0018\u00010\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00102\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u00122\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010 \u001a\u00020\u00122\b\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010#\u001a\u0004\u0018\u00010\f2\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J?\u0010&\u001a\u00020'2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010(\u001a\u0004\u0018\u00010)2\b\u0010*\u001a\u0004\u0018\u00010+2\b\u0010,\u001a\u0004\u0018\u00010\f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0002\u0010-J\u0018\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0016J\u0010\u00104\u001a\u0002052\u0006\u0010\u000b\u001a\u00020\fH\u0016J\b\u00106\u001a\u000207H\u0016J\u001c\u00108\u001a\u0002092\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/payment/DefaultPaymentJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;", "restApiFactory", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;", "(Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentRestApiFactory;)V", "cancelCollectPaymentMethod", "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;", "cancelConfirmPaymentIntent", "Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;", "cancelPaymentIntent", "Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;", OfflineStorageConstantsKt.ID, "", "collectPaymentMethod", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "skipTipping", "", "manualEntry", "updatePaymentIntent", "intentId", "tipEligibleAmount", "computedPriorities", "", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "stripeAccountId", "offlineDetails", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "enableCustomerCancellation", "paymentIntent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "requestDynamicCurrencyConversion", "offlineBehavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "surchargeNotice", "allowRedisplay", "Lcom/stripe/proto/model/rest/AllowRedisplay;", "confirmPayment", "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "paymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "amountSurcharge", "", "returnUrl", "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "createPaymentIntent", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;", "params", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "config", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "handlePaymentIntentNextActions", "Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;", "onPaymentMethodCollectedForPaymentIntent", "Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;", "resumeCollectPaymentMethod", "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultPaymentJackRabbitApiFactory implements PaymentIntentJackRabbitApiFactory {
    private final PaymentIntentRestApiFactory restApiFactory;

    public DefaultPaymentJackRabbitApiFactory(PaymentIntentRestApiFactory restApiFactory) {
        Intrinsics.checkNotNullParameter(restApiFactory, "restApiFactory");
        this.restApiFactory = restApiFactory;
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public CreatePaymentIntentRequest createPaymentIntent(PaymentIntentParameters params, CreateConfiguration config) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(config, "config");
        return new CreatePaymentIntentRequest(this.restApiFactory.createPaymentIntent(params), new CreatePaymentIntentOptions(OfflineBehaviorExtensionsKt.toOfflineBehaviorProto(config.getOfflineBehavior()), null, 2, null), null, 4, null);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public CollectPaymentMethodRequest collectPaymentMethod(Amount amount, boolean skipTipping, boolean manualEntry, boolean updatePaymentIntent, String intentId, Amount tipEligibleAmount, List<? extends PaymentMethodOptions.RoutingPriority> computedPriorities, String stripeAccountId, OfflinePaymentDetails offlineDetails, boolean enableCustomerCancellation, PaymentIntent paymentIntent, boolean requestDynamicCurrencyConversion, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, String surchargeNotice, AllowRedisplay allowRedisplay) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new CollectPaymentMethodRequest(new ChargeAmount(amount.getValue(), 0L, AmountExtensionsKt.getCurrencyCode(amount), 0L, null, 26, null), intentId == null ? "" : intentId, null, skipTipping, manualEntry, tipEligibleAmount != null ? Long.valueOf(tipEligibleAmount.getValue()) : null, updatePaymentIntent, computedPriorities == null ? CollectionsKt.emptyList() : computedPriorities, stripeAccountId, offlineDetails, enableCustomerCancellation, paymentIntent, requestDynamicCurrencyConversion, offlineBehavior, surchargeNotice, allowRedisplay, null, InputDeviceCompat.SOURCE_TRACKBALL, null);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public ResumeCollectPaymentMethodRequest resumeCollectPaymentMethod(String id, OfflinePaymentDetails offlineDetails) {
        if (id == null) {
            id = "";
        }
        return new ResumeCollectPaymentMethodRequest(id, offlineDetails, null, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public CancelCollectPaymentMethodRequest cancelCollectPaymentMethod() {
        return new CancelCollectPaymentMethodRequest(null, 1, 0 == true ? 1 : 0);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public ConfirmPaymentRequest confirmPayment(String id, PaymentMethod paymentMethod, Long amountSurcharge, String returnUrl, OfflinePaymentDetails offlineDetails) {
        if (id == null) {
            id = "";
        }
        return new ConfirmPaymentRequest(id, paymentMethod, null, offlineDetails, amountSurcharge, returnUrl, null, 68, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public OnPaymentMethodCollectedForPaymentIntentRequest onPaymentMethodCollectedForPaymentIntent() {
        return new OnPaymentMethodCollectedForPaymentIntentRequest(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public CancelPaymentIntentRequest cancelPaymentIntent(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new CancelPaymentIntentRequest(this.restApiFactory.cancelPaymentIntent(id), null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public HandlePaymentIntentNextActionsRequest handlePaymentIntentNextActions(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return new HandlePaymentIntentNextActionsRequest(id, null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public CancelConfirmPaymentIntentRequest cancelConfirmPaymentIntent() {
        return new CancelConfirmPaymentIntentRequest(null, 1, 0 == true ? 1 : 0);
    }
}
