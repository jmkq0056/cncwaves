package com.stripe.jvmcore.terminal.requestfactories.refund;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.jvmcore.restclient.RestRequest;
import com.stripe.jvmcore.terminal.requestfactories.ApiRequestHeaderExtensionsKt;
import com.stripe.proto.api.rest.RefundChargeRequest;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultRefundRestApiRequestFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002Jr\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004j\u0002`\u00072\b\u0010\b\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\t2\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\tH\u0016¨\u0006\u0016"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/refund/DefaultRefundRestApiRequestFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundRestApiRequestFactory;", "()V", "refundChargeRequest", "Lcom/stripe/jvmcore/restclient/RestRequest;", "Lcom/stripe/proto/api/rest/RefundChargeRequest;", "Lcom/stripe/proto/api/rest/RefundChargeRequest$Builder;", "Lcom/stripe/jvmcore/terminal/requestfactories/refund/RefundChargeRestRequest;", "charge", "", "paymentIntentId", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "", "paymentMethodData", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "reverseTransfer", "", "refundApplicationFee", "reason", "metadata", "", "stripeAccountId", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultRefundRestApiRequestFactory implements RefundRestApiRequestFactory {
    @Override // com.stripe.jvmcore.terminal.requestfactories.refund.RefundRestApiRequestFactory
    public RestRequest<RefundChargeRequest, RefundChargeRequest.Builder> refundChargeRequest(String charge, String paymentIntentId, long amount, RequestedPaymentMethod paymentMethodData, boolean reverseTransfer, boolean refundApplicationFee, String reason, Map<String, String> metadata, String stripeAccountId) {
        String str;
        Intrinsics.checkNotNullParameter(paymentMethodData, "paymentMethodData");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        String str2 = charge;
        String str3 = paymentIntentId;
        if (!((str3 == null || str3.length() == 0) ^ (str2 == null || str2.length() == 0))) {
            if (str2 == null || str2.length() == 0) {
                str = "You must specify the id of the `charge` or `paymentIntent` to refund.";
            } else {
                str = "You can only specify one of the `charge` or `paymentIntent` id to refund, not both.";
            }
            throw new IllegalArgumentException(str.toString());
        }
        Boolean boolValueOf = Boolean.valueOf(refundApplicationFee);
        Boolean boolValueOf2 = Boolean.valueOf(reverseTransfer);
        Long lValueOf = Long.valueOf(amount);
        if (str2 == null || str2.length() == 0) {
            charge = null;
        }
        return new RestRequest<>(new RefundChargeRequest(reason, boolValueOf, boolValueOf2, paymentMethodData, lValueOf, metadata, charge, (str3 == null || str3.length() == 0) ? null : paymentIntentId, null, 256, null), ApiRequestHeaderExtensionsKt.withStripeAccountId(new LinkedHashMap(), stripeAccountId));
    }
}
