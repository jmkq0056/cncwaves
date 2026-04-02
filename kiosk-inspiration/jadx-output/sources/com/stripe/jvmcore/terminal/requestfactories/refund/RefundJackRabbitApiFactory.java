package com.stripe.jvmcore.terminal.requestfactories.refund;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.currency.Amount;
import com.stripe.proto.api.sdk.CancelConfirmInteracRefundRequest;
import com.stripe.proto.api.sdk.CollectInteracRefundMethodRequest;
import com.stripe.proto.api.sdk.ConfirmInteracRefundRequest;
import com.stripe.proto.model.sdk.PaymentMethod;
import com.stripe.stripeterminal.external.models.RefundParameters;
import kotlin.Metadata;

/* JADX INFO: compiled from: RefundJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J,\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\fH&J \u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundJackRabbitApiFactory;", "", "cancelConfirmInteracRefund", "Lcom/stripe/proto/api/sdk/CancelConfirmInteracRefundRequest;", "collectInteracRefundMethod", "Lcom/stripe/proto/api/sdk/CollectInteracRefundMethodRequest;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/stripe/currency/Amount;", "paymentIntentId", "", "chargeId", "enableCustomerCancellation", "", "confirmInteracRefund", "Lcom/stripe/proto/api/sdk/ConfirmInteracRefundRequest;", "refundParams", "Lcom/stripe/stripeterminal/external/models/RefundParameters;", "paymentMethod", "Lcom/stripe/proto/model/sdk/PaymentMethod;", "refundReason", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface RefundJackRabbitApiFactory {
    CancelConfirmInteracRefundRequest cancelConfirmInteracRefund();

    CollectInteracRefundMethodRequest collectInteracRefundMethod(Amount amount, String paymentIntentId, String chargeId, boolean enableCustomerCancellation);

    ConfirmInteracRefundRequest confirmInteracRefund(RefundParameters refundParams, PaymentMethod paymentMethod, String refundReason);
}
