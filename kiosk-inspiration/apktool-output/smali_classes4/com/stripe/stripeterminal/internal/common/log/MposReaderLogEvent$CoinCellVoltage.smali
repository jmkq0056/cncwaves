.class public final Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;
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
    name = "CoinCellVoltage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
        "voltage",
        "",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "(FLcom/stripe/stripeterminal/external/models/Reader;)V",
        "eventData",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "getEventData",
        "()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "getReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "getVoltage",
        "()F",
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
.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field private final voltage:F


# direct methods
.method public constructor <init>(FLcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->voltage:F

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;FLcom/stripe/stripeterminal/external/models/Reader;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->voltage:F

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->copy(FLcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->voltage:F

    return v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public final copy(FLcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;
    .locals 1

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;-><init>(FLcom/stripe/stripeterminal/external/models/Reader;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;

    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->voltage:F

    iget v3, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->voltage:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getEventData()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;
    .locals 29

    .line 68
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    new-instance v2, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;

    move-object/from16 v1, p0

    iget v3, v1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->voltage:F

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;-><init>(FLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v27, 0x3fffffd

    const/16 v28, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

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

    invoke-direct/range {v0 .. v28}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public getReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public final getVoltage()F
    .locals 1

    .line 66
    iget v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->voltage:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->voltage:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CoinCellVoltage(voltage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->voltage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$CoinCellVoltage;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
