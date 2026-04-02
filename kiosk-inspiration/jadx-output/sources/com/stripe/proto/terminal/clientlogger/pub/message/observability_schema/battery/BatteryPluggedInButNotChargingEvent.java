package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryPluggedInButNotChargingEvent;
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

/* JADX INFO: compiled from: BatteryPluggedInButNotChargingEvent.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u001d2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001c\u001d\u001eBU\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012JV\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u0011J\u0013\u0010\u0014\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\b\u0010\u0019\u001a\u00020\u0002H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0016R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;", "percentage", "", "dialog_shown", "", "dock_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;", "plugged_in_duration_millis", "", "battery_discharge_percent", "hub_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;", "use_case", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;", "unknownFields", "Lokio/ByteString;", "(DZLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;JDLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "UseCase", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BatteryPluggedInButNotChargingEvent extends Message<BatteryPluggedInButNotChargingEvent, Builder> {
    public static final ProtoAdapter<BatteryPluggedInButNotChargingEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#DOUBLE", jsonName = "batteryDischargePercent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final double battery_discharge_percent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "dialogShown", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final boolean dialog_shown;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState$DockConnectionStatus#ADAPTER", jsonName = "dockConnectionStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final DockState.DockConnectionStatus dock_connection_status;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState$HubConnectionStatus#ADAPTER", jsonName = "hubConnectionStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final HubState.HubConnectionStatus hub_connection_status;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#DOUBLE", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final double percentage;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "pluggedInDurationMillis", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final long plugged_in_duration_millis;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryPluggedInButNotChargingEvent$UseCase#ADAPTER", jsonName = "useCase", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final UseCase use_case;

    public BatteryPluggedInButNotChargingEvent() {
        this(0.0d, false, null, 0L, 0.0d, null, null, null, 255, null);
    }

    public /* synthetic */ BatteryPluggedInButNotChargingEvent(double d, boolean z, DockState.DockConnectionStatus dockConnectionStatus, long j, double d2, HubState.HubConnectionStatus hubConnectionStatus, UseCase useCase, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0.0d : d, (i & 2) != 0 ? false : z, (i & 4) != 0 ? DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID : dockConnectionStatus, (i & 8) != 0 ? 0L : j, (i & 16) != 0 ? 0.0d : d2, (i & 32) != 0 ? HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID : hubConnectionStatus, (i & 64) != 0 ? UseCase.USE_CASE_INVALID : useCase, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BatteryPluggedInButNotChargingEvent(double d, boolean z, DockState.DockConnectionStatus dock_connection_status, long j, double d2, HubState.HubConnectionStatus hub_connection_status, UseCase use_case, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(dock_connection_status, "dock_connection_status");
        Intrinsics.checkNotNullParameter(hub_connection_status, "hub_connection_status");
        Intrinsics.checkNotNullParameter(use_case, "use_case");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.percentage = d;
        this.dialog_shown = z;
        this.dock_connection_status = dock_connection_status;
        this.plugged_in_duration_millis = j;
        this.battery_discharge_percent = d2;
        this.hub_connection_status = hub_connection_status;
        this.use_case = use_case;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.percentage = this.percentage;
        builder.dialog_shown = this.dialog_shown;
        builder.dock_connection_status = this.dock_connection_status;
        builder.plugged_in_duration_millis = this.plugged_in_duration_millis;
        builder.battery_discharge_percent = this.battery_discharge_percent;
        builder.hub_connection_status = this.hub_connection_status;
        builder.use_case = this.use_case;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BatteryPluggedInButNotChargingEvent)) {
            return false;
        }
        BatteryPluggedInButNotChargingEvent batteryPluggedInButNotChargingEvent = (BatteryPluggedInButNotChargingEvent) other;
        return Intrinsics.areEqual(unknownFields(), batteryPluggedInButNotChargingEvent.unknownFields()) && this.percentage == batteryPluggedInButNotChargingEvent.percentage && this.dialog_shown == batteryPluggedInButNotChargingEvent.dialog_shown && this.dock_connection_status == batteryPluggedInButNotChargingEvent.dock_connection_status && this.plugged_in_duration_millis == batteryPluggedInButNotChargingEvent.plugged_in_duration_millis && this.battery_discharge_percent == batteryPluggedInButNotChargingEvent.battery_discharge_percent && this.hub_connection_status == batteryPluggedInButNotChargingEvent.hub_connection_status && this.use_case == batteryPluggedInButNotChargingEvent.use_case;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((unknownFields().hashCode() * 37) + Double.hashCode(this.percentage)) * 37) + Boolean.hashCode(this.dialog_shown)) * 37) + this.dock_connection_status.hashCode()) * 37) + Long.hashCode(this.plugged_in_duration_millis)) * 37) + Double.hashCode(this.battery_discharge_percent)) * 37) + this.hub_connection_status.hashCode()) * 37) + this.use_case.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("percentage=" + this.percentage);
        arrayList2.add("dialog_shown=" + this.dialog_shown);
        arrayList2.add("dock_connection_status=" + this.dock_connection_status);
        arrayList2.add("plugged_in_duration_millis=" + this.plugged_in_duration_millis);
        arrayList2.add("battery_discharge_percent=" + this.battery_discharge_percent);
        arrayList2.add("hub_connection_status=" + this.hub_connection_status);
        arrayList2.add("use_case=" + this.use_case);
        return CollectionsKt.joinToString$default(arrayList, ", ", "BatteryPluggedInButNotChargingEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ BatteryPluggedInButNotChargingEvent copy$default(BatteryPluggedInButNotChargingEvent batteryPluggedInButNotChargingEvent, double d, boolean z, DockState.DockConnectionStatus dockConnectionStatus, long j, double d2, HubState.HubConnectionStatus hubConnectionStatus, UseCase useCase, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            d = batteryPluggedInButNotChargingEvent.percentage;
        }
        double d3 = d;
        if ((i & 2) != 0) {
            z = batteryPluggedInButNotChargingEvent.dialog_shown;
        }
        return batteryPluggedInButNotChargingEvent.copy(d3, z, (i & 4) != 0 ? batteryPluggedInButNotChargingEvent.dock_connection_status : dockConnectionStatus, (i & 8) != 0 ? batteryPluggedInButNotChargingEvent.plugged_in_duration_millis : j, (i & 16) != 0 ? batteryPluggedInButNotChargingEvent.battery_discharge_percent : d2, (i & 32) != 0 ? batteryPluggedInButNotChargingEvent.hub_connection_status : hubConnectionStatus, (i & 64) != 0 ? batteryPluggedInButNotChargingEvent.use_case : useCase, (i & 128) != 0 ? batteryPluggedInButNotChargingEvent.unknownFields() : byteString);
    }

    public final BatteryPluggedInButNotChargingEvent copy(double percentage, boolean dialog_shown, DockState.DockConnectionStatus dock_connection_status, long plugged_in_duration_millis, double battery_discharge_percent, HubState.HubConnectionStatus hub_connection_status, UseCase use_case, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(dock_connection_status, "dock_connection_status");
        Intrinsics.checkNotNullParameter(hub_connection_status, "hub_connection_status");
        Intrinsics.checkNotNullParameter(use_case, "use_case");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BatteryPluggedInButNotChargingEvent(percentage, dialog_shown, dock_connection_status, plugged_in_duration_millis, battery_discharge_percent, hub_connection_status, use_case, unknownFields);
    }

    /* JADX INFO: compiled from: BatteryPluggedInButNotChargingEvent.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;", "()V", "battery_discharge_percent", "", "dialog_shown", "", "dock_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;", "hub_connection_status", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;", "percentage", "plugged_in_duration_millis", "", "use_case", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BatteryPluggedInButNotChargingEvent, Builder> {
        public double battery_discharge_percent;
        public boolean dialog_shown;
        public double percentage;
        public long plugged_in_duration_millis;
        public DockState.DockConnectionStatus dock_connection_status = DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID;
        public HubState.HubConnectionStatus hub_connection_status = HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID;
        public UseCase use_case = UseCase.USE_CASE_INVALID;

        public final Builder percentage(double percentage) {
            this.percentage = percentage;
            return this;
        }

        public final Builder dialog_shown(boolean dialog_shown) {
            this.dialog_shown = dialog_shown;
            return this;
        }

        public final Builder dock_connection_status(DockState.DockConnectionStatus dock_connection_status) {
            Intrinsics.checkNotNullParameter(dock_connection_status, "dock_connection_status");
            this.dock_connection_status = dock_connection_status;
            return this;
        }

        public final Builder plugged_in_duration_millis(long plugged_in_duration_millis) {
            this.plugged_in_duration_millis = plugged_in_duration_millis;
            return this;
        }

        public final Builder battery_discharge_percent(double battery_discharge_percent) {
            this.battery_discharge_percent = battery_discharge_percent;
            return this;
        }

        public final Builder hub_connection_status(HubState.HubConnectionStatus hub_connection_status) {
            Intrinsics.checkNotNullParameter(hub_connection_status, "hub_connection_status");
            this.hub_connection_status = hub_connection_status;
            return this;
        }

        public final Builder use_case(UseCase use_case) {
            Intrinsics.checkNotNullParameter(use_case, "use_case");
            this.use_case = use_case;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BatteryPluggedInButNotChargingEvent build() {
            return new BatteryPluggedInButNotChargingEvent(this.percentage, this.dialog_shown, this.dock_connection_status, this.plugged_in_duration_millis, this.battery_discharge_percent, this.hub_connection_status, this.use_case, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BatteryPluggedInButNotChargingEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BatteryPluggedInButNotChargingEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BatteryPluggedInButNotChargingEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BatteryPluggedInButNotChargingEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryPluggedInButNotChargingEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BatteryPluggedInButNotChargingEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                Double dValueOf = Double.valueOf(value.percentage);
                Double dValueOf2 = Double.valueOf(0.0d);
                if (!dValueOf.equals(dValueOf2)) {
                    size += ProtoAdapter.DOUBLE.encodedSizeWithTag(1, Double.valueOf(value.percentage));
                }
                if (value.dialog_shown) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.dialog_shown));
                }
                if (value.dock_connection_status != DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID) {
                    size += DockState.DockConnectionStatus.ADAPTER.encodedSizeWithTag(3, value.dock_connection_status);
                }
                if (value.plugged_in_duration_millis != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(4, Long.valueOf(value.plugged_in_duration_millis));
                }
                if (!Double.valueOf(value.battery_discharge_percent).equals(dValueOf2)) {
                    size += ProtoAdapter.DOUBLE.encodedSizeWithTag(5, Double.valueOf(value.battery_discharge_percent));
                }
                if (value.hub_connection_status != HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID) {
                    size += HubState.HubConnectionStatus.ADAPTER.encodedSizeWithTag(6, value.hub_connection_status);
                }
                return value.use_case != BatteryPluggedInButNotChargingEvent.UseCase.USE_CASE_INVALID ? size + BatteryPluggedInButNotChargingEvent.UseCase.ADAPTER.encodedSizeWithTag(7, value.use_case) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BatteryPluggedInButNotChargingEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                Double dValueOf = Double.valueOf(value.percentage);
                Double dValueOf2 = Double.valueOf(0.0d);
                if (!dValueOf.equals(dValueOf2)) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 1, Double.valueOf(value.percentage));
                }
                if (value.dialog_shown) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.dialog_shown));
                }
                if (value.dock_connection_status != DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID) {
                    DockState.DockConnectionStatus.ADAPTER.encodeWithTag(writer, 3, value.dock_connection_status);
                }
                if (value.plugged_in_duration_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.plugged_in_duration_millis));
                }
                if (!Double.valueOf(value.battery_discharge_percent).equals(dValueOf2)) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 5, Double.valueOf(value.battery_discharge_percent));
                }
                if (value.hub_connection_status != HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID) {
                    HubState.HubConnectionStatus.ADAPTER.encodeWithTag(writer, 6, value.hub_connection_status);
                }
                if (value.use_case != BatteryPluggedInButNotChargingEvent.UseCase.USE_CASE_INVALID) {
                    BatteryPluggedInButNotChargingEvent.UseCase.ADAPTER.encodeWithTag(writer, 7, value.use_case);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BatteryPluggedInButNotChargingEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.use_case != BatteryPluggedInButNotChargingEvent.UseCase.USE_CASE_INVALID) {
                    BatteryPluggedInButNotChargingEvent.UseCase.ADAPTER.encodeWithTag(writer, 7, value.use_case);
                }
                if (value.hub_connection_status != HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID) {
                    HubState.HubConnectionStatus.ADAPTER.encodeWithTag(writer, 6, value.hub_connection_status);
                }
                if (!Double.valueOf(value.battery_discharge_percent).equals(Double.valueOf(0.0d))) {
                    ProtoAdapter.DOUBLE.encodeWithTag(writer, 5, Double.valueOf(value.battery_discharge_percent));
                }
                if (value.plugged_in_duration_millis != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 4, Long.valueOf(value.plugged_in_duration_millis));
                }
                if (value.dock_connection_status != DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID) {
                    DockState.DockConnectionStatus.ADAPTER.encodeWithTag(writer, 3, value.dock_connection_status);
                }
                if (value.dialog_shown) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.dialog_shown));
                }
                if (Double.valueOf(value.percentage).equals(Double.valueOf(0.0d))) {
                    return;
                }
                ProtoAdapter.DOUBLE.encodeWithTag(writer, 1, Double.valueOf(value.percentage));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public BatteryPluggedInButNotChargingEvent decode(ProtoReader reader) throws IOException {
                DockState.DockConnectionStatus dockConnectionStatus;
                HubState.HubConnectionStatus hubConnectionStatus;
                double d;
                DockState.DockConnectionStatus dockConnectionStatus2;
                HubState.HubConnectionStatus hubConnectionStatus2;
                Intrinsics.checkNotNullParameter(reader, "reader");
                DockState.DockConnectionStatus dockConnectionStatus3 = DockState.DockConnectionStatus.DOCK_CONNECTION_STATUS_INVALID;
                HubState.HubConnectionStatus hubConnectionStatus3 = HubState.HubConnectionStatus.HUB_CONNECTION_STATUS_INVALID;
                BatteryPluggedInButNotChargingEvent.UseCase useCase = BatteryPluggedInButNotChargingEvent.UseCase.USE_CASE_INVALID;
                long jBeginMessage = reader.beginMessage();
                double dDoubleValue = 0.0d;
                long jLongValue = 0;
                BatteryPluggedInButNotChargingEvent.UseCase useCaseDecode = useCase;
                boolean zBooleanValue = false;
                HubState.HubConnectionStatus hubConnectionStatusDecode = hubConnectionStatus3;
                double dDoubleValue2 = 0.0d;
                DockState.DockConnectionStatus dockConnectionStatusDecode = dockConnectionStatus3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                dockConnectionStatus2 = dockConnectionStatusDecode;
                                hubConnectionStatus2 = hubConnectionStatusDecode;
                                dDoubleValue2 = ProtoAdapter.DOUBLE.decode(reader).doubleValue();
                                dockConnectionStatusDecode = dockConnectionStatus2;
                                hubConnectionStatusDecode = hubConnectionStatus2;
                                break;
                            case 2:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 3:
                                dockConnectionStatus = dockConnectionStatusDecode;
                                hubConnectionStatus = hubConnectionStatusDecode;
                                d = dDoubleValue2;
                                try {
                                    dockConnectionStatusDecode = DockState.DockConnectionStatus.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                    dockConnectionStatusDecode = dockConnectionStatus;
                                }
                                hubConnectionStatusDecode = hubConnectionStatus;
                                dDoubleValue2 = d;
                                break;
                            case 4:
                                dockConnectionStatus2 = dockConnectionStatusDecode;
                                hubConnectionStatus2 = hubConnectionStatusDecode;
                                jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                                dockConnectionStatusDecode = dockConnectionStatus2;
                                hubConnectionStatusDecode = hubConnectionStatus2;
                                break;
                            case 5:
                                dockConnectionStatus2 = dockConnectionStatusDecode;
                                hubConnectionStatus2 = hubConnectionStatusDecode;
                                dDoubleValue = ProtoAdapter.DOUBLE.decode(reader).doubleValue();
                                dockConnectionStatusDecode = dockConnectionStatus2;
                                hubConnectionStatusDecode = hubConnectionStatus2;
                                break;
                            case 6:
                                dockConnectionStatus = dockConnectionStatusDecode;
                                hubConnectionStatus = hubConnectionStatusDecode;
                                try {
                                    hubConnectionStatusDecode = HubState.HubConnectionStatus.ADAPTER.decode(reader);
                                    dockConnectionStatusDecode = dockConnectionStatus;
                                } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                    d = dDoubleValue2;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                                    dockConnectionStatusDecode = dockConnectionStatus;
                                    hubConnectionStatusDecode = hubConnectionStatus;
                                    dDoubleValue2 = d;
                                }
                                break;
                            case 7:
                                try {
                                    useCaseDecode = BatteryPluggedInButNotChargingEvent.UseCase.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e3) {
                                    dockConnectionStatus = dockConnectionStatusDecode;
                                    hubConnectionStatus = hubConnectionStatusDecode;
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e3.value));
                                    d = dDoubleValue2;
                                    dockConnectionStatusDecode = dockConnectionStatus;
                                    hubConnectionStatusDecode = hubConnectionStatus;
                                    dDoubleValue2 = d;
                                }
                                break;
                            default:
                                dockConnectionStatus = dockConnectionStatusDecode;
                                hubConnectionStatus = hubConnectionStatusDecode;
                                d = dDoubleValue2;
                                reader.readUnknownField(iNextTag);
                                dockConnectionStatusDecode = dockConnectionStatus;
                                hubConnectionStatusDecode = hubConnectionStatus;
                                dDoubleValue2 = d;
                                break;
                        }
                    } else {
                        return new BatteryPluggedInButNotChargingEvent(dDoubleValue2, zBooleanValue, dockConnectionStatusDecode, jLongValue, dDoubleValue, hubConnectionStatusDecode, useCaseDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BatteryPluggedInButNotChargingEvent redact(BatteryPluggedInButNotChargingEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return BatteryPluggedInButNotChargingEvent.copy$default(value, 0.0d, false, null, 0L, 0.0d, null, null, ByteString.EMPTY, 127, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: BatteryPluggedInButNotChargingEvent.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "USE_CASE_INVALID", "IR_SCARLET_DETAILING", "DEBUG", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UseCase implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UseCase[] $VALUES;
        public static final ProtoAdapter<UseCase> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final UseCase DEBUG;
        public static final UseCase IR_SCARLET_DETAILING;
        public static final UseCase USE_CASE_INVALID;
        private final int value;

        private static final /* synthetic */ UseCase[] $values() {
            return new UseCase[]{USE_CASE_INVALID, IR_SCARLET_DETAILING, DEBUG};
        }

        @JvmStatic
        public static final UseCase fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<UseCase> getEntries() {
            return $ENTRIES;
        }

        public static UseCase valueOf(String str) {
            return (UseCase) Enum.valueOf(UseCase.class, str);
        }

        public static UseCase[] values() {
            return (UseCase[]) $VALUES.clone();
        }

        private UseCase(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final UseCase useCase = new UseCase("USE_CASE_INVALID", 0, 0);
            USE_CASE_INVALID = useCase;
            IR_SCARLET_DETAILING = new UseCase("IR_SCARLET_DETAILING", 1, 1);
            DEBUG = new UseCase("DEBUG", 2, 2);
            UseCase[] useCaseArr$values = $values();
            $VALUES = useCaseArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(useCaseArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UseCase.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<UseCase>(orCreateKotlinClass, syntax, useCase) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryPluggedInButNotChargingEvent$UseCase$Companion$ADAPTER$1
                {
                    BatteryPluggedInButNotChargingEvent.UseCase useCase2 = useCase;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public BatteryPluggedInButNotChargingEvent.UseCase fromValue(int value) {
                    return BatteryPluggedInButNotChargingEvent.UseCase.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: BatteryPluggedInButNotChargingEvent.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent$UseCase;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final UseCase fromValue(int value) {
                if (value == 0) {
                    return UseCase.USE_CASE_INVALID;
                }
                if (value == 1) {
                    return UseCase.IR_SCARLET_DETAILING;
                }
                if (value != 2) {
                    return null;
                }
                return UseCase.DEBUG;
            }
        }
    }
}
