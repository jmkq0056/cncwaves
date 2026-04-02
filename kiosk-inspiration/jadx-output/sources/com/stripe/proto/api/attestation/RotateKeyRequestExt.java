package com.stripe.proto.api.attestation;

import com.stripe.proto.model.attestation.KeyUsage;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: RotateKeyRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/attestation/RotateKeyRequestExt;", "", "()V", "addRotateKeyRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/attestation/RotateKeyRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RotateKeyRequestExt {
    public static final RotateKeyRequestExt INSTANCE = new RotateKeyRequestExt();

    private RotateKeyRequestExt() {
    }

    public final HttpUrl.Builder addRotateKeyRequest(HttpUrl.Builder builder, RotateKeyRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        KeyUsage keyUsage = message.key_usage;
        if (keyUsage != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("key_usage", context), keyUsage.name());
        }
        return builder;
    }

    public final FormBody.Builder addRotateKeyRequest(FormBody.Builder builder, RotateKeyRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        KeyUsage keyUsage = message.key_usage;
        if (keyUsage != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("key_usage", context), keyUsage.name());
        }
        return builder;
    }

    public final MultipartBody.Builder addRotateKeyRequest(MultipartBody.Builder builder, RotateKeyRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        KeyUsage keyUsage = message.key_usage;
        if (keyUsage != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("key_usage", context), keyUsage.name());
        }
        return builder;
    }
}
