package com.stripe.proto.model.attestation;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: AesGcmCiphertextExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/attestation/AesGcmCiphertextExt;", "", "()V", "addAesGcmCiphertext", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/attestation/AesGcmCiphertext;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AesGcmCiphertextExt {
    public static final AesGcmCiphertextExt INSTANCE = new AesGcmCiphertextExt();

    private AesGcmCiphertextExt() {
    }

    public final HttpUrl.Builder addAesGcmCiphertext(HttpUrl.Builder builder, AesGcmCiphertext message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("ciphertext", context), message.ciphertext.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("initialization_vector", context), message.initialization_vector.toString());
        return builder;
    }

    public final FormBody.Builder addAesGcmCiphertext(FormBody.Builder builder, AesGcmCiphertext message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.add(WirecrpcTypeGenExtKt.wrapWith("ciphertext", context), message.ciphertext.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("initialization_vector", context), message.initialization_vector.toString());
        return builder;
    }

    public final MultipartBody.Builder addAesGcmCiphertext(MultipartBody.Builder builder, AesGcmCiphertext message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("ciphertext", context), message.ciphertext.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("initialization_vector", context), message.initialization_vector.toString());
        return builder;
    }
}
