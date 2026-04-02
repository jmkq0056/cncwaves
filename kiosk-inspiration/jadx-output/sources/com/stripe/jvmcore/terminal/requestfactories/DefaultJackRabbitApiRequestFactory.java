package com.stripe.jvmcore.terminal.requestfactories;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.jvmcore.terminal.requestfactories.accessibility.AccessibilityJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.activate.ActivateJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.discover.DiscoverJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.display.ReaderDisplayJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.refund.RefundJackRabbitApiFactory;
import com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.sdk.ActivateTerminalRequest;
import com.stripe.proto.api.sdk.CancelCollectPaymentMethodRequest;
import com.stripe.proto.api.sdk.CancelConfirmInteracRefundRequest;
import com.stripe.proto.api.sdk.CancelConfirmPaymentIntentRequest;
import com.stripe.proto.api.sdk.CancelConfirmSetupIntentRequest;
import com.stripe.proto.api.sdk.CancelPaymentIntentRequest;
import com.stripe.proto.api.sdk.CancelSetupIntentPaymentMethodRequest;
import com.stripe.proto.api.sdk.CancelSetupIntentRequest;
import com.stripe.proto.api.sdk.ClearReaderDisplayRequest;
import com.stripe.proto.api.sdk.CollectInteracRefundMethodRequest;
import com.stripe.proto.api.sdk.CollectPaymentMethodRequest;
import com.stripe.proto.api.sdk.CollectSetupIntentPaymentMethodRequest;
import com.stripe.proto.api.sdk.ConfirmInteracRefundRequest;
import com.stripe.proto.api.sdk.ConfirmPaymentRequest;
import com.stripe.proto.api.sdk.ConfirmSetupIntentRequest;
import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
import com.stripe.proto.api.sdk.CreatePaymentIntentRequest;
import com.stripe.proto.api.sdk.CreateSetupIntentRequest;
import com.stripe.proto.api.sdk.DiscoverReadersRequest;
import com.stripe.proto.api.sdk.GetReaderSettingsRequest;
import com.stripe.proto.api.sdk.HandlePaymentIntentNextActionsRequest;
import com.stripe.proto.api.sdk.OfflinePaymentDetails;
import com.stripe.proto.api.sdk.OfflineSetupIntentDetails;
import com.stripe.proto.api.sdk.OnPaymentMethodCollectedForPaymentIntentRequest;
import com.stripe.proto.api.sdk.ResumeCollectPaymentMethodRequest;
import com.stripe.proto.api.sdk.SetReaderDisplayRequest;
import com.stripe.proto.api.sdk.SetReaderSettingsRequest;
import com.stripe.proto.model.rest.AllowRedisplay;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.proto.model.rest.SetupIntent;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.external.models.Cart;
import com.stripe.stripeterminal.external.models.CreateConfiguration;
import com.stripe.stripeterminal.external.models.PaymentIntentParameters;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultJackRabbitApiRequestFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000º\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\bB=\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\b¢\u0006\u0002\u0010\u0010J\u0019\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0096\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u0096\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u0096\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u0096\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u0096\u0001J\u0011\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0014H\u0096\u0001J\u0019\u0010\"\u001a\u00020#2\u0006\u0010!\u001a\u00020\u00142\u0006\u0010$\u001a\u00020%H\u0096\u0001J\t\u0010&\u001a\u00020'H\u0096\u0001J\t\u0010(\u001a\u00020)H\u0096\u0001J-\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\b\u0010.\u001a\u0004\u0018\u00010\u00142\b\u0010/\u001a\u0004\u0018\u00010\u00142\u0006\u00100\u001a\u00020\u0016H\u0096\u0001J\u0099\u0001\u00101\u001a\u0002022\u0006\u0010,\u001a\u00020-2\u0006\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020\u00162\u0006\u00105\u001a\u00020\u00162\b\u00106\u001a\u0004\u0018\u00010\u00142\b\u00107\u001a\u0004\u0018\u00010-2\u000e\u00108\u001a\n\u0012\u0004\u0012\u00020:\u0018\u0001092\b\u0010;\u001a\u0004\u0018\u00010\u00142\b\u0010<\u001a\u0004\u0018\u00010=2\u0006\u00100\u001a\u00020\u00162\b\u0010>\u001a\u0004\u0018\u00010?2\u0006\u0010@\u001a\u00020\u00162\b\u0010A\u001a\u0004\u0018\u00010B2\b\u0010C\u001a\u0004\u0018\u00010\u00142\b\u0010D\u001a\u0004\u0018\u00010EH\u0096\u0001JI\u0010F\u001a\u00020G2\b\u0010!\u001a\u0004\u0018\u00010\u00142\u0006\u00100\u001a\u00020\u00162\u0006\u00104\u001a\u00020\u00162\b\u0010<\u001a\u0004\u0018\u00010H2\b\u0010A\u001a\u0004\u0018\u00010B2\b\u0010D\u001a\u0004\u0018\u00010E2\u0006\u0010I\u001a\u00020JH\u0096\u0001J!\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020\u0014H\u0096\u0001JB\u0010R\u001a\u00020S2\b\u0010!\u001a\u0004\u0018\u00010\u00142\b\u0010O\u001a\u0004\u0018\u00010P2\b\u0010T\u001a\u0004\u0018\u00010U2\b\u0010V\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010<\u001a\u0004\u0018\u00010=H\u0096\u0001¢\u0006\u0002\u0010WJ\u001d\u0010X\u001a\u00020Y2\b\u0010!\u001a\u0004\u0018\u00010\u00142\b\u0010<\u001a\u0004\u0018\u00010HH\u0096\u0001J\u0019\u0010Z\u001a\u00020[2\u0006\u0010$\u001a\u00020\\2\u0006\u0010]\u001a\u00020^H\u0096\u0001J\u0019\u0010_\u001a\u00020`2\u0006\u0010$\u001a\u00020a2\u0006\u0010b\u001a\u00020^H\u0096\u0001J\u001b\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020\u00142\b\u0010f\u001a\u0004\u0018\u00010\u0014H\u0096\u0001J\t\u0010g\u001a\u00020hH\u0096\u0001J\u0011\u0010i\u001a\u00020j2\u0006\u0010!\u001a\u00020\u0014H\u0096\u0001J\t\u0010k\u001a\u00020lH\u0096\u0001J\u001f\u0010m\u001a\u00020n2\b\u0010!\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010<\u001a\u0004\u0018\u00010=H\u0096\u0001J\u0011\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u00020rH\u0096\u0001J\u0011\u0010s\u001a\u00020t2\u0006\u0010$\u001a\u00020uH\u0096\u0001R\u000e\u0010\f\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006v"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/DefaultJackRabbitApiRequestFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/JackRabbitApiRequestFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;", "activateApiFactory", "discoveryApiFactory", "readerDisplayApiFactory", "accessibilityJackRabbitApiFactory", "paymentIntentApiFactory", "setupIntentApiFactory", "refundApiFactory", "(Lcom/stripe/jvmcore/terminal/requestfactories/activate/ActivateJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/discover/DiscoverJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/display/ReaderDisplayJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/payment/PaymentIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentJackRabbitApiFactory;Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;)V", "activateTerminal", "Lcom/stripe/proto/api/sdk/ActivateTerminalRequest;", "posConnectionToken", "", "failIfInUse", "", "cancelCollectPaymentMethod", "Lcom/stripe/proto/api/sdk/CancelCollectPaymentMethodRequest;", "cancelConfirmInteracRefund", "Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;", "cancelConfirmPaymentIntent", "Lcom/stripe/proto/api/sdk/CancelConfirmPaymentIntentRequest;", "cancelConfirmSetupIntent", "Lcom/stripe/proto/api/sdk/CancelConfirmSetupIntentRequest;", "cancelPaymentIntent", "Lcom/stripe/proto/api/sdk/CancelPaymentIntentRequest;", OfflineStorageConstantsKt.ID, "cancelSetupIntent", "Lcom/stripe/proto/api/sdk/CancelSetupIntentRequest;", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "cancelSetupIntentPaymentMethod", "Lcom/stripe/proto/api/sdk/CancelSetupIntentPaymentMethodRequest;", "clearReaderDisplay", "Lcom/stripe/proto/api/sdk/ClearReaderDisplayRequest;", "collectInteracRefundMethod", "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "paymentIntentId", "chargeId", "enableCustomerCancellation", "collectPaymentMethod", "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;", "skipTipping", "manualEntry", "updatePaymentIntent", "intentId", "tipEligibleAmount", "computedPriorities", "", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "stripeAccountId", "offlineDetails", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "paymentIntent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "requestDynamicCurrencyConversion", "offlineBehavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "surchargeNotice", "allowRedisplay", "Lcom/stripe/proto/model/rest/AllowRedisplay;", "collectSetupIntentPaymentMethod", "Lcom/stripe/proto/api/sdk/CollectSetupIntentPaymentMethodRequest;", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "setupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "confirmInteracRefund", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "paymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "refundReason", "confirmPayment", "Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "amountSurcharge", "", "returnUrl", "(Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/ConfirmPaymentRequest;", "confirmSetupIntent", "Lcom/stripe/proto/api/sdk/ConfirmSetupIntentRequest;", "createPaymentIntent", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentRequest;", "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;", "config", "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;", "createSetupIntent", "Lcom/stripe/proto/api/sdk/CreateSetupIntentRequest;", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "createConfiguration", "discoverReaders", "Lcom/stripe/proto/api/sdk/DiscoverReadersRequest;", "connectionToken", FirebaseAnalytics.Param.LOCATION, "getReaderSettings", "Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;", "handlePaymentIntentNextActions", "Lcom/stripe/proto/api/sdk/HandlePaymentIntentNextActionsRequest;", "onPaymentMethodCollectedForPaymentIntent", "Lcom/stripe/proto/api/sdk/OnPaymentMethodCollectedForPaymentIntentRequest;", "resumeCollectPaymentMethod", "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;", "setReaderDisplay", "Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;", "cart", "Lcom/stripe/stripeterminal/external/models/Cart;", "setReaderSettings", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultJackRabbitApiRequestFactory implements JackRabbitApiRequestFactory, ActivateJackRabbitApiFactory, DiscoverJackRabbitApiFactory, ReaderDisplayJackRabbitApiFactory, AccessibilityJackRabbitApiFactory, PaymentIntentJackRabbitApiFactory, SetupIntentJackRabbitApiFactory, RefundJackRabbitApiFactory {
    private final AccessibilityJackRabbitApiFactory accessibilityJackRabbitApiFactory;
    private final ActivateJackRabbitApiFactory activateApiFactory;
    private final DiscoverJackRabbitApiFactory discoveryApiFactory;
    private final PaymentIntentJackRabbitApiFactory paymentIntentApiFactory;
    private final ReaderDisplayJackRabbitApiFactory readerDisplayApiFactory;
    private final RefundJackRabbitApiFactory refundApiFactory;
    private final SetupIntentJackRabbitApiFactory setupIntentApiFactory;

    @Override // com.stripe.jvmcore.terminal.requestfactories.activate.ActivateJackRabbitApiFactory
    public ActivateTerminalRequest activateTerminal(String posConnectionToken, boolean failIfInUse) {
        Intrinsics.checkNotNullParameter(posConnectionToken, "posConnectionToken");
        return this.activateApiFactory.activateTerminal(posConnectionToken, failIfInUse);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public CancelCollectPaymentMethodRequest cancelCollectPaymentMethod() {
        return this.paymentIntentApiFactory.cancelCollectPaymentMethod();
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.refund.RefundJackRabbitApiFactory
    public CancelConfirmInteracRefundRequest cancelConfirmInteracRefund() {
        return this.refundApiFactory.cancelConfirmInteracRefund();
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public CancelConfirmPaymentIntentRequest cancelConfirmPaymentIntent() {
        return this.paymentIntentApiFactory.cancelConfirmPaymentIntent();
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public CancelConfirmSetupIntentRequest cancelConfirmSetupIntent() {
        return this.setupIntentApiFactory.cancelConfirmSetupIntent();
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public CancelPaymentIntentRequest cancelPaymentIntent(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return this.paymentIntentApiFactory.cancelPaymentIntent(id);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public CancelSetupIntentRequest cancelSetupIntent(String id, SetupIntentCancellationParameters params) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(params, "params");
        return this.setupIntentApiFactory.cancelSetupIntent(id, params);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public CancelSetupIntentPaymentMethodRequest cancelSetupIntentPaymentMethod() {
        return this.setupIntentApiFactory.cancelSetupIntentPaymentMethod();
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.display.ReaderDisplayJackRabbitApiFactory
    public ClearReaderDisplayRequest clearReaderDisplay() {
        return this.readerDisplayApiFactory.clearReaderDisplay();
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.refund.RefundJackRabbitApiFactory
    public CollectInteracRefundMethodRequest collectInteracRefundMethod(Amount amount, String paymentIntentId, String chargeId, boolean enableCustomerCancellation) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        return this.refundApiFactory.collectInteracRefundMethod(amount, paymentIntentId, chargeId, enableCustomerCancellation);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public CollectPaymentMethodRequest collectPaymentMethod(Amount amount, boolean skipTipping, boolean manualEntry, boolean updatePaymentIntent, String intentId, Amount tipEligibleAmount, List<? extends PaymentMethodOptions.RoutingPriority> computedPriorities, String stripeAccountId, OfflinePaymentDetails offlineDetails, boolean enableCustomerCancellation, PaymentIntent paymentIntent, boolean requestDynamicCurrencyConversion, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, String surchargeNotice, AllowRedisplay allowRedisplay) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        return this.paymentIntentApiFactory.collectPaymentMethod(amount, skipTipping, manualEntry, updatePaymentIntent, intentId, tipEligibleAmount, computedPriorities, stripeAccountId, offlineDetails, enableCustomerCancellation, paymentIntent, requestDynamicCurrencyConversion, offlineBehavior, surchargeNotice, allowRedisplay);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public CollectSetupIntentPaymentMethodRequest collectSetupIntentPaymentMethod(String id, boolean enableCustomerCancellation, boolean manualEntry, OfflineSetupIntentDetails offlineDetails, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, AllowRedisplay allowRedisplay, SetupIntent setupIntent) {
        Intrinsics.checkNotNullParameter(setupIntent, "setupIntent");
        return this.setupIntentApiFactory.collectSetupIntentPaymentMethod(id, enableCustomerCancellation, manualEntry, offlineDetails, offlineBehavior, allowRedisplay, setupIntent);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.refund.RefundJackRabbitApiFactory
    public ConfirmInteracRefundRequest confirmInteracRefund(RefundParameters refundParams, PaymentMethod paymentMethod, String refundReason) {
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        Intrinsics.checkNotNullParameter(refundReason, "refundReason");
        return this.refundApiFactory.confirmInteracRefund(refundParams, paymentMethod, refundReason);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public ConfirmPaymentRequest confirmPayment(String id, PaymentMethod paymentMethod, Long amountSurcharge, String returnUrl, OfflinePaymentDetails offlineDetails) {
        return this.paymentIntentApiFactory.confirmPayment(id, paymentMethod, amountSurcharge, returnUrl, offlineDetails);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public ConfirmSetupIntentRequest confirmSetupIntent(String id, OfflineSetupIntentDetails offlineDetails) {
        return this.setupIntentApiFactory.confirmSetupIntent(id, offlineDetails);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public CreatePaymentIntentRequest createPaymentIntent(PaymentIntentParameters params, CreateConfiguration config) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(config, "config");
        return this.paymentIntentApiFactory.createPaymentIntent(params, config);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.setup.SetupIntentJackRabbitApiFactory
    public CreateSetupIntentRequest createSetupIntent(SetupIntentParameters params, CreateConfiguration createConfiguration) {
        Intrinsics.checkNotNullParameter(params, "params");
        Intrinsics.checkNotNullParameter(createConfiguration, "createConfiguration");
        return this.setupIntentApiFactory.createSetupIntent(params, createConfiguration);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.discover.DiscoverJackRabbitApiFactory
    public DiscoverReadersRequest discoverReaders(String connectionToken, String location) {
        Intrinsics.checkNotNullParameter(connectionToken, "connectionToken");
        return this.discoveryApiFactory.discoverReaders(connectionToken, location);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.accessibility.AccessibilityJackRabbitApiFactory
    public GetReaderSettingsRequest getReaderSettings() {
        return this.accessibilityJackRabbitApiFactory.getReaderSettings();
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public HandlePaymentIntentNextActionsRequest handlePaymentIntentNextActions(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        return this.paymentIntentApiFactory.handlePaymentIntentNextActions(id);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public OnPaymentMethodCollectedForPaymentIntentRequest onPaymentMethodCollectedForPaymentIntent() {
        return this.paymentIntentApiFactory.onPaymentMethodCollectedForPaymentIntent();
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.payment.PaymentIntentJackRabbitApiFactory
    public ResumeCollectPaymentMethodRequest resumeCollectPaymentMethod(String id, OfflinePaymentDetails offlineDetails) {
        return this.paymentIntentApiFactory.resumeCollectPaymentMethod(id, offlineDetails);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.display.ReaderDisplayJackRabbitApiFactory
    public SetReaderDisplayRequest setReaderDisplay(Cart cart) {
        Intrinsics.checkNotNullParameter(cart, "cart");
        return this.readerDisplayApiFactory.setReaderDisplay(cart);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.accessibility.AccessibilityJackRabbitApiFactory
    public SetReaderSettingsRequest setReaderSettings(ReaderSettingsParameters params) {
        Intrinsics.checkNotNullParameter(params, "params");
        return this.accessibilityJackRabbitApiFactory.setReaderSettings(params);
    }

    public DefaultJackRabbitApiRequestFactory(ActivateJackRabbitApiFactory activateApiFactory, DiscoverJackRabbitApiFactory discoveryApiFactory, ReaderDisplayJackRabbitApiFactory readerDisplayApiFactory, AccessibilityJackRabbitApiFactory accessibilityJackRabbitApiFactory, PaymentIntentJackRabbitApiFactory paymentIntentApiFactory, SetupIntentJackRabbitApiFactory setupIntentApiFactory, RefundJackRabbitApiFactory refundApiFactory) {
        Intrinsics.checkNotNullParameter(activateApiFactory, "activateApiFactory");
        Intrinsics.checkNotNullParameter(discoveryApiFactory, "discoveryApiFactory");
        Intrinsics.checkNotNullParameter(readerDisplayApiFactory, "readerDisplayApiFactory");
        Intrinsics.checkNotNullParameter(accessibilityJackRabbitApiFactory, "accessibilityJackRabbitApiFactory");
        Intrinsics.checkNotNullParameter(paymentIntentApiFactory, "paymentIntentApiFactory");
        Intrinsics.checkNotNullParameter(setupIntentApiFactory, "setupIntentApiFactory");
        Intrinsics.checkNotNullParameter(refundApiFactory, "refundApiFactory");
        this.activateApiFactory = activateApiFactory;
        this.discoveryApiFactory = discoveryApiFactory;
        this.readerDisplayApiFactory = readerDisplayApiFactory;
        this.accessibilityJackRabbitApiFactory = accessibilityJackRabbitApiFactory;
        this.paymentIntentApiFactory = paymentIntentApiFactory;
        this.setupIntentApiFactory = setupIntentApiFactory;
        this.refundApiFactory = refundApiFactory;
    }
}
