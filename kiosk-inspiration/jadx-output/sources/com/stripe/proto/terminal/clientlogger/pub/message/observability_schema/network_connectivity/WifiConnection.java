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

/* JADX INFO: compiled from: WifiConnection.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnection;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnection$Builder;", "connected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnected;", "disconnected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiDisconnected;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnected;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiDisconnected;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WifiConnection extends Message<WifiConnection, Builder> {
    public static final ProtoAdapter<WifiConnection> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.WifiConnected#ADAPTER", oneofName = "wifi_connection", schemaIndex = 0, tag = 1)
    public final WifiConnected connected;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.WifiDisconnected#ADAPTER", oneofName = "wifi_connection", schemaIndex = 1, tag = 2)
    public final WifiDisconnected disconnected;

    public WifiConnection() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ WifiConnection(WifiConnected wifiConnected, WifiDisconnected wifiDisconnected, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : wifiConnected, (i & 2) != 0 ? null : wifiDisconnected, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiConnection(WifiConnected wifiConnected, WifiDisconnected wifiDisconnected, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.connected = wifiConnected;
        this.disconnected = wifiDisconnected;
        if (Internal.countNonNull(wifiConnected, wifiDisconnected) > 1) {
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
        if (!(other instanceof WifiConnection)) {
            return false;
        }
        WifiConnection wifiConnection = (WifiConnection) other;
        return Intrinsics.areEqual(unknownFields(), wifiConnection.unknownFields()) && Intrinsics.areEqual(this.connected, wifiConnection.connected) && Intrinsics.areEqual(this.disconnected, wifiConnection.disconnected);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        WifiConnected wifiConnected = this.connected;
        int iHashCode2 = (iHashCode + (wifiConnected != null ? wifiConnected.hashCode() : 0)) * 37;
        WifiDisconnected wifiDisconnected = this.disconnected;
        int iHashCode3 = iHashCode2 + (wifiDisconnected != null ? wifiDisconnected.hashCode() : 0);
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
        return CollectionsKt.joinToString$default(arrayList, ", ", "WifiConnection{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ WifiConnection copy$default(WifiConnection wifiConnection, WifiConnected wifiConnected, WifiDisconnected wifiDisconnected, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            wifiConnected = wifiConnection.connected;
        }
        if ((i & 2) != 0) {
            wifiDisconnected = wifiConnection.disconnected;
        }
        if ((i & 4) != 0) {
            byteString = wifiConnection.unknownFields();
        }
        return wifiConnection.copy(wifiConnected, wifiDisconnected, byteString);
    }

    public final WifiConnection copy(WifiConnected connected, WifiDisconnected disconnected, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new WifiConnection(connected, disconnected, unknownFields);
    }

    /* JADX INFO: compiled from: WifiConnection.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnection$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnection;", "()V", "connected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnected;", "disconnected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiDisconnected;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<WifiConnection, Builder> {
        public WifiConnected connected;
        public WifiDisconnected disconnected;

        public final Builder connected(WifiConnected connected) {
            this.connected = connected;
            this.disconnected = null;
            return this;
        }

        public final Builder disconnected(WifiDisconnected disconnected) {
            this.disconnected = disconnected;
            this.connected = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public WifiConnection build() {
            return new WifiConnection(this.connected, this.disconnected, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: WifiConnection.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnection$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnection;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnection$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ WifiConnection build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WifiConnection.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<WifiConnection>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.WifiConnection$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(WifiConnection value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + WifiConnected.ADAPTER.encodedSizeWithTag(1, value.connected) + WifiDisconnected.ADAPTER.encodedSizeWithTag(2, value.disconnected);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, WifiConnection value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                WifiConnected.ADAPTER.encodeWithTag(writer, 1, value.connected);
                WifiDisconnected.ADAPTER.encodeWithTag(writer, 2, value.disconnected);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, WifiConnection value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                WifiDisconnected.ADAPTER.encodeWithTag(writer, 2, value.disconnected);
                WifiConnected.ADAPTER.encodeWithTag(writer, 1, value.connected);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public WifiConnection redact(WifiConnection value) {
                Intrinsics.checkNotNullParameter(value, "value");
                WifiConnected wifiConnected = value.connected;
                WifiConnected wifiConnectedRedact = wifiConnected != null ? WifiConnected.ADAPTER.redact(wifiConnected) : null;
                WifiDisconnected wifiDisconnected = value.disconnected;
                return value.copy(wifiConnectedRedact, wifiDisconnected != null ? WifiDisconnected.ADAPTER.redact(wifiDisconnected) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public WifiConnection decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                WifiConnected wifiConnectedDecode = null;
                WifiDisconnected wifiDisconnectedDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new WifiConnection(wifiConnectedDecode, wifiDisconnectedDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        wifiConnectedDecode = WifiConnected.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        wifiDisconnectedDecode = WifiDisconnected.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
