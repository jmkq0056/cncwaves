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

/* JADX INFO: compiled from: DeployHardwareType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B?\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ@\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/common/DeployHardwareType;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/DeployHardwareType$Builder;", "verifone_hardware", "Lcom/stripe/proto/model/common/VerifoneHardware;", "bbpos_hardware", "Lcom/stripe/proto/model/common/BBPosHardware;", "sunmi_hardware", "Lcom/stripe/proto/model/common/SunmiHardware;", "morph_hardware", "Lcom/stripe/proto/model/common/MorphHardware;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/SunmiHardware;Lcom/stripe/proto/model/common/MorphHardware;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeployHardwareType extends Message<DeployHardwareType, Builder> {
    public static final ProtoAdapter<DeployHardwareType> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.BBPosHardware#ADAPTER", jsonName = "bbposHardware", oneofName = "hardware_type", schemaIndex = 1, tag = 2)
    public final BBPosHardware bbpos_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.MorphHardware#ADAPTER", jsonName = "morphHardware", oneofName = "hardware_type", schemaIndex = 3, tag = 4)
    public final MorphHardware morph_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.SunmiHardware#ADAPTER", jsonName = "sunmiHardware", oneofName = "hardware_type", schemaIndex = 2, tag = 3)
    public final SunmiHardware sunmi_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.VerifoneHardware#ADAPTER", jsonName = "verifoneHardware", oneofName = "hardware_type", schemaIndex = 0, tag = 1)
    public final VerifoneHardware verifone_hardware;

    public DeployHardwareType() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ DeployHardwareType(VerifoneHardware verifoneHardware, BBPosHardware bBPosHardware, SunmiHardware sunmiHardware, MorphHardware morphHardware, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : verifoneHardware, (i & 2) != 0 ? null : bBPosHardware, (i & 4) != 0 ? null : sunmiHardware, (i & 8) != 0 ? null : morphHardware, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeployHardwareType(VerifoneHardware verifoneHardware, BBPosHardware bBPosHardware, SunmiHardware sunmiHardware, MorphHardware morphHardware, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.verifone_hardware = verifoneHardware;
        this.bbpos_hardware = bBPosHardware;
        this.sunmi_hardware = sunmiHardware;
        this.morph_hardware = morphHardware;
        if (Internal.countNonNull(verifoneHardware, bBPosHardware, sunmiHardware, morphHardware, new Object[0]) > 1) {
            throw new IllegalArgumentException("At most one of verifone_hardware, bbpos_hardware, sunmi_hardware, morph_hardware may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.verifone_hardware = this.verifone_hardware;
        builder.bbpos_hardware = this.bbpos_hardware;
        builder.sunmi_hardware = this.sunmi_hardware;
        builder.morph_hardware = this.morph_hardware;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeployHardwareType)) {
            return false;
        }
        DeployHardwareType deployHardwareType = (DeployHardwareType) other;
        return Intrinsics.areEqual(unknownFields(), deployHardwareType.unknownFields()) && this.verifone_hardware == deployHardwareType.verifone_hardware && this.bbpos_hardware == deployHardwareType.bbpos_hardware && this.sunmi_hardware == deployHardwareType.sunmi_hardware && this.morph_hardware == deployHardwareType.morph_hardware;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        VerifoneHardware verifoneHardware = this.verifone_hardware;
        int iHashCode2 = (iHashCode + (verifoneHardware != null ? verifoneHardware.hashCode() : 0)) * 37;
        BBPosHardware bBPosHardware = this.bbpos_hardware;
        int iHashCode3 = (iHashCode2 + (bBPosHardware != null ? bBPosHardware.hashCode() : 0)) * 37;
        SunmiHardware sunmiHardware = this.sunmi_hardware;
        int iHashCode4 = (iHashCode3 + (sunmiHardware != null ? sunmiHardware.hashCode() : 0)) * 37;
        MorphHardware morphHardware = this.morph_hardware;
        int iHashCode5 = iHashCode4 + (morphHardware != null ? morphHardware.hashCode() : 0);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.verifone_hardware != null) {
            arrayList.add("verifone_hardware=" + this.verifone_hardware);
        }
        if (this.bbpos_hardware != null) {
            arrayList.add("bbpos_hardware=" + this.bbpos_hardware);
        }
        if (this.sunmi_hardware != null) {
            arrayList.add("sunmi_hardware=" + this.sunmi_hardware);
        }
        if (this.morph_hardware != null) {
            arrayList.add("morph_hardware=" + this.morph_hardware);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeployHardwareType{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeployHardwareType copy$default(DeployHardwareType deployHardwareType, VerifoneHardware verifoneHardware, BBPosHardware bBPosHardware, SunmiHardware sunmiHardware, MorphHardware morphHardware, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            verifoneHardware = deployHardwareType.verifone_hardware;
        }
        if ((i & 2) != 0) {
            bBPosHardware = deployHardwareType.bbpos_hardware;
        }
        if ((i & 4) != 0) {
            sunmiHardware = deployHardwareType.sunmi_hardware;
        }
        if ((i & 8) != 0) {
            morphHardware = deployHardwareType.morph_hardware;
        }
        if ((i & 16) != 0) {
            byteString = deployHardwareType.unknownFields();
        }
        ByteString byteString2 = byteString;
        SunmiHardware sunmiHardware2 = sunmiHardware;
        return deployHardwareType.copy(verifoneHardware, bBPosHardware, sunmiHardware2, morphHardware, byteString2);
    }

    public final DeployHardwareType copy(VerifoneHardware verifone_hardware, BBPosHardware bbpos_hardware, SunmiHardware sunmi_hardware, MorphHardware morph_hardware, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeployHardwareType(verifone_hardware, bbpos_hardware, sunmi_hardware, morph_hardware, unknownFields);
    }

    /* JADX INFO: compiled from: DeployHardwareType.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/common/DeployHardwareType$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/DeployHardwareType;", "()V", "bbpos_hardware", "Lcom/stripe/proto/model/common/BBPosHardware;", "morph_hardware", "Lcom/stripe/proto/model/common/MorphHardware;", "sunmi_hardware", "Lcom/stripe/proto/model/common/SunmiHardware;", "verifone_hardware", "Lcom/stripe/proto/model/common/VerifoneHardware;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeployHardwareType, Builder> {
        public BBPosHardware bbpos_hardware;
        public MorphHardware morph_hardware;
        public SunmiHardware sunmi_hardware;
        public VerifoneHardware verifone_hardware;

        public final Builder verifone_hardware(VerifoneHardware verifone_hardware) {
            this.verifone_hardware = verifone_hardware;
            this.bbpos_hardware = null;
            this.sunmi_hardware = null;
            this.morph_hardware = null;
            return this;
        }

        public final Builder bbpos_hardware(BBPosHardware bbpos_hardware) {
            this.bbpos_hardware = bbpos_hardware;
            this.verifone_hardware = null;
            this.sunmi_hardware = null;
            this.morph_hardware = null;
            return this;
        }

        public final Builder sunmi_hardware(SunmiHardware sunmi_hardware) {
            this.sunmi_hardware = sunmi_hardware;
            this.verifone_hardware = null;
            this.bbpos_hardware = null;
            this.morph_hardware = null;
            return this;
        }

        public final Builder morph_hardware(MorphHardware morph_hardware) {
            this.morph_hardware = morph_hardware;
            this.verifone_hardware = null;
            this.bbpos_hardware = null;
            this.sunmi_hardware = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeployHardwareType build() {
            return new DeployHardwareType(this.verifone_hardware, this.bbpos_hardware, this.sunmi_hardware, this.morph_hardware, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeployHardwareType.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/DeployHardwareType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/DeployHardwareType;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/DeployHardwareType$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeployHardwareType build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeployHardwareType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeployHardwareType>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.DeployHardwareType$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeployHardwareType value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + VerifoneHardware.ADAPTER.encodedSizeWithTag(1, value.verifone_hardware) + BBPosHardware.ADAPTER.encodedSizeWithTag(2, value.bbpos_hardware) + SunmiHardware.ADAPTER.encodedSizeWithTag(3, value.sunmi_hardware) + MorphHardware.ADAPTER.encodedSizeWithTag(4, value.morph_hardware);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeployHardwareType value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                VerifoneHardware.ADAPTER.encodeWithTag(writer, 1, value.verifone_hardware);
                BBPosHardware.ADAPTER.encodeWithTag(writer, 2, value.bbpos_hardware);
                SunmiHardware.ADAPTER.encodeWithTag(writer, 3, value.sunmi_hardware);
                MorphHardware.ADAPTER.encodeWithTag(writer, 4, value.morph_hardware);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeployHardwareType value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                MorphHardware.ADAPTER.encodeWithTag(writer, 4, value.morph_hardware);
                SunmiHardware.ADAPTER.encodeWithTag(writer, 3, value.sunmi_hardware);
                BBPosHardware.ADAPTER.encodeWithTag(writer, 2, value.bbpos_hardware);
                VerifoneHardware.ADAPTER.encodeWithTag(writer, 1, value.verifone_hardware);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeployHardwareType redact(DeployHardwareType value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return DeployHardwareType.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeployHardwareType decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                VerifoneHardware verifoneHardwareDecode = null;
                BBPosHardware bBPosHardwareDecode = null;
                SunmiHardware sunmiHardwareDecode = null;
                MorphHardware morphHardwareDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DeployHardwareType(verifoneHardwareDecode, bBPosHardwareDecode, sunmiHardwareDecode, morphHardwareDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            verifoneHardwareDecode = VerifoneHardware.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        try {
                            bBPosHardwareDecode = BBPosHardware.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                        }
                    } else if (iNextTag == 3) {
                        try {
                            sunmiHardwareDecode = SunmiHardware.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e3) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e3.value));
                        }
                    } else if (iNextTag == 4) {
                        try {
                            morphHardwareDecode = MorphHardware.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e4) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e4.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
