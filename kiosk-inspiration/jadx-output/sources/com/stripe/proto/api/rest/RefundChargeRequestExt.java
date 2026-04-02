package com.stripe.proto.api.rest;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: RefundChargeRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/RefundChargeRequestExt;", "", "()V", "addRefundChargeRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/RefundChargeRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RefundChargeRequestExt {
    public static final RefundChargeRequestExt INSTANCE = new RefundChargeRequestExt();

    private RefundChargeRequestExt() {
    }

    public final HttpUrl.Builder addRefundChargeRequest(HttpUrl.Builder builder, RefundChargeRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.reason;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("reason", context), str.toString());
        }
        Boolean bool = message.refund_application_fee;
        if (bool != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("refund_application_fee", context), String.valueOf(bool.booleanValue()));
        }
        Boolean bool2 = message.reverse_transfer;
        if (bool2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("reverse_transfer", context), String.valueOf(bool2.booleanValue()));
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Long l = message.amount;
        if (l != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        String str2 = message.charge;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("charge", context), str2.toString());
        }
        String str3 = message.payment_intent;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("payment_intent", context), str3.toString());
        }
        return builder;
    }

    public final FormBody.Builder addRefundChargeRequest(FormBody.Builder builder, RefundChargeRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.reason;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("reason", context), str.toString());
        }
        Boolean bool = message.refund_application_fee;
        if (bool != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("refund_application_fee", context), String.valueOf(bool.booleanValue()));
        }
        Boolean bool2 = message.reverse_transfer;
        if (bool2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("reverse_transfer", context), String.valueOf(bool2.booleanValue()));
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Long l = message.amount;
        if (l != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        String str2 = message.charge;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("charge", context), str2.toString());
        }
        String str3 = message.payment_intent;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("payment_intent", context), str3.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addRefundChargeRequest(MultipartBody.Builder builder, RefundChargeRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.reason;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("reason", context), str.toString());
        }
        Boolean bool = message.refund_application_fee;
        if (bool != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("refund_application_fee", context), String.valueOf(bool.booleanValue()));
        }
        Boolean bool2 = message.reverse_transfer;
        if (bool2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("reverse_transfer", context), String.valueOf(bool2.booleanValue()));
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Long l = message.amount;
        if (l != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        String str2 = message.charge;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("charge", context), str2.toString());
        }
        String str3 = message.payment_intent;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("payment_intent", context), str3.toString());
        }
        return builder;
    }
}
