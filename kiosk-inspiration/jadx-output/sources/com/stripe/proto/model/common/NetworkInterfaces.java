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
import com.stripe.proto.model.common.NetworkInterfaces;
import com.stripe.proto.terminal_observability.pub.message.NetworkConnectivityStatus;
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

/* JADX INFO: compiled from: NetworkInterfaces.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005\u0016\u0017\u0018\u0019\u001aB3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;", "ethernet_interface", "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;", "wifi_interface", "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;", "bluetooth_interface", "Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "BluetoothInterface", "Builder", "Companion", "EthernetInterface", "WifiInterface", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class NetworkInterfaces extends Message<NetworkInterfaces, Builder> {
    public static final ProtoAdapter<NetworkInterfaces> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.NetworkInterfaces$BluetoothInterface#ADAPTER", jsonName = "bluetoothInterface", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final BluetoothInterface bluetooth_interface;

    @WireField(adapter = "com.stripe.proto.model.common.NetworkInterfaces$EthernetInterface#ADAPTER", jsonName = "ethernetInterface", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final EthernetInterface ethernet_interface;

    @WireField(adapter = "com.stripe.proto.model.common.NetworkInterfaces$WifiInterface#ADAPTER", jsonName = "wifiInterface", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final WifiInterface wifi_interface;

    public NetworkInterfaces() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ NetworkInterfaces(EthernetInterface ethernetInterface, WifiInterface wifiInterface, BluetoothInterface bluetoothInterface, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : ethernetInterface, (i & 2) != 0 ? null : wifiInterface, (i & 4) != 0 ? null : bluetoothInterface, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkInterfaces(EthernetInterface ethernetInterface, WifiInterface wifiInterface, BluetoothInterface bluetoothInterface, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.ethernet_interface = ethernetInterface;
        this.wifi_interface = wifiInterface;
        this.bluetooth_interface = bluetoothInterface;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.ethernet_interface = this.ethernet_interface;
        builder.wifi_interface = this.wifi_interface;
        builder.bluetooth_interface = this.bluetooth_interface;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof NetworkInterfaces)) {
            return false;
        }
        NetworkInterfaces networkInterfaces = (NetworkInterfaces) other;
        return Intrinsics.areEqual(unknownFields(), networkInterfaces.unknownFields()) && Intrinsics.areEqual(this.ethernet_interface, networkInterfaces.ethernet_interface) && Intrinsics.areEqual(this.wifi_interface, networkInterfaces.wifi_interface) && Intrinsics.areEqual(this.bluetooth_interface, networkInterfaces.bluetooth_interface);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        EthernetInterface ethernetInterface = this.ethernet_interface;
        int iHashCode2 = (iHashCode + (ethernetInterface != null ? ethernetInterface.hashCode() : 0)) * 37;
        WifiInterface wifiInterface = this.wifi_interface;
        int iHashCode3 = (iHashCode2 + (wifiInterface != null ? wifiInterface.hashCode() : 0)) * 37;
        BluetoothInterface bluetoothInterface = this.bluetooth_interface;
        int iHashCode4 = iHashCode3 + (bluetoothInterface != null ? bluetoothInterface.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.ethernet_interface != null) {
            arrayList.add("ethernet_interface=" + this.ethernet_interface);
        }
        if (this.wifi_interface != null) {
            arrayList.add("wifi_interface=" + this.wifi_interface);
        }
        if (this.bluetooth_interface != null) {
            arrayList.add("bluetooth_interface=" + this.bluetooth_interface);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "NetworkInterfaces{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ NetworkInterfaces copy$default(NetworkInterfaces networkInterfaces, EthernetInterface ethernetInterface, WifiInterface wifiInterface, BluetoothInterface bluetoothInterface, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            ethernetInterface = networkInterfaces.ethernet_interface;
        }
        if ((i & 2) != 0) {
            wifiInterface = networkInterfaces.wifi_interface;
        }
        if ((i & 4) != 0) {
            bluetoothInterface = networkInterfaces.bluetooth_interface;
        }
        if ((i & 8) != 0) {
            byteString = networkInterfaces.unknownFields();
        }
        return networkInterfaces.copy(ethernetInterface, wifiInterface, bluetoothInterface, byteString);
    }

    public final NetworkInterfaces copy(EthernetInterface ethernet_interface, WifiInterface wifi_interface, BluetoothInterface bluetooth_interface, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new NetworkInterfaces(ethernet_interface, wifi_interface, bluetooth_interface, unknownFields);
    }

    /* JADX INFO: compiled from: NetworkInterfaces.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/NetworkInterfaces;", "()V", "bluetooth_interface", "Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;", "ethernet_interface", "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;", "wifi_interface", "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<NetworkInterfaces, Builder> {
        public BluetoothInterface bluetooth_interface;
        public EthernetInterface ethernet_interface;
        public WifiInterface wifi_interface;

        public final Builder ethernet_interface(EthernetInterface ethernet_interface) {
            this.ethernet_interface = ethernet_interface;
            return this;
        }

        public final Builder wifi_interface(WifiInterface wifi_interface) {
            this.wifi_interface = wifi_interface;
            return this;
        }

        public final Builder bluetooth_interface(BluetoothInterface bluetooth_interface) {
            this.bluetooth_interface = bluetooth_interface;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public NetworkInterfaces build() {
            return new NetworkInterfaces(this.ethernet_interface, this.wifi_interface, this.bluetooth_interface, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: NetworkInterfaces.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/NetworkInterfaces;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/NetworkInterfaces$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ NetworkInterfaces build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NetworkInterfaces.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<NetworkInterfaces>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.NetworkInterfaces$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(NetworkInterfaces value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.ethernet_interface != null) {
                    size += NetworkInterfaces.EthernetInterface.ADAPTER.encodedSizeWithTag(1, value.ethernet_interface);
                }
                if (value.wifi_interface != null) {
                    size += NetworkInterfaces.WifiInterface.ADAPTER.encodedSizeWithTag(2, value.wifi_interface);
                }
                return value.bluetooth_interface != null ? size + NetworkInterfaces.BluetoothInterface.ADAPTER.encodedSizeWithTag(3, value.bluetooth_interface) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, NetworkInterfaces value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.ethernet_interface != null) {
                    NetworkInterfaces.EthernetInterface.ADAPTER.encodeWithTag(writer, 1, value.ethernet_interface);
                }
                if (value.wifi_interface != null) {
                    NetworkInterfaces.WifiInterface.ADAPTER.encodeWithTag(writer, 2, value.wifi_interface);
                }
                if (value.bluetooth_interface != null) {
                    NetworkInterfaces.BluetoothInterface.ADAPTER.encodeWithTag(writer, 3, value.bluetooth_interface);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, NetworkInterfaces value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.bluetooth_interface != null) {
                    NetworkInterfaces.BluetoothInterface.ADAPTER.encodeWithTag(writer, 3, value.bluetooth_interface);
                }
                if (value.wifi_interface != null) {
                    NetworkInterfaces.WifiInterface.ADAPTER.encodeWithTag(writer, 2, value.wifi_interface);
                }
                if (value.ethernet_interface != null) {
                    NetworkInterfaces.EthernetInterface.ADAPTER.encodeWithTag(writer, 1, value.ethernet_interface);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public NetworkInterfaces redact(NetworkInterfaces value) {
                Intrinsics.checkNotNullParameter(value, "value");
                NetworkInterfaces.EthernetInterface ethernetInterface = value.ethernet_interface;
                NetworkInterfaces.EthernetInterface ethernetInterfaceRedact = ethernetInterface != null ? NetworkInterfaces.EthernetInterface.ADAPTER.redact(ethernetInterface) : null;
                NetworkInterfaces.WifiInterface wifiInterface = value.wifi_interface;
                NetworkInterfaces.WifiInterface wifiInterfaceRedact = wifiInterface != null ? NetworkInterfaces.WifiInterface.ADAPTER.redact(wifiInterface) : null;
                NetworkInterfaces.BluetoothInterface bluetoothInterface = value.bluetooth_interface;
                return value.copy(ethernetInterfaceRedact, wifiInterfaceRedact, bluetoothInterface != null ? NetworkInterfaces.BluetoothInterface.ADAPTER.redact(bluetoothInterface) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public NetworkInterfaces decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                NetworkInterfaces.EthernetInterface ethernetInterfaceDecode = null;
                NetworkInterfaces.WifiInterface wifiInterfaceDecode = null;
                NetworkInterfaces.BluetoothInterface bluetoothInterfaceDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new NetworkInterfaces(ethernetInterfaceDecode, wifiInterfaceDecode, bluetoothInterfaceDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        ethernetInterfaceDecode = NetworkInterfaces.EthernetInterface.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        wifiInterfaceDecode = NetworkInterfaces.WifiInterface.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        bluetoothInterfaceDecode = NetworkInterfaces.BluetoothInterface.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: NetworkInterfaces.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;", "mac_address", "", "network_connectivity_status", "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;", "connection", "Lcom/stripe/proto/model/common/EthernetConnection;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/EthernetConnection;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class EthernetInterface extends Message<EthernetInterface, Builder> {
        public static final ProtoAdapter<EthernetInterface> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.common.EthernetConnection#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final EthernetConnection connection;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "macAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String mac_address;

        @WireField(adapter = "com.stripe.proto.terminal_observability.pub.message.NetworkConnectivityStatus#ADAPTER", jsonName = "networkConnectivityStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final NetworkConnectivityStatus network_connectivity_status;

        public EthernetInterface() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ EthernetInterface(String str, NetworkConnectivityStatus networkConnectivityStatus, EthernetConnection ethernetConnection, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID : networkConnectivityStatus, (i & 4) != 0 ? null : ethernetConnection, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EthernetInterface(String mac_address, NetworkConnectivityStatus network_connectivity_status, EthernetConnection ethernetConnection, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(mac_address, "mac_address");
            Intrinsics.checkNotNullParameter(network_connectivity_status, "network_connectivity_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.mac_address = mac_address;
            this.network_connectivity_status = network_connectivity_status;
            this.connection = ethernetConnection;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.mac_address = this.mac_address;
            builder.network_connectivity_status = this.network_connectivity_status;
            builder.connection = this.connection;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof EthernetInterface)) {
                return false;
            }
            EthernetInterface ethernetInterface = (EthernetInterface) other;
            return Intrinsics.areEqual(unknownFields(), ethernetInterface.unknownFields()) && Intrinsics.areEqual(this.mac_address, ethernetInterface.mac_address) && this.network_connectivity_status == ethernetInterface.network_connectivity_status && Intrinsics.areEqual(this.connection, ethernetInterface.connection);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((unknownFields().hashCode() * 37) + this.mac_address.hashCode()) * 37) + this.network_connectivity_status.hashCode()) * 37;
            EthernetConnection ethernetConnection = this.connection;
            int iHashCode2 = iHashCode + (ethernetConnection != null ? ethernetConnection.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("mac_address=" + Internal.sanitize(this.mac_address));
            arrayList2.add("network_connectivity_status=" + this.network_connectivity_status);
            if (this.connection != null) {
                arrayList2.add("connection=" + this.connection);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "EthernetInterface{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ EthernetInterface copy$default(EthernetInterface ethernetInterface, String str, NetworkConnectivityStatus networkConnectivityStatus, EthernetConnection ethernetConnection, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = ethernetInterface.mac_address;
            }
            if ((i & 2) != 0) {
                networkConnectivityStatus = ethernetInterface.network_connectivity_status;
            }
            if ((i & 4) != 0) {
                ethernetConnection = ethernetInterface.connection;
            }
            if ((i & 8) != 0) {
                byteString = ethernetInterface.unknownFields();
            }
            return ethernetInterface.copy(str, networkConnectivityStatus, ethernetConnection, byteString);
        }

        public final EthernetInterface copy(String mac_address, NetworkConnectivityStatus network_connectivity_status, EthernetConnection connection, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(mac_address, "mac_address");
            Intrinsics.checkNotNullParameter(network_connectivity_status, "network_connectivity_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new EthernetInterface(mac_address, network_connectivity_status, connection, unknownFields);
        }

        /* JADX INFO: compiled from: NetworkInterfaces.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;", "()V", "connection", "Lcom/stripe/proto/model/common/EthernetConnection;", "mac_address", "", "network_connectivity_status", "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<EthernetInterface, Builder> {
            public EthernetConnection connection;
            public String mac_address = "";
            public NetworkConnectivityStatus network_connectivity_status = NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID;

            public final Builder mac_address(String mac_address) {
                Intrinsics.checkNotNullParameter(mac_address, "mac_address");
                this.mac_address = mac_address;
                return this;
            }

            public final Builder network_connectivity_status(NetworkConnectivityStatus network_connectivity_status) {
                Intrinsics.checkNotNullParameter(network_connectivity_status, "network_connectivity_status");
                this.network_connectivity_status = network_connectivity_status;
                return this;
            }

            public final Builder connection(EthernetConnection connection) {
                this.connection = connection;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public EthernetInterface build() {
                return new EthernetInterface(this.mac_address, this.network_connectivity_status, this.connection, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: NetworkInterfaces.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/NetworkInterfaces$EthernetInterface$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ EthernetInterface build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EthernetInterface.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<EthernetInterface>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.NetworkInterfaces$EthernetInterface$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(NetworkInterfaces.EthernetInterface value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.mac_address, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.mac_address);
                    }
                    if (value.network_connectivity_status != NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID) {
                        size += NetworkConnectivityStatus.ADAPTER.encodedSizeWithTag(2, value.network_connectivity_status);
                    }
                    return value.connection != null ? size + EthernetConnection.ADAPTER.encodedSizeWithTag(3, value.connection) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, NetworkInterfaces.EthernetInterface value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.mac_address, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.mac_address);
                    }
                    if (value.network_connectivity_status != NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID) {
                        NetworkConnectivityStatus.ADAPTER.encodeWithTag(writer, 2, value.network_connectivity_status);
                    }
                    if (value.connection != null) {
                        EthernetConnection.ADAPTER.encodeWithTag(writer, 3, value.connection);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, NetworkInterfaces.EthernetInterface value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.connection != null) {
                        EthernetConnection.ADAPTER.encodeWithTag(writer, 3, value.connection);
                    }
                    if (value.network_connectivity_status != NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID) {
                        NetworkConnectivityStatus.ADAPTER.encodeWithTag(writer, 2, value.network_connectivity_status);
                    }
                    if (Intrinsics.areEqual(value.mac_address, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.mac_address);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public NetworkInterfaces.EthernetInterface decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    NetworkConnectivityStatus networkConnectivityStatusDecode = NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID;
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    EthernetConnection ethernetConnectionDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new NetworkInterfaces.EthernetInterface(strDecode, networkConnectivityStatusDecode, ethernetConnectionDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            try {
                                networkConnectivityStatusDecode = NetworkConnectivityStatus.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 3) {
                            ethernetConnectionDecode = EthernetConnection.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public NetworkInterfaces.EthernetInterface redact(NetworkInterfaces.EthernetInterface value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    EthernetConnection ethernetConnection = value.connection;
                    return NetworkInterfaces.EthernetInterface.copy$default(value, null, null, ethernetConnection != null ? EthernetConnection.ADAPTER.redact(ethernetConnection) : null, ByteString.EMPTY, 3, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: NetworkInterfaces.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;", "mac_address", "", "network_connectivity_status", "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;", "connection", "Lcom/stripe/proto/model/common/WifiConnection;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;Lcom/stripe/proto/model/common/WifiConnection;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class WifiInterface extends Message<WifiInterface, Builder> {
        public static final ProtoAdapter<WifiInterface> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.common.WifiConnection#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
        public final WifiConnection connection;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "macAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String mac_address;

        @WireField(adapter = "com.stripe.proto.terminal_observability.pub.message.NetworkConnectivityStatus#ADAPTER", jsonName = "networkConnectivityStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
        public final NetworkConnectivityStatus network_connectivity_status;

        public WifiInterface() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ WifiInterface(String str, NetworkConnectivityStatus networkConnectivityStatus, WifiConnection wifiConnection, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID : networkConnectivityStatus, (i & 4) != 0 ? null : wifiConnection, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WifiInterface(String mac_address, NetworkConnectivityStatus network_connectivity_status, WifiConnection wifiConnection, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(mac_address, "mac_address");
            Intrinsics.checkNotNullParameter(network_connectivity_status, "network_connectivity_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.mac_address = mac_address;
            this.network_connectivity_status = network_connectivity_status;
            this.connection = wifiConnection;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.mac_address = this.mac_address;
            builder.network_connectivity_status = this.network_connectivity_status;
            builder.connection = this.connection;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof WifiInterface)) {
                return false;
            }
            WifiInterface wifiInterface = (WifiInterface) other;
            return Intrinsics.areEqual(unknownFields(), wifiInterface.unknownFields()) && Intrinsics.areEqual(this.mac_address, wifiInterface.mac_address) && this.network_connectivity_status == wifiInterface.network_connectivity_status && Intrinsics.areEqual(this.connection, wifiInterface.connection);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((unknownFields().hashCode() * 37) + this.mac_address.hashCode()) * 37) + this.network_connectivity_status.hashCode()) * 37;
            WifiConnection wifiConnection = this.connection;
            int iHashCode2 = iHashCode + (wifiConnection != null ? wifiConnection.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("mac_address=" + Internal.sanitize(this.mac_address));
            arrayList2.add("network_connectivity_status=" + this.network_connectivity_status);
            if (this.connection != null) {
                arrayList2.add("connection=" + this.connection);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "WifiInterface{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ WifiInterface copy$default(WifiInterface wifiInterface, String str, NetworkConnectivityStatus networkConnectivityStatus, WifiConnection wifiConnection, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = wifiInterface.mac_address;
            }
            if ((i & 2) != 0) {
                networkConnectivityStatus = wifiInterface.network_connectivity_status;
            }
            if ((i & 4) != 0) {
                wifiConnection = wifiInterface.connection;
            }
            if ((i & 8) != 0) {
                byteString = wifiInterface.unknownFields();
            }
            return wifiInterface.copy(str, networkConnectivityStatus, wifiConnection, byteString);
        }

        public final WifiInterface copy(String mac_address, NetworkConnectivityStatus network_connectivity_status, WifiConnection connection, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(mac_address, "mac_address");
            Intrinsics.checkNotNullParameter(network_connectivity_status, "network_connectivity_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new WifiInterface(mac_address, network_connectivity_status, connection, unknownFields);
        }

        /* JADX INFO: compiled from: NetworkInterfaces.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;", "()V", "connection", "Lcom/stripe/proto/model/common/WifiConnection;", "mac_address", "", "network_connectivity_status", "Lcom/stripe/proto/terminal_observability/pub/message/NetworkConnectivityStatus;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<WifiInterface, Builder> {
            public WifiConnection connection;
            public String mac_address = "";
            public NetworkConnectivityStatus network_connectivity_status = NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID;

            public final Builder mac_address(String mac_address) {
                Intrinsics.checkNotNullParameter(mac_address, "mac_address");
                this.mac_address = mac_address;
                return this;
            }

            public final Builder network_connectivity_status(NetworkConnectivityStatus network_connectivity_status) {
                Intrinsics.checkNotNullParameter(network_connectivity_status, "network_connectivity_status");
                this.network_connectivity_status = network_connectivity_status;
                return this;
            }

            public final Builder connection(WifiConnection connection) {
                this.connection = connection;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public WifiInterface build() {
                return new WifiInterface(this.mac_address, this.network_connectivity_status, this.connection, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: NetworkInterfaces.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/NetworkInterfaces$WifiInterface$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ WifiInterface build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WifiInterface.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<WifiInterface>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.NetworkInterfaces$WifiInterface$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(NetworkInterfaces.WifiInterface value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (!Intrinsics.areEqual(value.mac_address, "")) {
                        size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.mac_address);
                    }
                    if (value.network_connectivity_status != NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID) {
                        size += NetworkConnectivityStatus.ADAPTER.encodedSizeWithTag(2, value.network_connectivity_status);
                    }
                    return value.connection != null ? size + WifiConnection.ADAPTER.encodedSizeWithTag(3, value.connection) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, NetworkInterfaces.WifiInterface value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.mac_address, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.mac_address);
                    }
                    if (value.network_connectivity_status != NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID) {
                        NetworkConnectivityStatus.ADAPTER.encodeWithTag(writer, 2, value.network_connectivity_status);
                    }
                    if (value.connection != null) {
                        WifiConnection.ADAPTER.encodeWithTag(writer, 3, value.connection);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, NetworkInterfaces.WifiInterface value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.connection != null) {
                        WifiConnection.ADAPTER.encodeWithTag(writer, 3, value.connection);
                    }
                    if (value.network_connectivity_status != NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID) {
                        NetworkConnectivityStatus.ADAPTER.encodeWithTag(writer, 2, value.network_connectivity_status);
                    }
                    if (Intrinsics.areEqual(value.mac_address, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.mac_address);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public NetworkInterfaces.WifiInterface decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    NetworkConnectivityStatus networkConnectivityStatusDecode = NetworkConnectivityStatus.NETWORK_CONNECTIVITY_STATUS_INVALID;
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    WifiConnection wifiConnectionDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new NetworkInterfaces.WifiInterface(strDecode, networkConnectivityStatusDecode, wifiConnectionDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            try {
                                networkConnectivityStatusDecode = NetworkConnectivityStatus.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 3) {
                            wifiConnectionDecode = WifiConnection.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public NetworkInterfaces.WifiInterface redact(NetworkInterfaces.WifiInterface value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    WifiConnection wifiConnection = value.connection;
                    return NetworkInterfaces.WifiInterface.copy$default(value, null, null, wifiConnection != null ? WifiConnection.ADAPTER.redact(wifiConnection) : null, ByteString.EMPTY, 3, null);
                }
            };
        }
    }

    /* JADX INFO: compiled from: NetworkInterfaces.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface$Builder;", "mac_address", "", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BluetoothInterface extends Message<BluetoothInterface, Builder> {
        public static final ProtoAdapter<BluetoothInterface> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "macAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final String mac_address;

        /* JADX WARN: Multi-variable type inference failed */
        public BluetoothInterface() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ BluetoothInterface(String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BluetoothInterface(String mac_address, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(mac_address, "mac_address");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.mac_address = mac_address;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.mac_address = this.mac_address;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof BluetoothInterface)) {
                return false;
            }
            BluetoothInterface bluetoothInterface = (BluetoothInterface) other;
            return Intrinsics.areEqual(unknownFields(), bluetoothInterface.unknownFields()) && Intrinsics.areEqual(this.mac_address, bluetoothInterface.mac_address);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.mac_address.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("mac_address=" + Internal.sanitize(this.mac_address));
            return CollectionsKt.joinToString$default(arrayList, ", ", "BluetoothInterface{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ BluetoothInterface copy$default(BluetoothInterface bluetoothInterface, String str, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                str = bluetoothInterface.mac_address;
            }
            if ((i & 2) != 0) {
                byteString = bluetoothInterface.unknownFields();
            }
            return bluetoothInterface.copy(str, byteString);
        }

        public final BluetoothInterface copy(String mac_address, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(mac_address, "mac_address");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new BluetoothInterface(mac_address, unknownFields);
        }

        /* JADX INFO: compiled from: NetworkInterfaces.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;", "()V", "mac_address", "", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<BluetoothInterface, Builder> {
            public String mac_address = "";

            public final Builder mac_address(String mac_address) {
                Intrinsics.checkNotNullParameter(mac_address, "mac_address");
                this.mac_address = mac_address;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public BluetoothInterface build() {
                return new BluetoothInterface(this.mac_address, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: NetworkInterfaces.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/NetworkInterfaces$BluetoothInterface$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ BluetoothInterface build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BluetoothInterface.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<BluetoothInterface>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.NetworkInterfaces$BluetoothInterface$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(NetworkInterfaces.BluetoothInterface value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return !Intrinsics.areEqual(value.mac_address, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(1, value.mac_address) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, NetworkInterfaces.BluetoothInterface value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (!Intrinsics.areEqual(value.mac_address, "")) {
                        ProtoAdapter.STRING.encodeWithTag(writer, 1, value.mac_address);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, NetworkInterfaces.BluetoothInterface value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (Intrinsics.areEqual(value.mac_address, "")) {
                        return;
                    }
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.mac_address);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public NetworkInterfaces.BluetoothInterface redact(NetworkInterfaces.BluetoothInterface value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return NetworkInterfaces.BluetoothInterface.copy$default(value, null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public NetworkInterfaces.BluetoothInterface decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    String strDecode = "";
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new NetworkInterfaces.BluetoothInterface(strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
