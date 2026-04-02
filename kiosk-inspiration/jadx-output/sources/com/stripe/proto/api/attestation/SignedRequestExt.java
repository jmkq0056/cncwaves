package com.stripe.proto.api.attestation;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: SignedRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/attestation/SignedRequestExt;", "", "()V", "addSignedRequest", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/attestation/SignedRequest;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SignedRequestExt {
    public static final SignedRequestExt INSTANCE = new SignedRequestExt();

    private SignedRequestExt() {
    }

    public final HttpUrl.Builder addSignedRequest(HttpUrl.Builder builder, SignedRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        BindDeviceRequest bindDeviceRequest = message.bind_device_request;
        if (bindDeviceRequest != null) {
            BindDeviceRequestExt.INSTANCE.addBindDeviceRequest(builder, bindDeviceRequest, WirecrpcTypeGenExtKt.wrapWith("bind_device_request", context));
        }
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("nonce", context), message.nonce.toString());
        AttestDeviceRequest attestDeviceRequest = message.attest_device_request;
        if (attestDeviceRequest != null) {
            AttestDeviceRequestExt.INSTANCE.addAttestDeviceRequest(builder, attestDeviceRequest, WirecrpcTypeGenExtKt.wrapWith("attest_device_request", context));
        }
        RotateKeyRequest rotateKeyRequest = message.rotate_key_request;
        if (rotateKeyRequest != null) {
            RotateKeyRequestExt.INSTANCE.addRotateKeyRequest(builder, rotateKeyRequest, WirecrpcTypeGenExtKt.wrapWith("rotate_key_request", context));
        }
        return builder;
    }

    public final FormBody.Builder addSignedRequest(FormBody.Builder builder, SignedRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        BindDeviceRequest bindDeviceRequest = message.bind_device_request;
        if (bindDeviceRequest != null) {
            BindDeviceRequestExt.INSTANCE.addBindDeviceRequest(builder, bindDeviceRequest, WirecrpcTypeGenExtKt.wrapWith("bind_device_request", context));
        }
        builder.add(WirecrpcTypeGenExtKt.wrapWith("nonce", context), message.nonce.toString());
        AttestDeviceRequest attestDeviceRequest = message.attest_device_request;
        if (attestDeviceRequest != null) {
            AttestDeviceRequestExt.INSTANCE.addAttestDeviceRequest(builder, attestDeviceRequest, WirecrpcTypeGenExtKt.wrapWith("attest_device_request", context));
        }
        RotateKeyRequest rotateKeyRequest = message.rotate_key_request;
        if (rotateKeyRequest != null) {
            RotateKeyRequestExt.INSTANCE.addRotateKeyRequest(builder, rotateKeyRequest, WirecrpcTypeGenExtKt.wrapWith("rotate_key_request", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addSignedRequest(MultipartBody.Builder builder, SignedRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        BindDeviceRequest bindDeviceRequest = message.bind_device_request;
        if (bindDeviceRequest != null) {
            BindDeviceRequestExt.INSTANCE.addBindDeviceRequest(builder, bindDeviceRequest, WirecrpcTypeGenExtKt.wrapWith("bind_device_request", context));
        }
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("nonce", context), message.nonce.toString());
        AttestDeviceRequest attestDeviceRequest = message.attest_device_request;
        if (attestDeviceRequest != null) {
            AttestDeviceRequestExt.INSTANCE.addAttestDeviceRequest(builder, attestDeviceRequest, WirecrpcTypeGenExtKt.wrapWith("attest_device_request", context));
        }
        RotateKeyRequest rotateKeyRequest = message.rotate_key_request;
        if (rotateKeyRequest != null) {
            RotateKeyRequestExt.INSTANCE.addRotateKeyRequest(builder, rotateKeyRequest, WirecrpcTypeGenExtKt.wrapWith("rotate_key_request", context));
        }
        return builder;
    }
}
