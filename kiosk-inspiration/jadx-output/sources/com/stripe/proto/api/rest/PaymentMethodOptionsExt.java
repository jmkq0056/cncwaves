package com.stripe.proto.api.rest;

import com.stripe.proto.api.rest.PaymentMethodOptions;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: PaymentMethodOptionsExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/rest/PaymentMethodOptionsExt;", "", "()V", "addCard", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$Card;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addCardPresent", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent;", "addPaymentMethodOptions", "Lcom/stripe/proto/api/rest/PaymentMethodOptions;", "addRoutingParameters", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$CardPresent$RoutingParameters;", "addWechatPay", "Lcom/stripe/proto/api/rest/PaymentMethodOptions$WechatPay;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethodOptionsExt {
    public static final PaymentMethodOptionsExt INSTANCE = new PaymentMethodOptionsExt();

    private PaymentMethodOptionsExt() {
    }

    public final HttpUrl.Builder addPaymentMethodOptions(HttpUrl.Builder builder, PaymentMethodOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardPresent cardPresent = message.card_present;
        if (cardPresent != null) {
            INSTANCE.addCardPresent(builder, cardPresent, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        PaymentMethodOptions.Card card = message.card;
        if (card != null) {
            INSTANCE.addCard(builder, card, WirecrpcTypeGenExtKt.wrapWith("card", context));
        }
        PaymentMethodOptions.WechatPay wechatPay = message.wechat_pay;
        if (wechatPay != null) {
            INSTANCE.addWechatPay(builder, wechatPay, WirecrpcTypeGenExtKt.wrapWith("wechat_pay", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addCardPresent(HttpUrl.Builder builder, PaymentMethodOptions.CardPresent message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Boolean bool = message.request_extended_authorization;
        if (bool != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("request_extended_authorization", context), String.valueOf(bool.booleanValue()));
        }
        Boolean bool2 = message.request_incremental_authorization_support;
        if (bool2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("request_incremental_authorization_support", context), String.valueOf(bool2.booleanValue()));
        }
        String str = message.capture_method;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("capture_method", context), str.toString());
        }
        PaymentMethodOptions.CardPresent.RoutingParameters routingParameters = message.routing;
        if (routingParameters != null) {
            INSTANCE.addRoutingParameters(builder, routingParameters, WirecrpcTypeGenExtKt.wrapWith("routing", context));
        }
        Boolean bool3 = message.dynamic_currency_conversion_selected;
        if (bool3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("dynamic_currency_conversion_selected", context), String.valueOf(bool3.booleanValue()));
        }
        String str2 = message.request_partial_authorization;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("request_partial_authorization", context), str2.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addRoutingParameters(HttpUrl.Builder builder, PaymentMethodOptions.CardPresent.RoutingParameters message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.requested_priority;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("requested_priority", context), str.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addCard(HttpUrl.Builder builder, PaymentMethodOptions.Card message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Boolean bool = message.moto;
        if (bool != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("moto", context), String.valueOf(bool.booleanValue()));
        }
        return builder;
    }

    public final HttpUrl.Builder addWechatPay(HttpUrl.Builder builder, PaymentMethodOptions.WechatPay message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.client;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("client", context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addPaymentMethodOptions(FormBody.Builder builder, PaymentMethodOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardPresent cardPresent = message.card_present;
        if (cardPresent != null) {
            INSTANCE.addCardPresent(builder, cardPresent, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        PaymentMethodOptions.Card card = message.card;
        if (card != null) {
            INSTANCE.addCard(builder, card, WirecrpcTypeGenExtKt.wrapWith("card", context));
        }
        PaymentMethodOptions.WechatPay wechatPay = message.wechat_pay;
        if (wechatPay != null) {
            INSTANCE.addWechatPay(builder, wechatPay, WirecrpcTypeGenExtKt.wrapWith("wechat_pay", context));
        }
        return builder;
    }

    public final FormBody.Builder addCardPresent(FormBody.Builder builder, PaymentMethodOptions.CardPresent message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Boolean bool = message.request_extended_authorization;
        if (bool != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("request_extended_authorization", context), String.valueOf(bool.booleanValue()));
        }
        Boolean bool2 = message.request_incremental_authorization_support;
        if (bool2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("request_incremental_authorization_support", context), String.valueOf(bool2.booleanValue()));
        }
        String str = message.capture_method;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("capture_method", context), str.toString());
        }
        PaymentMethodOptions.CardPresent.RoutingParameters routingParameters = message.routing;
        if (routingParameters != null) {
            INSTANCE.addRoutingParameters(builder, routingParameters, WirecrpcTypeGenExtKt.wrapWith("routing", context));
        }
        Boolean bool3 = message.dynamic_currency_conversion_selected;
        if (bool3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("dynamic_currency_conversion_selected", context), String.valueOf(bool3.booleanValue()));
        }
        String str2 = message.request_partial_authorization;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("request_partial_authorization", context), str2.toString());
        }
        return builder;
    }

    public final FormBody.Builder addRoutingParameters(FormBody.Builder builder, PaymentMethodOptions.CardPresent.RoutingParameters message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.requested_priority;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("requested_priority", context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addCard(FormBody.Builder builder, PaymentMethodOptions.Card message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Boolean bool = message.moto;
        if (bool != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("moto", context), String.valueOf(bool.booleanValue()));
        }
        return builder;
    }

    public final FormBody.Builder addWechatPay(FormBody.Builder builder, PaymentMethodOptions.WechatPay message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.client;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("client", context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addPaymentMethodOptions(MultipartBody.Builder builder, PaymentMethodOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardPresent cardPresent = message.card_present;
        if (cardPresent != null) {
            INSTANCE.addCardPresent(builder, cardPresent, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        PaymentMethodOptions.Card card = message.card;
        if (card != null) {
            INSTANCE.addCard(builder, card, WirecrpcTypeGenExtKt.wrapWith("card", context));
        }
        PaymentMethodOptions.WechatPay wechatPay = message.wechat_pay;
        if (wechatPay != null) {
            INSTANCE.addWechatPay(builder, wechatPay, WirecrpcTypeGenExtKt.wrapWith("wechat_pay", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addCardPresent(MultipartBody.Builder builder, PaymentMethodOptions.CardPresent message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Boolean bool = message.request_extended_authorization;
        if (bool != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("request_extended_authorization", context), String.valueOf(bool.booleanValue()));
        }
        Boolean bool2 = message.request_incremental_authorization_support;
        if (bool2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("request_incremental_authorization_support", context), String.valueOf(bool2.booleanValue()));
        }
        String str = message.capture_method;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("capture_method", context), str.toString());
        }
        PaymentMethodOptions.CardPresent.RoutingParameters routingParameters = message.routing;
        if (routingParameters != null) {
            INSTANCE.addRoutingParameters(builder, routingParameters, WirecrpcTypeGenExtKt.wrapWith("routing", context));
        }
        Boolean bool3 = message.dynamic_currency_conversion_selected;
        if (bool3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("dynamic_currency_conversion_selected", context), String.valueOf(bool3.booleanValue()));
        }
        String str2 = message.request_partial_authorization;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("request_partial_authorization", context), str2.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addRoutingParameters(MultipartBody.Builder builder, PaymentMethodOptions.CardPresent.RoutingParameters message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.requested_priority;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("requested_priority", context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addCard(MultipartBody.Builder builder, PaymentMethodOptions.Card message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Boolean bool = message.moto;
        if (bool != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("moto", context), String.valueOf(bool.booleanValue()));
        }
        return builder;
    }

    public final MultipartBody.Builder addWechatPay(MultipartBody.Builder builder, PaymentMethodOptions.WechatPay message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.client;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("client", context), str.toString());
        }
        return builder;
    }
}
