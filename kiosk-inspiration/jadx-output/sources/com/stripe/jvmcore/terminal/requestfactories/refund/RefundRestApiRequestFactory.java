package com.stripe.jvmcore.terminal.requestfactories.refund;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.jvmcore.restclient.RestRequest;
import com.stripe.proto.api.rest.RefundChargeRequest;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: compiled from: RefundRestApiRequestFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001Jr\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\b2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0015À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;", "", "refundChargeRequest", "Lcom/stripe/jvmcore/restclient/RestRequest;", "Lcom/stripe/proto/api/rest/RefundChargeRequest;", "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundChargeRestRequest;", "charge", "", "paymentIntentId", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "paymentMethodData", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "reverseTransfer", "", "refundApplicationFee", "reason", "metadata", "", "stripeAccountId", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface RefundRestApiRequestFactory {
    RestRequest<RefundChargeRequest, RefundChargeRequest.Builder> refundChargeRequest(String charge, String paymentIntentId, long amount, RequestedPaymentMethod paymentMethodData, boolean reverseTransfer, boolean refundApplicationFee, String reason, Map<String, String> metadata, String stripeAccountId) throws IllegalArgumentException;
}
