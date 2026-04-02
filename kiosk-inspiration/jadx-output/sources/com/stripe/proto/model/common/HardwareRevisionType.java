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
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: HardwareRevisionType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\r¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/model/common/HardwareRevisionType;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;", "chipper2x_revision", "Lcom/stripe/proto/model/common/Chipper2XRevision;", "chipper1x_revision", "Lcom/stripe/proto/model/common/Chipper1XRevision;", "wisecube_revision", "Lcom/stripe/proto/model/common/WiseCubeRevision;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/Chipper2XRevision;Lcom/stripe/proto/model/common/Chipper1XRevision;Lcom/stripe/proto/model/common/WiseCubeRevision;Lokio/ByteString;)V", "getWisecube_revision$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HardwareRevisionType extends Message<HardwareRevisionType, Builder> {
    public static final ProtoAdapter<HardwareRevisionType> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.Chipper1XRevision#ADAPTER", jsonName = "chipper1xRevision", oneofName = "hardware_revision", schemaIndex = 1, tag = 2)
    public final Chipper1XRevision chipper1x_revision;

    @WireField(adapter = "com.stripe.proto.model.common.Chipper2XRevision#ADAPTER", jsonName = "chipper2xRevision", oneofName = "hardware_revision", schemaIndex = 0, tag = 1)
    public final Chipper2XRevision chipper2x_revision;

    @WireField(adapter = "com.stripe.proto.model.common.WiseCubeRevision#ADAPTER", jsonName = "wisecubeRevision", oneofName = "hardware_revision", schemaIndex = 2, tag = 3)
    public final WiseCubeRevision wisecube_revision;

    public HardwareRevisionType() {
        this(null, null, null, null, 15, null);
    }

    @Deprecated(message = "wisecube_revision is deprecated")
    public static /* synthetic */ void getWisecube_revision$annotations() {
    }

    public /* synthetic */ HardwareRevisionType(Chipper2XRevision chipper2XRevision, Chipper1XRevision chipper1XRevision, WiseCubeRevision wiseCubeRevision, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : chipper2XRevision, (i & 2) != 0 ? null : chipper1XRevision, (i & 4) != 0 ? null : wiseCubeRevision, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HardwareRevisionType(Chipper2XRevision chipper2XRevision, Chipper1XRevision chipper1XRevision, WiseCubeRevision wiseCubeRevision, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.chipper2x_revision = chipper2XRevision;
        this.chipper1x_revision = chipper1XRevision;
        this.wisecube_revision = wiseCubeRevision;
        if (Internal.countNonNull(chipper2XRevision, chipper1XRevision, wiseCubeRevision) > 1) {
            throw new IllegalArgumentException("At most one of chipper2x_revision, chipper1x_revision, wisecube_revision may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.chipper2x_revision = this.chipper2x_revision;
        builder.chipper1x_revision = this.chipper1x_revision;
        builder.wisecube_revision = this.wisecube_revision;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof HardwareRevisionType)) {
            return false;
        }
        HardwareRevisionType hardwareRevisionType = (HardwareRevisionType) other;
        return Intrinsics.areEqual(unknownFields(), hardwareRevisionType.unknownFields()) && this.chipper2x_revision == hardwareRevisionType.chipper2x_revision && this.chipper1x_revision == hardwareRevisionType.chipper1x_revision && this.wisecube_revision == hardwareRevisionType.wisecube_revision;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Chipper2XRevision chipper2XRevision = this.chipper2x_revision;
        int iHashCode2 = (iHashCode + (chipper2XRevision != null ? chipper2XRevision.hashCode() : 0)) * 37;
        Chipper1XRevision chipper1XRevision = this.chipper1x_revision;
        int iHashCode3 = (iHashCode2 + (chipper1XRevision != null ? chipper1XRevision.hashCode() : 0)) * 37;
        WiseCubeRevision wiseCubeRevision = this.wisecube_revision;
        int iHashCode4 = iHashCode3 + (wiseCubeRevision != null ? wiseCubeRevision.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.chipper2x_revision != null) {
            arrayList.add("chipper2x_revision=" + this.chipper2x_revision);
        }
        if (this.chipper1x_revision != null) {
            arrayList.add("chipper1x_revision=" + this.chipper1x_revision);
        }
        if (this.wisecube_revision != null) {
            arrayList.add("wisecube_revision=" + this.wisecube_revision);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "HardwareRevisionType{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ HardwareRevisionType copy$default(HardwareRevisionType hardwareRevisionType, Chipper2XRevision chipper2XRevision, Chipper1XRevision chipper1XRevision, WiseCubeRevision wiseCubeRevision, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            chipper2XRevision = hardwareRevisionType.chipper2x_revision;
        }
        if ((i & 2) != 0) {
            chipper1XRevision = hardwareRevisionType.chipper1x_revision;
        }
        if ((i & 4) != 0) {
            wiseCubeRevision = hardwareRevisionType.wisecube_revision;
        }
        if ((i & 8) != 0) {
            byteString = hardwareRevisionType.unknownFields();
        }
        return hardwareRevisionType.copy(chipper2XRevision, chipper1XRevision, wiseCubeRevision, byteString);
    }

    public final HardwareRevisionType copy(Chipper2XRevision chipper2x_revision, Chipper1XRevision chipper1x_revision, WiseCubeRevision wisecube_revision, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new HardwareRevisionType(chipper2x_revision, chipper1x_revision, wisecube_revision, unknownFields);
    }

    /* JADX INFO: compiled from: HardwareRevisionType.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0012\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/HardwareRevisionType;", "()V", "chipper1x_revision", "Lcom/stripe/proto/model/common/Chipper1XRevision;", "chipper2x_revision", "Lcom/stripe/proto/model/common/Chipper2XRevision;", "wisecube_revision", "Lcom/stripe/proto/model/common/WiseCubeRevision;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<HardwareRevisionType, Builder> {
        public Chipper1XRevision chipper1x_revision;
        public Chipper2XRevision chipper2x_revision;
        public WiseCubeRevision wisecube_revision;

        public final Builder chipper2x_revision(Chipper2XRevision chipper2x_revision) {
            this.chipper2x_revision = chipper2x_revision;
            this.chipper1x_revision = null;
            this.wisecube_revision = null;
            return this;
        }

        public final Builder chipper1x_revision(Chipper1XRevision chipper1x_revision) {
            this.chipper1x_revision = chipper1x_revision;
            this.chipper2x_revision = null;
            this.wisecube_revision = null;
            return this;
        }

        @Deprecated(message = "wisecube_revision is deprecated")
        public final Builder wisecube_revision(WiseCubeRevision wisecube_revision) {
            this.wisecube_revision = wisecube_revision;
            this.chipper2x_revision = null;
            this.chipper1x_revision = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public HardwareRevisionType build() {
            return new HardwareRevisionType(this.chipper2x_revision, this.chipper1x_revision, this.wisecube_revision, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: HardwareRevisionType.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/HardwareRevisionType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/HardwareRevisionType;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/HardwareRevisionType$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ HardwareRevisionType build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(HardwareRevisionType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<HardwareRevisionType>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.HardwareRevisionType$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(HardwareRevisionType value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + Chipper2XRevision.ADAPTER.encodedSizeWithTag(1, value.chipper2x_revision) + Chipper1XRevision.ADAPTER.encodedSizeWithTag(2, value.chipper1x_revision) + WiseCubeRevision.ADAPTER.encodedSizeWithTag(3, value.wisecube_revision);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, HardwareRevisionType value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Chipper2XRevision.ADAPTER.encodeWithTag(writer, 1, value.chipper2x_revision);
                Chipper1XRevision.ADAPTER.encodeWithTag(writer, 2, value.chipper1x_revision);
                WiseCubeRevision.ADAPTER.encodeWithTag(writer, 3, value.wisecube_revision);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, HardwareRevisionType value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                WiseCubeRevision.ADAPTER.encodeWithTag(writer, 3, value.wisecube_revision);
                Chipper1XRevision.ADAPTER.encodeWithTag(writer, 2, value.chipper1x_revision);
                Chipper2XRevision.ADAPTER.encodeWithTag(writer, 1, value.chipper2x_revision);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public HardwareRevisionType redact(HardwareRevisionType value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return HardwareRevisionType.copy$default(value, null, null, null, ByteString.EMPTY, 7, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public HardwareRevisionType decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                Chipper2XRevision chipper2XRevisionDecode = null;
                Chipper1XRevision chipper1XRevisionDecode = null;
                WiseCubeRevision wiseCubeRevisionDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new HardwareRevisionType(chipper2XRevisionDecode, chipper1XRevisionDecode, wiseCubeRevisionDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            chipper2XRevisionDecode = Chipper2XRevision.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        try {
                            chipper1XRevisionDecode = Chipper1XRevision.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                        }
                    } else if (iNextTag == 3) {
                        try {
                            wiseCubeRevisionDecode = WiseCubeRevision.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e3) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e3.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
