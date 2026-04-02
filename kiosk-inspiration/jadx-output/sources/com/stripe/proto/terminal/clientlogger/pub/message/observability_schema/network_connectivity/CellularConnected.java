package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: CellularConnected.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B-\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ.\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnected;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnected$Builder;", "signal_strength", "", "num_signal_strength_levels", "is_roaming", "", "unknownFields", "Lokio/ByteString;", "(IIZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CellularConnected extends Message<CellularConnected, Builder> {
    public static final ProtoAdapter<CellularConnected> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "isRoaming", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final boolean is_roaming;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "numSignalStrengthLevels", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int num_signal_strength_levels;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "signalStrength", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final int signal_strength;

    public CellularConnected() {
        this(0, 0, false, null, 15, null);
    }

    public /* synthetic */ CellularConnected(int i, int i2, boolean z, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 0 : i2, (i3 & 4) != 0 ? false : z, (i3 & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellularConnected(int i, int i2, boolean z, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.signal_strength = i;
        this.num_signal_strength_levels = i2;
        this.is_roaming = z;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.signal_strength = this.signal_strength;
        builder.num_signal_strength_levels = this.num_signal_strength_levels;
        builder.is_roaming = this.is_roaming;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CellularConnected)) {
            return false;
        }
        CellularConnected cellularConnected = (CellularConnected) other;
        return Intrinsics.areEqual(unknownFields(), cellularConnected.unknownFields()) && this.signal_strength == cellularConnected.signal_strength && this.num_signal_strength_levels == cellularConnected.num_signal_strength_levels && this.is_roaming == cellularConnected.is_roaming;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((unknownFields().hashCode() * 37) + Integer.hashCode(this.signal_strength)) * 37) + Integer.hashCode(this.num_signal_strength_levels)) * 37) + Boolean.hashCode(this.is_roaming);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("signal_strength=" + this.signal_strength);
        arrayList2.add("num_signal_strength_levels=" + this.num_signal_strength_levels);
        arrayList2.add("is_roaming=" + this.is_roaming);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CellularConnected{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CellularConnected copy$default(CellularConnected cellularConnected, int i, int i2, boolean z, ByteString byteString, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = cellularConnected.signal_strength;
        }
        if ((i3 & 2) != 0) {
            i2 = cellularConnected.num_signal_strength_levels;
        }
        if ((i3 & 4) != 0) {
            z = cellularConnected.is_roaming;
        }
        if ((i3 & 8) != 0) {
            byteString = cellularConnected.unknownFields();
        }
        return cellularConnected.copy(i, i2, z, byteString);
    }

    public final CellularConnected copy(int signal_strength, int num_signal_strength_levels, boolean is_roaming, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CellularConnected(signal_strength, num_signal_strength_levels, is_roaming, unknownFields);
    }

    /* JADX INFO: compiled from: CellularConnected.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnected$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnected;", "()V", "is_roaming", "", "num_signal_strength_levels", "", "signal_strength", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CellularConnected, Builder> {
        public boolean is_roaming;
        public int num_signal_strength_levels;
        public int signal_strength;

        public final Builder signal_strength(int signal_strength) {
            this.signal_strength = signal_strength;
            return this;
        }

        public final Builder num_signal_strength_levels(int num_signal_strength_levels) {
            this.num_signal_strength_levels = num_signal_strength_levels;
            return this;
        }

        public final Builder is_roaming(boolean is_roaming) {
            this.is_roaming = is_roaming;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CellularConnected build() {
            return new CellularConnected(this.signal_strength, this.num_signal_strength_levels, this.is_roaming, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CellularConnected.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnected$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnected;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnected$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CellularConnected build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CellularConnected.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CellularConnected>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.CellularConnected$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CellularConnected value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.signal_strength != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(1, Integer.valueOf(value.signal_strength));
                }
                if (value.num_signal_strength_levels != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.num_signal_strength_levels));
                }
                return value.is_roaming ? size + ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.is_roaming)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CellularConnected value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.signal_strength != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.signal_strength));
                }
                if (value.num_signal_strength_levels != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.num_signal_strength_levels));
                }
                if (value.is_roaming) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.is_roaming));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CellularConnected value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.is_roaming) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.is_roaming));
                }
                if (value.num_signal_strength_levels != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.num_signal_strength_levels));
                }
                if (value.signal_strength != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 1, Integer.valueOf(value.signal_strength));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CellularConnected redact(CellularConnected value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CellularConnected.copy$default(value, 0, 0, false, ByteString.EMPTY, 7, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CellularConnected decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                int iIntValue = 0;
                int iIntValue2 = 0;
                boolean zBooleanValue = false;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CellularConnected(iIntValue, iIntValue2, zBooleanValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 2) {
                        iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 3) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
