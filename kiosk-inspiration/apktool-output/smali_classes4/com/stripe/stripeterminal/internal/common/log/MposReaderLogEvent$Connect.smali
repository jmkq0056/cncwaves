.class public final Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;
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
    name = "Connect"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "(Lcom/stripe/stripeterminal/external/models/Reader;)V",
        "eventData",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "getEventData",
        "()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "getReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "component1",
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


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reader"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 20
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    .line 21
    new-instance v4, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;

    .line 22
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEventKt;->access$getConnectionMode(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;

    move-result-object v5

    .line 23
    new-instance v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;

    .line 24
    new-instance v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v7, v1, v1, v2, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 23
    invoke-direct/range {v6 .. v11}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Connect;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType$Disconnect;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 21
    invoke-direct/range {v4 .. v9}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectionMode;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent$ConnectivityEventType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v30, 0x37fffff

    const/16 v31, 0x0

    move-object/from16 v27, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

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

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 20
    invoke-direct/range {v3 .. v31}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->eventData:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;Lcom/stripe/stripeterminal/external/models/Reader;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->copy(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;-><init>(Lcom/stripe/stripeterminal/external/models/Reader;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getEventData()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->eventData:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    return-object v0
.end method

.method public getReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connect(reader="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Connect;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
