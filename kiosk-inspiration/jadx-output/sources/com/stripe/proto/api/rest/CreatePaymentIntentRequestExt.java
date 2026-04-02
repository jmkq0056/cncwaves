package com.stripe.proto.api.rest;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: CreatePaymentIntentRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/CreatePaymentIntentRequestExt;", "", "()V", "addCreatePaymentIntentRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreatePaymentIntentRequestExt {
    public static final CreatePaymentIntentRequestExt INSTANCE = new CreatePaymentIntentRequestExt();

    private CreatePaymentIntentRequestExt() {
    }

    public final HttpUrl.Builder addCreatePaymentIntentRequest(HttpUrl.Builder builder, CreatePaymentIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.amount;
        if (l != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        String str = message.capture_method;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("capture_method", context), str.toString());
        }
        String str2 = message.currency;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.CURRENCY, context), str2.toString());
        }
        String str3 = message.description;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("description", context), str3.toString());
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        Iterator<T> it = message.payment_method_types.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("payment_method_types", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str4 = message.receipt_email;
        if (str4 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("receipt_email", context), str4.toString());
        }
        String str5 = message.statement_descriptor;
        if (str5 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("statement_descriptor", context), str5.toString());
        }
        String str6 = message.customer;
        if (str6 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("customer", context), str6.toString());
        }
        String str7 = message.transfer_group;
        if (str7 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("transfer_group", context), str7.toString());
        }
        Long l2 = message.application_fee_amount;
        if (l2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("application_fee_amount", context), String.valueOf(l2.longValue()));
        }
        String str8 = message.on_behalf_of;
        if (str8 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("on_behalf_of", context), str8.toString());
        }
        TransferData transferData = message.transfer_data;
        if (transferData != null) {
            TransferDataExt.INSTANCE.addTransferData(builder, transferData, WirecrpcTypeGenExtKt.wrapWith("transfer_data", context));
        }
        PaymentMethodOptions paymentMethodOptions = message.payment_method_options;
        if (paymentMethodOptions != null) {
            PaymentMethodOptionsExt.INSTANCE.addPaymentMethodOptions(builder, paymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        String str9 = message.statement_descriptor_suffix;
        if (str9 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("statement_descriptor_suffix", context), str9.toString());
        }
        String str10 = message.setup_future_usage;
        if (str10 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("setup_future_usage", context), str10.toString());
        }
        return builder;
    }

    public final FormBody.Builder addCreatePaymentIntentRequest(FormBody.Builder builder, CreatePaymentIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.amount;
        if (l != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        String str = message.capture_method;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("capture_method", context), str.toString());
        }
        String str2 = message.currency;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.CURRENCY, context), str2.toString());
        }
        String str3 = message.description;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("description", context), str3.toString());
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        Iterator<T> it = message.payment_method_types.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("payment_method_types", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str4 = message.receipt_email;
        if (str4 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("receipt_email", context), str4.toString());
        }
        String str5 = message.statement_descriptor;
        if (str5 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("statement_descriptor", context), str5.toString());
        }
        String str6 = message.customer;
        if (str6 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("customer", context), str6.toString());
        }
        String str7 = message.transfer_group;
        if (str7 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("transfer_group", context), str7.toString());
        }
        Long l2 = message.application_fee_amount;
        if (l2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("application_fee_amount", context), String.valueOf(l2.longValue()));
        }
        String str8 = message.on_behalf_of;
        if (str8 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("on_behalf_of", context), str8.toString());
        }
        TransferData transferData = message.transfer_data;
        if (transferData != null) {
            TransferDataExt.INSTANCE.addTransferData(builder, transferData, WirecrpcTypeGenExtKt.wrapWith("transfer_data", context));
        }
        PaymentMethodOptions paymentMethodOptions = message.payment_method_options;
        if (paymentMethodOptions != null) {
            PaymentMethodOptionsExt.INSTANCE.addPaymentMethodOptions(builder, paymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        String str9 = message.statement_descriptor_suffix;
        if (str9 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("statement_descriptor_suffix", context), str9.toString());
        }
        String str10 = message.setup_future_usage;
        if (str10 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("setup_future_usage", context), str10.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addCreatePaymentIntentRequest(MultipartBody.Builder builder, CreatePaymentIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.amount;
        if (l != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        String str = message.capture_method;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("capture_method", context), str.toString());
        }
        String str2 = message.currency;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.CURRENCY, context), str2.toString());
        }
        String str3 = message.description;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("description", context), str3.toString());
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        Iterator<T> it = message.payment_method_types.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("payment_method_types", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str4 = message.receipt_email;
        if (str4 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("receipt_email", context), str4.toString());
        }
        String str5 = message.statement_descriptor;
        if (str5 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("statement_descriptor", context), str5.toString());
        }
        String str6 = message.customer;
        if (str6 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("customer", context), str6.toString());
        }
        String str7 = message.transfer_group;
        if (str7 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("transfer_group", context), str7.toString());
        }
        Long l2 = message.application_fee_amount;
        if (l2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("application_fee_amount", context), String.valueOf(l2.longValue()));
        }
        String str8 = message.on_behalf_of;
        if (str8 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("on_behalf_of", context), str8.toString());
        }
        TransferData transferData = message.transfer_data;
        if (transferData != null) {
            TransferDataExt.INSTANCE.addTransferData(builder, transferData, WirecrpcTypeGenExtKt.wrapWith("transfer_data", context));
        }
        PaymentMethodOptions paymentMethodOptions = message.payment_method_options;
        if (paymentMethodOptions != null) {
            PaymentMethodOptionsExt.INSTANCE.addPaymentMethodOptions(builder, paymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        String str9 = message.statement_descriptor_suffix;
        if (str9 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("statement_descriptor_suffix", context), str9.toString());
        }
        String str10 = message.setup_future_usage;
        if (str10 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("setup_future_usage", context), str10.toString());
        }
        return builder;
    }
}
