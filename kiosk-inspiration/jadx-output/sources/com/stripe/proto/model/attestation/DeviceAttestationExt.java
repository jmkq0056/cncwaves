package com.stripe.proto.model.attestation;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: DeviceAttestationExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/attestation/DeviceAttestationExt;", "", "()V", "addDeviceAttestation", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/attestation/DeviceAttestation;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceAttestationExt {
    public static final DeviceAttestationExt INSTANCE = new DeviceAttestationExt();

    private DeviceAttestationExt() {
    }

    public final HttpUrl.Builder addDeviceAttestation(HttpUrl.Builder builder, DeviceAttestation message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        LocalAttestation localAttestation = message.local_attestation;
        if (localAttestation != null) {
            LocalAttestationExt.INSTANCE.addLocalAttestation(builder, localAttestation, WirecrpcTypeGenExtKt.wrapWith("local_attestation", context));
        }
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("timestamp", context), String.valueOf(message.timestamp));
        Iterator<T> it = message.dak_certificates.iterator();
        while (it.hasNext()) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("dak_certificates", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        PlayIntegrityAttestation playIntegrityAttestation = message.play_integrity_attestation;
        if (playIntegrityAttestation != null) {
            PlayIntegrityAttestationExt.INSTANCE.addPlayIntegrityAttestation(builder, playIntegrityAttestation, WirecrpcTypeGenExtKt.wrapWith("play_integrity_attestation", context));
        }
        return builder;
    }

    public final FormBody.Builder addDeviceAttestation(FormBody.Builder builder, DeviceAttestation message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        LocalAttestation localAttestation = message.local_attestation;
        if (localAttestation != null) {
            LocalAttestationExt.INSTANCE.addLocalAttestation(builder, localAttestation, WirecrpcTypeGenExtKt.wrapWith("local_attestation", context));
        }
        builder.add(WirecrpcTypeGenExtKt.wrapWith("timestamp", context), String.valueOf(message.timestamp));
        Iterator<T> it = message.dak_certificates.iterator();
        while (it.hasNext()) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("dak_certificates", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        PlayIntegrityAttestation playIntegrityAttestation = message.play_integrity_attestation;
        if (playIntegrityAttestation != null) {
            PlayIntegrityAttestationExt.INSTANCE.addPlayIntegrityAttestation(builder, playIntegrityAttestation, WirecrpcTypeGenExtKt.wrapWith("play_integrity_attestation", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addDeviceAttestation(MultipartBody.Builder builder, DeviceAttestation message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        LocalAttestation localAttestation = message.local_attestation;
        if (localAttestation != null) {
            LocalAttestationExt.INSTANCE.addLocalAttestation(builder, localAttestation, WirecrpcTypeGenExtKt.wrapWith("local_attestation", context));
        }
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("timestamp", context), String.valueOf(message.timestamp));
        Iterator<T> it = message.dak_certificates.iterator();
        while (it.hasNext()) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("dak_certificates", context) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, ((String) it.next()).toString());
        }
        PlayIntegrityAttestation playIntegrityAttestation = message.play_integrity_attestation;
        if (playIntegrityAttestation != null) {
            PlayIntegrityAttestationExt.INSTANCE.addPlayIntegrityAttestation(builder, playIntegrityAttestation, WirecrpcTypeGenExtKt.wrapWith("play_integrity_attestation", context));
        }
        return builder;
    }
}
