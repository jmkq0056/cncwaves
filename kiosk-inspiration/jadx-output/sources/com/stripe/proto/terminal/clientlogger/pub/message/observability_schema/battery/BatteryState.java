package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState;
import com.sun.jna.platform.win32.WinUser;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: BatteryState.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 #2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005!\"#$%Bs\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0016¢\u0006\u0002\u0010\u0017Jt\u0010\u0018\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0016J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\b\u0010\u001d\u001a\u00020\fH\u0016J\b\u0010\u001e\u001a\u00020\u0002H\u0016J\b\u0010\u001f\u001a\u00020 H\u0016R\u0010\u0010\r\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;", "percentage", "", "power_connectivity", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;", "last_known_power_source", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;", "health", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;", "voltage", "", "capacity", "temperature", "", "charging_cycle_count", "dock_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;", "hub_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;", "unknownFields", "Lokio/ByteString;", "(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "BatteryHealth", "Builder", "Companion", "PowerConnectivity", "PowerSource", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BatteryState extends Message<BatteryState, Builder> {
    public static final ProtoAdapter<BatteryState> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final int capacity;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "chargingCycleCount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final int charging_cycle_count;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState$DockConnectionStatus#ADAPTER", jsonName = "dockConnectionStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final DockState.DockConnectionStatus dock_connection_status;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$BatteryHealth#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final BatteryHealth health;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState$HubConnectionStatus#ADAPTER", jsonName = "hubConnectionStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final HubState.HubConnectionStatus hub_connection_status;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$PowerSource#ADAPTER", jsonName = "lastKnownPowerSource", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final PowerSource last_known_power_source;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#DOUBLE", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final double percentage;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$PowerConnectivity#ADAPTER", jsonName = "powerConnectivity", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final PowerConnectivity power_connectivity;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#FLOAT", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final float temperature;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final int voltage;

    public BatteryState() {
        this(0.0d, null, null, null, 0, 0, 0.0f, 0, null, null, null, 2047, null);
    }

    public /* synthetic */ BatteryState(double d, PowerConnectivity powerConnectivity, PowerSource powerSource, BatteryHealth batteryHealth, int i, int i2, float f, int i3, DockState.DockConnectionStatus dockConnectionStatus, HubState.HubConnectionStatus hubConnectionStatus, ByteString byteString, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? 0.0d : d, (i4 & 2) != 0 ? PowerConnectivity.POWER_CONNECTIVITY_INVALID : powerConnectivity, (i4 & 4) != 0 ? PowerSource.POWER_SOURCE_INVALID : powerSource, (i4 & 8) != 0 ? BatteryHealth.BATTERY_HEALTH_INVALID : batteryHealth, (i4 & 16) != 0 ? 0 : i, (i4 & 32) != 0 ? 0 : i2, (i4 & 64) != 0 ? 0.0f : f, (i4 & 128) == 0 ? i3 : 0, (i4 & 256) != 0 ? DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID : dockConnectionStatus, (i4 & 512) != 0 ? HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID : hubConnectionStatus, (i4 & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatteryState(double d, PowerConnectivity power_connectivity, PowerSource last_known_power_source, BatteryHealth health, int i, int i2, float f, int i3, DockState.DockConnectionStatus dock_connection_status, HubState.HubConnectionStatus hub_connection_status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(power_connectivity, "power_connectivity");
        Intrinsics.checkNotNullParameter(last_known_power_source, "last_known_power_source");
        Intrinsics.checkNotNullParameter(health, "health");
        Intrinsics.checkNotNullParameter(dock_connection_status, "dock_connection_status");
        Intrinsics.checkNotNullParameter(hub_connection_status, "hub_connection_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.percentage = d;
        this.power_connectivity = power_connectivity;
        this.last_known_power_source = last_known_power_source;
        this.health = health;
        this.voltage = i;
        this.capacity = i2;
        this.temperature = f;
        this.charging_cycle_count = i3;
        this.dock_connection_status = dock_connection_status;
        this.hub_connection_status = hub_connection_status;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.percentage = this.percentage;
        builder.power_connectivity = this.power_connectivity;
        builder.last_known_power_source = this.last_known_power_source;
        builder.health = this.health;
        builder.voltage = this.voltage;
        builder.capacity = this.capacity;
        builder.temperature = this.temperature;
        builder.charging_cycle_count = this.charging_cycle_count;
        builder.dock_connection_status = this.dock_connection_status;
        builder.hub_connection_status = this.hub_connection_status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BatteryState)) {
            return false;
        }
        BatteryState batteryState = (BatteryState) other;
        return Intrinsics.areEqual(unknownFields(), batteryState.unknownFields()) && this.percentage == batteryState.percentage && this.power_connectivity == batteryState.power_connectivity && this.last_known_power_source == batteryState.last_known_power_source && this.health == batteryState.health && this.voltage == batteryState.voltage && this.capacity == batteryState.capacity && this.temperature == batteryState.temperature && this.charging_cycle_count == batteryState.charging_cycle_count && this.dock_connection_status == batteryState.dock_connection_status && this.hub_connection_status == batteryState.hub_connection_status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((((unknownFields().hashCode() * 37) + Double.hashCode(this.percentage)) * 37) + this.power_connectivity.hashCode()) * 37) + this.last_known_power_source.hashCode()) * 37) + this.health.hashCode()) * 37) + Integer.hashCode(this.voltage)) * 37) + Integer.hashCode(this.capacity)) * 37) + Float.hashCode(this.temperature)) * 37) + Integer.hashCode(this.charging_cycle_count)) * 37) + this.dock_connection_status.hashCode()) * 37) + this.hub_connection_status.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("percentage=" + this.percentage);
        arrayList2.add("power_connectivity=" + this.power_connectivity);
        arrayList2.add("last_known_power_source=" + this.last_known_power_source);
        arrayList2.add("health=" + this.health);
        arrayList2.add("voltage=" + this.voltage);
        arrayList2.add("capacity=" + this.capacity);
        arrayList2.add("temperature=" + this.temperature);
        arrayList2.add("charging_cycle_count=" + this.charging_cycle_count);
        arrayList2.add("dock_connection_status=" + this.dock_connection_status);
        arrayList2.add("hub_connection_status=" + this.hub_connection_status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "BatteryState{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ BatteryState copy$default(BatteryState batteryState, double d, PowerConnectivity powerConnectivity, PowerSource powerSource, BatteryHealth batteryHealth, int i, int i2, float f, int i3, DockState.DockConnectionStatus dockConnectionStatus, HubState.HubConnectionStatus hubConnectionStatus, ByteString byteString, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            d = batteryState.percentage;
        }
        return batteryState.copy(d, (i4 & 2) != 0 ? batteryState.power_connectivity : powerConnectivity, (i4 & 4) != 0 ? batteryState.last_known_power_source : powerSource, (i4 & 8) != 0 ? batteryState.health : batteryHealth, (i4 & 16) != 0 ? batteryState.voltage : i, (i4 & 32) != 0 ? batteryState.capacity : i2, (i4 & 64) != 0 ? batteryState.temperature : f, (i4 & 128) != 0 ? batteryState.charging_cycle_count : i3, (i4 & 256) != 0 ? batteryState.dock_connection_status : dockConnectionStatus, (i4 & 512) != 0 ? batteryState.hub_connection_status : hubConnectionStatus, (i4 & 1024) != 0 ? batteryState.unknownFields() : byteString);
    }

    public final BatteryState copy(double percentage, PowerConnectivity power_connectivity, PowerSource last_known_power_source, BatteryHealth health, int voltage, int capacity, float temperature, int charging_cycle_count, DockState.DockConnectionStatus dock_connection_status, HubState.HubConnectionStatus hub_connection_status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(power_connectivity, "power_connectivity");
        Intrinsics.checkNotNullParameter(last_known_power_source, "last_known_power_source");
        Intrinsics.checkNotNullParameter(health, "health");
        Intrinsics.checkNotNullParameter(dock_connection_status, "dock_connection_status");
        Intrinsics.checkNotNullParameter(hub_connection_status, "hub_connection_status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BatteryState(percentage, power_connectivity, last_known_power_source, health, voltage, capacity, temperature, charging_cycle_count, dock_connection_status, hub_connection_status, unknownFields);
    }

    /* JADX INFO: compiled from: BatteryState.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;", "()V", "capacity", "", "charging_cycle_count", "dock_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;", "health", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;", "hub_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;", "last_known_power_source", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;", "percentage", "", "power_connectivity", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;", "temperature", "", "voltage", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BatteryState, Builder> {
        public int capacity;
        public int charging_cycle_count;
        public double percentage;
        public float temperature;
        public int voltage;
        public PowerConnectivity power_connectivity = PowerConnectivity.POWER_CONNECTIVITY_INVALID;
        public PowerSource last_known_power_source = PowerSource.POWER_SOURCE_INVALID;
        public BatteryHealth health = BatteryHealth.BATTERY_HEALTH_INVALID;
        public DockState.DockConnectionStatus dock_connection_status = DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID;
        public HubState.HubConnectionStatus hub_connection_status = HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID;

        public final Builder percentage(double percentage) {
            this.percentage = percentage;
            return this;
        }

        public final Builder power_connectivity(PowerConnectivity power_connectivity) {
            Intrinsics.checkNotNullParameter(power_connectivity, "power_connectivity");
            this.power_connectivity = power_connectivity;
            return this;
        }

        public final Builder last_known_power_source(PowerSource last_known_power_source) {
            Intrinsics.checkNotNullParameter(last_known_power_source, "last_known_power_source");
            this.last_known_power_source = last_known_power_source;
            return this;
        }

        public final Builder health(BatteryHealth health) {
            Intrinsics.checkNotNullParameter(health, "health");
            this.health = health;
            return this;
        }

        public final Builder voltage(int voltage) {
            this.voltage = voltage;
            return this;
        }

        public final Builder capacity(int capacity) {
            this.capacity = capacity;
            return this;
        }

        public final Builder temperature(float temperature) {
            this.temperature = temperature;
            return this;
        }

        public final Builder charging_cycle_count(int charging_cycle_count) {
            this.charging_cycle_count = charging_cycle_count;
            return this;
        }

        public final Builder dock_connection_status(DockState.DockConnectionStatus dock_connection_status) {
            Intrinsics.checkNotNullParameter(dock_connection_status, "dock_connection_status");
            this.dock_connection_status = dock_connection_status;
            return this;
        }

        public final Builder hub_connection_status(HubState.HubConnectionStatus hub_connection_status) {
            Intrinsics.checkNotNullParameter(hub_connection_status, "hub_connection_status");
            this.hub_connection_status = hub_connection_status;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BatteryState build() {
            return new BatteryState(this.percentage, this.power_connectivity, this.last_known_power_source, this.health, this.voltage, this.capacity, this.temperature, this.charging_cycle_count, this.dock_connection_status, this.hub_connection_status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BatteryState.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BatteryState build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BatteryState.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BatteryState>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BatteryState value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Double.valueOf(value.percentage).equals(Double.valueOf(0.0d))) {
                    size += ProtoAdapter.DOUBLE.encodedSizeWithTag(1, Double.valueOf(value.percentage));
                }
                if (value.power_connectivity != BatteryState.PowerConnectivity.POWER_CONNECTIVITY_INVALID) {
                    size += BatteryState.PowerConnectivity.ADAPTER.encodedSizeWithTag(2, value.power_connectivity);
                }
                if (value.last_known_power_source != BatteryState.PowerSource.POWER_SOURCE_INVALID) {
                    size += BatteryState.PowerSource.ADAPTER.encodedSizeWithTag(3, value.last_known_power_source);
                }
                if (value.health != BatteryState.BatteryHealth.BATTERY_HEALTH_INVALID) {
                    size += BatteryState.BatteryHealth.ADAPTER.encodedSizeWithTag(4, value.health);
                }
                if (value.voltage != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(5, Integer.valueOf(value.voltage));
                }
                if (value.capacity != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(6, Integer.valueOf(value.capacity));
                }
                if (!Float.valueOf(value.temperature).equals(Float.valueOf(0.0f))) {
                    size += ProtoAdapter.FLOAT.encodedSizeWithTag(7, Float.valueOf(value.temperature));
                }
                if (value.charging_cycle_count != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(8, Integer.valueOf(value.charging_cycle_count));
                }
                if (value.dock_connection_status != DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID) {
                    size += DockState.DockConnectionStatus.ADAPTER.encodedSizeWithTag(9, value.dock_connection_status);
                }
                return value.hub_connection_status != HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID ? size + HubState.HubConnectionStatus.ADAPTER.encodedSizeWithTag(10, value.hub_connection_status) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BatteryState value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Double.valueOf(value.percentage).equals(Double.valueOf(0.0d))) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 1, Double.valueOf(value.percentage));
                }
                if (value.power_connectivity != BatteryState.PowerConnectivity.POWER_CONNECTIVITY_INVALID) {
                    BatteryState.PowerConnectivity.ADAPTER.encodeWithTag(writer, 2, value.power_connectivity);
                }
                if (value.last_known_power_source != BatteryState.PowerSource.POWER_SOURCE_INVALID) {
                    BatteryState.PowerSource.ADAPTER.encodeWithTag(writer, 3, value.last_known_power_source);
                }
                if (value.health != BatteryState.BatteryHealth.BATTERY_HEALTH_INVALID) {
                    BatteryState.BatteryHealth.ADAPTER.encodeWithTag(writer, 4, value.health);
                }
                if (value.voltage != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.voltage));
                }
                if (value.capacity != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 6, Integer.valueOf(value.capacity));
                }
                if (!Float.valueOf(value.temperature).equals(Float.valueOf(0.0f))) {
                    ProtoAdapter.FLOAT.encodeWithTag(writer, 7, Float.valueOf(value.temperature));
                }
                if (value.charging_cycle_count != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 8, Integer.valueOf(value.charging_cycle_count));
                }
                if (value.dock_connection_status != DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID) {
                    DockState.DockConnectionStatus.ADAPTER.encodeWithTag(writer, 9, value.dock_connection_status);
                }
                if (value.hub_connection_status != HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID) {
                    HubState.HubConnectionStatus.ADAPTER.encodeWithTag(writer, 10, value.hub_connection_status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BatteryState value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.hub_connection_status != HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID) {
                    HubState.HubConnectionStatus.ADAPTER.encodeWithTag(writer, 10, value.hub_connection_status);
                }
                if (value.dock_connection_status != DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID) {
                    DockState.DockConnectionStatus.ADAPTER.encodeWithTag(writer, 9, value.dock_connection_status);
                }
                if (value.charging_cycle_count != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 8, Integer.valueOf(value.charging_cycle_count));
                }
                if (!Float.valueOf(value.temperature).equals(Float.valueOf(0.0f))) {
                    ProtoAdapter.FLOAT.encodeWithTag(writer, 7, Float.valueOf(value.temperature));
                }
                if (value.capacity != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 6, Integer.valueOf(value.capacity));
                }
                if (value.voltage != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.voltage));
                }
                if (value.health != BatteryState.BatteryHealth.BATTERY_HEALTH_INVALID) {
                    BatteryState.BatteryHealth.ADAPTER.encodeWithTag(writer, 4, value.health);
                }
                if (value.last_known_power_source != BatteryState.PowerSource.POWER_SOURCE_INVALID) {
                    BatteryState.PowerSource.ADAPTER.encodeWithTag(writer, 3, value.last_known_power_source);
                }
                if (value.power_connectivity != BatteryState.PowerConnectivity.POWER_CONNECTIVITY_INVALID) {
                    BatteryState.PowerConnectivity.ADAPTER.encodeWithTag(writer, 2, value.power_connectivity);
                }
                if (Double.valueOf(value.percentage).equals(Double.valueOf(0.0d))) {
                    return;
                }
                ProtoAdapter.DOUBLE.encodeWithTag(writer, 1, Double.valueOf(value.percentage));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            /*  JADX ERROR: UnsupportedOperationException in pass: SwitchBreakVisitor
                java.lang.UnsupportedOperationException
                	at java.base/java.util.AbstractList.remove(AbstractList.java:167)
                	at jadx.core.utils.ListUtils.removeLast(ListUtils.java:82)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.removeBreak(SwitchBreakVisitor.java:254)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processBranchRegion(SwitchBreakVisitor.java:110)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$ExtractCommonBreak.processRegion(SwitchBreakVisitor.java:64)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$BaseSwitchRegionVisitor.enterRegion(SwitchBreakVisitor.java:202)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:23)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor$IterativeSwitchRegionVisitor.leaveRegion(SwitchBreakVisitor.java:177)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:70)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1093)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
                	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
                	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.runSwitchTraverse(SwitchBreakVisitor.java:52)
                	at jadx.core.dex.visitors.regions.SwitchBreakVisitor.visit(SwitchBreakVisitor.java:45)
                */
            @Override // com.squareup.wire.ProtoAdapter
            public com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState decode(com.squareup.wire.ProtoReader r23) throws java.io.IOException {
                /*
                    Method dump skipped, instruction units count: 292
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$Companion$ADAPTER$1.decode(com.squareup.wire.ProtoReader):com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState");
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BatteryState redact(BatteryState value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return BatteryState.copy$default(value, 0.0d, null, null, null, 0, 0, 0.0f, 0, null, null, ByteString.EMPTY, WinUser.CF_GDIOBJLAST, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BatteryState.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "POWER_CONNECTIVITY_INVALID", "CONNECTED", "DISCONNECTED", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class PowerConnectivity implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PowerConnectivity[] $VALUES;
        public static final ProtoAdapter<PowerConnectivity> ADAPTER;
        public static final PowerConnectivity CONNECTED;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final PowerConnectivity DISCONNECTED;
        public static final PowerConnectivity POWER_CONNECTIVITY_INVALID;
        private final int value;

        private static final /* synthetic */ PowerConnectivity[] $values() {
            return new PowerConnectivity[]{POWER_CONNECTIVITY_INVALID, CONNECTED, DISCONNECTED};
        }

        @JvmStatic
        public static final PowerConnectivity fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<PowerConnectivity> getEntries() {
            return $ENTRIES;
        }

        public static PowerConnectivity valueOf(String str) {
            return (PowerConnectivity) Enum.valueOf(PowerConnectivity.class, str);
        }

        public static PowerConnectivity[] values() {
            return (PowerConnectivity[]) $VALUES.clone();
        }

        private PowerConnectivity(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final PowerConnectivity powerConnectivity = new PowerConnectivity("POWER_CONNECTIVITY_INVALID", 0, 0);
            POWER_CONNECTIVITY_INVALID = powerConnectivity;
            CONNECTED = new PowerConnectivity("CONNECTED", 1, 1);
            DISCONNECTED = new PowerConnectivity("DISCONNECTED", 2, 2);
            PowerConnectivity[] powerConnectivityArr$values = $values();
            $VALUES = powerConnectivityArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(powerConnectivityArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PowerConnectivity.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<PowerConnectivity>(orCreateKotlinClass, syntax, powerConnectivity) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$PowerConnectivity$Companion$ADAPTER$1
                {
                    BatteryState.PowerConnectivity powerConnectivity2 = powerConnectivity;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public BatteryState.PowerConnectivity fromValue(int value) {
                    return BatteryState.PowerConnectivity.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: BatteryState.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final PowerConnectivity fromValue(int value) {
                if (value == 0) {
                    return PowerConnectivity.POWER_CONNECTIVITY_INVALID;
                }
                if (value == 1) {
                    return PowerConnectivity.CONNECTED;
                }
                if (value != 2) {
                    return null;
                }
                return PowerConnectivity.DISCONNECTED;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BatteryState.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "POWER_SOURCE_INVALID", "BATTERY_PLUGGED_AC", "BATTERY_PLUGGED_USB", "BATTERY_PLUGGED_WIRELESS", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class PowerSource implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ PowerSource[] $VALUES;
        public static final ProtoAdapter<PowerSource> ADAPTER;
        public static final PowerSource BATTERY_PLUGGED_AC;
        public static final PowerSource BATTERY_PLUGGED_USB;
        public static final PowerSource BATTERY_PLUGGED_WIRELESS;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final PowerSource POWER_SOURCE_INVALID;
        private final int value;

        private static final /* synthetic */ PowerSource[] $values() {
            return new PowerSource[]{POWER_SOURCE_INVALID, BATTERY_PLUGGED_AC, BATTERY_PLUGGED_USB, BATTERY_PLUGGED_WIRELESS};
        }

        @JvmStatic
        public static final PowerSource fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<PowerSource> getEntries() {
            return $ENTRIES;
        }

        public static PowerSource valueOf(String str) {
            return (PowerSource) Enum.valueOf(PowerSource.class, str);
        }

        public static PowerSource[] values() {
            return (PowerSource[]) $VALUES.clone();
        }

        private PowerSource(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final PowerSource powerSource = new PowerSource("POWER_SOURCE_INVALID", 0, 0);
            POWER_SOURCE_INVALID = powerSource;
            BATTERY_PLUGGED_AC = new PowerSource("BATTERY_PLUGGED_AC", 1, 1);
            BATTERY_PLUGGED_USB = new PowerSource("BATTERY_PLUGGED_USB", 2, 2);
            BATTERY_PLUGGED_WIRELESS = new PowerSource("BATTERY_PLUGGED_WIRELESS", 3, 3);
            PowerSource[] powerSourceArr$values = $values();
            $VALUES = powerSourceArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(powerSourceArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PowerSource.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<PowerSource>(orCreateKotlinClass, syntax, powerSource) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$PowerSource$Companion$ADAPTER$1
                {
                    BatteryState.PowerSource powerSource2 = powerSource;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public BatteryState.PowerSource fromValue(int value) {
                    return BatteryState.PowerSource.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: BatteryState.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final PowerSource fromValue(int value) {
                if (value == 0) {
                    return PowerSource.POWER_SOURCE_INVALID;
                }
                if (value == 1) {
                    return PowerSource.BATTERY_PLUGGED_AC;
                }
                if (value == 2) {
                    return PowerSource.BATTERY_PLUGGED_USB;
                }
                if (value != 3) {
                    return null;
                }
                return PowerSource.BATTERY_PLUGGED_WIRELESS;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BatteryState.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "BATTERY_HEALTH_INVALID", "BATTERY_HEALTH_COLD", "BATTERY_HEALTH_DEAD", "BATTERY_HEALTH_GOOD", "BATTERY_HEALTH_OVERHEATED", "BATTERY_HEALTH_OVERVOLTAGE", "BATTERY_HEALTH_UNSPECIFIED_FAILURE", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BatteryHealth implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ BatteryHealth[] $VALUES;
        public static final ProtoAdapter<BatteryHealth> ADAPTER;
        public static final BatteryHealth BATTERY_HEALTH_COLD;
        public static final BatteryHealth BATTERY_HEALTH_DEAD;
        public static final BatteryHealth BATTERY_HEALTH_GOOD;
        public static final BatteryHealth BATTERY_HEALTH_INVALID;
        public static final BatteryHealth BATTERY_HEALTH_OVERHEATED;
        public static final BatteryHealth BATTERY_HEALTH_OVERVOLTAGE;
        public static final BatteryHealth BATTERY_HEALTH_UNSPECIFIED_FAILURE;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        private final int value;

        private static final /* synthetic */ BatteryHealth[] $values() {
            return new BatteryHealth[]{BATTERY_HEALTH_INVALID, BATTERY_HEALTH_COLD, BATTERY_HEALTH_DEAD, BATTERY_HEALTH_GOOD, BATTERY_HEALTH_OVERHEATED, BATTERY_HEALTH_OVERVOLTAGE, BATTERY_HEALTH_UNSPECIFIED_FAILURE};
        }

        @JvmStatic
        public static final BatteryHealth fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<BatteryHealth> getEntries() {
            return $ENTRIES;
        }

        public static BatteryHealth valueOf(String str) {
            return (BatteryHealth) Enum.valueOf(BatteryHealth.class, str);
        }

        public static BatteryHealth[] values() {
            return (BatteryHealth[]) $VALUES.clone();
        }

        private BatteryHealth(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final BatteryHealth batteryHealth = new BatteryHealth("BATTERY_HEALTH_INVALID", 0, 0);
            BATTERY_HEALTH_INVALID = batteryHealth;
            BATTERY_HEALTH_COLD = new BatteryHealth("BATTERY_HEALTH_COLD", 1, 1);
            BATTERY_HEALTH_DEAD = new BatteryHealth("BATTERY_HEALTH_DEAD", 2, 2);
            BATTERY_HEALTH_GOOD = new BatteryHealth("BATTERY_HEALTH_GOOD", 3, 3);
            BATTERY_HEALTH_OVERHEATED = new BatteryHealth("BATTERY_HEALTH_OVERHEATED", 4, 4);
            BATTERY_HEALTH_OVERVOLTAGE = new BatteryHealth("BATTERY_HEALTH_OVERVOLTAGE", 5, 5);
            BATTERY_HEALTH_UNSPECIFIED_FAILURE = new BatteryHealth("BATTERY_HEALTH_UNSPECIFIED_FAILURE", 6, 6);
            BatteryHealth[] batteryHealthArr$values = $values();
            $VALUES = batteryHealthArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(batteryHealthArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BatteryHealth.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<BatteryHealth>(orCreateKotlinClass, syntax, batteryHealth) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState$BatteryHealth$Companion$ADAPTER$1
                {
                    BatteryState.BatteryHealth batteryHealth2 = batteryHealth;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public BatteryState.BatteryHealth fromValue(int value) {
                    return BatteryState.BatteryHealth.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: BatteryState.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final BatteryHealth fromValue(int value) {
                switch (value) {
                    case 0:
                        return BatteryHealth.BATTERY_HEALTH_INVALID;
                    case 1:
                        return BatteryHealth.BATTERY_HEALTH_COLD;
                    case 2:
                        return BatteryHealth.BATTERY_HEALTH_DEAD;
                    case 3:
                        return BatteryHealth.BATTERY_HEALTH_GOOD;
                    case 4:
                        return BatteryHealth.BATTERY_HEALTH_OVERHEATED;
                    case 5:
                        return BatteryHealth.BATTERY_HEALTH_OVERVOLTAGE;
                    case 6:
                        return BatteryHealth.BATTERY_HEALTH_UNSPECIFIED_FAILURE;
                    default:
                        return null;
                }
            }
        }
    }
}
