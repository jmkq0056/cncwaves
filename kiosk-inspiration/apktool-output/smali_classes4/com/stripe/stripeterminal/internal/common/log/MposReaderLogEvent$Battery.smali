.class public final Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;
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
    name = "Battery"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMposReaderLogEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MposReaderLogEvent.kt\ncom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,78:1\n1#2:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J0\u0010\u0017\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u00052\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u0004\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
        "batteryLevel",
        "",
        "isUsbConnected",
        "",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "(Ljava/lang/Float;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/Reader;)V",
        "getBatteryLevel",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "eventData",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "getEventData",
        "()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Float;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;",
        "equals",
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
.field private final batteryLevel:Ljava/lang/Float;

.field private final isUsbConnected:Ljava/lang/Boolean;

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;


# direct methods
.method public constructor <init>(Ljava/lang/Float;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->batteryLevel:Ljava/lang/Float;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->isUsbConnected:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;Ljava/lang/Float;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/Reader;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->batteryLevel:Ljava/lang/Float;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->isUsbConnected:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->copy(Ljava/lang/Float;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->batteryLevel:Ljava/lang/Float;

    return-object v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->isUsbConnected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public final copy(Ljava/lang/Float;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;
    .locals 1

    const-string v0, "reader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;-><init>(Ljava/lang/Float;Ljava/lang/Boolean;Lcom/stripe/stripeterminal/external/models/Reader;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->batteryLevel:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->batteryLevel:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->isUsbConnected:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->isUsbConnected:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBatteryLevel()Ljava/lang/Float;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->batteryLevel:Ljava/lang/Float;

    return-object v0
.end method

.method public getEventData()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;
    .locals 36

    move-object/from16 v0, p0

    .line 56
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->batteryLevel:Ljava/lang/Float;

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v4, v1

    .line 57
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->isUsbConnected:Ljava/lang/Boolean;

    const/4 v2, 0x1

    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;->CONNECTED:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    :goto_1
    move-object v6, v1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;->DISCONNECTED:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    .line 60
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;->POWER_CONNECTIVITY_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;

    goto :goto_1

    .line 55
    :goto_2
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7fc

    const/16 v17, 0x0

    invoke-direct/range {v3 .. v17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;-><init>(DLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerConnectivity;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$PowerSource;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState$BatteryHealth;IIFILcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState$DockConnectionStatus;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState$HubConnectionStatus;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    new-instance v7, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

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

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const v34, 0x3fffffe

    const/16 v35, 0x0

    move-object v8, v3

    invoke-direct/range {v7 .. v35}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/CoinCellBatteryState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/devkit/DevKitSideloadInstallEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/boot/BootCompletedEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/app_event/ApplicationLifecycleEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/screen/ScreenMetadataEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryChargingDialogShownEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/countertop_transaction/CountertopTransactionStartEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessibility/AccessibilityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/performance/DevicePerformanceSnapshotEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/battery/BatteryPluggedInButNotChargingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/DockState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/HubState;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/storage/StorageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/TamperModeEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/NetworkConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device_temperature/DeviceTemperatureEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/data/DataUsageEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/system_event/AndroidSystemEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/device/DeviceFactoryConfigurationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/accessories/USBDeviceStateEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/PosConnectivityEvent;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    .line 60
    :cond_3
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1
.end method

.method public getReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->batteryLevel:Ljava/lang/Float;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->isUsbConnected:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isUsbConnected()Ljava/lang/Boolean;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->isUsbConnected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Battery(batteryLevel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->batteryLevel:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUsbConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->isUsbConnected:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent$Battery;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
