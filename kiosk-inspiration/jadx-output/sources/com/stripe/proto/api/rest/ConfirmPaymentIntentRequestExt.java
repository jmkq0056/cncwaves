package com.stripe.proto.api.rest;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: ConfirmPaymentIntentRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequestExt;", "", "()V", "addConfirmPaymentIntentRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addRedirectPreferences", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmPaymentIntentRequestExt {
    public static final ConfirmPaymentIntentRequestExt INSTANCE = new ConfirmPaymentIntentRequestExt();

    private ConfirmPaymentIntentRequestExt() {
    }

    public final HttpUrl.Builder addConfirmPaymentIntentRequest(HttpUrl.Builder builder, ConfirmPaymentIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.source_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("source_data", context));
        }
        RequestedPaymentMethod requestedPaymentMethod2 = message.payment_method_data;
        if (requestedPaymentMethod2 != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod2, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Long l = message.amount_to_confirm;
        if (l != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("amount_to_confirm", context), String.valueOf(l.longValue()));
        }
        String str = message.id;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        Long l2 = message.amount_tip;
        if (l2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("amount_tip", context), String.valueOf(l2.longValue()));
        }
        PaymentMethodOptions paymentMethodOptions = message.payment_method_options;
        if (paymentMethodOptions != null) {
            PaymentMethodOptionsExt.INSTANCE.addPaymentMethodOptions(builder, paymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        Long l3 = message.amount_surcharge;
        if (l3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("amount_surcharge", context), String.valueOf(l3.longValue()));
        }
        String str2 = message.return_url;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("return_url", context), str2.toString());
        }
        ConfirmPaymentIntentRequest.RedirectPreferences redirectPreferences = message.redirect_preferences;
        if (redirectPreferences != null) {
            INSTANCE.addRedirectPreferences(builder, redirectPreferences, WirecrpcTypeGenExtKt.wrapWith("redirect_preferences", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addRedirectPreferences(HttpUrl.Builder builder, ConfirmPaymentIntentRequest.RedirectPreferences message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.additional_formats.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("additional_formats", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        return builder;
    }

    public final FormBody.Builder addConfirmPaymentIntentRequest(FormBody.Builder builder, ConfirmPaymentIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.source_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("source_data", context));
        }
        RequestedPaymentMethod requestedPaymentMethod2 = message.payment_method_data;
        if (requestedPaymentMethod2 != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod2, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Long l = message.amount_to_confirm;
        if (l != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("amount_to_confirm", context), String.valueOf(l.longValue()));
        }
        String str = message.id;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        Long l2 = message.amount_tip;
        if (l2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("amount_tip", context), String.valueOf(l2.longValue()));
        }
        PaymentMethodOptions paymentMethodOptions = message.payment_method_options;
        if (paymentMethodOptions != null) {
            PaymentMethodOptionsExt.INSTANCE.addPaymentMethodOptions(builder, paymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        Long l3 = message.amount_surcharge;
        if (l3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("amount_surcharge", context), String.valueOf(l3.longValue()));
        }
        String str2 = message.return_url;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("return_url", context), str2.toString());
        }
        ConfirmPaymentIntentRequest.RedirectPreferences redirectPreferences = message.redirect_preferences;
        if (redirectPreferences != null) {
            INSTANCE.addRedirectPreferences(builder, redirectPreferences, WirecrpcTypeGenExtKt.wrapWith("redirect_preferences", context));
        }
        return builder;
    }

    public final FormBody.Builder addRedirectPreferences(FormBody.Builder builder, ConfirmPaymentIntentRequest.RedirectPreferences message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.additional_formats.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("additional_formats", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addConfirmPaymentIntentRequest(MultipartBody.Builder builder, ConfirmPaymentIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.source_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("source_data", context));
        }
        RequestedPaymentMethod requestedPaymentMethod2 = message.payment_method_data;
        if (requestedPaymentMethod2 != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod2, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Long l = message.amount_to_confirm;
        if (l != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("amount_to_confirm", context), String.valueOf(l.longValue()));
        }
        String str = message.id;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        Long l2 = message.amount_tip;
        if (l2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("amount_tip", context), String.valueOf(l2.longValue()));
        }
        PaymentMethodOptions paymentMethodOptions = message.payment_method_options;
        if (paymentMethodOptions != null) {
            PaymentMethodOptionsExt.INSTANCE.addPaymentMethodOptions(builder, paymentMethodOptions, WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context));
        }
        Long l3 = message.amount_surcharge;
        if (l3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("amount_surcharge", context), String.valueOf(l3.longValue()));
        }
        String str2 = message.return_url;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("return_url", context), str2.toString());
        }
        ConfirmPaymentIntentRequest.RedirectPreferences redirectPreferences = message.redirect_preferences;
        if (redirectPreferences != null) {
            INSTANCE.addRedirectPreferences(builder, redirectPreferences, WirecrpcTypeGenExtKt.wrapWith("redirect_preferences", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addRedirectPreferences(MultipartBody.Builder builder, ConfirmPaymentIntentRequest.RedirectPreferences message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.additional_formats.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("additional_formats", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        return builder;
    }
}
