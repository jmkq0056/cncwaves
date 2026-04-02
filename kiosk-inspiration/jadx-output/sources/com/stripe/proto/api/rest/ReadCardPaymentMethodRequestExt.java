package com.stripe.proto.api.rest;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: ReadCardPaymentMethodRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequestExt;", "", "()V", "addReadCardPaymentMethodRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReadCardPaymentMethodRequestExt {
    public static final ReadCardPaymentMethodRequestExt INSTANCE = new ReadCardPaymentMethodRequestExt();

    private ReadCardPaymentMethodRequestExt() {
    }

    public final HttpUrl.Builder addReadCardPaymentMethodRequest(HttpUrl.Builder builder, ReadCardPaymentMethodRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str = message.customer;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("customer", context), str.toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        return builder;
    }

    public final FormBody.Builder addReadCardPaymentMethodRequest(FormBody.Builder builder, ReadCardPaymentMethodRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str = message.customer;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("customer", context), str.toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        return builder;
    }

    public final MultipartBody.Builder addReadCardPaymentMethodRequest(MultipartBody.Builder builder, ReadCardPaymentMethodRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str = message.customer;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("customer", context), str.toString());
        }
        RequestedPaymentMethod requestedPaymentMethod = message.payment_method_data;
        if (requestedPaymentMethod != null) {
            RequestedPaymentMethodExt.INSTANCE.addRequestedPaymentMethod(builder, requestedPaymentMethod, WirecrpcTypeGenExtKt.wrapWith("payment_method_data", context));
        }
        for (Map.Entry<String, String> entry : message.metadata.entrySet()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("metadata", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        return builder;
    }
}
