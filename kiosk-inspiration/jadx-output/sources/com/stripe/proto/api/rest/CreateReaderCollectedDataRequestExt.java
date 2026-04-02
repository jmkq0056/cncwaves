package com.stripe.proto.api.rest;

import com.stripe.proto.api.rest.CreateReaderCollectedDataRequest;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: CreateReaderCollectedDataRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequestExt;", "", "()V", "addCreateReaderCollectedDataRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addMagstripeCollectedData", "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateReaderCollectedDataRequestExt {
    public static final CreateReaderCollectedDataRequestExt INSTANCE = new CreateReaderCollectedDataRequestExt();

    private CreateReaderCollectedDataRequestExt() {
    }

    public final HttpUrl.Builder addCreateReaderCollectedDataRequest(HttpUrl.Builder builder, CreateReaderCollectedDataRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("type", context), message.type.toString());
        CreateReaderCollectedDataRequest.MagstripeCollectedData magstripeCollectedData = message.magstripe;
        if (magstripeCollectedData != null) {
            INSTANCE.addMagstripeCollectedData(builder, magstripeCollectedData, WirecrpcTypeGenExtKt.wrapWith("magstripe", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addMagstripeCollectedData(HttpUrl.Builder builder, CreateReaderCollectedDataRequest.MagstripeCollectedData message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.data_;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("data", context), str.toString());
        }
        String str2 = message.track_2_ksn;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("track_2_ksn", context), str2.toString());
        }
        return builder;
    }

    public final FormBody.Builder addCreateReaderCollectedDataRequest(FormBody.Builder builder, CreateReaderCollectedDataRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.add(WirecrpcTypeGenExtKt.wrapWith("type", context), message.type.toString());
        CreateReaderCollectedDataRequest.MagstripeCollectedData magstripeCollectedData = message.magstripe;
        if (magstripeCollectedData != null) {
            INSTANCE.addMagstripeCollectedData(builder, magstripeCollectedData, WirecrpcTypeGenExtKt.wrapWith("magstripe", context));
        }
        return builder;
    }

    public final FormBody.Builder addMagstripeCollectedData(FormBody.Builder builder, CreateReaderCollectedDataRequest.MagstripeCollectedData message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.data_;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("data", context), str.toString());
        }
        String str2 = message.track_2_ksn;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("track_2_ksn", context), str2.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addCreateReaderCollectedDataRequest(MultipartBody.Builder builder, CreateReaderCollectedDataRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("type", context), message.type.toString());
        CreateReaderCollectedDataRequest.MagstripeCollectedData magstripeCollectedData = message.magstripe;
        if (magstripeCollectedData != null) {
            INSTANCE.addMagstripeCollectedData(builder, magstripeCollectedData, WirecrpcTypeGenExtKt.wrapWith("magstripe", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addMagstripeCollectedData(MultipartBody.Builder builder, CreateReaderCollectedDataRequest.MagstripeCollectedData message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.data_;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("data", context), str.toString());
        }
        String str2 = message.track_2_ksn;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("track_2_ksn", context), str2.toString());
        }
        return builder;
    }
}
