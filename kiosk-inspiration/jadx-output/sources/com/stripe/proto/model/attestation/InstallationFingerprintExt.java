package com.stripe.proto.model.attestation;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: InstallationFingerprintExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/attestation/InstallationFingerprintExt;", "", "()V", "addInstallationFingerprint", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/attestation/InstallationFingerprint;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InstallationFingerprintExt {
    public static final InstallationFingerprintExt INSTANCE = new InstallationFingerprintExt();

    private InstallationFingerprintExt() {
    }

    public final HttpUrl.Builder addInstallationFingerprint(HttpUrl.Builder builder, InstallationFingerprint message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("installation_uuid", context), message.installation_uuid.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("package_name", context), message.package_name.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("package_version", context), message.package_version.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("package_signature", context), message.package_signature.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("sdk_version", context), message.sdk_version.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("sdk_signature", context), message.sdk_signature.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("device_manufacturer", context), message.device_manufacturer.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("device_model", context), message.device_model.toString());
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("android_api_level", context), String.valueOf(message.android_api_level));
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("android_patch_level", context), message.android_patch_level.toString());
        return builder;
    }

    public final FormBody.Builder addInstallationFingerprint(FormBody.Builder builder, InstallationFingerprint message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.add(WirecrpcTypeGenExtKt.wrapWith("installation_uuid", context), message.installation_uuid.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("package_name", context), message.package_name.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("package_version", context), message.package_version.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("package_signature", context), message.package_signature.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("sdk_version", context), message.sdk_version.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("sdk_signature", context), message.sdk_signature.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("device_manufacturer", context), message.device_manufacturer.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("device_model", context), message.device_model.toString());
        builder.add(WirecrpcTypeGenExtKt.wrapWith("android_api_level", context), String.valueOf(message.android_api_level));
        builder.add(WirecrpcTypeGenExtKt.wrapWith("android_patch_level", context), message.android_patch_level.toString());
        return builder;
    }

    public final MultipartBody.Builder addInstallationFingerprint(MultipartBody.Builder builder, InstallationFingerprint message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("installation_uuid", context), message.installation_uuid.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("package_name", context), message.package_name.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("package_version", context), message.package_version.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("package_signature", context), message.package_signature.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("sdk_version", context), message.sdk_version.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("sdk_signature", context), message.sdk_signature.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("device_manufacturer", context), message.device_manufacturer.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("device_model", context), message.device_model.toString());
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("android_api_level", context), String.valueOf(message.android_api_level));
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("android_patch_level", context), message.android_patch_level.toString());
        return builder;
    }
}
