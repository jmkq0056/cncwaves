.class public final Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;
.super Ljava/lang/Object;
.source "MposReaderLogEvent.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Disconnect"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "reason",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V",
        "eventData",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "getEventData",
        "()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "getReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "getReason",
        "()Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "common_publish"
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
.field private final eventData:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field private final reason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "reader"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "reason"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iput-object v2, v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    .line 31
    new-instance v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    .line 32
    new-instance v5, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 33
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEventKt;->access$getConnectionMode(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;

    move-result-object v6

    .line 34
    new-instance v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;

    .line 35
    new-instance v9, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect;

    .line 36
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 43
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    :pswitch_0
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;->BLUETOOTH_DISABLED:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;

    goto :goto_0

    .line 42
    :pswitch_1
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;->POWERED_OFF:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;

    goto :goto_0

    .line 41
    :pswitch_2
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;->CRITICALLY_LOW_BATTERY:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;

    goto :goto_0

    .line 40
    :pswitch_3
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;->SECURITY_REBOOT:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;

    goto :goto_0

    .line 39
    :pswitch_4
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;->REBOOT_REQUESTED:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;

    goto :goto_0

    .line 38
    :pswitch_5
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;->DISCONNECT_REQUESTED:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;

    goto :goto_0

    .line 37
    :pswitch_6
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;->UNKNOWN:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 35
    invoke-direct {v9, v1, v3, v2, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$DisconnectReason;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 34
    invoke-direct/range {v7 .. v12}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v9, 0x4

    .line 32
    invoke-direct/range {v5 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v31, 0x37fffff

    const/16 v32, 0x0

    move-object/from16 v28, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    .line 31
    invoke-direct/range {v4 .. v32}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->eventData:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->copy(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/DisconnectReason;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;-><init>(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getEventData()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->eventData:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    return-object v0
.end method

.method public getReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public final getReason()Lcom/stripe/stripeterminal/external/models/DisconnectReason;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disconnect(reader="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Disconnect;->reason:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
