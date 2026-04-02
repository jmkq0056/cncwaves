package com.stripe.proto.api.rest;

import com.stripe.jvmcore.logging.terminal.log.TerminalLogExceptionListener;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;
import okio.ByteString;

/* JADX INFO: compiled from: MultiPartFormDataExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/rest/MultiPartFormDataExt;", "", "()V", "addMultiPartFormData", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/MultiPartFormData;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MultiPartFormDataExt {
    public static final MultiPartFormDataExt INSTANCE = new MultiPartFormDataExt();

    private MultiPartFormDataExt() {
    }

    public final HttpUrl.Builder addMultiPartFormData(HttpUrl.Builder builder, MultiPartFormData message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.file_name;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(TerminalLogExceptionListener.FILE_NAME_TAG, context), str.toString());
        }
        ByteString byteString = message.file_data;
        if (byteString != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("file_data", context), byteString.toString());
        }
        return builder;
    }

    public final FormBody.Builder addMultiPartFormData(FormBody.Builder builder, MultiPartFormData message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.file_name;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(TerminalLogExceptionListener.FILE_NAME_TAG, context), str.toString());
        }
        ByteString byteString = message.file_data;
        if (byteString != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("file_data", context), byteString.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addMultiPartFormData(MultipartBody.Builder builder, MultiPartFormData message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.file_name;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(TerminalLogExceptionListener.FILE_NAME_TAG, context), str.toString());
        }
        ByteString byteString = message.file_data;
        if (byteString != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("file_data", context), byteString.toString());
        }
        return builder;
    }
}
