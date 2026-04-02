package com.stripe.proto.model.attestation;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: AttestationErrorExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/attestation/AttestationErrorExt;", "", "()V", "addAttestationError", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/attestation/AttestationError;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttestationErrorExt {
    public static final AttestationErrorExt INSTANCE = new AttestationErrorExt();

    private AttestationErrorExt() {
    }

    public final HttpUrl.Builder addAttestationError(HttpUrl.Builder builder, AttestationError message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        InnerError innerError = message.error;
        if (innerError != null) {
            InnerErrorExt.INSTANCE.addInnerError(builder, innerError, WirecrpcTypeGenExtKt.wrapWith("error", context));
        }
        return builder;
    }

    public final FormBody.Builder addAttestationError(FormBody.Builder builder, AttestationError message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        InnerError innerError = message.error;
        if (innerError != null) {
            InnerErrorExt.INSTANCE.addInnerError(builder, innerError, WirecrpcTypeGenExtKt.wrapWith("error", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addAttestationError(MultipartBody.Builder builder, AttestationError message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        InnerError innerError = message.error;
        if (innerError != null) {
            InnerErrorExt.INSTANCE.addInnerError(builder, innerError, WirecrpcTypeGenExtKt.wrapWith("error", context));
        }
        return builder;
    }
}
