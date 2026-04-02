package com.stripe.proto.model.observability.schema.connectivity;

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

/* JADX INFO: compiled from: NetworkConnected.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected$Builder;", "wifi_connection", "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnection;", "ethernet_connection", "Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnection;Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NetworkConnected extends Message<NetworkConnected, Builder> {
    public static final ProtoAdapter<NetworkConnected> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.connectivity.EthernetConnection#ADAPTER", jsonName = "ethernetConnection", oneofName = "connection", schemaIndex = 1, tag = 3)
    public final EthernetConnection ethernet_connection;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.connectivity.WifiConnection#ADAPTER", jsonName = "wifiConnection", oneofName = "connection", schemaIndex = 0, tag = 2)
    public final WifiConnection wifi_connection;

    public NetworkConnected() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ NetworkConnected(WifiConnection wifiConnection, EthernetConnection ethernetConnection, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : wifiConnection, (i & 2) != 0 ? null : ethernetConnection, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkConnected(WifiConnection wifiConnection, EthernetConnection ethernetConnection, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.wifi_connection = wifiConnection;
        this.ethernet_connection = ethernetConnection;
        if (Internal.countNonNull(wifiConnection, ethernetConnection) > 1) {
            throw new IllegalArgumentException("At most one of wifi_connection, ethernet_connection may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.wifi_connection = this.wifi_connection;
        builder.ethernet_connection = this.ethernet_connection;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof NetworkConnected)) {
            return false;
        }
        NetworkConnected networkConnected = (NetworkConnected) other;
        return Intrinsics.areEqual(unknownFields(), networkConnected.unknownFields()) && Intrinsics.areEqual(this.wifi_connection, networkConnected.wifi_connection) && Intrinsics.areEqual(this.ethernet_connection, networkConnected.ethernet_connection);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        WifiConnection wifiConnection = this.wifi_connection;
        int iHashCode2 = (iHashCode + (wifiConnection != null ? wifiConnection.hashCode() : 0)) * 37;
        EthernetConnection ethernetConnection = this.ethernet_connection;
        int iHashCode3 = iHashCode2 + (ethernetConnection != null ? ethernetConnection.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.wifi_connection != null) {
            arrayList.add("wifi_connection=" + this.wifi_connection);
        }
        if (this.ethernet_connection != null) {
            arrayList.add("ethernet_connection=" + this.ethernet_connection);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "NetworkConnected{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ NetworkConnected copy$default(NetworkConnected networkConnected, WifiConnection wifiConnection, EthernetConnection ethernetConnection, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            wifiConnection = networkConnected.wifi_connection;
        }
        if ((i & 2) != 0) {
            ethernetConnection = networkConnected.ethernet_connection;
        }
        if ((i & 4) != 0) {
            byteString = networkConnected.unknownFields();
        }
        return networkConnected.copy(wifiConnection, ethernetConnection, byteString);
    }

    public final NetworkConnected copy(WifiConnection wifi_connection, EthernetConnection ethernet_connection, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new NetworkConnected(wifi_connection, ethernet_connection, unknownFields);
    }

    /* JADX INFO: compiled from: NetworkConnected.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;", "()V", "ethernet_connection", "Lcom/stripe/proto/model/observability/schema/connectivity/EthernetConnection;", "wifi_connection", "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnection;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<NetworkConnected, Builder> {
        public EthernetConnection ethernet_connection;
        public WifiConnection wifi_connection;

        public final Builder wifi_connection(WifiConnection wifi_connection) {
            this.wifi_connection = wifi_connection;
            this.ethernet_connection = null;
            return this;
        }

        public final Builder ethernet_connection(EthernetConnection ethernet_connection) {
            this.ethernet_connection = ethernet_connection;
            this.wifi_connection = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public NetworkConnected build() {
            return new NetworkConnected(this.wifi_connection, this.ethernet_connection, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: NetworkConnected.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/observability/schema/connectivity/NetworkConnected$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ NetworkConnected build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NetworkConnected.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<NetworkConnected>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.observability.schema.connectivity.NetworkConnected$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(NetworkConnected value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + WifiConnection.ADAPTER.encodedSizeWithTag(2, value.wifi_connection) + EthernetConnection.ADAPTER.encodedSizeWithTag(3, value.ethernet_connection);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, NetworkConnected value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                WifiConnection.ADAPTER.encodeWithTag(writer, 2, value.wifi_connection);
                EthernetConnection.ADAPTER.encodeWithTag(writer, 3, value.ethernet_connection);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, NetworkConnected value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                EthernetConnection.ADAPTER.encodeWithTag(writer, 3, value.ethernet_connection);
                WifiConnection.ADAPTER.encodeWithTag(writer, 2, value.wifi_connection);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public NetworkConnected redact(NetworkConnected value) {
                Intrinsics.checkNotNullParameter(value, "value");
                WifiConnection wifiConnection = value.wifi_connection;
                WifiConnection wifiConnectionRedact = wifiConnection != null ? WifiConnection.ADAPTER.redact(wifiConnection) : null;
                EthernetConnection ethernetConnection = value.ethernet_connection;
                return value.copy(wifiConnectionRedact, ethernetConnection != null ? EthernetConnection.ADAPTER.redact(ethernetConnection) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public NetworkConnected decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                WifiConnection wifiConnectionDecode = null;
                EthernetConnection ethernetConnectionDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new NetworkConnected(wifiConnectionDecode, ethernetConnectionDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 2) {
                        wifiConnectionDecode = WifiConnection.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        ethernetConnectionDecode = EthernetConnection.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
