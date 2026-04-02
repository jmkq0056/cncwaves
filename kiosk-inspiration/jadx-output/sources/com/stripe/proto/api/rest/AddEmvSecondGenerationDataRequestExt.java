package com.stripe.proto.api.rest;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: AddEmvSecondGenerationDataRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequestExt;", "", "()V", "addAddEmvSecondGenerationDataRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AddEmvSecondGenerationDataRequestExt {
    public static final AddEmvSecondGenerationDataRequestExt INSTANCE = new AddEmvSecondGenerationDataRequestExt();

    private AddEmvSecondGenerationDataRequestExt() {
    }

    public final HttpUrl.Builder addAddEmvSecondGenerationDataRequest(HttpUrl.Builder builder, AddEmvSecondGenerationDataRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        Boolean bool = message.is_approved;
        if (bool != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("is_approved", context), String.valueOf(bool.booleanValue()));
        }
        String str = message.second_generation_data;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("second_generation_data", context), str.toString());
        }
        String str2 = message.rejection_reason;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("rejection_reason", context), str2.toString());
        }
        String str3 = message.id;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str3.toString());
        }
        return builder;
    }

    public final FormBody.Builder addAddEmvSecondGenerationDataRequest(FormBody.Builder builder, AddEmvSecondGenerationDataRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        Boolean bool = message.is_approved;
        if (bool != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("is_approved", context), String.valueOf(bool.booleanValue()));
        }
        String str = message.second_generation_data;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("second_generation_data", context), str.toString());
        }
        String str2 = message.rejection_reason;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("rejection_reason", context), str2.toString());
        }
        String str3 = message.id;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str3.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addAddEmvSecondGenerationDataRequest(MultipartBody.Builder builder, AddEmvSecondGenerationDataRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Iterator<T> it = message.expand.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("expand", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        Boolean bool = message.is_approved;
        if (bool != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("is_approved", context), String.valueOf(bool.booleanValue()));
        }
        String str = message.second_generation_data;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("second_generation_data", context), str.toString());
        }
        String str2 = message.rejection_reason;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("rejection_reason", context), str2.toString());
        }
        String str3 = message.id;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str3.toString());
        }
        return builder;
    }
}
