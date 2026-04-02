package com.stripe.proto.model.common;

import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: HardwareModelExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/HardwareModelExt;", "", "()V", "addHardwareModel", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/model/common/HardwareModel;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HardwareModelExt {
    public static final HardwareModelExt INSTANCE = new HardwareModelExt();

    private HardwareModelExt() {
    }

    public final HttpUrl.Builder addHardwareModel(HttpUrl.Builder builder, HardwareModel message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UnknownHardware unknownHardware = message.unknown_hardware;
        if (unknownHardware != null) {
            UnknownHardwareExt.INSTANCE.addUnknownHardware(builder, unknownHardware, WirecrpcTypeGenExtKt.wrapWith("unknown_hardware", context));
        }
        VerifoneHardware verifoneHardware = message.verifone_hardware;
        if (verifoneHardware != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("verifone_hardware", context), verifoneHardware.name());
        }
        POSInfo pOSInfo = message.pos_info;
        if (pOSInfo != null) {
            POSInfoExt.INSTANCE.addPOSInfo(builder, pOSInfo, WirecrpcTypeGenExtKt.wrapWith("pos_info", context));
        }
        BBPosHardware bBPosHardware = message.bbpos_hardware;
        if (bBPosHardware != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("bbpos_hardware", context), bBPosHardware.name());
        }
        SimulatedHardware simulatedHardware = message.simulated_hardware;
        if (simulatedHardware != null) {
            SimulatedHardwareExt.INSTANCE.addSimulatedHardware(builder, simulatedHardware, WirecrpcTypeGenExtKt.wrapWith("simulated_hardware", context));
        }
        COTSHardware cOTSHardware = message.cots_hardware;
        if (cOTSHardware != null) {
            COTSHardwareExt.INSTANCE.addCOTSHardware(builder, cOTSHardware, WirecrpcTypeGenExtKt.wrapWith("cots_hardware", context));
        }
        SunmiHardware sunmiHardware = message.sunmi_hardware;
        if (sunmiHardware != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("sunmi_hardware", context), sunmiHardware.name());
        }
        MorphHardware morphHardware = message.morph_hardware;
        if (morphHardware != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("morph_hardware", context), morphHardware.name());
        }
        return builder;
    }

    public final FormBody.Builder addHardwareModel(FormBody.Builder builder, HardwareModel message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UnknownHardware unknownHardware = message.unknown_hardware;
        if (unknownHardware != null) {
            UnknownHardwareExt.INSTANCE.addUnknownHardware(builder, unknownHardware, WirecrpcTypeGenExtKt.wrapWith("unknown_hardware", context));
        }
        VerifoneHardware verifoneHardware = message.verifone_hardware;
        if (verifoneHardware != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("verifone_hardware", context), verifoneHardware.name());
        }
        POSInfo pOSInfo = message.pos_info;
        if (pOSInfo != null) {
            POSInfoExt.INSTANCE.addPOSInfo(builder, pOSInfo, WirecrpcTypeGenExtKt.wrapWith("pos_info", context));
        }
        BBPosHardware bBPosHardware = message.bbpos_hardware;
        if (bBPosHardware != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("bbpos_hardware", context), bBPosHardware.name());
        }
        SimulatedHardware simulatedHardware = message.simulated_hardware;
        if (simulatedHardware != null) {
            SimulatedHardwareExt.INSTANCE.addSimulatedHardware(builder, simulatedHardware, WirecrpcTypeGenExtKt.wrapWith("simulated_hardware", context));
        }
        COTSHardware cOTSHardware = message.cots_hardware;
        if (cOTSHardware != null) {
            COTSHardwareExt.INSTANCE.addCOTSHardware(builder, cOTSHardware, WirecrpcTypeGenExtKt.wrapWith("cots_hardware", context));
        }
        SunmiHardware sunmiHardware = message.sunmi_hardware;
        if (sunmiHardware != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("sunmi_hardware", context), sunmiHardware.name());
        }
        MorphHardware morphHardware = message.morph_hardware;
        if (morphHardware != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("morph_hardware", context), morphHardware.name());
        }
        return builder;
    }

    public final MultipartBody.Builder addHardwareModel(MultipartBody.Builder builder, HardwareModel message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UnknownHardware unknownHardware = message.unknown_hardware;
        if (unknownHardware != null) {
            UnknownHardwareExt.INSTANCE.addUnknownHardware(builder, unknownHardware, WirecrpcTypeGenExtKt.wrapWith("unknown_hardware", context));
        }
        VerifoneHardware verifoneHardware = message.verifone_hardware;
        if (verifoneHardware != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("verifone_hardware", context), verifoneHardware.name());
        }
        POSInfo pOSInfo = message.pos_info;
        if (pOSInfo != null) {
            POSInfoExt.INSTANCE.addPOSInfo(builder, pOSInfo, WirecrpcTypeGenExtKt.wrapWith("pos_info", context));
        }
        BBPosHardware bBPosHardware = message.bbpos_hardware;
        if (bBPosHardware != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("bbpos_hardware", context), bBPosHardware.name());
        }
        SimulatedHardware simulatedHardware = message.simulated_hardware;
        if (simulatedHardware != null) {
            SimulatedHardwareExt.INSTANCE.addSimulatedHardware(builder, simulatedHardware, WirecrpcTypeGenExtKt.wrapWith("simulated_hardware", context));
        }
        COTSHardware cOTSHardware = message.cots_hardware;
        if (cOTSHardware != null) {
            COTSHardwareExt.INSTANCE.addCOTSHardware(builder, cOTSHardware, WirecrpcTypeGenExtKt.wrapWith("cots_hardware", context));
        }
        SunmiHardware sunmiHardware = message.sunmi_hardware;
        if (sunmiHardware != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("sunmi_hardware", context), sunmiHardware.name());
        }
        MorphHardware morphHardware = message.morph_hardware;
        if (morphHardware != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("morph_hardware", context), morphHardware.name());
        }
        return builder;
    }
}
