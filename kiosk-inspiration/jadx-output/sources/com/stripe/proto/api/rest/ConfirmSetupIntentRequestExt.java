package com.stripe.proto.api.rest;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: ConfirmSetupIntentRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequestExt;", "", "()V", "addConfirmSetupIntentRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConfirmSetupIntentRequestExt {
    public static final ConfirmSetupIntentRequestExt INSTANCE = new ConfirmSetupIntentRequestExt();

    private ConfirmSetupIntentRequestExt() {
    }

    public final HttpUrl.Builder addConfirmSetupIntentRequest(HttpUrl.Builder builder, ConfirmSetupIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Mandate mandate = message.mandate_data;
        if (mandate != null) {
            MandateExt.INSTANCE.addMandate(builder, mandate, WirecrpcTypeGenExtKt.wrapWith("mandate_data", context));
        }
        for (Map.Entry<String, String> entry : message.payment_method_options.entrySet()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        String str = message.return_url;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("return_url", context), str.toString());
        }
        String str2 = message.id;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str2.toString());
        }
        return builder;
    }

    public final FormBody.Builder addConfirmSetupIntentRequest(FormBody.Builder builder, ConfirmSetupIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Mandate mandate = message.mandate_data;
        if (mandate != null) {
            MandateExt.INSTANCE.addMandate(builder, mandate, WirecrpcTypeGenExtKt.wrapWith("mandate_data", context));
        }
        for (Map.Entry<String, String> entry : message.payment_method_options.entrySet()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        String str = message.return_url;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("return_url", context), str.toString());
        }
        String str2 = message.id;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str2.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addConfirmSetupIntentRequest(MultipartBody.Builder builder, ConfirmSetupIntentRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        Mandate mandate = message.mandate_data;
        if (mandate != null) {
            MandateExt.INSTANCE.addMandate(builder, mandate, WirecrpcTypeGenExtKt.wrapWith("mandate_data", context));
        }
        for (Map.Entry<String, String> entry : message.payment_method_options.entrySet()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("payment_method_options", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        String str = message.return_url;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("return_url", context), str.toString());
        }
        String str2 = message.id;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str2.toString());
        }
        return builder;
    }
}
