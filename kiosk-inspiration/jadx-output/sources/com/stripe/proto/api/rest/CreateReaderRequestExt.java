package com.stripe.proto.api.rest;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: CreateReaderRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/CreateReaderRequestExt;", "", "()V", "addCreateReaderRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/CreateReaderRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateReaderRequestExt {
    public static final CreateReaderRequestExt INSTANCE = new CreateReaderRequestExt();

    private CreateReaderRequestExt() {
    }

    public final HttpUrl.Builder addCreateReaderRequest(HttpUrl.Builder builder, CreateReaderRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.registration_code;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("registration_code", context), str.toString());
        }
        String str2 = message.label;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("label", context), str2.toString());
        }
        String str3 = message.location;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context), str3.toString());
        }
        return builder;
    }

    public final FormBody.Builder addCreateReaderRequest(FormBody.Builder builder, CreateReaderRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.registration_code;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("registration_code", context), str.toString());
        }
        String str2 = message.label;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("label", context), str2.toString());
        }
        String str3 = message.location;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context), str3.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addCreateReaderRequest(MultipartBody.Builder builder, CreateReaderRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.registration_code;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("registration_code", context), str.toString());
        }
        String str2 = message.label;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("label", context), str2.toString());
        }
        String str3 = message.location;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context), str3.toString());
        }
        return builder;
    }
}
