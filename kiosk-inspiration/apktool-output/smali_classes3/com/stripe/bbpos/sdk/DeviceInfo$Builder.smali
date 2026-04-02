.class public final Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "DeviceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/DeviceInfo;",
        "Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0015\u001a\u00020\u00002\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0017\u001a\u00020\u00002\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/DeviceInfo;",
        "()V",
        "batteryPercentage",
        "",
        "bootloaderVersion",
        "coinCellBatteryVoltage",
        "deviceSettingVersion",
        "emvKeyProfileId",
        "emvKsn",
        "firmwareId",
        "firmwareVersion",
        "hardwareVersion",
        "isCharging",
        "isUsbConnected",
        "macKeyProfileId",
        "macKsn",
        "pinKeyProfileId",
        "pinKsn",
        "serialNumber",
        "terminalSettingVersion",
        "trackKeyProfileId",
        "trackKsn",
        "build",
        "sdk-protos_release"
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
.field public batteryPercentage:Ljava/lang/String;

.field public bootloaderVersion:Ljava/lang/String;

.field public coinCellBatteryVoltage:Ljava/lang/String;

.field public deviceSettingVersion:Ljava/lang/String;

.field public emvKeyProfileId:Ljava/lang/String;

.field public emvKsn:Ljava/lang/String;

.field public firmwareId:Ljava/lang/String;

.field public firmwareVersion:Ljava/lang/String;

.field public hardwareVersion:Ljava/lang/String;

.field public isCharging:Ljava/lang/String;

.field public isUsbConnected:Ljava/lang/String;

.field public macKeyProfileId:Ljava/lang/String;

.field public macKsn:Ljava/lang/String;

.field public pinKeyProfileId:Ljava/lang/String;

.field public pinKsn:Ljava/lang/String;

.field public serialNumber:Ljava/lang/String;

.field public terminalSettingVersion:Ljava/lang/String;

.field public trackKeyProfileId:Ljava/lang/String;

.field public trackKsn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 296
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final batteryPercentage(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->batteryPercentage:Ljava/lang/String;

    return-object p0
.end method

.method public final bootloaderVersion(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->bootloaderVersion:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->build()Lcom/stripe/bbpos/sdk/DeviceInfo;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/DeviceInfo;
    .locals 23

    move-object/from16 v0, p0

    .line 453
    new-instance v1, Lcom/stripe/bbpos/sdk/DeviceInfo;

    .line 454
    iget-object v2, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->pinKsn:Ljava/lang/String;

    .line 455
    iget-object v3, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->batteryPercentage:Ljava/lang/String;

    .line 456
    iget-object v4, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->terminalSettingVersion:Ljava/lang/String;

    .line 457
    iget-object v5, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->deviceSettingVersion:Ljava/lang/String;

    .line 458
    iget-object v6, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->bootloaderVersion:Ljava/lang/String;

    .line 459
    iget-object v7, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->emvKeyProfileId:Ljava/lang/String;

    .line 460
    iget-object v8, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->firmwareVersion:Ljava/lang/String;

    .line 461
    iget-object v9, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->hardwareVersion:Ljava/lang/String;

    .line 462
    iget-object v10, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->macKeyProfileId:Ljava/lang/String;

    .line 463
    iget-object v11, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->pinKeyProfileId:Ljava/lang/String;

    .line 464
    iget-object v12, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->serialNumber:Ljava/lang/String;

    .line 465
    iget-object v13, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->trackKeyProfileId:Ljava/lang/String;

    .line 466
    iget-object v14, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->isCharging:Ljava/lang/String;

    .line 467
    iget-object v15, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->firmwareId:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 468
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->coinCellBatteryVoltage:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 469
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->macKsn:Ljava/lang/String;

    move-object/from16 v18, v1

    .line 470
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->emvKsn:Ljava/lang/String;

    move-object/from16 v19, v1

    .line 471
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->trackKsn:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 472
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->isUsbConnected:Ljava/lang/String;

    .line 473
    invoke-virtual {v0}, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v21

    move-object/from16 v22, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    .line 453
    invoke-direct/range {v1 .. v21}, Lcom/stripe/bbpos/sdk/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final coinCellBatteryVoltage(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->coinCellBatteryVoltage:Ljava/lang/String;

    return-object p0
.end method

.method public final deviceSettingVersion(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 370
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->deviceSettingVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final emvKeyProfileId(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->emvKeyProfileId:Ljava/lang/String;

    return-object p0
.end method

.method public final emvKsn(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->emvKsn:Ljava/lang/String;

    return-object p0
.end method

.method public final firmwareId(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->firmwareId:Ljava/lang/String;

    return-object p0
.end method

.method public final firmwareVersion(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->firmwareVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final hardwareVersion(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->hardwareVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final isCharging(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->isCharging:Ljava/lang/String;

    return-object p0
.end method

.method public final isUsbConnected(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->isUsbConnected:Ljava/lang/String;

    return-object p0
.end method

.method public final macKeyProfileId(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->macKeyProfileId:Ljava/lang/String;

    return-object p0
.end method

.method public final macKsn(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->macKsn:Ljava/lang/String;

    return-object p0
.end method

.method public final pinKeyProfileId(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->pinKeyProfileId:Ljava/lang/String;

    return-object p0
.end method

.method public final pinKsn(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->pinKsn:Ljava/lang/String;

    return-object p0
.end method

.method public final serialNumber(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->serialNumber:Ljava/lang/String;

    return-object p0
.end method

.method public final terminalSettingVersion(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->terminalSettingVersion:Ljava/lang/String;

    return-object p0
.end method

.method public final trackKeyProfileId(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->trackKeyProfileId:Ljava/lang/String;

    return-object p0
.end method

.method public final trackKsn(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/DeviceInfo$Builder;->trackKsn:Ljava/lang/String;

    return-object p0
.end method
