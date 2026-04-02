package com.stripe.proto.api.rest;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: CreateSetupIntentRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/rest/CreateSetupIntentRequestExt;", "", "()V", "addCreateSetupIntentRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addSingleUseMandate", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest$SingleUseMandate;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateSetupIntentRequestExt {
    public static final CreateSetupIntentRequestExt INSTANCE = new CreateSetupIntentRequestExt();

    private CreateSetupIntentRequestExt() {
    }

    public final HttpUrl.Builder addCreateSetupIntentRequest(HttpUrl.Builder builder, CreateSetupIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Boolean bool = message.confirm;
        if (bool != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("confirm", context), String.valueOf(bool.booleanValue()));
        }
        String str = message.customer;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("customer", context), str.toString());
        }
        String str2 = message.description;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("description", context), str2.toString());
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        String str3 = message.payment_method;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("payment_method", context), str3.toString());
        }
        Iterator<T> it = message.payment_method_types.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("payment_method_types", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str4 = message.usage;
        if (str4 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("usage", context), str4.toString());
        }
        Mandate mandate = message.mandate_data;
        if (mandate != null) {
            MandateExt.INSTANCE.addMandate(builder, mandate, WirecrpcTypeGenExtKt.wrapWith("mandate_data", context));
        }
        String str5 = message.on_behalf_of;
        if (str5 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("on_behalf_of", context), str5.toString());
        }
        com.stripe.proto.model.rest.PaymentMethodOptions paymentMethodOptions = message.payment_method_options;
        if (paymentMethodOptions != null) {
            com.stripe.proto.model.rest.PaymentMethodOptionsExt.INSTANCE.addPaymentMethodOptions(builder, paymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        String str6 = message.return_url;
        if (str6 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("return_url", context), str6.toString());
        }
        CreateSetupIntentRequest.SingleUseMandate singleUseMandate = message.single_use;
        if (singleUseMandate != null) {
            INSTANCE.addSingleUseMandate(builder, singleUseMandate, WirecrpcTypeGenExtKt.wrapWith("single_use", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addSingleUseMandate(HttpUrl.Builder builder, CreateSetupIntentRequest.SingleUseMandate message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Integer num = message.amount;
        if (num != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(num.intValue()));
        }
        String str = message.currency;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.CURRENCY, context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addCreateSetupIntentRequest(FormBody.Builder builder, CreateSetupIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Boolean bool = message.confirm;
        if (bool != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("confirm", context), String.valueOf(bool.booleanValue()));
        }
        String str = message.customer;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("customer", context), str.toString());
        }
        String str2 = message.description;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("description", context), str2.toString());
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        String str3 = message.payment_method;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("payment_method", context), str3.toString());
        }
        Iterator<T> it = message.payment_method_types.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("payment_method_types", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str4 = message.usage;
        if (str4 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("usage", context), str4.toString());
        }
        Mandate mandate = message.mandate_data;
        if (mandate != null) {
            MandateExt.INSTANCE.addMandate(builder, mandate, WirecrpcTypeGenExtKt.wrapWith("mandate_data", context));
        }
        String str5 = message.on_behalf_of;
        if (str5 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("on_behalf_of", context), str5.toString());
        }
        com.stripe.proto.model.rest.PaymentMethodOptions paymentMethodOptions = message.payment_method_options;
        if (paymentMethodOptions != null) {
            com.stripe.proto.model.rest.PaymentMethodOptionsExt.INSTANCE.addPaymentMethodOptions(builder, paymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        String str6 = message.return_url;
        if (str6 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("return_url", context), str6.toString());
        }
        CreateSetupIntentRequest.SingleUseMandate singleUseMandate = message.single_use;
        if (singleUseMandate != null) {
            INSTANCE.addSingleUseMandate(builder, singleUseMandate, WirecrpcTypeGenExtKt.wrapWith("single_use", context));
        }
        return builder;
    }

    public final FormBody.Builder addSingleUseMandate(FormBody.Builder builder, CreateSetupIntentRequest.SingleUseMandate message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Integer num = message.amount;
        if (num != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(num.intValue()));
        }
        String str = message.currency;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.CURRENCY, context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addCreateSetupIntentRequest(MultipartBody.Builder builder, CreateSetupIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Boolean bool = message.confirm;
        if (bool != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("confirm", context), String.valueOf(bool.booleanValue()));
        }
        String str = message.customer;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("customer", context), str.toString());
        }
        String str2 = message.description;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("description", context), str2.toString());
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        String str3 = message.payment_method;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("payment_method", context), str3.toString());
        }
        Iterator<T> it = message.payment_method_types.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("payment_method_types", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str4 = message.usage;
        if (str4 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("usage", context), str4.toString());
        }
        Mandate mandate = message.mandate_data;
        if (mandate != null) {
            MandateExt.INSTANCE.addMandate(builder, mandate, WirecrpcTypeGenExtKt.wrapWith("mandate_data", context));
        }
        String str5 = message.on_behalf_of;
        if (str5 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("on_behalf_of", context), str5.toString());
        }
        com.stripe.proto.model.rest.PaymentMethodOptions paymentMethodOptions = message.payment_method_options;
        if (paymentMethodOptions != null) {
            com.stripe.proto.model.rest.PaymentMethodOptionsExt.INSTANCE.addPaymentMethodOptions(builder, paymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        String str6 = message.return_url;
        if (str6 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("return_url", context), str6.toString());
        }
        CreateSetupIntentRequest.SingleUseMandate singleUseMandate = message.single_use;
        if (singleUseMandate != null) {
            INSTANCE.addSingleUseMandate(builder, singleUseMandate, WirecrpcTypeGenExtKt.wrapWith("single_use", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addSingleUseMandate(MultipartBody.Builder builder, CreateSetupIntentRequest.SingleUseMandate message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Integer num = message.amount;
        if (num != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(num.intValue()));
        }
        String str = message.currency;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.CURRENCY, context), str.toString());
        }
        return builder;
    }
}
