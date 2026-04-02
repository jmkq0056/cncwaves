.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EventData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0012\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0008\u00106\u001a\u00020\u0002H\u0016J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00002\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fJ\u0010\u0010 \u001a\u00020\u00002\u0008\u0010 \u001a\u0004\u0018\u00010!J\u0010\u0010\"\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010#J\u0010\u0010$\u001a\u00020\u00002\u0008\u0010$\u001a\u0004\u0018\u00010%J\u0010\u0010&\u001a\u00020\u00002\u0008\u0010&\u001a\u0004\u0018\u00010\'J\u0010\u0010(\u001a\u00020\u00002\u0008\u0010(\u001a\u0004\u0018\u00010)J\u0010\u0010*\u001a\u00020\u00002\u0008\u0010*\u001a\u0004\u0018\u00010+J\u0012\u0010,\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010-H\u0007J\u0010\u0010.\u001a\u00020\u00002\u0008\u0010.\u001a\u0004\u0018\u00010/J\u0010\u00100\u001a\u00020\u00002\u0008\u00100\u001a\u0004\u0018\u000101J\u0010\u00102\u001a\u00020\u00002\u0008\u00102\u001a\u0004\u0018\u000103J\u0010\u00104\u001a\u00020\u00002\u0008\u00104\u001a\u0004\u0018\u000105R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010 \u001a\u0004\u0018\u00010!8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010(\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u0004\u0018\u00010+8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010,\u001a\u0004\u0018\u00010-8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010.\u001a\u0004\u0018\u00010/8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00100\u001a\u0004\u0018\u0001018\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00104\u001a\u0004\u0018\u0001058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "()V",
        "accessibility_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;",
        "android_system_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;",
        "app_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;",
        "battery_charging_dialog_shown_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;",
        "battery_plugged_in_but_not_charging_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;",
        "battery_state",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;",
        "boot_completed_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;",
        "countertop_transaction_start_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;",
        "data_usage_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;",
        "device_factory_configuration_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;",
        "device_performance_snapshot_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;",
        "device_temperature_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;",
        "devkit_sideload_install_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;",
        "dock_state",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;",
        "hub_state",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;",
        "integrity_check_error_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;",
        "key_missing_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;",
        "network_connectivity_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;",
        "pos_connectivity_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;",
        "screen_metadata_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;",
        "storage_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;",
        "tamper_coin_cell_battery_state",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;",
        "tamper_mode_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;",
        "update_operation_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;",
        "usb_device_state_event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;",
        "build",
        "terminal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

.field public android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

.field public app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

.field public battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

.field public battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

.field public battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

.field public boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

.field public countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

.field public data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

.field public device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

.field public device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

.field public device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

.field public devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

.field public dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

.field public hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

.field public integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

.field public key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

.field public network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

.field public pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

.field public screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

.field public storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

.field public tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

.field public tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

.field public update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

.field public usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 444
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final accessibility_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    const/4 p1, 0x0

    .line 756
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 757
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 758
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 759
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 760
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 761
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 762
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 763
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 764
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 765
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 766
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 767
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 768
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 769
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 770
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 771
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 772
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 773
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 774
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 775
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 776
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 777
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 778
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 779
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final android_system_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 1049
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    const/4 p1, 0x0

    .line 1050
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 1051
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 1052
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 1053
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 1054
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 1055
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 1056
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 1057
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1058
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1059
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1060
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1061
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1062
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1063
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 1064
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 1065
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 1066
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 1067
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 1068
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 1069
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 1070
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 1071
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 1072
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 1073
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final app_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    const/4 p1, 0x0

    .line 639
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 640
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 641
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 642
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 643
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 644
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 645
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 646
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 647
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 648
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 649
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 650
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 651
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 652
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 653
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 654
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 655
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 656
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 657
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 658
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 659
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 660
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 661
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 662
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final battery_charging_dialog_shown_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "battery_charging_dialog_shown_event is deprecated"
    .end annotation

    .line 697
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    const/4 p1, 0x0

    .line 698
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 699
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 700
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 701
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 702
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 703
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 704
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 705
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 706
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 707
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 708
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 709
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 710
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 711
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 712
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 713
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 714
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 715
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 716
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 717
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 718
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 719
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 720
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 721
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final battery_plugged_in_but_not_charging_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    const/4 p1, 0x0

    .line 814
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 815
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 816
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 817
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 818
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 819
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 820
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 821
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 822
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 823
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 824
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 825
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 826
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 827
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 828
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 829
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 830
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 831
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 832
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 833
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 834
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 835
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 836
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 837
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final battery_state(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    const/4 p1, 0x0

    .line 523
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 524
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 525
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 526
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 527
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 528
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 529
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 530
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 531
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 532
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 533
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 534
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 535
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 536
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 537
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 538
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 539
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 540
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 541
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 542
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 543
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 544
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 545
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 546
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final boot_completed_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    const/4 p1, 0x0

    .line 610
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 611
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 612
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 613
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 614
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 615
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 616
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 617
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 618
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 619
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 620
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 621
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 622
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 623
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 624
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 625
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 626
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 627
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 628
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 629
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 630
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 631
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 632
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 633
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;
    .locals 29

    move-object/from16 v0, p0

    .line 1251
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    .line 1252
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 1253
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 1254
    iget-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 1255
    iget-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 1256
    iget-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 1257
    iget-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 1258
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 1259
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1260
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1261
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1262
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1263
    iget-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1264
    iget-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1265
    iget-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    move-object/from16 v16, v1

    .line 1266
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    move-object/from16 v17, v1

    .line 1267
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    move-object/from16 v18, v1

    .line 1268
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    move-object/from16 v19, v1

    .line 1269
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    move-object/from16 v20, v1

    .line 1270
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    move-object/from16 v21, v1

    .line 1271
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    move-object/from16 v22, v1

    .line 1272
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    move-object/from16 v23, v1

    .line 1273
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    move-object/from16 v24, v1

    .line 1274
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    move-object/from16 v25, v1

    .line 1275
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    move-object/from16 v26, v1

    .line 1276
    iget-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    .line 1277
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v27

    move-object/from16 v28, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v28

    .line 1251
    invoke-direct/range {v1 .. v27}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final countertop_transaction_start_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    const/4 p1, 0x0

    .line 727
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 728
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 729
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 730
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 731
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 732
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 733
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 734
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 735
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 736
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 737
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 738
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 739
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 740
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 741
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 742
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 743
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 744
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 745
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 746
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 747
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 748
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 749
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 750
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final data_usage_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    const/4 p1, 0x0

    .line 1021
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 1022
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 1023
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 1024
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 1025
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 1026
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 1027
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 1028
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1029
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1030
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1031
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1032
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1033
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1034
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 1035
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 1036
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 1037
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 1038
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 1039
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 1040
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 1041
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 1042
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 1043
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 1044
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final device_factory_configuration_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 1078
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    const/4 p1, 0x0

    .line 1079
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 1080
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 1081
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 1082
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 1083
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 1084
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 1085
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 1086
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1087
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1088
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1089
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1090
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1091
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1092
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 1093
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 1094
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 1095
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 1096
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 1097
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 1098
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 1099
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 1100
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 1101
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 1102
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final device_performance_snapshot_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 784
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    const/4 p1, 0x0

    .line 785
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 786
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 787
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 788
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 789
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 790
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 791
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 792
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 793
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 794
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 795
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 796
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 797
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 798
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 799
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 800
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 801
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 802
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 803
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 804
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 805
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 806
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 807
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 808
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final device_temperature_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 991
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    const/4 p1, 0x0

    .line 992
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 993
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 994
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 995
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 996
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 997
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 998
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 999
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1000
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1001
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1002
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1003
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1004
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1005
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 1006
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 1007
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 1008
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 1009
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 1010
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 1011
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 1012
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 1013
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 1014
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 1015
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final devkit_sideload_install_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    const/4 p1, 0x0

    .line 581
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 582
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 583
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 584
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 585
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 586
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 587
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 588
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 589
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 590
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 591
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 592
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 593
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 594
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 595
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 596
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 597
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 598
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 599
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 600
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 601
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 602
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 603
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 604
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final dock_state(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    const/4 p1, 0x0

    .line 843
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 844
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 845
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 846
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 847
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 848
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 849
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 850
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 851
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 852
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 853
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 854
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 855
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 856
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 857
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 858
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 859
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 860
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 861
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 862
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 863
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 864
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 865
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 866
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final hub_state(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 871
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    const/4 p1, 0x0

    .line 872
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 873
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 874
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 875
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 876
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 877
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 878
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 879
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 880
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 881
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 882
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 883
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 884
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 885
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 886
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 887
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 888
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 889
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 890
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 891
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 892
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 893
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 894
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 895
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final integrity_check_error_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 1223
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    const/4 p1, 0x0

    .line 1224
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 1225
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 1226
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 1227
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 1228
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 1229
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 1230
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 1231
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1232
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1233
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1234
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1235
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1236
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1237
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 1238
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 1239
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 1240
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 1241
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 1242
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 1243
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 1244
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 1245
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 1246
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 1247
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    return-object p0
.end method

.method public final key_missing_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 1136
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    const/4 p1, 0x0

    .line 1137
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 1138
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 1139
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 1140
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 1141
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 1142
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 1143
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 1144
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1145
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1146
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1147
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1148
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1149
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1150
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 1151
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 1152
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 1153
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 1154
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 1155
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 1156
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 1157
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 1158
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 1159
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 1160
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final network_connectivity_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    const/4 p1, 0x0

    .line 963
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 964
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 965
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 966
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 967
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 968
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 969
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 970
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 971
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 972
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 973
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 974
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 975
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 976
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 977
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 978
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 979
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 980
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 981
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 982
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 983
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 984
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 985
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 986
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final pos_connectivity_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 1194
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    const/4 p1, 0x0

    .line 1195
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 1196
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 1197
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 1198
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 1199
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 1200
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 1201
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 1202
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1203
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1204
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1205
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1206
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1207
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1208
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 1209
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 1210
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 1211
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 1212
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 1213
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 1214
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 1215
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 1216
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 1217
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 1218
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final screen_metadata_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 667
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    const/4 p1, 0x0

    .line 668
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 669
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 670
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 671
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 672
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 673
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 674
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 675
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 676
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 677
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 678
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 679
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 680
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 681
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 682
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 683
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 684
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 685
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 686
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 687
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 688
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 689
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 690
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 691
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final storage_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "storage_event is deprecated"
    .end annotation

    .line 904
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    const/4 p1, 0x0

    .line 905
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 906
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 907
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 908
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 909
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 910
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 911
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 912
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 913
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 914
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 915
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 916
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 917
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 918
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 919
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 920
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 921
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 922
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 923
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 924
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 925
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 926
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 927
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 928
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final tamper_coin_cell_battery_state(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    const/4 p1, 0x0

    .line 552
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 553
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 554
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 555
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 556
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 557
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 558
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 559
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 560
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 561
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 562
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 563
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 564
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 565
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 566
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 567
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 568
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 569
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 570
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 571
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 572
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 573
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 574
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 575
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final tamper_mode_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    const/4 p1, 0x0

    .line 934
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 935
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 936
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 937
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 938
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 939
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 940
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 941
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 942
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 943
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 944
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 945
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 946
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 947
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 948
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 949
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 950
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 951
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 952
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 953
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 954
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 955
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 956
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 957
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final update_operation_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 1107
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    const/4 p1, 0x0

    .line 1108
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 1109
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 1110
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 1111
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 1112
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 1113
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 1114
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 1115
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1116
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1117
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1118
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1119
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1120
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1121
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 1122
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 1123
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 1124
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 1125
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 1126
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 1127
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 1128
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 1129
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    .line 1130
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 1131
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method

.method public final usb_device_state_event(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->usb_device_state_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;

    const/4 p1, 0x0

    .line 1166
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    .line 1167
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_coin_cell_battery_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    .line 1168
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->devkit_sideload_install_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;

    .line 1169
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->boot_completed_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;

    .line 1170
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->app_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;

    .line 1171
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->screen_metadata_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;

    .line 1172
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_charging_dialog_shown_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;

    .line 1173
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->countertop_transaction_start_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;

    .line 1174
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->accessibility_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;

    .line 1175
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_performance_snapshot_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;

    .line 1176
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->battery_plugged_in_but_not_charging_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;

    .line 1177
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->dock_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;

    .line 1178
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->hub_state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;

    .line 1179
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->storage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;

    .line 1180
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->tamper_mode_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;

    .line 1181
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->network_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;

    .line 1182
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_temperature_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;

    .line 1183
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->data_usage_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;

    .line 1184
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->android_system_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;

    .line 1185
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->device_factory_configuration_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;

    .line 1186
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->update_operation_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 1187
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->key_missing_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 1188
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->pos_connectivity_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 1189
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData$Builder;->integrity_check_error_event:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    return-object p0
.end method
