package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity;

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

/* JADX INFO: compiled from: CellularConnection.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnection;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnection$Builder;", "connected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnected;", "disconnected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularDisconnected;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnected;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularDisconnected;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CellularConnection extends Message<CellularConnection, Builder> {
    public static final ProtoAdapter<CellularConnection> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.CellularConnected#ADAPTER", oneofName = "cellular_connection", schemaIndex = 0, tag = 1)
    public final CellularConnected connected;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.CellularDisconnected#ADAPTER", oneofName = "cellular_connection", schemaIndex = 1, tag = 2)
    public final CellularDisconnected disconnected;

    public CellularConnection() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ CellularConnection(CellularConnected cellularConnected, CellularDisconnected cellularDisconnected, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : cellularConnected, (i & 2) != 0 ? null : cellularDisconnected, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellularConnection(CellularConnected cellularConnected, CellularDisconnected cellularDisconnected, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.connected = cellularConnected;
        this.disconnected = cellularDisconnected;
        if (Internal.countNonNull(cellularConnected, cellularDisconnected) > 1) {
            throw new IllegalArgumentException("At most one of connected, disconnected may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.connected = this.connected;
        builder.disconnected = this.disconnected;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CellularConnection)) {
            return false;
        }
        CellularConnection cellularConnection = (CellularConnection) other;
        return Intrinsics.areEqual(unknownFields(), cellularConnection.unknownFields()) && Intrinsics.areEqual(this.connected, cellularConnection.connected) && Intrinsics.areEqual(this.disconnected, cellularConnection.disconnected);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        CellularConnected cellularConnected = this.connected;
        int iHashCode2 = (iHashCode + (cellularConnected != null ? cellularConnected.hashCode() : 0)) * 37;
        CellularDisconnected cellularDisconnected = this.disconnected;
        int iHashCode3 = iHashCode2 + (cellularDisconnected != null ? cellularDisconnected.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.connected != null) {
            arrayList.add("connected=" + this.connected);
        }
        if (this.disconnected != null) {
            arrayList.add("disconnected=" + this.disconnected);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CellularConnection{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CellularConnection copy$default(CellularConnection cellularConnection, CellularConnected cellularConnected, CellularDisconnected cellularDisconnected, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            cellularConnected = cellularConnection.connected;
        }
        if ((i & 2) != 0) {
            cellularDisconnected = cellularConnection.disconnected;
        }
        if ((i & 4) != 0) {
            byteString = cellularConnection.unknownFields();
        }
        return cellularConnection.copy(cellularConnected, cellularDisconnected, byteString);
    }

    public final CellularConnection copy(CellularConnected connected, CellularDisconnected disconnected, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CellularConnection(connected, disconnected, unknownFields);
    }

    /* JADX INFO: compiled from: CellularConnection.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnection$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnection;", "()V", "connected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnected;", "disconnected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularDisconnected;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CellularConnection, Builder> {
        public CellularConnected connected;
        public CellularDisconnected disconnected;

        public final Builder connected(CellularConnected connected) {
            this.connected = connected;
            this.disconnected = null;
            return this;
        }

        public final Builder disconnected(CellularDisconnected disconnected) {
            this.disconnected = disconnected;
            this.connected = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CellularConnection build() {
            return new CellularConnection(this.connected, this.disconnected, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CellularConnection.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnection$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnection;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularConnection$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CellularConnection build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CellularConnection.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CellularConnection>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.CellularConnection$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CellularConnection value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + CellularConnected.ADAPTER.encodedSizeWithTag(1, value.connected) + CellularDisconnected.ADAPTER.encodedSizeWithTag(2, value.disconnected);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CellularConnection value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                CellularConnected.ADAPTER.encodeWithTag(writer, 1, value.connected);
                CellularDisconnected.ADAPTER.encodeWithTag(writer, 2, value.disconnected);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CellularConnection value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                CellularDisconnected.ADAPTER.encodeWithTag(writer, 2, value.disconnected);
                CellularConnected.ADAPTER.encodeWithTag(writer, 1, value.connected);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CellularConnection redact(CellularConnection value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CellularConnected cellularConnected = value.connected;
                CellularConnected cellularConnectedRedact = cellularConnected != null ? CellularConnected.ADAPTER.redact(cellularConnected) : null;
                CellularDisconnected cellularDisconnected = value.disconnected;
                return value.copy(cellularConnectedRedact, cellularDisconnected != null ? CellularDisconnected.ADAPTER.redact(cellularDisconnected) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CellularConnection decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                CellularConnected cellularConnectedDecode = null;
                CellularDisconnected cellularDisconnectedDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CellularConnection(cellularConnectedDecode, cellularDisconnectedDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        cellularConnectedDecode = CellularConnected.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        cellularDisconnectedDecode = CellularDisconnected.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
