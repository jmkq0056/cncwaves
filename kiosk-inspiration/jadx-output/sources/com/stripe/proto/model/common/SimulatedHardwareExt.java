package com.stripe.proto.model.common;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: SimulatedHardwareExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/SimulatedHardwareExt;", "", "()V", "addSimulatedHardware", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/common/SimulatedHardware;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SimulatedHardwareExt {
    public static final SimulatedHardwareExt INSTANCE = new SimulatedHardwareExt();

    private SimulatedHardwareExt() {
    }

    public final HttpUrl.Builder addSimulatedHardware(HttpUrl.Builder builder, SimulatedHardware message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        VerifoneHardware verifoneHardware = message.verifone_hardware;
        if (verifoneHardware != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("verifone_hardware", context), verifoneHardware.name());
        }
        BBPosHardware bBPosHardware = message.bbpos_hardware;
        if (bBPosHardware != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("bbpos_hardware", context), bBPosHardware.name());
        }
        COTSHardware cOTSHardware = message.cots_hardware;
        if (cOTSHardware != null) {
            COTSHardwareExt.INSTANCE.addCOTSHardware(builder, cOTSHardware, WirecrpcTypeGenExtKt.wrapWith("cots_hardware", context));
        }
        return builder;
    }

    public final FormBody.Builder addSimulatedHardware(FormBody.Builder builder, SimulatedHardware message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        VerifoneHardware verifoneHardware = message.verifone_hardware;
        if (verifoneHardware != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("verifone_hardware", context), verifoneHardware.name());
        }
        BBPosHardware bBPosHardware = message.bbpos_hardware;
        if (bBPosHardware != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("bbpos_hardware", context), bBPosHardware.name());
        }
        COTSHardware cOTSHardware = message.cots_hardware;
        if (cOTSHardware != null) {
            COTSHardwareExt.INSTANCE.addCOTSHardware(builder, cOTSHardware, WirecrpcTypeGenExtKt.wrapWith("cots_hardware", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addSimulatedHardware(MultipartBody.Builder builder, SimulatedHardware message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        VerifoneHardware verifoneHardware = message.verifone_hardware;
        if (verifoneHardware != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("verifone_hardware", context), verifoneHardware.name());
        }
        BBPosHardware bBPosHardware = message.bbpos_hardware;
        if (bBPosHardware != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("bbpos_hardware", context), bBPosHardware.name());
        }
        COTSHardware cOTSHardware = message.cots_hardware;
        if (cOTSHardware != null) {
            COTSHardwareExt.INSTANCE.addCOTSHardware(builder, cOTSHardware, WirecrpcTypeGenExtKt.wrapWith("cots_hardware", context));
        }
        return builder;
    }
}
