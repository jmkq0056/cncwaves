package com.stripe.proto.model.common;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: HardwareModel.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !Bo\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015Jp\u0010\u0016\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u0002H\u0016J\b\u0010\u001e\u001a\u00020\u001fH\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcom/stripe/proto/model/common/HardwareModel;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/HardwareModel$Builder;", "unknown_hardware", "Lcom/stripe/proto/model/common/UnknownHardware;", "verifone_hardware", "Lcom/stripe/proto/model/common/VerifoneHardware;", "pos_info", "Lcom/stripe/proto/model/common/POSInfo;", "bbpos_hardware", "Lcom/stripe/proto/model/common/BBPosHardware;", "simulated_hardware", "Lcom/stripe/proto/model/common/SimulatedHardware;", "cots_hardware", "Lcom/stripe/proto/model/common/COTSHardware;", "sunmi_hardware", "Lcom/stripe/proto/model/common/SunmiHardware;", "morph_hardware", "Lcom/stripe/proto/model/common/MorphHardware;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/UnknownHardware;Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/POSInfo;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SimulatedHardware;Lcom/stripe/proto/model/common/COTSHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HardwareModel extends Message<HardwareModel, Builder> {
    public static final ProtoAdapter<HardwareModel> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.BBPosHardware#ADAPTER", jsonName = "bbposHardware", oneofName = "device_type", schemaIndex = 3, tag = 4)
    public final BBPosHardware bbpos_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.COTSHardware#ADAPTER", jsonName = "cotsHardware", oneofName = "device_type", schemaIndex = 5, tag = 6)
    public final COTSHardware cots_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.MorphHardware#ADAPTER", jsonName = "morphHardware", oneofName = "device_type", schemaIndex = 7, tag = 8)
    public final MorphHardware morph_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.POSInfo#ADAPTER", jsonName = "posInfo", oneofName = "device_type", schemaIndex = 2, tag = 3)
    public final POSInfo pos_info;

    @WireField(adapter = "com.stripe.proto.model.common.SimulatedHardware#ADAPTER", jsonName = "simulatedHardware", oneofName = "device_type", schemaIndex = 4, tag = 5)
    public final SimulatedHardware simulated_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.SunmiHardware#ADAPTER", jsonName = "sunmiHardware", oneofName = "device_type", schemaIndex = 6, tag = 7)
    public final SunmiHardware sunmi_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.UnknownHardware#ADAPTER", jsonName = "unknownHardware", oneofName = "device_type", schemaIndex = 0, tag = 1)
    public final UnknownHardware unknown_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.VerifoneHardware#ADAPTER", jsonName = "verifoneHardware", oneofName = "device_type", schemaIndex = 1, tag = 2)
    public final VerifoneHardware verifone_hardware;

    public HardwareModel() {
        this(null, null, null, null, null, null, null, null, null, 511, null);
    }

    public /* synthetic */ HardwareModel(UnknownHardware unknownHardware, VerifoneHardware verifoneHardware, POSInfo pOSInfo, BBPosHardware bBPosHardware, SimulatedHardware simulatedHardware, COTSHardware cOTSHardware, SunmiHardware sunmiHardware, MorphHardware morphHardware, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : unknownHardware, (i & 2) != 0 ? null : verifoneHardware, (i & 4) != 0 ? null : pOSInfo, (i & 8) != 0 ? null : bBPosHardware, (i & 16) != 0 ? null : simulatedHardware, (i & 32) != 0 ? null : cOTSHardware, (i & 64) != 0 ? null : sunmiHardware, (i & 128) != 0 ? null : morphHardware, (i & 256) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HardwareModel(UnknownHardware unknownHardware, VerifoneHardware verifoneHardware, POSInfo pOSInfo, BBPosHardware bBPosHardware, SimulatedHardware simulatedHardware, COTSHardware cOTSHardware, SunmiHardware sunmiHardware, MorphHardware morphHardware, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.unknown_hardware = unknownHardware;
        this.verifone_hardware = verifoneHardware;
        this.pos_info = pOSInfo;
        this.bbpos_hardware = bBPosHardware;
        this.simulated_hardware = simulatedHardware;
        this.cots_hardware = cOTSHardware;
        this.sunmi_hardware = sunmiHardware;
        this.morph_hardware = morphHardware;
        if (Internal.countNonNull(unknownHardware, verifoneHardware, pOSInfo, bBPosHardware, simulatedHardware, cOTSHardware, sunmiHardware, morphHardware) > 1) {
            throw new IllegalArgumentException("At most one of unknown_hardware, verifone_hardware, pos_info, bbpos_hardware, simulated_hardware, cots_hardware, sunmi_hardware, morph_hardware may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.unknown_hardware = this.unknown_hardware;
        builder.verifone_hardware = this.verifone_hardware;
        builder.pos_info = this.pos_info;
        builder.bbpos_hardware = this.bbpos_hardware;
        builder.simulated_hardware = this.simulated_hardware;
        builder.cots_hardware = this.cots_hardware;
        builder.sunmi_hardware = this.sunmi_hardware;
        builder.morph_hardware = this.morph_hardware;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof HardwareModel)) {
            return false;
        }
        HardwareModel hardwareModel = (HardwareModel) other;
        return Intrinsics.areEqual(unknownFields(), hardwareModel.unknownFields()) && Intrinsics.areEqual(this.unknown_hardware, hardwareModel.unknown_hardware) && this.verifone_hardware == hardwareModel.verifone_hardware && Intrinsics.areEqual(this.pos_info, hardwareModel.pos_info) && this.bbpos_hardware == hardwareModel.bbpos_hardware && Intrinsics.areEqual(this.simulated_hardware, hardwareModel.simulated_hardware) && Intrinsics.areEqual(this.cots_hardware, hardwareModel.cots_hardware) && this.sunmi_hardware == hardwareModel.sunmi_hardware && this.morph_hardware == hardwareModel.morph_hardware;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        UnknownHardware unknownHardware = this.unknown_hardware;
        int iHashCode2 = (iHashCode + (unknownHardware != null ? unknownHardware.hashCode() : 0)) * 37;
        VerifoneHardware verifoneHardware = this.verifone_hardware;
        int iHashCode3 = (iHashCode2 + (verifoneHardware != null ? verifoneHardware.hashCode() : 0)) * 37;
        POSInfo pOSInfo = this.pos_info;
        int iHashCode4 = (iHashCode3 + (pOSInfo != null ? pOSInfo.hashCode() : 0)) * 37;
        BBPosHardware bBPosHardware = this.bbpos_hardware;
        int iHashCode5 = (iHashCode4 + (bBPosHardware != null ? bBPosHardware.hashCode() : 0)) * 37;
        SimulatedHardware simulatedHardware = this.simulated_hardware;
        int iHashCode6 = (iHashCode5 + (simulatedHardware != null ? simulatedHardware.hashCode() : 0)) * 37;
        COTSHardware cOTSHardware = this.cots_hardware;
        int iHashCode7 = (iHashCode6 + (cOTSHardware != null ? cOTSHardware.hashCode() : 0)) * 37;
        SunmiHardware sunmiHardware = this.sunmi_hardware;
        int iHashCode8 = (iHashCode7 + (sunmiHardware != null ? sunmiHardware.hashCode() : 0)) * 37;
        MorphHardware morphHardware = this.morph_hardware;
        int iHashCode9 = iHashCode8 + (morphHardware != null ? morphHardware.hashCode() : 0);
        this.hashCode = iHashCode9;
        return iHashCode9;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.unknown_hardware != null) {
            arrayList.add("unknown_hardware=" + this.unknown_hardware);
        }
        if (this.verifone_hardware != null) {
            arrayList.add("verifone_hardware=" + this.verifone_hardware);
        }
        if (this.pos_info != null) {
            arrayList.add("pos_info=" + this.pos_info);
        }
        if (this.bbpos_hardware != null) {
            arrayList.add("bbpos_hardware=" + this.bbpos_hardware);
        }
        if (this.simulated_hardware != null) {
            arrayList.add("simulated_hardware=" + this.simulated_hardware);
        }
        if (this.cots_hardware != null) {
            arrayList.add("cots_hardware=" + this.cots_hardware);
        }
        if (this.sunmi_hardware != null) {
            arrayList.add("sunmi_hardware=" + this.sunmi_hardware);
        }
        if (this.morph_hardware != null) {
            arrayList.add("morph_hardware=" + this.morph_hardware);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "HardwareModel{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ HardwareModel copy$default(HardwareModel hardwareModel, UnknownHardware unknownHardware, VerifoneHardware verifoneHardware, POSInfo pOSInfo, BBPosHardware bBPosHardware, SimulatedHardware simulatedHardware, COTSHardware cOTSHardware, SunmiHardware sunmiHardware, MorphHardware morphHardware, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            unknownHardware = hardwareModel.unknown_hardware;
        }
        if ((i & 2) != 0) {
            verifoneHardware = hardwareModel.verifone_hardware;
        }
        if ((i & 4) != 0) {
            pOSInfo = hardwareModel.pos_info;
        }
        if ((i & 8) != 0) {
            bBPosHardware = hardwareModel.bbpos_hardware;
        }
        if ((i & 16) != 0) {
            simulatedHardware = hardwareModel.simulated_hardware;
        }
        if ((i & 32) != 0) {
            cOTSHardware = hardwareModel.cots_hardware;
        }
        if ((i & 64) != 0) {
            sunmiHardware = hardwareModel.sunmi_hardware;
        }
        if ((i & 128) != 0) {
            morphHardware = hardwareModel.morph_hardware;
        }
        if ((i & 256) != 0) {
            byteString = hardwareModel.unknownFields();
        }
        MorphHardware morphHardware2 = morphHardware;
        ByteString byteString2 = byteString;
        COTSHardware cOTSHardware2 = cOTSHardware;
        SunmiHardware sunmiHardware2 = sunmiHardware;
        SimulatedHardware simulatedHardware2 = simulatedHardware;
        POSInfo pOSInfo2 = pOSInfo;
        return hardwareModel.copy(unknownHardware, verifoneHardware, pOSInfo2, bBPosHardware, simulatedHardware2, cOTSHardware2, sunmiHardware2, morphHardware2, byteString2);
    }

    public final HardwareModel copy(UnknownHardware unknown_hardware, VerifoneHardware verifone_hardware, POSInfo pos_info, BBPosHardware bbpos_hardware, SimulatedHardware simulated_hardware, COTSHardware cots_hardware, SunmiHardware sunmi_hardware, MorphHardware morph_hardware, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new HardwareModel(unknown_hardware, verifone_hardware, pos_info, bbpos_hardware, simulated_hardware, cots_hardware, sunmi_hardware, morph_hardware, unknownFields);
    }

    /* JADX INFO: compiled from: HardwareModel.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/common/HardwareModel$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/HardwareModel;", "()V", "bbpos_hardware", "Lcom/stripe/proto/model/common/BBPosHardware;", "cots_hardware", "Lcom/stripe/proto/model/common/COTSHardware;", "morph_hardware", "Lcom/stripe/proto/model/common/MorphHardware;", "pos_info", "Lcom/stripe/proto/model/common/POSInfo;", "simulated_hardware", "Lcom/stripe/proto/model/common/SimulatedHardware;", "sunmi_hardware", "Lcom/stripe/proto/model/common/SunmiHardware;", "unknown_hardware", "Lcom/stripe/proto/model/common/UnknownHardware;", "verifone_hardware", "Lcom/stripe/proto/model/common/VerifoneHardware;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<HardwareModel, Builder> {
        public BBPosHardware bbpos_hardware;
        public COTSHardware cots_hardware;
        public MorphHardware morph_hardware;
        public POSInfo pos_info;
        public SimulatedHardware simulated_hardware;
        public SunmiHardware sunmi_hardware;
        public UnknownHardware unknown_hardware;
        public VerifoneHardware verifone_hardware;

        public final Builder unknown_hardware(UnknownHardware unknown_hardware) {
            this.unknown_hardware = unknown_hardware;
            this.verifone_hardware = null;
            this.pos_info = null;
            this.bbpos_hardware = null;
            this.simulated_hardware = null;
            this.cots_hardware = null;
            this.sunmi_hardware = null;
            this.morph_hardware = null;
            return this;
        }

        public final Builder verifone_hardware(VerifoneHardware verifone_hardware) {
            this.verifone_hardware = verifone_hardware;
            this.unknown_hardware = null;
            this.pos_info = null;
            this.bbpos_hardware = null;
            this.simulated_hardware = null;
            this.cots_hardware = null;
            this.sunmi_hardware = null;
            this.morph_hardware = null;
            return this;
        }

        public final Builder pos_info(POSInfo pos_info) {
            this.pos_info = pos_info;
            this.unknown_hardware = null;
            this.verifone_hardware = null;
            this.bbpos_hardware = null;
            this.simulated_hardware = null;
            this.cots_hardware = null;
            this.sunmi_hardware = null;
            this.morph_hardware = null;
            return this;
        }

        public final Builder bbpos_hardware(BBPosHardware bbpos_hardware) {
            this.bbpos_hardware = bbpos_hardware;
            this.unknown_hardware = null;
            this.verifone_hardware = null;
            this.pos_info = null;
            this.simulated_hardware = null;
            this.cots_hardware = null;
            this.sunmi_hardware = null;
            this.morph_hardware = null;
            return this;
        }

        public final Builder simulated_hardware(SimulatedHardware simulated_hardware) {
            this.simulated_hardware = simulated_hardware;
            this.unknown_hardware = null;
            this.verifone_hardware = null;
            this.pos_info = null;
            this.bbpos_hardware = null;
            this.cots_hardware = null;
            this.sunmi_hardware = null;
            this.morph_hardware = null;
            return this;
        }

        public final Builder cots_hardware(COTSHardware cots_hardware) {
            this.cots_hardware = cots_hardware;
            this.unknown_hardware = null;
            this.verifone_hardware = null;
            this.pos_info = null;
            this.bbpos_hardware = null;
            this.simulated_hardware = null;
            this.sunmi_hardware = null;
            this.morph_hardware = null;
            return this;
        }

        public final Builder sunmi_hardware(SunmiHardware sunmi_hardware) {
            this.sunmi_hardware = sunmi_hardware;
            this.unknown_hardware = null;
            this.verifone_hardware = null;
            this.pos_info = null;
            this.bbpos_hardware = null;
            this.simulated_hardware = null;
            this.cots_hardware = null;
            this.morph_hardware = null;
            return this;
        }

        public final Builder morph_hardware(MorphHardware morph_hardware) {
            this.morph_hardware = morph_hardware;
            this.unknown_hardware = null;
            this.verifone_hardware = null;
            this.pos_info = null;
            this.bbpos_hardware = null;
            this.simulated_hardware = null;
            this.cots_hardware = null;
            this.sunmi_hardware = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public HardwareModel build() {
            return new HardwareModel(this.unknown_hardware, this.verifone_hardware, this.pos_info, this.bbpos_hardware, this.simulated_hardware, this.cots_hardware, this.sunmi_hardware, this.morph_hardware, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: HardwareModel.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/HardwareModel$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/HardwareModel;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/HardwareModel$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ HardwareModel build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HardwareModel.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<HardwareModel>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.HardwareModel$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(HardwareModel value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + UnknownHardware.ADAPTER.encodedSizeWithTag(1, value.unknown_hardware) + VerifoneHardware.ADAPTER.encodedSizeWithTag(2, value.verifone_hardware) + POSInfo.ADAPTER.encodedSizeWithTag(3, value.pos_info) + BBPosHardware.ADAPTER.encodedSizeWithTag(4, value.bbpos_hardware) + SimulatedHardware.ADAPTER.encodedSizeWithTag(5, value.simulated_hardware) + COTSHardware.ADAPTER.encodedSizeWithTag(6, value.cots_hardware) + SunmiHardware.ADAPTER.encodedSizeWithTag(7, value.sunmi_hardware) + MorphHardware.ADAPTER.encodedSizeWithTag(8, value.morph_hardware);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, HardwareModel value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                UnknownHardware.ADAPTER.encodeWithTag(writer, 1, value.unknown_hardware);
                VerifoneHardware.ADAPTER.encodeWithTag(writer, 2, value.verifone_hardware);
                POSInfo.ADAPTER.encodeWithTag(writer, 3, value.pos_info);
                BBPosHardware.ADAPTER.encodeWithTag(writer, 4, value.bbpos_hardware);
                SimulatedHardware.ADAPTER.encodeWithTag(writer, 5, value.simulated_hardware);
                COTSHardware.ADAPTER.encodeWithTag(writer, 6, value.cots_hardware);
                SunmiHardware.ADAPTER.encodeWithTag(writer, 7, value.sunmi_hardware);
                MorphHardware.ADAPTER.encodeWithTag(writer, 8, value.morph_hardware);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, HardwareModel value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                MorphHardware.ADAPTER.encodeWithTag(writer, 8, value.morph_hardware);
                SunmiHardware.ADAPTER.encodeWithTag(writer, 7, value.sunmi_hardware);
                COTSHardware.ADAPTER.encodeWithTag(writer, 6, value.cots_hardware);
                SimulatedHardware.ADAPTER.encodeWithTag(writer, 5, value.simulated_hardware);
                BBPosHardware.ADAPTER.encodeWithTag(writer, 4, value.bbpos_hardware);
                POSInfo.ADAPTER.encodeWithTag(writer, 3, value.pos_info);
                VerifoneHardware.ADAPTER.encodeWithTag(writer, 2, value.verifone_hardware);
                UnknownHardware.ADAPTER.encodeWithTag(writer, 1, value.unknown_hardware);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public HardwareModel redact(HardwareModel value) {
                Intrinsics.checkNotNullParameter(value, "value");
                UnknownHardware unknownHardware = value.unknown_hardware;
                UnknownHardware unknownHardwareRedact = unknownHardware != null ? UnknownHardware.ADAPTER.redact(unknownHardware) : null;
                POSInfo pOSInfo = value.pos_info;
                POSInfo pOSInfoRedact = pOSInfo != null ? POSInfo.ADAPTER.redact(pOSInfo) : null;
                SimulatedHardware simulatedHardware = value.simulated_hardware;
                SimulatedHardware simulatedHardwareRedact = simulatedHardware != null ? SimulatedHardware.ADAPTER.redact(simulatedHardware) : null;
                COTSHardware cOTSHardware = value.cots_hardware;
                return HardwareModel.copy$default(value, unknownHardwareRedact, null, pOSInfoRedact, null, simulatedHardwareRedact, cOTSHardware != null ? COTSHardware.ADAPTER.redact(cOTSHardware) : null, null, null, ByteString.EMPTY, 202, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public HardwareModel decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                UnknownHardware unknownHardwareDecode = null;
                VerifoneHardware verifoneHardwareDecode = null;
                POSInfo pOSInfoDecode = null;
                BBPosHardware bBPosHardwareDecode = null;
                SimulatedHardware simulatedHardwareDecode = null;
                COTSHardware cOTSHardwareDecode = null;
                SunmiHardware sunmiHardwareDecode = null;
                MorphHardware morphHardwareDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                unknownHardwareDecode = UnknownHardware.ADAPTER.decode(reader);
                                break;
                            case 2:
                                try {
                                    verifoneHardwareDecode = VerifoneHardware.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                                break;
                            case 3:
                                pOSInfoDecode = POSInfo.ADAPTER.decode(reader);
                                break;
                            case 4:
                                try {
                                    bBPosHardwareDecode = BBPosHardware.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                }
                                break;
                            case 5:
                                simulatedHardwareDecode = SimulatedHardware.ADAPTER.decode(reader);
                                break;
                            case 6:
                                cOTSHardwareDecode = COTSHardware.ADAPTER.decode(reader);
                                break;
                            case 7:
                                try {
                                    sunmiHardwareDecode = SunmiHardware.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e3) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e3.value));
                                }
                                break;
                            case 8:
                                try {
                                    morphHardwareDecode = MorphHardware.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e4) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e4.value));
                                }
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new HardwareModel(unknownHardwareDecode, verifoneHardwareDecode, pOSInfoDecode, bBPosHardwareDecode, simulatedHardwareDecode, cOTSHardwareDecode, sunmiHardwareDecode, morphHardwareDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
