package com.stripe.jvmcore.terminal.requestfactories.refund;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.currency.AmountExtensionsKt;
import com.stripe.proto.api.sdk.CancelConfirmInteracRefundRequest;
import com.stripe.proto.api.sdk.CollectInteracRefundMethodRequest;
import com.stripe.proto.api.sdk.ConfirmInteracRefundRequest;
import com.stripe.proto.model.sdk.ChargeAmount;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.external.models.RefundParameters;
import com.sun.jna.platform.win32.WinError;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultRefundJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J,\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\f\u001a\u00020\rH\u0016J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0016¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;", "()V", "cancelConfirmInteracRefund", "Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;", "collectInteracRefundMethod", "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "paymentIntentId", "", "chargeId", "enableCustomerCancellation", "", "confirmInteracRefund", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "paymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "refundReason", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultRefundJackRabbitApiFactory implements RefundJackRabbitApiFactory {
    @Override // com.stripe.jvmcore.terminal.requestfactories.refund.RefundJackRabbitApiFactory
    public CollectInteracRefundMethodRequest collectInteracRefundMethod(Amount amount, String paymentIntentId, String chargeId, boolean enableCustomerCancellation) {
        Intrinsics.checkNotNullParameter(amount, "amount");
        return new CollectInteracRefundMethodRequest(new ChargeAmount(amount.getValue(), 0L, AmountExtensionsKt.getCurrencyCode(amount), 0L, null, 26, null), enableCustomerCancellation, chargeId, paymentIntentId, null, 16, null);
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.refund.RefundJackRabbitApiFactory
    public ConfirmInteracRefundRequest confirmInteracRefund(RefundParameters refundParams, PaymentMethod paymentMethod, String refundReason) {
        Intrinsics.checkNotNullParameter(refundParams, "refundParams");
        Intrinsics.checkNotNullParameter(paymentMethod, "paymentMethod");
        Intrinsics.checkNotNullParameter(refundReason, "refundReason");
        String chargeId = refundParams.getChargeId();
        String paymentIntentId = refundParams.getPaymentIntentId();
        boolean reverseTransfer = refundParams.getReverseTransfer();
        boolean refundApplicationFee = refundParams.getRefundApplicationFee();
        Map<String, String> metadata = refundParams.getMetadata();
        if (metadata == null) {
            metadata = MapsKt.emptyMap();
        }
        return new ConfirmInteracRefundRequest(refundReason, refundApplicationFee, reverseTransfer, paymentMethod, metadata, null, chargeId, paymentIntentId, null, WinError.ERROR_NOT_OWNER, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.stripe.jvmcore.terminal.requestfactories.refund.RefundJackRabbitApiFactory
    public CancelConfirmInteracRefundRequest cancelConfirmInteracRefund() {
        return new CancelConfirmInteracRefundRequest(null, 1, 0 == true ? 1 : 0);
    }
}
