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

/* JADX INFO: compiled from: SimulatedHardware.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/common/SimulatedHardware;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/SimulatedHardware$Builder;", "verifone_hardware", "Lcom/stripe/proto/model/common/VerifoneHardware;", "bbpos_hardware", "Lcom/stripe/proto/model/common/BBPosHardware;", "cots_hardware", "Lcom/stripe/proto/model/common/COTSHardware;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/VerifoneHardware;Lcom/stripe/proto/model/common/BBPosHardware;Lcom/stripe/proto/model/common/COTSHardware;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SimulatedHardware extends Message<SimulatedHardware, Builder> {
    public static final ProtoAdapter<SimulatedHardware> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.BBPosHardware#ADAPTER", jsonName = "bbposHardware", oneofName = "device_type", schemaIndex = 1, tag = 2)
    public final BBPosHardware bbpos_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.COTSHardware#ADAPTER", jsonName = "cotsHardware", oneofName = "device_type", schemaIndex = 2, tag = 3)
    public final COTSHardware cots_hardware;

    @WireField(adapter = "com.stripe.proto.model.common.VerifoneHardware#ADAPTER", jsonName = "verifoneHardware", oneofName = "device_type", schemaIndex = 0, tag = 1)
    public final VerifoneHardware verifone_hardware;

    public SimulatedHardware() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ SimulatedHardware(VerifoneHardware verifoneHardware, BBPosHardware bBPosHardware, COTSHardware cOTSHardware, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : verifoneHardware, (i & 2) != 0 ? null : bBPosHardware, (i & 4) != 0 ? null : cOTSHardware, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimulatedHardware(VerifoneHardware verifoneHardware, BBPosHardware bBPosHardware, COTSHardware cOTSHardware, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.verifone_hardware = verifoneHardware;
        this.bbpos_hardware = bBPosHardware;
        this.cots_hardware = cOTSHardware;
        if (Internal.countNonNull(verifoneHardware, bBPosHardware, cOTSHardware) > 1) {
            throw new IllegalArgumentException("At most one of verifone_hardware, bbpos_hardware, cots_hardware may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.verifone_hardware = this.verifone_hardware;
        builder.bbpos_hardware = this.bbpos_hardware;
        builder.cots_hardware = this.cots_hardware;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SimulatedHardware)) {
            return false;
        }
        SimulatedHardware simulatedHardware = (SimulatedHardware) other;
        return Intrinsics.areEqual(unknownFields(), simulatedHardware.unknownFields()) && this.verifone_hardware == simulatedHardware.verifone_hardware && this.bbpos_hardware == simulatedHardware.bbpos_hardware && Intrinsics.areEqual(this.cots_hardware, simulatedHardware.cots_hardware);
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
        COTSHardware cOTSHardware = this.cots_hardware;
        int iHashCode4 = iHashCode3 + (cOTSHardware != null ? cOTSHardware.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
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
        if (this.cots_hardware != null) {
            arrayList.add("cots_hardware=" + this.cots_hardware);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "SimulatedHardware{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SimulatedHardware copy$default(SimulatedHardware simulatedHardware, VerifoneHardware verifoneHardware, BBPosHardware bBPosHardware, COTSHardware cOTSHardware, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            verifoneHardware = simulatedHardware.verifone_hardware;
        }
        if ((i & 2) != 0) {
            bBPosHardware = simulatedHardware.bbpos_hardware;
        }
        if ((i & 4) != 0) {
            cOTSHardware = simulatedHardware.cots_hardware;
        }
        if ((i & 8) != 0) {
            byteString = simulatedHardware.unknownFields();
        }
        return simulatedHardware.copy(verifoneHardware, bBPosHardware, cOTSHardware, byteString);
    }

    public final SimulatedHardware copy(VerifoneHardware verifone_hardware, BBPosHardware bbpos_hardware, COTSHardware cots_hardware, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SimulatedHardware(verifone_hardware, bbpos_hardware, cots_hardware, unknownFields);
    }

    /* JADX INFO: compiled from: SimulatedHardware.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/SimulatedHardware$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/SimulatedHardware;", "()V", "bbpos_hardware", "Lcom/stripe/proto/model/common/BBPosHardware;", "cots_hardware", "Lcom/stripe/proto/model/common/COTSHardware;", "verifone_hardware", "Lcom/stripe/proto/model/common/VerifoneHardware;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SimulatedHardware, Builder> {
        public BBPosHardware bbpos_hardware;
        public COTSHardware cots_hardware;
        public VerifoneHardware verifone_hardware;

        public final Builder verifone_hardware(VerifoneHardware verifone_hardware) {
            this.verifone_hardware = verifone_hardware;
            this.bbpos_hardware = null;
            this.cots_hardware = null;
            return this;
        }

        public final Builder bbpos_hardware(BBPosHardware bbpos_hardware) {
            this.bbpos_hardware = bbpos_hardware;
            this.verifone_hardware = null;
            this.cots_hardware = null;
            return this;
        }

        public final Builder cots_hardware(COTSHardware cots_hardware) {
            this.cots_hardware = cots_hardware;
            this.verifone_hardware = null;
            this.bbpos_hardware = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SimulatedHardware build() {
            return new SimulatedHardware(this.verifone_hardware, this.bbpos_hardware, this.cots_hardware, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SimulatedHardware.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/SimulatedHardware$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/SimulatedHardware;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/SimulatedHardware$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SimulatedHardware build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SimulatedHardware.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SimulatedHardware>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.SimulatedHardware$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SimulatedHardware value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + VerifoneHardware.ADAPTER.encodedSizeWithTag(1, value.verifone_hardware) + BBPosHardware.ADAPTER.encodedSizeWithTag(2, value.bbpos_hardware) + COTSHardware.ADAPTER.encodedSizeWithTag(3, value.cots_hardware);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SimulatedHardware value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                VerifoneHardware.ADAPTER.encodeWithTag(writer, 1, value.verifone_hardware);
                BBPosHardware.ADAPTER.encodeWithTag(writer, 2, value.bbpos_hardware);
                COTSHardware.ADAPTER.encodeWithTag(writer, 3, value.cots_hardware);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SimulatedHardware value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                COTSHardware.ADAPTER.encodeWithTag(writer, 3, value.cots_hardware);
                BBPosHardware.ADAPTER.encodeWithTag(writer, 2, value.bbpos_hardware);
                VerifoneHardware.ADAPTER.encodeWithTag(writer, 1, value.verifone_hardware);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SimulatedHardware redact(SimulatedHardware value) {
                Intrinsics.checkNotNullParameter(value, "value");
                COTSHardware cOTSHardware = value.cots_hardware;
                return SimulatedHardware.copy$default(value, null, null, cOTSHardware != null ? COTSHardware.ADAPTER.redact(cOTSHardware) : null, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SimulatedHardware decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                VerifoneHardware verifoneHardwareDecode = null;
                BBPosHardware bBPosHardwareDecode = null;
                COTSHardware cOTSHardwareDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new SimulatedHardware(verifoneHardwareDecode, bBPosHardwareDecode, cOTSHardwareDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
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
                        cOTSHardwareDecode = COTSHardware.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
