package com.stripe.proto.api.rest;

import com.stripe.proto.api.rest.Mandate;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: MandateExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/rest/MandateExt;", "", "()V", "addMandate", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/Mandate;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addMandateCustomerAcceptance", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance;", "addOnlineTypeCustomerAcceptance", "Lcom/stripe/proto/api/rest/Mandate$MandateCustomerAcceptance$OnlineTypeCustomerAcceptance;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MandateExt {
    public static final MandateExt INSTANCE = new MandateExt();

    private MandateExt() {
    }

    public final HttpUrl.Builder addMandate(HttpUrl.Builder builder, Mandate message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Mandate.MandateCustomerAcceptance mandateCustomerAcceptance = message.customer_acceptance;
        if (mandateCustomerAcceptance != null) {
            INSTANCE.addMandateCustomerAcceptance(builder, mandateCustomerAcceptance, WirecrpcTypeGenExtKt.wrapWith("customer_acceptance", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addMandateCustomerAcceptance(HttpUrl.Builder builder, Mandate.MandateCustomerAcceptance message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.type;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("type", context), str.toString());
        }
        Long l = message.accepted_at;
        if (l != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("accepted_at", context), String.valueOf(l.longValue()));
        }
        for (Map.Entry<String, String> entry : message.offline.entrySet()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("offline", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptance = message.online;
        if (onlineTypeCustomerAcceptance != null) {
            INSTANCE.addOnlineTypeCustomerAcceptance(builder, onlineTypeCustomerAcceptance, WirecrpcTypeGenExtKt.wrapWith("online", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addOnlineTypeCustomerAcceptance(HttpUrl.Builder builder, Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.ip_address;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("ip_address", context), str.toString());
        }
        String str2 = message.user_agent;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("user_agent", context), str2.toString());
        }
        return builder;
    }

    public final FormBody.Builder addMandate(FormBody.Builder builder, Mandate message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Mandate.MandateCustomerAcceptance mandateCustomerAcceptance = message.customer_acceptance;
        if (mandateCustomerAcceptance != null) {
            INSTANCE.addMandateCustomerAcceptance(builder, mandateCustomerAcceptance, WirecrpcTypeGenExtKt.wrapWith("customer_acceptance", context));
        }
        return builder;
    }

    public final FormBody.Builder addMandateCustomerAcceptance(FormBody.Builder builder, Mandate.MandateCustomerAcceptance message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.type;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("type", context), str.toString());
        }
        Long l = message.accepted_at;
        if (l != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("accepted_at", context), String.valueOf(l.longValue()));
        }
        for (Map.Entry<String, String> entry : message.offline.entrySet()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("offline", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptance = message.online;
        if (onlineTypeCustomerAcceptance != null) {
            INSTANCE.addOnlineTypeCustomerAcceptance(builder, onlineTypeCustomerAcceptance, WirecrpcTypeGenExtKt.wrapWith("online", context));
        }
        return builder;
    }

    public final FormBody.Builder addOnlineTypeCustomerAcceptance(FormBody.Builder builder, Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.ip_address;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("ip_address", context), str.toString());
        }
        String str2 = message.user_agent;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("user_agent", context), str2.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addMandate(MultipartBody.Builder builder, Mandate message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Mandate.MandateCustomerAcceptance mandateCustomerAcceptance = message.customer_acceptance;
        if (mandateCustomerAcceptance != null) {
            INSTANCE.addMandateCustomerAcceptance(builder, mandateCustomerAcceptance, WirecrpcTypeGenExtKt.wrapWith("customer_acceptance", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addMandateCustomerAcceptance(MultipartBody.Builder builder, Mandate.MandateCustomerAcceptance message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.type;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("type", context), str.toString());
        }
        Long l = message.accepted_at;
        if (l != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("accepted_at", context), String.valueOf(l.longValue()));
        }
        for (Map.Entry<String, String> entry : message.offline.entrySet()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("offline", context) + AbstractJsonLexerKt.BEGIN_LIST + entry.getKey() + AbstractJsonLexerKt.END_LIST, entry.getValue());
        }
        Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance onlineTypeCustomerAcceptance = message.online;
        if (onlineTypeCustomerAcceptance != null) {
            INSTANCE.addOnlineTypeCustomerAcceptance(builder, onlineTypeCustomerAcceptance, WirecrpcTypeGenExtKt.wrapWith("online", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addOnlineTypeCustomerAcceptance(MultipartBody.Builder builder, Mandate.MandateCustomerAcceptance.OnlineTypeCustomerAcceptance message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.ip_address;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("ip_address", context), str.toString());
        }
        String str2 = message.user_agent;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("user_agent", context), str2.toString());
        }
        return builder;
    }
}
