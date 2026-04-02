package com.stripe.proto.model.attestation;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: PaddedDataEnvelopeExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/attestation/PaddedDataEnvelopeExt;", "", "()V", "addPaddedDataEnvelope", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/attestation/PaddedDataEnvelope;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PaddedDataEnvelopeExt {
    public static final PaddedDataEnvelopeExt INSTANCE = new PaddedDataEnvelopeExt();

    private PaddedDataEnvelopeExt() {
    }

    public final HttpUrl.Builder addPaddedDataEnvelope(HttpUrl.Builder builder, PaddedDataEnvelope message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("pad", context), message.pad.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("encrypted_padded_data", context), message.encrypted_padded_data.toString());
        return builder;
    }

    public final FormBody.Builder addPaddedDataEnvelope(FormBody.Builder builder, PaddedDataEnvelope message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.add(WirecrpcTypeGenExtKt.wrapWith("pad", context), message.pad.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("encrypted_padded_data", context), message.encrypted_padded_data.toString());
        return builder;
    }

    public final MultipartBody.Builder addPaddedDataEnvelope(MultipartBody.Builder builder, PaddedDataEnvelope message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("pad", context), message.pad.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("encrypted_padded_data", context), message.encrypted_padded_data.toString());
        return builder;
    }
}
