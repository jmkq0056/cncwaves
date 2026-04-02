package com.stripe.proto.api.rest;

import com.stripe.proto.api.rest.UploadFileRequest;
import com.stripe.wirecrpc.RestMessageHelperKt;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okio.ByteString;

/* JADX INFO: compiled from: UploadFileRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/rest/UploadFileRequestExt;", "", "()V", "addPurpose", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/UploadFileRequest$Purpose;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addUploadFileRequest", "Lcom/stripe/proto/api/rest/UploadFileRequest;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UploadFileRequestExt {
    public static final UploadFileRequestExt INSTANCE = new UploadFileRequestExt();

    public final FormBody.Builder addPurpose(FormBody.Builder builder, UploadFileRequest.Purpose message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final HttpUrl.Builder addPurpose(HttpUrl.Builder builder, UploadFileRequest.Purpose message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final MultipartBody.Builder addPurpose(MultipartBody.Builder builder, UploadFileRequest.Purpose message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    private UploadFileRequestExt() {
    }

    public final HttpUrl.Builder addUploadFileRequest(HttpUrl.Builder builder, UploadFileRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        MultiPartFormData multiPartFormData = message.file_;
        if (multiPartFormData != null) {
            MultiPartFormDataExt.INSTANCE.addMultiPartFormData(builder, multiPartFormData, WirecrpcTypeGenExtKt.wrapWith("file", context));
        }
        UploadFileRequest.Purpose purpose = message.purpose;
        if (purpose != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("purpose", context), purpose.name());
        }
        return builder;
    }

    public final FormBody.Builder addUploadFileRequest(FormBody.Builder builder, UploadFileRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        MultiPartFormData multiPartFormData = message.file_;
        if (multiPartFormData != null) {
            MultiPartFormDataExt.INSTANCE.addMultiPartFormData(builder, multiPartFormData, WirecrpcTypeGenExtKt.wrapWith("file", context));
        }
        UploadFileRequest.Purpose purpose = message.purpose;
        if (purpose != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("purpose", context), purpose.name());
        }
        return builder;
    }

    public final MultipartBody.Builder addUploadFileRequest(MultipartBody.Builder builder, UploadFileRequest message, String context) {
        String str;
        ByteString byteString;
        RequestBody requestBodyCreate;
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        MultiPartFormData multiPartFormData = message.file_;
        if (multiPartFormData != null && (str = multiPartFormData.file_name) != null && (byteString = multiPartFormData.file_data) != null && (requestBodyCreate = RequestBody.INSTANCE.create(byteString, MediaType.INSTANCE.parse(RestMessageHelperKt.getMimeTypeFromFilename(str)))) != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("file", context), str, requestBodyCreate);
        }
        UploadFileRequest.Purpose purpose = message.purpose;
        if (purpose != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("purpose", context), purpose.name());
        }
        return builder;
    }
}
