package com.stripe.proto.api.attestation;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: AttestationRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/attestation/AttestationRequestExt;", "", "()V", "addAttestationRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/attestation/AttestationRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AttestationRequestExt {
    public static final AttestationRequestExt INSTANCE = new AttestationRequestExt();

    private AttestationRequestExt() {
    }

    public final HttpUrl.Builder addAttestationRequest(HttpUrl.Builder builder, AttestationRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        SignedRequest signedRequest = message.signed_request;
        if (signedRequest != null) {
            SignedRequestExt.INSTANCE.addSignedRequest(builder, signedRequest, WirecrpcTypeGenExtKt.wrapWith("signed_request", context));
        }
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("signature", context), message.signature.toString());
        String str = message.id;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addAttestationRequest(FormBody.Builder builder, AttestationRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        SignedRequest signedRequest = message.signed_request;
        if (signedRequest != null) {
            SignedRequestExt.INSTANCE.addSignedRequest(builder, signedRequest, WirecrpcTypeGenExtKt.wrapWith("signed_request", context));
        }
        builder.add(WirecrpcTypeGenExtKt.wrapWith("signature", context), message.signature.toString());
        String str = message.id;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addAttestationRequest(MultipartBody.Builder builder, AttestationRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        SignedRequest signedRequest = message.signed_request;
        if (signedRequest != null) {
            SignedRequestExt.INSTANCE.addSignedRequest(builder, signedRequest, WirecrpcTypeGenExtKt.wrapWith("signed_request", context));
        }
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("signature", context), message.signature.toString());
        String str = message.id;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        return builder;
    }
}
