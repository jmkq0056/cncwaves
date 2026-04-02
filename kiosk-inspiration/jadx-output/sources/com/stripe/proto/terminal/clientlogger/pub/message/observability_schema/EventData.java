package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.USBDeviceStateEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryChargingDialogShownEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryPluggedInButNotChargingEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.CoinCellBatteryState;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.BootCompletedEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.countertop_transaction.CountertopTransactionStartEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataUsageEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.DeviceFactoryConfigurationEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperModeEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device_temperature.DeviceTemperatureEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.devkit.DevKitSideloadInstallEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.NetworkConnectivityEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.DevicePerformanceSnapshotEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.screen.ScreenMetadataEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.storage.StorageEvent;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.system_event.AndroidSystemEvent;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: EventData.kt */
/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 F2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002EFB»\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,\u0012\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.\u0012\n\b\u0002\u0010/\u001a\u0004\u0018\u000100\u0012\n\b\u0002\u00101\u001a\u0004\u0018\u000102\u0012\n\b\u0002\u00103\u001a\u0004\u0018\u000104\u0012\b\b\u0002\u00105\u001a\u000206¢\u0006\u0002\u00107J¼\u0002\u0010;\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\n\b\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\b\u0002\u0010'\u001a\u0004\u0018\u00010(2\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\b\u0002\u0010+\u001a\u0004\u0018\u00010,2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.2\n\b\u0002\u0010/\u001a\u0004\u0018\u0001002\n\b\u0002\u00101\u001a\u0004\u0018\u0001022\n\b\u0002\u00103\u001a\u0004\u0018\u0001042\b\b\u0002\u00105\u001a\u000206J\u0013\u0010<\u001a\u00020=2\b\u0010>\u001a\u0004\u0018\u00010?H\u0096\u0002J\b\u0010@\u001a\u00020AH\u0016J\b\u0010B\u001a\u00020\u0002H\u0016J\b\u0010C\u001a\u00020DH\u0016R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010'\u001a\u0004\u0018\u00010(8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b8\u00109R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u0004\u0018\u00010&8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u0004\u0018\u00010*8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u0004\u0018\u00010$8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001c8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u00103\u001a\u0004\u0018\u0001048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u0004\u0018\u00010.8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u0004\u0018\u00010\"8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u00101\u001a\u0004\u0018\u0001028\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b:\u00109R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u0004\u0018\u00010 8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u0004\u0018\u00010,8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010/\u001a\u0004\u0018\u0001008\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006G"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;", "battery_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;", "tamper_coin_cell_battery_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;", "devkit_sideload_install_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;", "boot_completed_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;", "app_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;", "screen_metadata_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;", "battery_charging_dialog_shown_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;", "countertop_transaction_start_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;", "accessibility_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;", "device_performance_snapshot_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;", "battery_plugged_in_but_not_charging_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;", "dock_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;", "hub_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;", "storage_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;", "tamper_mode_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;", "network_connectivity_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;", "device_temperature_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;", "data_usage_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;", "android_system_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;", "device_factory_configuration_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;", "update_operation_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;", "key_missing_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;", "usb_device_state_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;", "pos_connectivity_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;", "integrity_check_error_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;Lokio/ByteString;)V", "getBattery_charging_dialog_shown_event$annotations", "()V", "getStorage_event$annotations", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EventData extends Message<EventData, Builder> {
    public static final ProtoAdapter<EventData> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessibility.AccessibilityEvent#ADAPTER", jsonName = "accessibilityEvent", oneofName = "data", schemaIndex = 8, tag = 9)
    public final AccessibilityEvent accessibility_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.system_event.AndroidSystemEvent#ADAPTER", jsonName = "androidSystemEvent", oneofName = "data", schemaIndex = 18, tag = 19)
    public final AndroidSystemEvent android_system_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.app_event.ApplicationLifecycleEvent#ADAPTER", jsonName = "appEvent", oneofName = "data", schemaIndex = 4, tag = 5)
    public final ApplicationLifecycleEvent app_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryChargingDialogShownEvent#ADAPTER", jsonName = "batteryChargingDialogShownEvent", oneofName = "data", schemaIndex = 6, tag = 7)
    public final BatteryChargingDialogShownEvent battery_charging_dialog_shown_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryPluggedInButNotChargingEvent#ADAPTER", jsonName = "batteryPluggedInButNotChargingEvent", oneofName = "data", schemaIndex = 10, tag = 11)
    public final BatteryPluggedInButNotChargingEvent battery_plugged_in_but_not_charging_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.BatteryState#ADAPTER", jsonName = "batteryState", oneofName = "data", schemaIndex = 0, tag = 1)
    public final BatteryState battery_state;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.boot.BootCompletedEvent#ADAPTER", jsonName = "bootCompletedEvent", oneofName = "data", schemaIndex = 3, tag = 4)
    public final BootCompletedEvent boot_completed_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.countertop_transaction.CountertopTransactionStartEvent#ADAPTER", jsonName = "countertopTransactionStartEvent", oneofName = "data", schemaIndex = 7, tag = 8)
    public final CountertopTransactionStartEvent countertop_transaction_start_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.data.DataUsageEvent#ADAPTER", jsonName = "dataUsageEvent", oneofName = "data", schemaIndex = 17, tag = 18)
    public final DataUsageEvent data_usage_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.DeviceFactoryConfigurationEvent#ADAPTER", jsonName = "deviceFactoryConfigurationEvent", oneofName = "data", schemaIndex = 19, tag = 20)
    public final DeviceFactoryConfigurationEvent device_factory_configuration_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.performance.DevicePerformanceSnapshotEvent#ADAPTER", jsonName = "devicePerformanceSnapshotEvent", oneofName = "data", schemaIndex = 9, tag = 10)
    public final DevicePerformanceSnapshotEvent device_performance_snapshot_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device_temperature.DeviceTemperatureEvent#ADAPTER", jsonName = "deviceTemperatureEvent", oneofName = "data", schemaIndex = 16, tag = 17)
    public final DeviceTemperatureEvent device_temperature_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.devkit.DevKitSideloadInstallEvent#ADAPTER", jsonName = "devkitSideloadInstallEvent", oneofName = "data", schemaIndex = 2, tag = 3)
    public final DevKitSideloadInstallEvent devkit_sideload_install_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.DockState#ADAPTER", jsonName = "dockState", oneofName = "data", schemaIndex = 11, tag = 12)
    public final DockState dock_state;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.HubState#ADAPTER", jsonName = "hubState", oneofName = "data", schemaIndex = 12, tag = 13)
    public final HubState hub_state;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.IntegrityCheckErrorEvent#ADAPTER", jsonName = "integrityCheckErrorEvent", oneofName = "data", schemaIndex = 24, tag = 25)
    public final IntegrityCheckErrorEvent integrity_check_error_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.KeyMissingEvent#ADAPTER", jsonName = "keyMissingEvent", oneofName = "data", schemaIndex = 21, tag = 22)
    public final KeyMissingEvent key_missing_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.NetworkConnectivityEvent#ADAPTER", jsonName = "networkConnectivityEvent", oneofName = "data", schemaIndex = 15, tag = 16)
    public final NetworkConnectivityEvent network_connectivity_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.PosConnectivityEvent#ADAPTER", jsonName = "posConnectivityEvent", oneofName = "data", schemaIndex = 23, tag = 24)
    public final PosConnectivityEvent pos_connectivity_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.screen.ScreenMetadataEvent#ADAPTER", jsonName = "screenMetadataEvent", oneofName = "data", schemaIndex = 5, tag = 6)
    public final ScreenMetadataEvent screen_metadata_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.storage.StorageEvent#ADAPTER", jsonName = "storageEvent", oneofName = "data", schemaIndex = 13, tag = 14)
    public final StorageEvent storage_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.battery.CoinCellBatteryState#ADAPTER", jsonName = "tamperCoinCellBatteryState", oneofName = "data", schemaIndex = 1, tag = 2)
    public final CoinCellBatteryState tamper_coin_cell_battery_state;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.device.TamperModeEvent#ADAPTER", jsonName = "tamperModeEvent", oneofName = "data", schemaIndex = 14, tag = 15)
    public final TamperModeEvent tamper_mode_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.UpdateOperationEvent#ADAPTER", jsonName = "updateOperationEvent", oneofName = "data", schemaIndex = 20, tag = 21)
    public final UpdateOperationEvent update_operation_event;

    @WireField(adapter = "com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.accessories.USBDeviceStateEvent#ADAPTER", jsonName = "usbDeviceStateEvent", oneofName = "data", schemaIndex = 22, tag = 23)
    public final USBDeviceStateEvent usb_device_state_event;

    public EventData() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 67108863, null);
    }

    @Deprecated(message = "battery_charging_dialog_shown_event is deprecated")
    public static /* synthetic */ void getBattery_charging_dialog_shown_event$annotations() {
    }

    @Deprecated(message = "storage_event is deprecated")
    public static /* synthetic */ void getStorage_event$annotations() {
    }

    public /* synthetic */ EventData(BatteryState batteryState, CoinCellBatteryState coinCellBatteryState, DevKitSideloadInstallEvent devKitSideloadInstallEvent, BootCompletedEvent bootCompletedEvent, ApplicationLifecycleEvent applicationLifecycleEvent, ScreenMetadataEvent screenMetadataEvent, BatteryChargingDialogShownEvent batteryChargingDialogShownEvent, CountertopTransactionStartEvent countertopTransactionStartEvent, AccessibilityEvent accessibilityEvent, DevicePerformanceSnapshotEvent devicePerformanceSnapshotEvent, BatteryPluggedInButNotChargingEvent batteryPluggedInButNotChargingEvent, DockState dockState, HubState hubState, StorageEvent storageEvent, TamperModeEvent tamperModeEvent, NetworkConnectivityEvent networkConnectivityEvent, DeviceTemperatureEvent deviceTemperatureEvent, DataUsageEvent dataUsageEvent, AndroidSystemEvent androidSystemEvent, DeviceFactoryConfigurationEvent deviceFactoryConfigurationEvent, UpdateOperationEvent updateOperationEvent, KeyMissingEvent keyMissingEvent, USBDeviceStateEvent uSBDeviceStateEvent, PosConnectivityEvent posConnectivityEvent, IntegrityCheckErrorEvent integrityCheckErrorEvent, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : batteryState, (i & 2) != 0 ? null : coinCellBatteryState, (i & 4) != 0 ? null : devKitSideloadInstallEvent, (i & 8) != 0 ? null : bootCompletedEvent, (i & 16) != 0 ? null : applicationLifecycleEvent, (i & 32) != 0 ? null : screenMetadataEvent, (i & 64) != 0 ? null : batteryChargingDialogShownEvent, (i & 128) != 0 ? null : countertopTransactionStartEvent, (i & 256) != 0 ? null : accessibilityEvent, (i & 512) != 0 ? null : devicePerformanceSnapshotEvent, (i & 1024) != 0 ? null : batteryPluggedInButNotChargingEvent, (i & 2048) != 0 ? null : dockState, (i & 4096) != 0 ? null : hubState, (i & 8192) != 0 ? null : storageEvent, (i & 16384) != 0 ? null : tamperModeEvent, (i & 32768) != 0 ? null : networkConnectivityEvent, (i & 65536) != 0 ? null : deviceTemperatureEvent, (i & 131072) != 0 ? null : dataUsageEvent, (i & 262144) != 0 ? null : androidSystemEvent, (i & 524288) != 0 ? null : deviceFactoryConfigurationEvent, (i & 1048576) != 0 ? null : updateOperationEvent, (i & 2097152) != 0 ? null : keyMissingEvent, (i & 4194304) != 0 ? null : uSBDeviceStateEvent, (i & 8388608) != 0 ? null : posConnectivityEvent, (i & 16777216) != 0 ? null : integrityCheckErrorEvent, (i & 33554432) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EventData(BatteryState batteryState, CoinCellBatteryState coinCellBatteryState, DevKitSideloadInstallEvent devKitSideloadInstallEvent, BootCompletedEvent bootCompletedEvent, ApplicationLifecycleEvent applicationLifecycleEvent, ScreenMetadataEvent screenMetadataEvent, BatteryChargingDialogShownEvent batteryChargingDialogShownEvent, CountertopTransactionStartEvent countertopTransactionStartEvent, AccessibilityEvent accessibilityEvent, DevicePerformanceSnapshotEvent devicePerformanceSnapshotEvent, BatteryPluggedInButNotChargingEvent batteryPluggedInButNotChargingEvent, DockState dockState, HubState hubState, StorageEvent storageEvent, TamperModeEvent tamperModeEvent, NetworkConnectivityEvent networkConnectivityEvent, DeviceTemperatureEvent deviceTemperatureEvent, DataUsageEvent dataUsageEvent, AndroidSystemEvent androidSystemEvent, DeviceFactoryConfigurationEvent deviceFactoryConfigurationEvent, UpdateOperationEvent updateOperationEvent, KeyMissingEvent keyMissingEvent, USBDeviceStateEvent uSBDeviceStateEvent, PosConnectivityEvent posConnectivityEvent, IntegrityCheckErrorEvent integrityCheckErrorEvent, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.battery_state = batteryState;
        this.tamper_coin_cell_battery_state = coinCellBatteryState;
        this.devkit_sideload_install_event = devKitSideloadInstallEvent;
        this.boot_completed_event = bootCompletedEvent;
        this.app_event = applicationLifecycleEvent;
        this.screen_metadata_event = screenMetadataEvent;
        this.battery_charging_dialog_shown_event = batteryChargingDialogShownEvent;
        this.countertop_transaction_start_event = countertopTransactionStartEvent;
        this.accessibility_event = accessibilityEvent;
        this.device_performance_snapshot_event = devicePerformanceSnapshotEvent;
        this.battery_plugged_in_but_not_charging_event = batteryPluggedInButNotChargingEvent;
        this.dock_state = dockState;
        this.hub_state = hubState;
        this.storage_event = storageEvent;
        this.tamper_mode_event = tamperModeEvent;
        this.network_connectivity_event = networkConnectivityEvent;
        this.device_temperature_event = deviceTemperatureEvent;
        this.data_usage_event = dataUsageEvent;
        this.android_system_event = androidSystemEvent;
        this.device_factory_configuration_event = deviceFactoryConfigurationEvent;
        this.update_operation_event = updateOperationEvent;
        this.key_missing_event = keyMissingEvent;
        this.usb_device_state_event = uSBDeviceStateEvent;
        this.pos_connectivity_event = posConnectivityEvent;
        this.integrity_check_error_event = integrityCheckErrorEvent;
        if (Internal.countNonNull(batteryState, coinCellBatteryState, devKitSideloadInstallEvent, bootCompletedEvent, applicationLifecycleEvent, screenMetadataEvent, batteryChargingDialogShownEvent, countertopTransactionStartEvent, accessibilityEvent, devicePerformanceSnapshotEvent, batteryPluggedInButNotChargingEvent, dockState, hubState, storageEvent, tamperModeEvent, networkConnectivityEvent, deviceTemperatureEvent, dataUsageEvent, androidSystemEvent, deviceFactoryConfigurationEvent, updateOperationEvent, keyMissingEvent, uSBDeviceStateEvent, posConnectivityEvent, integrityCheckErrorEvent) > 1) {
            throw new IllegalArgumentException("At most one of battery_state, tamper_coin_cell_battery_state, devkit_sideload_install_event, boot_completed_event, app_event, screen_metadata_event, battery_charging_dialog_shown_event, countertop_transaction_start_event, accessibility_event, device_performance_snapshot_event, battery_plugged_in_but_not_charging_event, dock_state, hub_state, storage_event, tamper_mode_event, network_connectivity_event, device_temperature_event, data_usage_event, android_system_event, device_factory_configuration_event, update_operation_event, key_missing_event, usb_device_state_event, pos_connectivity_event, integrity_check_error_event may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.battery_state = this.battery_state;
        builder.tamper_coin_cell_battery_state = this.tamper_coin_cell_battery_state;
        builder.devkit_sideload_install_event = this.devkit_sideload_install_event;
        builder.boot_completed_event = this.boot_completed_event;
        builder.app_event = this.app_event;
        builder.screen_metadata_event = this.screen_metadata_event;
        builder.battery_charging_dialog_shown_event = this.battery_charging_dialog_shown_event;
        builder.countertop_transaction_start_event = this.countertop_transaction_start_event;
        builder.accessibility_event = this.accessibility_event;
        builder.device_performance_snapshot_event = this.device_performance_snapshot_event;
        builder.battery_plugged_in_but_not_charging_event = this.battery_plugged_in_but_not_charging_event;
        builder.dock_state = this.dock_state;
        builder.hub_state = this.hub_state;
        builder.storage_event = this.storage_event;
        builder.tamper_mode_event = this.tamper_mode_event;
        builder.network_connectivity_event = this.network_connectivity_event;
        builder.device_temperature_event = this.device_temperature_event;
        builder.data_usage_event = this.data_usage_event;
        builder.android_system_event = this.android_system_event;
        builder.device_factory_configuration_event = this.device_factory_configuration_event;
        builder.update_operation_event = this.update_operation_event;
        builder.key_missing_event = this.key_missing_event;
        builder.usb_device_state_event = this.usb_device_state_event;
        builder.pos_connectivity_event = this.pos_connectivity_event;
        builder.integrity_check_error_event = this.integrity_check_error_event;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof EventData)) {
            return false;
        }
        EventData eventData = (EventData) other;
        return Intrinsics.areEqual(unknownFields(), eventData.unknownFields()) && Intrinsics.areEqual(this.battery_state, eventData.battery_state) && Intrinsics.areEqual(this.tamper_coin_cell_battery_state, eventData.tamper_coin_cell_battery_state) && Intrinsics.areEqual(this.devkit_sideload_install_event, eventData.devkit_sideload_install_event) && Intrinsics.areEqual(this.boot_completed_event, eventData.boot_completed_event) && Intrinsics.areEqual(this.app_event, eventData.app_event) && Intrinsics.areEqual(this.screen_metadata_event, eventData.screen_metadata_event) && Intrinsics.areEqual(this.battery_charging_dialog_shown_event, eventData.battery_charging_dialog_shown_event) && Intrinsics.areEqual(this.countertop_transaction_start_event, eventData.countertop_transaction_start_event) && Intrinsics.areEqual(this.accessibility_event, eventData.accessibility_event) && Intrinsics.areEqual(this.device_performance_snapshot_event, eventData.device_performance_snapshot_event) && Intrinsics.areEqual(this.battery_plugged_in_but_not_charging_event, eventData.battery_plugged_in_but_not_charging_event) && Intrinsics.areEqual(this.dock_state, eventData.dock_state) && Intrinsics.areEqual(this.hub_state, eventData.hub_state) && Intrinsics.areEqual(this.storage_event, eventData.storage_event) && Intrinsics.areEqual(this.tamper_mode_event, eventData.tamper_mode_event) && Intrinsics.areEqual(this.network_connectivity_event, eventData.network_connectivity_event) && Intrinsics.areEqual(this.device_temperature_event, eventData.device_temperature_event) && Intrinsics.areEqual(this.data_usage_event, eventData.data_usage_event) && Intrinsics.areEqual(this.android_system_event, eventData.android_system_event) && Intrinsics.areEqual(this.device_factory_configuration_event, eventData.device_factory_configuration_event) && Intrinsics.areEqual(this.update_operation_event, eventData.update_operation_event) && Intrinsics.areEqual(this.key_missing_event, eventData.key_missing_event) && Intrinsics.areEqual(this.usb_device_state_event, eventData.usb_device_state_event) && Intrinsics.areEqual(this.pos_connectivity_event, eventData.pos_connectivity_event) && Intrinsics.areEqual(this.integrity_check_error_event, eventData.integrity_check_error_event);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        BatteryState batteryState = this.battery_state;
        int iHashCode2 = (iHashCode + (batteryState != null ? batteryState.hashCode() : 0)) * 37;
        CoinCellBatteryState coinCellBatteryState = this.tamper_coin_cell_battery_state;
        int iHashCode3 = (iHashCode2 + (coinCellBatteryState != null ? coinCellBatteryState.hashCode() : 0)) * 37;
        DevKitSideloadInstallEvent devKitSideloadInstallEvent = this.devkit_sideload_install_event;
        int iHashCode4 = (iHashCode3 + (devKitSideloadInstallEvent != null ? devKitSideloadInstallEvent.hashCode() : 0)) * 37;
        BootCompletedEvent bootCompletedEvent = this.boot_completed_event;
        int iHashCode5 = (iHashCode4 + (bootCompletedEvent != null ? bootCompletedEvent.hashCode() : 0)) * 37;
        ApplicationLifecycleEvent applicationLifecycleEvent = this.app_event;
        int iHashCode6 = (iHashCode5 + (applicationLifecycleEvent != null ? applicationLifecycleEvent.hashCode() : 0)) * 37;
        ScreenMetadataEvent screenMetadataEvent = this.screen_metadata_event;
        int iHashCode7 = (iHashCode6 + (screenMetadataEvent != null ? screenMetadataEvent.hashCode() : 0)) * 37;
        BatteryChargingDialogShownEvent batteryChargingDialogShownEvent = this.battery_charging_dialog_shown_event;
        int iHashCode8 = (iHashCode7 + (batteryChargingDialogShownEvent != null ? batteryChargingDialogShownEvent.hashCode() : 0)) * 37;
        CountertopTransactionStartEvent countertopTransactionStartEvent = this.countertop_transaction_start_event;
        int iHashCode9 = (iHashCode8 + (countertopTransactionStartEvent != null ? countertopTransactionStartEvent.hashCode() : 0)) * 37;
        AccessibilityEvent accessibilityEvent = this.accessibility_event;
        int iHashCode10 = (iHashCode9 + (accessibilityEvent != null ? accessibilityEvent.hashCode() : 0)) * 37;
        DevicePerformanceSnapshotEvent devicePerformanceSnapshotEvent = this.device_performance_snapshot_event;
        int iHashCode11 = (iHashCode10 + (devicePerformanceSnapshotEvent != null ? devicePerformanceSnapshotEvent.hashCode() : 0)) * 37;
        BatteryPluggedInButNotChargingEvent batteryPluggedInButNotChargingEvent = this.battery_plugged_in_but_not_charging_event;
        int iHashCode12 = (iHashCode11 + (batteryPluggedInButNotChargingEvent != null ? batteryPluggedInButNotChargingEvent.hashCode() : 0)) * 37;
        DockState dockState = this.dock_state;
        int iHashCode13 = (iHashCode12 + (dockState != null ? dockState.hashCode() : 0)) * 37;
        HubState hubState = this.hub_state;
        int iHashCode14 = (iHashCode13 + (hubState != null ? hubState.hashCode() : 0)) * 37;
        StorageEvent storageEvent = this.storage_event;
        int iHashCode15 = (iHashCode14 + (storageEvent != null ? storageEvent.hashCode() : 0)) * 37;
        TamperModeEvent tamperModeEvent = this.tamper_mode_event;
        int iHashCode16 = (iHashCode15 + (tamperModeEvent != null ? tamperModeEvent.hashCode() : 0)) * 37;
        NetworkConnectivityEvent networkConnectivityEvent = this.network_connectivity_event;
        int iHashCode17 = (iHashCode16 + (networkConnectivityEvent != null ? networkConnectivityEvent.hashCode() : 0)) * 37;
        DeviceTemperatureEvent deviceTemperatureEvent = this.device_temperature_event;
        int iHashCode18 = (iHashCode17 + (deviceTemperatureEvent != null ? deviceTemperatureEvent.hashCode() : 0)) * 37;
        DataUsageEvent dataUsageEvent = this.data_usage_event;
        int iHashCode19 = (iHashCode18 + (dataUsageEvent != null ? dataUsageEvent.hashCode() : 0)) * 37;
        AndroidSystemEvent androidSystemEvent = this.android_system_event;
        int iHashCode20 = (iHashCode19 + (androidSystemEvent != null ? androidSystemEvent.hashCode() : 0)) * 37;
        DeviceFactoryConfigurationEvent deviceFactoryConfigurationEvent = this.device_factory_configuration_event;
        int iHashCode21 = (iHashCode20 + (deviceFactoryConfigurationEvent != null ? deviceFactoryConfigurationEvent.hashCode() : 0)) * 37;
        UpdateOperationEvent updateOperationEvent = this.update_operation_event;
        int iHashCode22 = (iHashCode21 + (updateOperationEvent != null ? updateOperationEvent.hashCode() : 0)) * 37;
        KeyMissingEvent keyMissingEvent = this.key_missing_event;
        int iHashCode23 = (iHashCode22 + (keyMissingEvent != null ? keyMissingEvent.hashCode() : 0)) * 37;
        USBDeviceStateEvent uSBDeviceStateEvent = this.usb_device_state_event;
        int iHashCode24 = (iHashCode23 + (uSBDeviceStateEvent != null ? uSBDeviceStateEvent.hashCode() : 0)) * 37;
        PosConnectivityEvent posConnectivityEvent = this.pos_connectivity_event;
        int iHashCode25 = (iHashCode24 + (posConnectivityEvent != null ? posConnectivityEvent.hashCode() : 0)) * 37;
        IntegrityCheckErrorEvent integrityCheckErrorEvent = this.integrity_check_error_event;
        int iHashCode26 = iHashCode25 + (integrityCheckErrorEvent != null ? integrityCheckErrorEvent.hashCode() : 0);
        this.hashCode = iHashCode26;
        return iHashCode26;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.battery_state != null) {
            arrayList.add("battery_state=" + this.battery_state);
        }
        if (this.tamper_coin_cell_battery_state != null) {
            arrayList.add("tamper_coin_cell_battery_state=" + this.tamper_coin_cell_battery_state);
        }
        if (this.devkit_sideload_install_event != null) {
            arrayList.add("devkit_sideload_install_event=" + this.devkit_sideload_install_event);
        }
        if (this.boot_completed_event != null) {
            arrayList.add("boot_completed_event=" + this.boot_completed_event);
        }
        if (this.app_event != null) {
            arrayList.add("app_event=" + this.app_event);
        }
        if (this.screen_metadata_event != null) {
            arrayList.add("screen_metadata_event=" + this.screen_metadata_event);
        }
        if (this.battery_charging_dialog_shown_event != null) {
            arrayList.add("battery_charging_dialog_shown_event=" + this.battery_charging_dialog_shown_event);
        }
        if (this.countertop_transaction_start_event != null) {
            arrayList.add("countertop_transaction_start_event=" + this.countertop_transaction_start_event);
        }
        if (this.accessibility_event != null) {
            arrayList.add("accessibility_event=" + this.accessibility_event);
        }
        if (this.device_performance_snapshot_event != null) {
            arrayList.add("device_performance_snapshot_event=" + this.device_performance_snapshot_event);
        }
        if (this.battery_plugged_in_but_not_charging_event != null) {
            arrayList.add("battery_plugged_in_but_not_charging_event=" + this.battery_plugged_in_but_not_charging_event);
        }
        if (this.dock_state != null) {
            arrayList.add("dock_state=" + this.dock_state);
        }
        if (this.hub_state != null) {
            arrayList.add("hub_state=" + this.hub_state);
        }
        if (this.storage_event != null) {
            arrayList.add("storage_event=" + this.storage_event);
        }
        if (this.tamper_mode_event != null) {
            arrayList.add("tamper_mode_event=" + this.tamper_mode_event);
        }
        if (this.network_connectivity_event != null) {
            arrayList.add("network_connectivity_event=" + this.network_connectivity_event);
        }
        if (this.device_temperature_event != null) {
            arrayList.add("device_temperature_event=" + this.device_temperature_event);
        }
        if (this.data_usage_event != null) {
            arrayList.add("data_usage_event=" + this.data_usage_event);
        }
        if (this.android_system_event != null) {
            arrayList.add("android_system_event=" + this.android_system_event);
        }
        if (this.device_factory_configuration_event != null) {
            arrayList.add("device_factory_configuration_event=" + this.device_factory_configuration_event);
        }
        if (this.update_operation_event != null) {
            arrayList.add("update_operation_event=" + this.update_operation_event);
        }
        if (this.key_missing_event != null) {
            arrayList.add("key_missing_event=" + this.key_missing_event);
        }
        if (this.usb_device_state_event != null) {
            arrayList.add("usb_device_state_event=" + this.usb_device_state_event);
        }
        if (this.pos_connectivity_event != null) {
            arrayList.add("pos_connectivity_event=" + this.pos_connectivity_event);
        }
        if (this.integrity_check_error_event != null) {
            arrayList.add("integrity_check_error_event=" + this.integrity_check_error_event);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "EventData{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ EventData copy$default(EventData eventData, BatteryState batteryState, CoinCellBatteryState coinCellBatteryState, DevKitSideloadInstallEvent devKitSideloadInstallEvent, BootCompletedEvent bootCompletedEvent, ApplicationLifecycleEvent applicationLifecycleEvent, ScreenMetadataEvent screenMetadataEvent, BatteryChargingDialogShownEvent batteryChargingDialogShownEvent, CountertopTransactionStartEvent countertopTransactionStartEvent, AccessibilityEvent accessibilityEvent, DevicePerformanceSnapshotEvent devicePerformanceSnapshotEvent, BatteryPluggedInButNotChargingEvent batteryPluggedInButNotChargingEvent, DockState dockState, HubState hubState, StorageEvent storageEvent, TamperModeEvent tamperModeEvent, NetworkConnectivityEvent networkConnectivityEvent, DeviceTemperatureEvent deviceTemperatureEvent, DataUsageEvent dataUsageEvent, AndroidSystemEvent androidSystemEvent, DeviceFactoryConfigurationEvent deviceFactoryConfigurationEvent, UpdateOperationEvent updateOperationEvent, KeyMissingEvent keyMissingEvent, USBDeviceStateEvent uSBDeviceStateEvent, PosConnectivityEvent posConnectivityEvent, IntegrityCheckErrorEvent integrityCheckErrorEvent, ByteString byteString, int i, Object obj) {
        BatteryState batteryState2 = (i & 1) != 0 ? eventData.battery_state : batteryState;
        return eventData.copy(batteryState2, (i & 2) != 0 ? eventData.tamper_coin_cell_battery_state : coinCellBatteryState, (i & 4) != 0 ? eventData.devkit_sideload_install_event : devKitSideloadInstallEvent, (i & 8) != 0 ? eventData.boot_completed_event : bootCompletedEvent, (i & 16) != 0 ? eventData.app_event : applicationLifecycleEvent, (i & 32) != 0 ? eventData.screen_metadata_event : screenMetadataEvent, (i & 64) != 0 ? eventData.battery_charging_dialog_shown_event : batteryChargingDialogShownEvent, (i & 128) != 0 ? eventData.countertop_transaction_start_event : countertopTransactionStartEvent, (i & 256) != 0 ? eventData.accessibility_event : accessibilityEvent, (i & 512) != 0 ? eventData.device_performance_snapshot_event : devicePerformanceSnapshotEvent, (i & 1024) != 0 ? eventData.battery_plugged_in_but_not_charging_event : batteryPluggedInButNotChargingEvent, (i & 2048) != 0 ? eventData.dock_state : dockState, (i & 4096) != 0 ? eventData.hub_state : hubState, (i & 8192) != 0 ? eventData.storage_event : storageEvent, (i & 16384) != 0 ? eventData.tamper_mode_event : tamperModeEvent, (i & 32768) != 0 ? eventData.network_connectivity_event : networkConnectivityEvent, (i & 65536) != 0 ? eventData.device_temperature_event : deviceTemperatureEvent, (i & 131072) != 0 ? eventData.data_usage_event : dataUsageEvent, (i & 262144) != 0 ? eventData.android_system_event : androidSystemEvent, (i & 524288) != 0 ? eventData.device_factory_configuration_event : deviceFactoryConfigurationEvent, (i & 1048576) != 0 ? eventData.update_operation_event : updateOperationEvent, (i & 2097152) != 0 ? eventData.key_missing_event : keyMissingEvent, (i & 4194304) != 0 ? eventData.usb_device_state_event : uSBDeviceStateEvent, (i & 8388608) != 0 ? eventData.pos_connectivity_event : posConnectivityEvent, (i & 16777216) != 0 ? eventData.integrity_check_error_event : integrityCheckErrorEvent, (i & 33554432) != 0 ? eventData.unknownFields() : byteString);
    }

    public final EventData copy(BatteryState battery_state, CoinCellBatteryState tamper_coin_cell_battery_state, DevKitSideloadInstallEvent devkit_sideload_install_event, BootCompletedEvent boot_completed_event, ApplicationLifecycleEvent app_event, ScreenMetadataEvent screen_metadata_event, BatteryChargingDialogShownEvent battery_charging_dialog_shown_event, CountertopTransactionStartEvent countertop_transaction_start_event, AccessibilityEvent accessibility_event, DevicePerformanceSnapshotEvent device_performance_snapshot_event, BatteryPluggedInButNotChargingEvent battery_plugged_in_but_not_charging_event, DockState dock_state, HubState hub_state, StorageEvent storage_event, TamperModeEvent tamper_mode_event, NetworkConnectivityEvent network_connectivity_event, DeviceTemperatureEvent device_temperature_event, DataUsageEvent data_usage_event, AndroidSystemEvent android_system_event, DeviceFactoryConfigurationEvent device_factory_configuration_event, UpdateOperationEvent update_operation_event, KeyMissingEvent key_missing_event, USBDeviceStateEvent usb_device_state_event, PosConnectivityEvent pos_connectivity_event, IntegrityCheckErrorEvent integrity_check_error_event, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new EventData(battery_state, tamper_coin_cell_battery_state, devkit_sideload_install_event, boot_completed_event, app_event, screen_metadata_event, battery_charging_dialog_shown_event, countertop_transaction_start_event, accessibility_event, device_performance_snapshot_event, battery_plugged_in_but_not_charging_event, dock_state, hub_state, storage_event, tamper_mode_event, network_connectivity_event, device_temperature_event, data_usage_event, android_system_event, device_factory_configuration_event, update_operation_event, key_missing_event, usb_device_state_event, pos_connectivity_event, integrity_check_error_event, unknownFields);
    }

    /* JADX INFO: compiled from: EventData.kt */
    @kotlin.Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0012\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\b\u00106\u001a\u00020\u0002H\u0016J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00002\b\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0010\u0010 \u001a\u00020\u00002\b\u0010 \u001a\u0004\u0018\u00010!J\u0010\u0010\"\u001a\u00020\u00002\b\u0010\"\u001a\u0004\u0018\u00010#J\u0010\u0010$\u001a\u00020\u00002\b\u0010$\u001a\u0004\u0018\u00010%J\u0010\u0010&\u001a\u00020\u00002\b\u0010&\u001a\u0004\u0018\u00010'J\u0010\u0010(\u001a\u00020\u00002\b\u0010(\u001a\u0004\u0018\u00010)J\u0010\u0010*\u001a\u00020\u00002\b\u0010*\u001a\u0004\u0018\u00010+J\u0012\u0010,\u001a\u00020\u00002\b\u0010,\u001a\u0004\u0018\u00010-H\u0007J\u0010\u0010.\u001a\u00020\u00002\b\u0010.\u001a\u0004\u0018\u00010/J\u0010\u00100\u001a\u00020\u00002\b\u00100\u001a\u0004\u0018\u000101J\u0010\u00102\u001a\u00020\u00002\b\u00102\u001a\u0004\u0018\u000103J\u0010\u00104\u001a\u00020\u00002\b\u00104\u001a\u0004\u0018\u000105R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u00100\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u00102\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u00104\u001a\u0004\u0018\u0001058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u00067"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "()V", "accessibility_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;", "android_system_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;", "app_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;", "battery_charging_dialog_shown_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;", "battery_plugged_in_but_not_charging_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;", "battery_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;", "boot_completed_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;", "countertop_transaction_start_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;", "data_usage_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;", "device_factory_configuration_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;", "device_performance_snapshot_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;", "device_temperature_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;", "devkit_sideload_install_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;", "dock_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;", "hub_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;", "integrity_check_error_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;", "key_missing_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;", "network_connectivity_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;", "pos_connectivity_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;", "screen_metadata_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;", "storage_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;", "tamper_coin_cell_battery_state", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;", "tamper_mode_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;", "update_operation_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;", "usb_device_state_event", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<EventData, Builder> {
        public AccessibilityEvent accessibility_event;
        public AndroidSystemEvent android_system_event;
        public ApplicationLifecycleEvent app_event;
        public BatteryChargingDialogShownEvent battery_charging_dialog_shown_event;
        public BatteryPluggedInButNotChargingEvent battery_plugged_in_but_not_charging_event;
        public BatteryState battery_state;
        public BootCompletedEvent boot_completed_event;
        public CountertopTransactionStartEvent countertop_transaction_start_event;
        public DataUsageEvent data_usage_event;
        public DeviceFactoryConfigurationEvent device_factory_configuration_event;
        public DevicePerformanceSnapshotEvent device_performance_snapshot_event;
        public DeviceTemperatureEvent device_temperature_event;
        public DevKitSideloadInstallEvent devkit_sideload_install_event;
        public DockState dock_state;
        public HubState hub_state;
        public IntegrityCheckErrorEvent integrity_check_error_event;
        public KeyMissingEvent key_missing_event;
        public NetworkConnectivityEvent network_connectivity_event;
        public PosConnectivityEvent pos_connectivity_event;
        public ScreenMetadataEvent screen_metadata_event;
        public StorageEvent storage_event;
        public CoinCellBatteryState tamper_coin_cell_battery_state;
        public TamperModeEvent tamper_mode_event;
        public UpdateOperationEvent update_operation_event;
        public USBDeviceStateEvent usb_device_state_event;

        public final Builder battery_state(BatteryState battery_state) {
            this.battery_state = battery_state;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder tamper_coin_cell_battery_state(CoinCellBatteryState tamper_coin_cell_battery_state) {
            this.tamper_coin_cell_battery_state = tamper_coin_cell_battery_state;
            this.battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder devkit_sideload_install_event(DevKitSideloadInstallEvent devkit_sideload_install_event) {
            this.devkit_sideload_install_event = devkit_sideload_install_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder boot_completed_event(BootCompletedEvent boot_completed_event) {
            this.boot_completed_event = boot_completed_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder app_event(ApplicationLifecycleEvent app_event) {
            this.app_event = app_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder screen_metadata_event(ScreenMetadataEvent screen_metadata_event) {
            this.screen_metadata_event = screen_metadata_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        @Deprecated(message = "battery_charging_dialog_shown_event is deprecated")
        public final Builder battery_charging_dialog_shown_event(BatteryChargingDialogShownEvent battery_charging_dialog_shown_event) {
            this.battery_charging_dialog_shown_event = battery_charging_dialog_shown_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder countertop_transaction_start_event(CountertopTransactionStartEvent countertop_transaction_start_event) {
            this.countertop_transaction_start_event = countertop_transaction_start_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder accessibility_event(AccessibilityEvent accessibility_event) {
            this.accessibility_event = accessibility_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder device_performance_snapshot_event(DevicePerformanceSnapshotEvent device_performance_snapshot_event) {
            this.device_performance_snapshot_event = device_performance_snapshot_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder battery_plugged_in_but_not_charging_event(BatteryPluggedInButNotChargingEvent battery_plugged_in_but_not_charging_event) {
            this.battery_plugged_in_but_not_charging_event = battery_plugged_in_but_not_charging_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder dock_state(DockState dock_state) {
            this.dock_state = dock_state;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder hub_state(HubState hub_state) {
            this.hub_state = hub_state;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        @Deprecated(message = "storage_event is deprecated")
        public final Builder storage_event(StorageEvent storage_event) {
            this.storage_event = storage_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder tamper_mode_event(TamperModeEvent tamper_mode_event) {
            this.tamper_mode_event = tamper_mode_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder network_connectivity_event(NetworkConnectivityEvent network_connectivity_event) {
            this.network_connectivity_event = network_connectivity_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder device_temperature_event(DeviceTemperatureEvent device_temperature_event) {
            this.device_temperature_event = device_temperature_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder data_usage_event(DataUsageEvent data_usage_event) {
            this.data_usage_event = data_usage_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder android_system_event(AndroidSystemEvent android_system_event) {
            this.android_system_event = android_system_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder device_factory_configuration_event(DeviceFactoryConfigurationEvent device_factory_configuration_event) {
            this.device_factory_configuration_event = device_factory_configuration_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder update_operation_event(UpdateOperationEvent update_operation_event) {
            this.update_operation_event = update_operation_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder key_missing_event(KeyMissingEvent key_missing_event) {
            this.key_missing_event = key_missing_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder usb_device_state_event(USBDeviceStateEvent usb_device_state_event) {
            this.usb_device_state_event = usb_device_state_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.pos_connectivity_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder pos_connectivity_event(PosConnectivityEvent pos_connectivity_event) {
            this.pos_connectivity_event = pos_connectivity_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.integrity_check_error_event = null;
            return this;
        }

        public final Builder integrity_check_error_event(IntegrityCheckErrorEvent integrity_check_error_event) {
            this.integrity_check_error_event = integrity_check_error_event;
            this.battery_state = null;
            this.tamper_coin_cell_battery_state = null;
            this.devkit_sideload_install_event = null;
            this.boot_completed_event = null;
            this.app_event = null;
            this.screen_metadata_event = null;
            this.battery_charging_dialog_shown_event = null;
            this.countertop_transaction_start_event = null;
            this.accessibility_event = null;
            this.device_performance_snapshot_event = null;
            this.battery_plugged_in_but_not_charging_event = null;
            this.dock_state = null;
            this.hub_state = null;
            this.storage_event = null;
            this.tamper_mode_event = null;
            this.network_connectivity_event = null;
            this.device_temperature_event = null;
            this.data_usage_event = null;
            this.android_system_event = null;
            this.device_factory_configuration_event = null;
            this.update_operation_event = null;
            this.key_missing_event = null;
            this.usb_device_state_event = null;
            this.pos_connectivity_event = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public EventData build() {
            return new EventData(this.battery_state, this.tamper_coin_cell_battery_state, this.devkit_sideload_install_event, this.boot_completed_event, this.app_event, this.screen_metadata_event, this.battery_charging_dialog_shown_event, this.countertop_transaction_start_event, this.accessibility_event, this.device_performance_snapshot_event, this.battery_plugged_in_but_not_charging_event, this.dock_state, this.hub_state, this.storage_event, this.tamper_mode_event, this.network_connectivity_event, this.device_temperature_event, this.data_usage_event, this.android_system_event, this.device_factory_configuration_event, this.update_operation_event, this.key_missing_event, this.usb_device_state_event, this.pos_connectivity_event, this.integrity_check_error_event, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: EventData.kt */
    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ EventData build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EventData.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<EventData>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.EventData$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(EventData value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + BatteryState.ADAPTER.encodedSizeWithTag(1, value.battery_state) + CoinCellBatteryState.ADAPTER.encodedSizeWithTag(2, value.tamper_coin_cell_battery_state) + DevKitSideloadInstallEvent.ADAPTER.encodedSizeWithTag(3, value.devkit_sideload_install_event) + BootCompletedEvent.ADAPTER.encodedSizeWithTag(4, value.boot_completed_event) + ApplicationLifecycleEvent.ADAPTER.encodedSizeWithTag(5, value.app_event) + ScreenMetadataEvent.ADAPTER.encodedSizeWithTag(6, value.screen_metadata_event) + BatteryChargingDialogShownEvent.ADAPTER.encodedSizeWithTag(7, value.battery_charging_dialog_shown_event) + CountertopTransactionStartEvent.ADAPTER.encodedSizeWithTag(8, value.countertop_transaction_start_event) + AccessibilityEvent.ADAPTER.encodedSizeWithTag(9, value.accessibility_event) + DevicePerformanceSnapshotEvent.ADAPTER.encodedSizeWithTag(10, value.device_performance_snapshot_event) + BatteryPluggedInButNotChargingEvent.ADAPTER.encodedSizeWithTag(11, value.battery_plugged_in_but_not_charging_event) + DockState.ADAPTER.encodedSizeWithTag(12, value.dock_state) + HubState.ADAPTER.encodedSizeWithTag(13, value.hub_state) + StorageEvent.ADAPTER.encodedSizeWithTag(14, value.storage_event) + TamperModeEvent.ADAPTER.encodedSizeWithTag(15, value.tamper_mode_event) + NetworkConnectivityEvent.ADAPTER.encodedSizeWithTag(16, value.network_connectivity_event) + DeviceTemperatureEvent.ADAPTER.encodedSizeWithTag(17, value.device_temperature_event) + DataUsageEvent.ADAPTER.encodedSizeWithTag(18, value.data_usage_event) + AndroidSystemEvent.ADAPTER.encodedSizeWithTag(19, value.android_system_event) + DeviceFactoryConfigurationEvent.ADAPTER.encodedSizeWithTag(20, value.device_factory_configuration_event) + UpdateOperationEvent.ADAPTER.encodedSizeWithTag(21, value.update_operation_event) + KeyMissingEvent.ADAPTER.encodedSizeWithTag(22, value.key_missing_event) + USBDeviceStateEvent.ADAPTER.encodedSizeWithTag(23, value.usb_device_state_event) + PosConnectivityEvent.ADAPTER.encodedSizeWithTag(24, value.pos_connectivity_event) + IntegrityCheckErrorEvent.ADAPTER.encodedSizeWithTag(25, value.integrity_check_error_event);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, EventData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                BatteryState.ADAPTER.encodeWithTag(writer, 1, value.battery_state);
                CoinCellBatteryState.ADAPTER.encodeWithTag(writer, 2, value.tamper_coin_cell_battery_state);
                DevKitSideloadInstallEvent.ADAPTER.encodeWithTag(writer, 3, value.devkit_sideload_install_event);
                BootCompletedEvent.ADAPTER.encodeWithTag(writer, 4, value.boot_completed_event);
                ApplicationLifecycleEvent.ADAPTER.encodeWithTag(writer, 5, value.app_event);
                ScreenMetadataEvent.ADAPTER.encodeWithTag(writer, 6, value.screen_metadata_event);
                BatteryChargingDialogShownEvent.ADAPTER.encodeWithTag(writer, 7, value.battery_charging_dialog_shown_event);
                CountertopTransactionStartEvent.ADAPTER.encodeWithTag(writer, 8, value.countertop_transaction_start_event);
                AccessibilityEvent.ADAPTER.encodeWithTag(writer, 9, value.accessibility_event);
                DevicePerformanceSnapshotEvent.ADAPTER.encodeWithTag(writer, 10, value.device_performance_snapshot_event);
                BatteryPluggedInButNotChargingEvent.ADAPTER.encodeWithTag(writer, 11, value.battery_plugged_in_but_not_charging_event);
                DockState.ADAPTER.encodeWithTag(writer, 12, value.dock_state);
                HubState.ADAPTER.encodeWithTag(writer, 13, value.hub_state);
                StorageEvent.ADAPTER.encodeWithTag(writer, 14, value.storage_event);
                TamperModeEvent.ADAPTER.encodeWithTag(writer, 15, value.tamper_mode_event);
                NetworkConnectivityEvent.ADAPTER.encodeWithTag(writer, 16, value.network_connectivity_event);
                DeviceTemperatureEvent.ADAPTER.encodeWithTag(writer, 17, value.device_temperature_event);
                DataUsageEvent.ADAPTER.encodeWithTag(writer, 18, value.data_usage_event);
                AndroidSystemEvent.ADAPTER.encodeWithTag(writer, 19, value.android_system_event);
                DeviceFactoryConfigurationEvent.ADAPTER.encodeWithTag(writer, 20, value.device_factory_configuration_event);
                UpdateOperationEvent.ADAPTER.encodeWithTag(writer, 21, value.update_operation_event);
                KeyMissingEvent.ADAPTER.encodeWithTag(writer, 22, value.key_missing_event);
                USBDeviceStateEvent.ADAPTER.encodeWithTag(writer, 23, value.usb_device_state_event);
                PosConnectivityEvent.ADAPTER.encodeWithTag(writer, 24, value.pos_connectivity_event);
                IntegrityCheckErrorEvent.ADAPTER.encodeWithTag(writer, 25, value.integrity_check_error_event);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, EventData value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                IntegrityCheckErrorEvent.ADAPTER.encodeWithTag(writer, 25, value.integrity_check_error_event);
                PosConnectivityEvent.ADAPTER.encodeWithTag(writer, 24, value.pos_connectivity_event);
                USBDeviceStateEvent.ADAPTER.encodeWithTag(writer, 23, value.usb_device_state_event);
                KeyMissingEvent.ADAPTER.encodeWithTag(writer, 22, value.key_missing_event);
                UpdateOperationEvent.ADAPTER.encodeWithTag(writer, 21, value.update_operation_event);
                DeviceFactoryConfigurationEvent.ADAPTER.encodeWithTag(writer, 20, value.device_factory_configuration_event);
                AndroidSystemEvent.ADAPTER.encodeWithTag(writer, 19, value.android_system_event);
                DataUsageEvent.ADAPTER.encodeWithTag(writer, 18, value.data_usage_event);
                DeviceTemperatureEvent.ADAPTER.encodeWithTag(writer, 17, value.device_temperature_event);
                NetworkConnectivityEvent.ADAPTER.encodeWithTag(writer, 16, value.network_connectivity_event);
                TamperModeEvent.ADAPTER.encodeWithTag(writer, 15, value.tamper_mode_event);
                StorageEvent.ADAPTER.encodeWithTag(writer, 14, value.storage_event);
                HubState.ADAPTER.encodeWithTag(writer, 13, value.hub_state);
                DockState.ADAPTER.encodeWithTag(writer, 12, value.dock_state);
                BatteryPluggedInButNotChargingEvent.ADAPTER.encodeWithTag(writer, 11, value.battery_plugged_in_but_not_charging_event);
                DevicePerformanceSnapshotEvent.ADAPTER.encodeWithTag(writer, 10, value.device_performance_snapshot_event);
                AccessibilityEvent.ADAPTER.encodeWithTag(writer, 9, value.accessibility_event);
                CountertopTransactionStartEvent.ADAPTER.encodeWithTag(writer, 8, value.countertop_transaction_start_event);
                BatteryChargingDialogShownEvent.ADAPTER.encodeWithTag(writer, 7, value.battery_charging_dialog_shown_event);
                ScreenMetadataEvent.ADAPTER.encodeWithTag(writer, 6, value.screen_metadata_event);
                ApplicationLifecycleEvent.ADAPTER.encodeWithTag(writer, 5, value.app_event);
                BootCompletedEvent.ADAPTER.encodeWithTag(writer, 4, value.boot_completed_event);
                DevKitSideloadInstallEvent.ADAPTER.encodeWithTag(writer, 3, value.devkit_sideload_install_event);
                CoinCellBatteryState.ADAPTER.encodeWithTag(writer, 2, value.tamper_coin_cell_battery_state);
                BatteryState.ADAPTER.encodeWithTag(writer, 1, value.battery_state);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public EventData redact(EventData value) {
                PosConnectivityEvent posConnectivityEvent;
                BatteryState batteryState;
                NetworkConnectivityEvent networkConnectivityEvent;
                DataUsageEvent dataUsageEvent;
                DeviceFactoryConfigurationEvent deviceFactoryConfigurationEvent;
                KeyMissingEvent keyMissingEvent;
                IntegrityCheckErrorEvent integrityCheckErrorEventRedact;
                Intrinsics.checkNotNullParameter(value, "value");
                BatteryState batteryState2 = value.battery_state;
                BatteryState batteryStateRedact = batteryState2 != null ? BatteryState.ADAPTER.redact(batteryState2) : null;
                CoinCellBatteryState coinCellBatteryState = value.tamper_coin_cell_battery_state;
                CoinCellBatteryState coinCellBatteryStateRedact = coinCellBatteryState != null ? CoinCellBatteryState.ADAPTER.redact(coinCellBatteryState) : null;
                DevKitSideloadInstallEvent devKitSideloadInstallEvent = value.devkit_sideload_install_event;
                DevKitSideloadInstallEvent devKitSideloadInstallEventRedact = devKitSideloadInstallEvent != null ? DevKitSideloadInstallEvent.ADAPTER.redact(devKitSideloadInstallEvent) : null;
                BootCompletedEvent bootCompletedEvent = value.boot_completed_event;
                BootCompletedEvent bootCompletedEventRedact = bootCompletedEvent != null ? BootCompletedEvent.ADAPTER.redact(bootCompletedEvent) : null;
                ApplicationLifecycleEvent applicationLifecycleEvent = value.app_event;
                ApplicationLifecycleEvent applicationLifecycleEventRedact = applicationLifecycleEvent != null ? ApplicationLifecycleEvent.ADAPTER.redact(applicationLifecycleEvent) : null;
                ScreenMetadataEvent screenMetadataEvent = value.screen_metadata_event;
                ScreenMetadataEvent screenMetadataEventRedact = screenMetadataEvent != null ? ScreenMetadataEvent.ADAPTER.redact(screenMetadataEvent) : null;
                BatteryChargingDialogShownEvent batteryChargingDialogShownEvent = value.battery_charging_dialog_shown_event;
                BatteryChargingDialogShownEvent batteryChargingDialogShownEventRedact = batteryChargingDialogShownEvent != null ? BatteryChargingDialogShownEvent.ADAPTER.redact(batteryChargingDialogShownEvent) : null;
                CountertopTransactionStartEvent countertopTransactionStartEvent = value.countertop_transaction_start_event;
                CountertopTransactionStartEvent countertopTransactionStartEventRedact = countertopTransactionStartEvent != null ? CountertopTransactionStartEvent.ADAPTER.redact(countertopTransactionStartEvent) : null;
                AccessibilityEvent accessibilityEvent = value.accessibility_event;
                AccessibilityEvent accessibilityEventRedact = accessibilityEvent != null ? AccessibilityEvent.ADAPTER.redact(accessibilityEvent) : null;
                DevicePerformanceSnapshotEvent devicePerformanceSnapshotEvent = value.device_performance_snapshot_event;
                DevicePerformanceSnapshotEvent devicePerformanceSnapshotEventRedact = devicePerformanceSnapshotEvent != null ? DevicePerformanceSnapshotEvent.ADAPTER.redact(devicePerformanceSnapshotEvent) : null;
                BatteryPluggedInButNotChargingEvent batteryPluggedInButNotChargingEvent = value.battery_plugged_in_but_not_charging_event;
                BatteryPluggedInButNotChargingEvent batteryPluggedInButNotChargingEventRedact = batteryPluggedInButNotChargingEvent != null ? BatteryPluggedInButNotChargingEvent.ADAPTER.redact(batteryPluggedInButNotChargingEvent) : null;
                DockState dockState = value.dock_state;
                DockState dockStateRedact = dockState != null ? DockState.ADAPTER.redact(dockState) : null;
                HubState hubState = value.hub_state;
                HubState hubStateRedact = hubState != null ? HubState.ADAPTER.redact(hubState) : null;
                StorageEvent storageEvent = value.storage_event;
                StorageEvent storageEventRedact = storageEvent != null ? StorageEvent.ADAPTER.redact(storageEvent) : null;
                TamperModeEvent tamperModeEvent = value.tamper_mode_event;
                BatteryState batteryState3 = batteryStateRedact;
                TamperModeEvent tamperModeEventRedact = tamperModeEvent != null ? TamperModeEvent.ADAPTER.redact(tamperModeEvent) : null;
                NetworkConnectivityEvent networkConnectivityEvent2 = value.network_connectivity_event;
                TamperModeEvent tamperModeEvent2 = tamperModeEventRedact;
                NetworkConnectivityEvent networkConnectivityEventRedact = networkConnectivityEvent2 != null ? NetworkConnectivityEvent.ADAPTER.redact(networkConnectivityEvent2) : null;
                DeviceTemperatureEvent deviceTemperatureEvent = value.device_temperature_event;
                NetworkConnectivityEvent networkConnectivityEvent3 = networkConnectivityEventRedact;
                DeviceTemperatureEvent deviceTemperatureEventRedact = deviceTemperatureEvent != null ? DeviceTemperatureEvent.ADAPTER.redact(deviceTemperatureEvent) : null;
                DataUsageEvent dataUsageEvent2 = value.data_usage_event;
                DeviceTemperatureEvent deviceTemperatureEvent2 = deviceTemperatureEventRedact;
                DataUsageEvent dataUsageEventRedact = dataUsageEvent2 != null ? DataUsageEvent.ADAPTER.redact(dataUsageEvent2) : null;
                AndroidSystemEvent androidSystemEvent = value.android_system_event;
                DataUsageEvent dataUsageEvent3 = dataUsageEventRedact;
                AndroidSystemEvent androidSystemEventRedact = androidSystemEvent != null ? AndroidSystemEvent.ADAPTER.redact(androidSystemEvent) : null;
                DeviceFactoryConfigurationEvent deviceFactoryConfigurationEvent2 = value.device_factory_configuration_event;
                AndroidSystemEvent androidSystemEvent2 = androidSystemEventRedact;
                DeviceFactoryConfigurationEvent deviceFactoryConfigurationEventRedact = deviceFactoryConfigurationEvent2 != null ? DeviceFactoryConfigurationEvent.ADAPTER.redact(deviceFactoryConfigurationEvent2) : null;
                UpdateOperationEvent updateOperationEvent = value.update_operation_event;
                DeviceFactoryConfigurationEvent deviceFactoryConfigurationEvent3 = deviceFactoryConfigurationEventRedact;
                UpdateOperationEvent updateOperationEventRedact = updateOperationEvent != null ? UpdateOperationEvent.ADAPTER.redact(updateOperationEvent) : null;
                KeyMissingEvent keyMissingEvent2 = value.key_missing_event;
                UpdateOperationEvent updateOperationEvent2 = updateOperationEventRedact;
                KeyMissingEvent keyMissingEventRedact = keyMissingEvent2 != null ? KeyMissingEvent.ADAPTER.redact(keyMissingEvent2) : null;
                USBDeviceStateEvent uSBDeviceStateEvent = value.usb_device_state_event;
                KeyMissingEvent keyMissingEvent3 = keyMissingEventRedact;
                USBDeviceStateEvent uSBDeviceStateEventRedact = uSBDeviceStateEvent != null ? USBDeviceStateEvent.ADAPTER.redact(uSBDeviceStateEvent) : null;
                PosConnectivityEvent posConnectivityEvent2 = value.pos_connectivity_event;
                USBDeviceStateEvent uSBDeviceStateEvent2 = uSBDeviceStateEventRedact;
                PosConnectivityEvent posConnectivityEventRedact = posConnectivityEvent2 != null ? PosConnectivityEvent.ADAPTER.redact(posConnectivityEvent2) : null;
                IntegrityCheckErrorEvent integrityCheckErrorEvent = value.integrity_check_error_event;
                if (integrityCheckErrorEvent != null) {
                    PosConnectivityEvent posConnectivityEvent3 = posConnectivityEventRedact;
                    integrityCheckErrorEventRedact = IntegrityCheckErrorEvent.ADAPTER.redact(integrityCheckErrorEvent);
                    batteryState = batteryState3;
                    networkConnectivityEvent = networkConnectivityEvent3;
                    dataUsageEvent = dataUsageEvent3;
                    deviceFactoryConfigurationEvent = deviceFactoryConfigurationEvent3;
                    keyMissingEvent = keyMissingEvent3;
                    posConnectivityEvent = posConnectivityEvent3;
                } else {
                    posConnectivityEvent = posConnectivityEventRedact;
                    batteryState = batteryState3;
                    networkConnectivityEvent = networkConnectivityEvent3;
                    dataUsageEvent = dataUsageEvent3;
                    deviceFactoryConfigurationEvent = deviceFactoryConfigurationEvent3;
                    keyMissingEvent = keyMissingEvent3;
                    integrityCheckErrorEventRedact = null;
                }
                return value.copy(batteryState, coinCellBatteryStateRedact, devKitSideloadInstallEventRedact, bootCompletedEventRedact, applicationLifecycleEventRedact, screenMetadataEventRedact, batteryChargingDialogShownEventRedact, countertopTransactionStartEventRedact, accessibilityEventRedact, devicePerformanceSnapshotEventRedact, batteryPluggedInButNotChargingEventRedact, dockStateRedact, hubStateRedact, storageEventRedact, tamperModeEvent2, networkConnectivityEvent, deviceTemperatureEvent2, dataUsageEvent, androidSystemEvent2, deviceFactoryConfigurationEvent, updateOperationEvent2, keyMissingEvent, uSBDeviceStateEvent2, posConnectivityEvent, integrityCheckErrorEventRedact, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public EventData decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                CoinCellBatteryState coinCellBatteryStateDecode = null;
                DevKitSideloadInstallEvent devKitSideloadInstallEventDecode = null;
                BootCompletedEvent bootCompletedEventDecode = null;
                ApplicationLifecycleEvent applicationLifecycleEventDecode = null;
                ScreenMetadataEvent screenMetadataEventDecode = null;
                BatteryChargingDialogShownEvent batteryChargingDialogShownEventDecode = null;
                CountertopTransactionStartEvent countertopTransactionStartEventDecode = null;
                AccessibilityEvent accessibilityEventDecode = null;
                DevicePerformanceSnapshotEvent devicePerformanceSnapshotEventDecode = null;
                BatteryPluggedInButNotChargingEvent batteryPluggedInButNotChargingEventDecode = null;
                DockState dockStateDecode = null;
                HubState hubStateDecode = null;
                StorageEvent storageEventDecode = null;
                TamperModeEvent tamperModeEventDecode = null;
                NetworkConnectivityEvent networkConnectivityEventDecode = null;
                DeviceTemperatureEvent deviceTemperatureEventDecode = null;
                DataUsageEvent dataUsageEventDecode = null;
                AndroidSystemEvent androidSystemEventDecode = null;
                DeviceFactoryConfigurationEvent deviceFactoryConfigurationEventDecode = null;
                UpdateOperationEvent updateOperationEventDecode = null;
                KeyMissingEvent keyMissingEventDecode = null;
                USBDeviceStateEvent uSBDeviceStateEventDecode = null;
                PosConnectivityEvent posConnectivityEventDecode = null;
                IntegrityCheckErrorEvent integrityCheckErrorEventDecode = null;
                BatteryState batteryStateDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    CoinCellBatteryState coinCellBatteryState = coinCellBatteryStateDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                batteryStateDecode = BatteryState.ADAPTER.decode(reader);
                                break;
                            case 2:
                                coinCellBatteryStateDecode = CoinCellBatteryState.ADAPTER.decode(reader);
                                continue;
                            case 3:
                                devKitSideloadInstallEventDecode = DevKitSideloadInstallEvent.ADAPTER.decode(reader);
                                break;
                            case 4:
                                bootCompletedEventDecode = BootCompletedEvent.ADAPTER.decode(reader);
                                break;
                            case 5:
                                applicationLifecycleEventDecode = ApplicationLifecycleEvent.ADAPTER.decode(reader);
                                break;
                            case 6:
                                screenMetadataEventDecode = ScreenMetadataEvent.ADAPTER.decode(reader);
                                break;
                            case 7:
                                batteryChargingDialogShownEventDecode = BatteryChargingDialogShownEvent.ADAPTER.decode(reader);
                                break;
                            case 8:
                                countertopTransactionStartEventDecode = CountertopTransactionStartEvent.ADAPTER.decode(reader);
                                break;
                            case 9:
                                accessibilityEventDecode = AccessibilityEvent.ADAPTER.decode(reader);
                                break;
                            case 10:
                                devicePerformanceSnapshotEventDecode = DevicePerformanceSnapshotEvent.ADAPTER.decode(reader);
                                break;
                            case 11:
                                batteryPluggedInButNotChargingEventDecode = BatteryPluggedInButNotChargingEvent.ADAPTER.decode(reader);
                                break;
                            case 12:
                                dockStateDecode = DockState.ADAPTER.decode(reader);
                                break;
                            case 13:
                                hubStateDecode = HubState.ADAPTER.decode(reader);
                                break;
                            case 14:
                                storageEventDecode = StorageEvent.ADAPTER.decode(reader);
                                break;
                            case 15:
                                tamperModeEventDecode = TamperModeEvent.ADAPTER.decode(reader);
                                break;
                            case 16:
                                networkConnectivityEventDecode = NetworkConnectivityEvent.ADAPTER.decode(reader);
                                break;
                            case 17:
                                deviceTemperatureEventDecode = DeviceTemperatureEvent.ADAPTER.decode(reader);
                                break;
                            case 18:
                                dataUsageEventDecode = DataUsageEvent.ADAPTER.decode(reader);
                                break;
                            case 19:
                                androidSystemEventDecode = AndroidSystemEvent.ADAPTER.decode(reader);
                                break;
                            case 20:
                                deviceFactoryConfigurationEventDecode = DeviceFactoryConfigurationEvent.ADAPTER.decode(reader);
                                break;
                            case 21:
                                updateOperationEventDecode = UpdateOperationEvent.ADAPTER.decode(reader);
                                break;
                            case 22:
                                keyMissingEventDecode = KeyMissingEvent.ADAPTER.decode(reader);
                                break;
                            case 23:
                                uSBDeviceStateEventDecode = USBDeviceStateEvent.ADAPTER.decode(reader);
                                break;
                            case 24:
                                posConnectivityEventDecode = PosConnectivityEvent.ADAPTER.decode(reader);
                                break;
                            case 25:
                                integrityCheckErrorEventDecode = IntegrityCheckErrorEvent.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        coinCellBatteryStateDecode = coinCellBatteryState;
                    } else {
                        return new EventData(batteryStateDecode, coinCellBatteryState, devKitSideloadInstallEventDecode, bootCompletedEventDecode, applicationLifecycleEventDecode, screenMetadataEventDecode, batteryChargingDialogShownEventDecode, countertopTransactionStartEventDecode, accessibilityEventDecode, devicePerformanceSnapshotEventDecode, batteryPluggedInButNotChargingEventDecode, dockStateDecode, hubStateDecode, storageEventDecode, tamperModeEventDecode, networkConnectivityEventDecode, deviceTemperatureEventDecode, dataUsageEventDecode, androidSystemEventDecode, deviceFactoryConfigurationEventDecode, updateOperationEventDecode, keyMissingEventDecode, uSBDeviceStateEventDecode, posConnectivityEventDecode, integrityCheckErrorEventDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
