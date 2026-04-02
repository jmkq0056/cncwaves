package com.stripe.proto.api.rest;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: ListAllReadersRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/ListAllReadersRequestExt;", "", "()V", "addListAllReadersRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/ListAllReadersRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ListAllReadersRequestExt {
    public static final ListAllReadersRequestExt INSTANCE = new ListAllReadersRequestExt();

    private ListAllReadersRequestExt() {
    }

    public final HttpUrl.Builder addListAllReadersRequest(HttpUrl.Builder builder, ListAllReadersRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.device_type;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("device_type", context), str.toString());
        }
        String str2 = message.location;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context), str2.toString());
        }
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str3 = message.starting_after;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("starting_after", context), str3.toString());
        }
        String str4 = message.serial_number;
        if (str4 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER_SERIAL_NUMBER, context), str4.toString());
        }
        String str5 = message.compatible_sdk_type;
        if (str5 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("compatible_sdk_type", context), str5.toString());
        }
        String str6 = message.compatible_sdk_version;
        if (str6 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("compatible_sdk_version", context), str6.toString());
        }
        Integer num = message.limit;
        if (num != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("limit", context), String.valueOf(num.intValue()));
        }
        return builder;
    }

    public final FormBody.Builder addListAllReadersRequest(FormBody.Builder builder, ListAllReadersRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.device_type;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("device_type", context), str.toString());
        }
        String str2 = message.location;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context), str2.toString());
        }
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str3 = message.starting_after;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("starting_after", context), str3.toString());
        }
        String str4 = message.serial_number;
        if (str4 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER_SERIAL_NUMBER, context), str4.toString());
        }
        String str5 = message.compatible_sdk_type;
        if (str5 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("compatible_sdk_type", context), str5.toString());
        }
        String str6 = message.compatible_sdk_version;
        if (str6 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("compatible_sdk_version", context), str6.toString());
        }
        Integer num = message.limit;
        if (num != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("limit", context), String.valueOf(num.intValue()));
        }
        return builder;
    }

    public final MultipartBody.Builder addListAllReadersRequest(MultipartBody.Builder builder, ListAllReadersRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.device_type;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("device_type", context), str.toString());
        }
        String str2 = message.location;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(FirebaseAnalytics.Param.LOCATION, context), str2.toString());
        }
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        String str3 = message.starting_after;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("starting_after", context), str3.toString());
        }
        String str4 = message.serial_number;
        if (str4 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER_SERIAL_NUMBER, context), str4.toString());
        }
        String str5 = message.compatible_sdk_type;
        if (str5 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("compatible_sdk_type", context), str5.toString());
        }
        String str6 = message.compatible_sdk_version;
        if (str6 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("compatible_sdk_version", context), str6.toString());
        }
        Integer num = message.limit;
        if (num != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("limit", context), String.valueOf(num.intValue()));
        }
        return builder;
    }
}
