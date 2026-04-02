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

/* JADX INFO: compiled from: EthernetConnection.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Builder;", "connected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;", "disconnected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EthernetConnection extends Message<EthernetConnection, Builder> {
    public static final ProtoAdapter<EthernetConnection> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.EthernetConnected#ADAPTER", oneofName = "ethernet_connection", schemaIndex = 0, tag = 1)
    public final EthernetConnected connected;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.EthernetDisconnected#ADAPTER", oneofName = "ethernet_connection", schemaIndex = 1, tag = 2)
    public final EthernetDisconnected disconnected;

    public EthernetConnection() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ EthernetConnection(EthernetConnected ethernetConnected, EthernetDisconnected ethernetDisconnected, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : ethernetConnected, (i & 2) != 0 ? null : ethernetDisconnected, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EthernetConnection(EthernetConnected ethernetConnected, EthernetDisconnected ethernetDisconnected, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.connected = ethernetConnected;
        this.disconnected = ethernetDisconnected;
        if (Internal.countNonNull(ethernetConnected, ethernetDisconnected) > 1) {
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
        if (!(other instanceof EthernetConnection)) {
            return false;
        }
        EthernetConnection ethernetConnection = (EthernetConnection) other;
        return Intrinsics.areEqual(unknownFields(), ethernetConnection.unknownFields()) && Intrinsics.areEqual(this.connected, ethernetConnection.connected) && Intrinsics.areEqual(this.disconnected, ethernetConnection.disconnected);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        EthernetConnected ethernetConnected = this.connected;
        int iHashCode2 = (iHashCode + (ethernetConnected != null ? ethernetConnected.hashCode() : 0)) * 37;
        EthernetDisconnected ethernetDisconnected = this.disconnected;
        int iHashCode3 = iHashCode2 + (ethernetDisconnected != null ? ethernetDisconnected.hashCode() : 0);
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
        return CollectionsKt.joinToString$default(arrayList, ", ", "EthernetConnection{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ EthernetConnection copy$default(EthernetConnection ethernetConnection, EthernetConnected ethernetConnected, EthernetDisconnected ethernetDisconnected, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            ethernetConnected = ethernetConnection.connected;
        }
        if ((i & 2) != 0) {
            ethernetDisconnected = ethernetConnection.disconnected;
        }
        if ((i & 4) != 0) {
            byteString = ethernetConnection.unknownFields();
        }
        return ethernetConnection.copy(ethernetConnected, ethernetDisconnected, byteString);
    }

    public final EthernetConnection copy(EthernetConnected connected, EthernetDisconnected disconnected, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EthernetConnection(connected, disconnected, unknownFields);
    }

    /* JADX INFO: compiled from: EthernetConnection.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;", "()V", "connected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnected;", "disconnected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetDisconnected;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EthernetConnection, Builder> {
        public EthernetConnected connected;
        public EthernetDisconnected disconnected;

        public final Builder connected(EthernetConnected connected) {
            this.connected = connected;
            this.disconnected = null;
            return this;
        }

        public final Builder disconnected(EthernetDisconnected disconnected) {
            this.disconnected = disconnected;
            this.connected = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public EthernetConnection build() {
            return new EthernetConnection(this.connected, this.disconnected, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EthernetConnection.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/EthernetConnection$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EthernetConnection build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EthernetConnection.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EthernetConnection>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.EthernetConnection$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EthernetConnection value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + EthernetConnected.ADAPTER.encodedSizeWithTag(1, value.connected) + EthernetDisconnected.ADAPTER.encodedSizeWithTag(2, value.disconnected);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EthernetConnection value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                EthernetConnected.ADAPTER.encodeWithTag(writer, 1, value.connected);
                EthernetDisconnected.ADAPTER.encodeWithTag(writer, 2, value.disconnected);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EthernetConnection value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                EthernetDisconnected.ADAPTER.encodeWithTag(writer, 2, value.disconnected);
                EthernetConnected.ADAPTER.encodeWithTag(writer, 1, value.connected);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EthernetConnection redact(EthernetConnection value) {
                Intrinsics.checkNotNullParameter(value, "value");
                EthernetConnected ethernetConnected = value.connected;
                EthernetConnected ethernetConnectedRedact = ethernetConnected != null ? EthernetConnected.ADAPTER.redact(ethernetConnected) : null;
                EthernetDisconnected ethernetDisconnected = value.disconnected;
                return value.copy(ethernetConnectedRedact, ethernetDisconnected != null ? EthernetDisconnected.ADAPTER.redact(ethernetDisconnected) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EthernetConnection decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                EthernetConnected ethernetConnectedDecode = null;
                EthernetDisconnected ethernetDisconnectedDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new EthernetConnection(ethernetConnectedDecode, ethernetDisconnectedDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        ethernetConnectedDecode = EthernetConnected.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        ethernetDisconnectedDecode = EthernetDisconnected.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
