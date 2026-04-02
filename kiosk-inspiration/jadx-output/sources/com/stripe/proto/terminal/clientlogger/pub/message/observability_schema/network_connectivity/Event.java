package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity;

import androidx.core.app.NotificationCompat;
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

/* JADX INFO: compiled from: Event.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;", "network_connected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;", "network_properties_changed", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;", "network_lost", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;", "wifi_connectivity_changed", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;", "wifi_connection_attempt", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Event extends Message<Event, Builder> {
    public static final ProtoAdapter<Event> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.NetworkConnected#ADAPTER", jsonName = "networkConnected", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 0, tag = 2)
    public final NetworkConnected network_connected;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.NetworkLost#ADAPTER", jsonName = "networkLost", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 4)
    public final NetworkLost network_lost;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.NetworkPropertiesChanged#ADAPTER", jsonName = "networkPropertiesChanged", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 3)
    public final NetworkPropertiesChanged network_properties_changed;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.WifiConnectionAttempt#ADAPTER", jsonName = "wifiConnectionAttempt", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 4, tag = 6)
    public final WifiConnectionAttempt wifi_connection_attempt;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.WifiConnectivityChanged#ADAPTER", jsonName = "wifiConnectivityChanged", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 5)
    public final WifiConnectivityChanged wifi_connectivity_changed;

    public Event() {
        this(null, null, null, null, null, null, 63, null);
    }

    public /* synthetic */ Event(NetworkConnected networkConnected, NetworkPropertiesChanged networkPropertiesChanged, NetworkLost networkLost, WifiConnectivityChanged wifiConnectivityChanged, WifiConnectionAttempt wifiConnectionAttempt, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : networkConnected, (i & 2) != 0 ? null : networkPropertiesChanged, (i & 4) != 0 ? null : networkLost, (i & 8) != 0 ? null : wifiConnectivityChanged, (i & 16) != 0 ? null : wifiConnectionAttempt, (i & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Event(NetworkConnected networkConnected, NetworkPropertiesChanged networkPropertiesChanged, NetworkLost networkLost, WifiConnectivityChanged wifiConnectivityChanged, WifiConnectionAttempt wifiConnectionAttempt, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.network_connected = networkConnected;
        this.network_properties_changed = networkPropertiesChanged;
        this.network_lost = networkLost;
        this.wifi_connectivity_changed = wifiConnectivityChanged;
        this.wifi_connection_attempt = wifiConnectionAttempt;
        if (Internal.countNonNull(networkConnected, networkPropertiesChanged, networkLost, wifiConnectivityChanged, wifiConnectionAttempt) > 1) {
            throw new IllegalArgumentException("At most one of network_connected, network_properties_changed, network_lost, wifi_connectivity_changed, wifi_connection_attempt may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.network_connected = this.network_connected;
        builder.network_properties_changed = this.network_properties_changed;
        builder.network_lost = this.network_lost;
        builder.wifi_connectivity_changed = this.wifi_connectivity_changed;
        builder.wifi_connection_attempt = this.wifi_connection_attempt;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Event)) {
            return false;
        }
        Event event = (Event) other;
        return Intrinsics.areEqual(unknownFields(), event.unknownFields()) && Intrinsics.areEqual(this.network_connected, event.network_connected) && Intrinsics.areEqual(this.network_properties_changed, event.network_properties_changed) && Intrinsics.areEqual(this.network_lost, event.network_lost) && Intrinsics.areEqual(this.wifi_connectivity_changed, event.wifi_connectivity_changed) && Intrinsics.areEqual(this.wifi_connection_attempt, event.wifi_connection_attempt);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        NetworkConnected networkConnected = this.network_connected;
        int iHashCode2 = (iHashCode + (networkConnected != null ? networkConnected.hashCode() : 0)) * 37;
        NetworkPropertiesChanged networkPropertiesChanged = this.network_properties_changed;
        int iHashCode3 = (iHashCode2 + (networkPropertiesChanged != null ? networkPropertiesChanged.hashCode() : 0)) * 37;
        NetworkLost networkLost = this.network_lost;
        int iHashCode4 = (iHashCode3 + (networkLost != null ? networkLost.hashCode() : 0)) * 37;
        WifiConnectivityChanged wifiConnectivityChanged = this.wifi_connectivity_changed;
        int iHashCode5 = (iHashCode4 + (wifiConnectivityChanged != null ? wifiConnectivityChanged.hashCode() : 0)) * 37;
        WifiConnectionAttempt wifiConnectionAttempt = this.wifi_connection_attempt;
        int iHashCode6 = iHashCode5 + (wifiConnectionAttempt != null ? wifiConnectionAttempt.hashCode() : 0);
        this.hashCode = iHashCode6;
        return iHashCode6;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.network_connected != null) {
            arrayList.add("network_connected=" + this.network_connected);
        }
        if (this.network_properties_changed != null) {
            arrayList.add("network_properties_changed=" + this.network_properties_changed);
        }
        if (this.network_lost != null) {
            arrayList.add("network_lost=" + this.network_lost);
        }
        if (this.wifi_connectivity_changed != null) {
            arrayList.add("wifi_connectivity_changed=" + this.wifi_connectivity_changed);
        }
        if (this.wifi_connection_attempt != null) {
            arrayList.add("wifi_connection_attempt=" + this.wifi_connection_attempt);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "Event{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Event copy$default(Event event, NetworkConnected networkConnected, NetworkPropertiesChanged networkPropertiesChanged, NetworkLost networkLost, WifiConnectivityChanged wifiConnectivityChanged, WifiConnectionAttempt wifiConnectionAttempt, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            networkConnected = event.network_connected;
        }
        if ((i & 2) != 0) {
            networkPropertiesChanged = event.network_properties_changed;
        }
        if ((i & 4) != 0) {
            networkLost = event.network_lost;
        }
        if ((i & 8) != 0) {
            wifiConnectivityChanged = event.wifi_connectivity_changed;
        }
        if ((i & 16) != 0) {
            wifiConnectionAttempt = event.wifi_connection_attempt;
        }
        if ((i & 32) != 0) {
            byteString = event.unknownFields();
        }
        WifiConnectionAttempt wifiConnectionAttempt2 = wifiConnectionAttempt;
        ByteString byteString2 = byteString;
        return event.copy(networkConnected, networkPropertiesChanged, networkLost, wifiConnectivityChanged, wifiConnectionAttempt2, byteString2);
    }

    public final Event copy(NetworkConnected network_connected, NetworkPropertiesChanged network_properties_changed, NetworkLost network_lost, WifiConnectivityChanged wifi_connectivity_changed, WifiConnectionAttempt wifi_connection_attempt, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Event(network_connected, network_properties_changed, network_lost, wifi_connectivity_changed, wifi_connection_attempt, unknownFields);
    }

    /* JADX INFO: compiled from: Event.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event;", "()V", "network_connected", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnected;", "network_lost", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkLost;", "network_properties_changed", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkPropertiesChanged;", "wifi_connection_attempt", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectionAttempt;", "wifi_connectivity_changed", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/WifiConnectivityChanged;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Event, Builder> {
        public NetworkConnected network_connected;
        public NetworkLost network_lost;
        public NetworkPropertiesChanged network_properties_changed;
        public WifiConnectionAttempt wifi_connection_attempt;
        public WifiConnectivityChanged wifi_connectivity_changed;

        public final Builder network_connected(NetworkConnected network_connected) {
            this.network_connected = network_connected;
            this.network_properties_changed = null;
            this.network_lost = null;
            this.wifi_connectivity_changed = null;
            this.wifi_connection_attempt = null;
            return this;
        }

        public final Builder network_properties_changed(NetworkPropertiesChanged network_properties_changed) {
            this.network_properties_changed = network_properties_changed;
            this.network_connected = null;
            this.network_lost = null;
            this.wifi_connectivity_changed = null;
            this.wifi_connection_attempt = null;
            return this;
        }

        public final Builder network_lost(NetworkLost network_lost) {
            this.network_lost = network_lost;
            this.network_connected = null;
            this.network_properties_changed = null;
            this.wifi_connectivity_changed = null;
            this.wifi_connection_attempt = null;
            return this;
        }

        public final Builder wifi_connectivity_changed(WifiConnectivityChanged wifi_connectivity_changed) {
            this.wifi_connectivity_changed = wifi_connectivity_changed;
            this.network_connected = null;
            this.network_properties_changed = null;
            this.network_lost = null;
            this.wifi_connection_attempt = null;
            return this;
        }

        public final Builder wifi_connection_attempt(WifiConnectionAttempt wifi_connection_attempt) {
            this.wifi_connection_attempt = wifi_connection_attempt;
            this.network_connected = null;
            this.network_properties_changed = null;
            this.network_lost = null;
            this.wifi_connectivity_changed = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Event build() {
            return new Event(this.network_connected, this.network_properties_changed, this.network_lost, this.wifi_connectivity_changed, this.wifi_connection_attempt, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Event.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/Event$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Event build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Event.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Event>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.Event$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Event value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + NetworkConnected.ADAPTER.encodedSizeWithTag(2, value.network_connected) + NetworkPropertiesChanged.ADAPTER.encodedSizeWithTag(3, value.network_properties_changed) + NetworkLost.ADAPTER.encodedSizeWithTag(4, value.network_lost) + WifiConnectivityChanged.ADAPTER.encodedSizeWithTag(5, value.wifi_connectivity_changed) + WifiConnectionAttempt.ADAPTER.encodedSizeWithTag(6, value.wifi_connection_attempt);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Event value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                NetworkConnected.ADAPTER.encodeWithTag(writer, 2, value.network_connected);
                NetworkPropertiesChanged.ADAPTER.encodeWithTag(writer, 3, value.network_properties_changed);
                NetworkLost.ADAPTER.encodeWithTag(writer, 4, value.network_lost);
                WifiConnectivityChanged.ADAPTER.encodeWithTag(writer, 5, value.wifi_connectivity_changed);
                WifiConnectionAttempt.ADAPTER.encodeWithTag(writer, 6, value.wifi_connection_attempt);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Event value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                WifiConnectionAttempt.ADAPTER.encodeWithTag(writer, 6, value.wifi_connection_attempt);
                WifiConnectivityChanged.ADAPTER.encodeWithTag(writer, 5, value.wifi_connectivity_changed);
                NetworkLost.ADAPTER.encodeWithTag(writer, 4, value.network_lost);
                NetworkPropertiesChanged.ADAPTER.encodeWithTag(writer, 3, value.network_properties_changed);
                NetworkConnected.ADAPTER.encodeWithTag(writer, 2, value.network_connected);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Event redact(Event value) {
                Intrinsics.checkNotNullParameter(value, "value");
                NetworkConnected networkConnected = value.network_connected;
                NetworkConnected networkConnectedRedact = networkConnected != null ? NetworkConnected.ADAPTER.redact(networkConnected) : null;
                NetworkPropertiesChanged networkPropertiesChanged = value.network_properties_changed;
                NetworkPropertiesChanged networkPropertiesChangedRedact = networkPropertiesChanged != null ? NetworkPropertiesChanged.ADAPTER.redact(networkPropertiesChanged) : null;
                NetworkLost networkLost = value.network_lost;
                NetworkLost networkLostRedact = networkLost != null ? NetworkLost.ADAPTER.redact(networkLost) : null;
                WifiConnectivityChanged wifiConnectivityChanged = value.wifi_connectivity_changed;
                WifiConnectivityChanged wifiConnectivityChangedRedact = wifiConnectivityChanged != null ? WifiConnectivityChanged.ADAPTER.redact(wifiConnectivityChanged) : null;
                WifiConnectionAttempt wifiConnectionAttempt = value.wifi_connection_attempt;
                return value.copy(networkConnectedRedact, networkPropertiesChangedRedact, networkLostRedact, wifiConnectivityChangedRedact, wifiConnectionAttempt != null ? WifiConnectionAttempt.ADAPTER.redact(wifiConnectionAttempt) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Event decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                NetworkConnected networkConnectedDecode = null;
                NetworkPropertiesChanged networkPropertiesChangedDecode = null;
                NetworkLost networkLostDecode = null;
                WifiConnectivityChanged wifiConnectivityChangedDecode = null;
                WifiConnectionAttempt wifiConnectionAttemptDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Event(networkConnectedDecode, networkPropertiesChangedDecode, networkLostDecode, wifiConnectivityChangedDecode, wifiConnectionAttemptDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 2) {
                        networkConnectedDecode = NetworkConnected.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        networkPropertiesChangedDecode = NetworkPropertiesChanged.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        networkLostDecode = NetworkLost.ADAPTER.decode(reader);
                    } else if (iNextTag == 5) {
                        wifiConnectivityChangedDecode = WifiConnectivityChanged.ADAPTER.decode(reader);
                    } else if (iNextTag == 6) {
                        wifiConnectionAttemptDecode = WifiConnectionAttempt.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
