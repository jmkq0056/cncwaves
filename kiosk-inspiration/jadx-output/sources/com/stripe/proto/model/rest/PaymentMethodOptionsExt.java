package com.stripe.proto.model.rest;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: PaymentMethodOptionsExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0013\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0013\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0013\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0015\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0015\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0015\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0017\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0017\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0017\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/rest/PaymentMethodOptionsExt;", "", "()V", "addCardOptions", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addCardPresentOptions", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions;", "addDynamicCurrencyConversionDetails", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$DynamicCurrencyConversionDetails;", "addPaymentMethodOptions", "Lcom/stripe/proto/model/rest/PaymentMethodOptions;", "addRequest3dSecureType", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardOptions$Request3dSecureType;", "addRoutingOptions", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$RoutingOptions;", "addRoutingPriority", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "addSurcharge", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$CardPresentOptions$Surcharge;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaymentMethodOptionsExt {
    public static final PaymentMethodOptionsExt INSTANCE = new PaymentMethodOptionsExt();

    public final FormBody.Builder addRequest3dSecureType(FormBody.Builder builder, PaymentMethodOptions.CardOptions.Request3dSecureType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final HttpUrl.Builder addRequest3dSecureType(HttpUrl.Builder builder, PaymentMethodOptions.CardOptions.Request3dSecureType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final MultipartBody.Builder addRequest3dSecureType(MultipartBody.Builder builder, PaymentMethodOptions.CardOptions.Request3dSecureType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final FormBody.Builder addRoutingPriority(FormBody.Builder builder, PaymentMethodOptions.RoutingPriority message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final HttpUrl.Builder addRoutingPriority(HttpUrl.Builder builder, PaymentMethodOptions.RoutingPriority message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final MultipartBody.Builder addRoutingPriority(MultipartBody.Builder builder, PaymentMethodOptions.RoutingPriority message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    private PaymentMethodOptionsExt() {
    }

    public final HttpUrl.Builder addPaymentMethodOptions(HttpUrl.Builder builder, PaymentMethodOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardOptions cardOptions = message.card;
        if (cardOptions != null) {
            INSTANCE.addCardOptions(builder, cardOptions, WirecrpcTypeGenExtKt.wrapWith("card", context));
        }
        PaymentMethodOptions.CardPresentOptions cardPresentOptions = message.card_present;
        if (cardPresentOptions != null) {
            INSTANCE.addCardPresentOptions(builder, cardPresentOptions, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addCardOptions(HttpUrl.Builder builder, PaymentMethodOptions.CardOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardOptions.Request3dSecureType request3dSecureType = message.request_three_d_secure;
        if (request3dSecureType != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("request_three_d_secure", context), request3dSecureType.name());
        }
        return builder;
    }

    public final HttpUrl.Builder addCardPresentOptions(HttpUrl.Builder builder, PaymentMethodOptions.CardPresentOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardPresentOptions.RoutingOptions routingOptions = message.routing;
        if (routingOptions != null) {
            INSTANCE.addRoutingOptions(builder, routingOptions, WirecrpcTypeGenExtKt.wrapWith("routing", context));
        }
        String str = message.request_dynamic_currency_conversion;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("request_dynamic_currency_conversion", context), str.toString());
        }
        PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails = message.dynamic_currency_conversion;
        if (dynamicCurrencyConversionDetails != null) {
            INSTANCE.addDynamicCurrencyConversionDetails(builder, dynamicCurrencyConversionDetails, WirecrpcTypeGenExtKt.wrapWith("dynamic_currency_conversion", context));
        }
        Boolean bool = message.request_extended_authorization;
        if (bool != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("request_extended_authorization", context), String.valueOf(bool.booleanValue()));
        }
        Boolean bool2 = message.request_incremental_authorization_support;
        if (bool2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("request_incremental_authorization_support", context), String.valueOf(bool2.booleanValue()));
        }
        PaymentMethodOptions.CardPresentOptions.Surcharge surcharge = message.surcharge;
        if (surcharge != null) {
            INSTANCE.addSurcharge(builder, surcharge, WirecrpcTypeGenExtKt.wrapWith("surcharge", context));
        }
        String str2 = message.request_partial_authorization;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("request_partial_authorization", context), str2.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addRoutingOptions(HttpUrl.Builder builder, PaymentMethodOptions.CardPresentOptions.RoutingOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.RoutingPriority routingPriority = message.requested_priority;
        if (routingPriority != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("requested_priority", context), routingPriority.name());
        }
        for (PaymentMethodOptions.RoutingPriority routingPriority2 : message.computed_priority) {
            if (routingPriority2 != null) {
                builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("computed_priority", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, routingPriority2.name());
            }
        }
        return builder;
    }

    public final HttpUrl.Builder addDynamicCurrencyConversionDetails(HttpUrl.Builder builder, PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.amount;
        if (l != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        String str = message.currency;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.CURRENCY, context), str.toString());
        }
        Float f = message.transaction_fx_rate;
        if (f != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("transaction_fx_rate", context), String.valueOf(f.floatValue()));
        }
        Float f2 = message.transaction_markup_percent;
        if (f2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("transaction_markup_percent", context), String.valueOf(f2.floatValue()));
        }
        Float f3 = message.cardholder_rate;
        if (f3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("cardholder_rate", context), String.valueOf(f3.floatValue()));
        }
        Float f4 = message.reference_fx_rate;
        if (f4 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("reference_fx_rate", context), String.valueOf(f4.floatValue()));
        }
        Float f5 = message.reference_markup_percent;
        if (f5 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("reference_markup_percent", context), String.valueOf(f5.floatValue()));
        }
        Float f6 = message.fx_as_of;
        if (f6 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("fx_as_of", context), String.valueOf(f6.floatValue()));
        }
        return builder;
    }

    public final HttpUrl.Builder addSurcharge(HttpUrl.Builder builder, PaymentMethodOptions.CardPresentOptions.Surcharge message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.maximum_amount;
        if (l != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("maximum_amount", context), String.valueOf(l.longValue()));
        }
        String str = message.status;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(NotificationCompat.CATEGORY_STATUS, context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addPaymentMethodOptions(FormBody.Builder builder, PaymentMethodOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardOptions cardOptions = message.card;
        if (cardOptions != null) {
            INSTANCE.addCardOptions(builder, cardOptions, WirecrpcTypeGenExtKt.wrapWith("card", context));
        }
        PaymentMethodOptions.CardPresentOptions cardPresentOptions = message.card_present;
        if (cardPresentOptions != null) {
            INSTANCE.addCardPresentOptions(builder, cardPresentOptions, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        return builder;
    }

    public final FormBody.Builder addCardOptions(FormBody.Builder builder, PaymentMethodOptions.CardOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardOptions.Request3dSecureType request3dSecureType = message.request_three_d_secure;
        if (request3dSecureType != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("request_three_d_secure", context), request3dSecureType.name());
        }
        return builder;
    }

    public final FormBody.Builder addCardPresentOptions(FormBody.Builder builder, PaymentMethodOptions.CardPresentOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardPresentOptions.RoutingOptions routingOptions = message.routing;
        if (routingOptions != null) {
            INSTANCE.addRoutingOptions(builder, routingOptions, WirecrpcTypeGenExtKt.wrapWith("routing", context));
        }
        String str = message.request_dynamic_currency_conversion;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("request_dynamic_currency_conversion", context), str.toString());
        }
        PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails = message.dynamic_currency_conversion;
        if (dynamicCurrencyConversionDetails != null) {
            INSTANCE.addDynamicCurrencyConversionDetails(builder, dynamicCurrencyConversionDetails, WirecrpcTypeGenExtKt.wrapWith("dynamic_currency_conversion", context));
        }
        Boolean bool = message.request_extended_authorization;
        if (bool != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("request_extended_authorization", context), String.valueOf(bool.booleanValue()));
        }
        Boolean bool2 = message.request_incremental_authorization_support;
        if (bool2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("request_incremental_authorization_support", context), String.valueOf(bool2.booleanValue()));
        }
        PaymentMethodOptions.CardPresentOptions.Surcharge surcharge = message.surcharge;
        if (surcharge != null) {
            INSTANCE.addSurcharge(builder, surcharge, WirecrpcTypeGenExtKt.wrapWith("surcharge", context));
        }
        String str2 = message.request_partial_authorization;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("request_partial_authorization", context), str2.toString());
        }
        return builder;
    }

    public final FormBody.Builder addRoutingOptions(FormBody.Builder builder, PaymentMethodOptions.CardPresentOptions.RoutingOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.RoutingPriority routingPriority = message.requested_priority;
        if (routingPriority != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("requested_priority", context), routingPriority.name());
        }
        for (PaymentMethodOptions.RoutingPriority routingPriority2 : message.computed_priority) {
            if (routingPriority2 != null) {
                builder.add(WirecrpcTypeGenExtKt.wrapWith("computed_priority", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, routingPriority2.name());
            }
        }
        return builder;
    }

    public final FormBody.Builder addDynamicCurrencyConversionDetails(FormBody.Builder builder, PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.amount;
        if (l != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        String str = message.currency;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.CURRENCY, context), str.toString());
        }
        Float f = message.transaction_fx_rate;
        if (f != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("transaction_fx_rate", context), String.valueOf(f.floatValue()));
        }
        Float f2 = message.transaction_markup_percent;
        if (f2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("transaction_markup_percent", context), String.valueOf(f2.floatValue()));
        }
        Float f3 = message.cardholder_rate;
        if (f3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("cardholder_rate", context), String.valueOf(f3.floatValue()));
        }
        Float f4 = message.reference_fx_rate;
        if (f4 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("reference_fx_rate", context), String.valueOf(f4.floatValue()));
        }
        Float f5 = message.reference_markup_percent;
        if (f5 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("reference_markup_percent", context), String.valueOf(f5.floatValue()));
        }
        Float f6 = message.fx_as_of;
        if (f6 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("fx_as_of", context), String.valueOf(f6.floatValue()));
        }
        return builder;
    }

    public final FormBody.Builder addSurcharge(FormBody.Builder builder, PaymentMethodOptions.CardPresentOptions.Surcharge message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.maximum_amount;
        if (l != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("maximum_amount", context), String.valueOf(l.longValue()));
        }
        String str = message.status;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(NotificationCompat.CATEGORY_STATUS, context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addPaymentMethodOptions(MultipartBody.Builder builder, PaymentMethodOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardOptions cardOptions = message.card;
        if (cardOptions != null) {
            INSTANCE.addCardOptions(builder, cardOptions, WirecrpcTypeGenExtKt.wrapWith("card", context));
        }
        PaymentMethodOptions.CardPresentOptions cardPresentOptions = message.card_present;
        if (cardPresentOptions != null) {
            INSTANCE.addCardPresentOptions(builder, cardPresentOptions, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addCardOptions(MultipartBody.Builder builder, PaymentMethodOptions.CardOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardOptions.Request3dSecureType request3dSecureType = message.request_three_d_secure;
        if (request3dSecureType != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("request_three_d_secure", context), request3dSecureType.name());
        }
        return builder;
    }

    public final MultipartBody.Builder addCardPresentOptions(MultipartBody.Builder builder, PaymentMethodOptions.CardPresentOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.CardPresentOptions.RoutingOptions routingOptions = message.routing;
        if (routingOptions != null) {
            INSTANCE.addRoutingOptions(builder, routingOptions, WirecrpcTypeGenExtKt.wrapWith("routing", context));
        }
        String str = message.request_dynamic_currency_conversion;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("request_dynamic_currency_conversion", context), str.toString());
        }
        PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails dynamicCurrencyConversionDetails = message.dynamic_currency_conversion;
        if (dynamicCurrencyConversionDetails != null) {
            INSTANCE.addDynamicCurrencyConversionDetails(builder, dynamicCurrencyConversionDetails, WirecrpcTypeGenExtKt.wrapWith("dynamic_currency_conversion", context));
        }
        Boolean bool = message.request_extended_authorization;
        if (bool != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("request_extended_authorization", context), String.valueOf(bool.booleanValue()));
        }
        Boolean bool2 = message.request_incremental_authorization_support;
        if (bool2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("request_incremental_authorization_support", context), String.valueOf(bool2.booleanValue()));
        }
        PaymentMethodOptions.CardPresentOptions.Surcharge surcharge = message.surcharge;
        if (surcharge != null) {
            INSTANCE.addSurcharge(builder, surcharge, WirecrpcTypeGenExtKt.wrapWith("surcharge", context));
        }
        String str2 = message.request_partial_authorization;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("request_partial_authorization", context), str2.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addRoutingOptions(MultipartBody.Builder builder, PaymentMethodOptions.CardPresentOptions.RoutingOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        PaymentMethodOptions.RoutingPriority routingPriority = message.requested_priority;
        if (routingPriority != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("requested_priority", context), routingPriority.name());
        }
        for (PaymentMethodOptions.RoutingPriority routingPriority2 : message.computed_priority) {
            if (routingPriority2 != null) {
                builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("computed_priority", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, routingPriority2.name());
            }
        }
        return builder;
    }

    public final MultipartBody.Builder addDynamicCurrencyConversionDetails(MultipartBody.Builder builder, PaymentMethodOptions.CardPresentOptions.DynamicCurrencyConversionDetails message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.amount;
        if (l != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, context), String.valueOf(l.longValue()));
        }
        String str = message.currency;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.CURRENCY, context), str.toString());
        }
        Float f = message.transaction_fx_rate;
        if (f != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("transaction_fx_rate", context), String.valueOf(f.floatValue()));
        }
        Float f2 = message.transaction_markup_percent;
        if (f2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("transaction_markup_percent", context), String.valueOf(f2.floatValue()));
        }
        Float f3 = message.cardholder_rate;
        if (f3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("cardholder_rate", context), String.valueOf(f3.floatValue()));
        }
        Float f4 = message.reference_fx_rate;
        if (f4 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("reference_fx_rate", context), String.valueOf(f4.floatValue()));
        }
        Float f5 = message.reference_markup_percent;
        if (f5 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("reference_markup_percent", context), String.valueOf(f5.floatValue()));
        }
        Float f6 = message.fx_as_of;
        if (f6 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("fx_as_of", context), String.valueOf(f6.floatValue()));
        }
        return builder;
    }

    public final MultipartBody.Builder addSurcharge(MultipartBody.Builder builder, PaymentMethodOptions.CardPresentOptions.Surcharge message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.maximum_amount;
        if (l != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("maximum_amount", context), String.valueOf(l.longValue()));
        }
        String str = message.status;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(NotificationCompat.CATEGORY_STATUS, context), str.toString());
        }
        return builder;
    }
}
