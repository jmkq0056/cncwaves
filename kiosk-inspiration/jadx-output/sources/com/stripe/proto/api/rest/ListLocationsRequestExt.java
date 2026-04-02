package com.stripe.proto.api.rest;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: ListLocationsRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/ListLocationsRequestExt;", "", "()V", "addListLocationsRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/ListLocationsRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ListLocationsRequestExt {
    public static final ListLocationsRequestExt INSTANCE = new ListLocationsRequestExt();

    private ListLocationsRequestExt() {
    }

    public final HttpUrl.Builder addListLocationsRequest(HttpUrl.Builder builder, ListLocationsRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.ending_before;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("ending_before", context), str.toString());
        }
        Integer num = message.limit;
        if (num != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("limit", context), String.valueOf(num.intValue()));
        }
        String str2 = message.starting_after;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("starting_after", context), str2.toString());
        }
        return builder;
    }

    public final FormBody.Builder addListLocationsRequest(FormBody.Builder builder, ListLocationsRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.ending_before;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("ending_before", context), str.toString());
        }
        Integer num = message.limit;
        if (num != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("limit", context), String.valueOf(num.intValue()));
        }
        String str2 = message.starting_after;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("starting_after", context), str2.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addListLocationsRequest(MultipartBody.Builder builder, ListLocationsRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.ending_before;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("ending_before", context), str.toString());
        }
        Integer num = message.limit;
        if (num != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("limit", context), String.valueOf(num.intValue()));
        }
        String str2 = message.starting_after;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("starting_after", context), str2.toString());
        }
        return builder;
    }
}
