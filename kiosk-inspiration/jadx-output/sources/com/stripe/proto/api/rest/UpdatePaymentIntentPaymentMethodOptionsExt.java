package com.stripe.proto.api.rest;

import com.stripe.proto.api.rest.UpdatePaymentIntentPaymentMethodOptions;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: UpdatePaymentIntentPaymentMethodOptionsExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptionsExt;", "", "()V", "addCardPresent", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions$CardPresent;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addUpdatePaymentIntentPaymentMethodOptions", "Lcom/stripe/proto/api/rest/UpdatePaymentIntentPaymentMethodOptions;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdatePaymentIntentPaymentMethodOptionsExt {
    public static final UpdatePaymentIntentPaymentMethodOptionsExt INSTANCE = new UpdatePaymentIntentPaymentMethodOptionsExt();

    private UpdatePaymentIntentPaymentMethodOptionsExt() {
    }

    public final HttpUrl.Builder addUpdatePaymentIntentPaymentMethodOptions(HttpUrl.Builder builder, UpdatePaymentIntentPaymentMethodOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UpdatePaymentIntentPaymentMethodOptions.CardPresent cardPresent = message.card_present;
        if (cardPresent != null) {
            INSTANCE.addCardPresent(builder, cardPresent, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addCardPresent(HttpUrl.Builder builder, UpdatePaymentIntentPaymentMethodOptions.CardPresent message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.request_dynamic_currency_conversion;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("request_dynamic_currency_conversion", context), str.toString());
        }
        Boolean bool = message.dynamic_currency_conversion_selected;
        if (bool != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("dynamic_currency_conversion_selected", context), String.valueOf(bool.booleanValue()));
        }
        return builder;
    }

    public final FormBody.Builder addUpdatePaymentIntentPaymentMethodOptions(FormBody.Builder builder, UpdatePaymentIntentPaymentMethodOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UpdatePaymentIntentPaymentMethodOptions.CardPresent cardPresent = message.card_present;
        if (cardPresent != null) {
            INSTANCE.addCardPresent(builder, cardPresent, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        return builder;
    }

    public final FormBody.Builder addCardPresent(FormBody.Builder builder, UpdatePaymentIntentPaymentMethodOptions.CardPresent message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.request_dynamic_currency_conversion;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("request_dynamic_currency_conversion", context), str.toString());
        }
        Boolean bool = message.dynamic_currency_conversion_selected;
        if (bool != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("dynamic_currency_conversion_selected", context), String.valueOf(bool.booleanValue()));
        }
        return builder;
    }

    public final MultipartBody.Builder addUpdatePaymentIntentPaymentMethodOptions(MultipartBody.Builder builder, UpdatePaymentIntentPaymentMethodOptions message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UpdatePaymentIntentPaymentMethodOptions.CardPresent cardPresent = message.card_present;
        if (cardPresent != null) {
            INSTANCE.addCardPresent(builder, cardPresent, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addCardPresent(MultipartBody.Builder builder, UpdatePaymentIntentPaymentMethodOptions.CardPresent message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.request_dynamic_currency_conversion;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("request_dynamic_currency_conversion", context), str.toString());
        }
        Boolean bool = message.dynamic_currency_conversion_selected;
        if (bool != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("dynamic_currency_conversion_selected", context), String.valueOf(bool.booleanValue()));
        }
        return builder;
    }
}
