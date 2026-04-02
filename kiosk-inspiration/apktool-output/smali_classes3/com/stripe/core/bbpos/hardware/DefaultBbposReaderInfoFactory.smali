.class public final Lcom/stripe/core/bbpos/hardware/DefaultBbposReaderInfoFactory;
.super Ljava/lang/Object;
.source "BbposReaderInfoFactory.kt"

# interfaces
.implements Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010$\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u00e4\u0001\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n2\u0008\u0010\r\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\n2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\n2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\n2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/DefaultBbposReaderInfoFactory;",
        "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoFactory;",
        "isDebug",
        "",
        "clientDeviceType",
        "Lcom/stripe/core/device/ClientDeviceType;",
        "(ZLcom/stripe/core/device/ClientDeviceType;)V",
        "create",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "pinKsn",
        "",
        "emvKsn",
        "macKsn",
        "trackKsn",
        "batteryPercentage",
        "configVersion",
        "deviceSettingVersion",
        "bootloaderVersion",
        "emvKeyProfileId",
        "firmwareVersion",
        "hardwareVersion",
        "macKeyProfileId",
        "pinKeyProfileId",
        "serialNumber",
        "trackKeyProfileId",
        "isCharging",
        "rawReaderData",
        "",
        "serial",
        "firmwareId",
        "coinCellBatteryVoltage",
        "isUsbConnected",
        "hardware_release"
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
.field private final clientDeviceType:Lcom/stripe/core/device/ClientDeviceType;

.field private final isDebug:Z


# direct methods
.method public constructor <init>(ZLcom/stripe/core/device/ClientDeviceType;)V
    .locals 1

    const-string v0, "clientDeviceType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/stripe/core/bbpos/hardware/DefaultBbposReaderInfoFactory;->isDebug:Z

    .line 35
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/DefaultBbposReaderInfoFactory;->clientDeviceType:Lcom/stripe/core/device/ClientDeviceType;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/hardware/status/ReaderInfo;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/hardware/status/ReaderInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "rawReaderData"

    move-object/from16 v6, p17

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    if-eqz p5, :cond_0

    .line 61
    invoke-static/range {p5 .. p5}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v5

    :goto_0
    if-eqz v7, :cond_1

    .line 64
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v5

    .line 73
    :goto_1
    const-string v9, "substring(...)"

    const/4 v10, 0x6

    const/4 v11, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v18, v1

    goto :goto_2

    :cond_2
    move-object/from16 v18, v5

    :goto_2
    if-eqz v3, :cond_3

    .line 74
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v3, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v1

    goto :goto_3

    :cond_3
    move-object/from16 v19, v5

    :goto_3
    if-eqz v2, :cond_4

    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v2, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v21, v1

    goto :goto_4

    :cond_4
    move-object/from16 v21, v5

    :goto_4
    if-eqz v4, :cond_5

    .line 76
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v4, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v20, v1

    goto :goto_5

    :cond_5
    move-object/from16 v20, v5

    :goto_5
    if-nez p18, :cond_6

    move-object/from16 v22, p14

    goto :goto_6

    :cond_6
    move-object/from16 v22, p18

    .line 79
    :goto_6
    iget-boolean v1, v0, Lcom/stripe/core/bbpos/hardware/DefaultBbposReaderInfoFactory;->isDebug:Z

    .line 81
    const-string v2, "true"

    move-object/from16 v3, p16

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 82
    iget-object v4, v0, Lcom/stripe/core/bbpos/hardware/DefaultBbposReaderInfoFactory;->clientDeviceType:Lcom/stripe/core/device/ClientDeviceType;

    invoke-interface {v4}, Lcom/stripe/core/device/ClientDeviceType;->isDevKit()Z

    move-result v27

    if-eqz p20, :cond_7

    .line 84
    invoke-static/range {p20 .. p20}, Lkotlin/text/StringsKt;->toFloatOrNull(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    :cond_7
    move-object/from16 v4, p21

    move-object/from16 v29, v5

    .line 85
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 62
    new-instance v6, Lcom/stripe/hardware/status/ReaderInfo;

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 81
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    .line 85
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    const/high16 v31, 0x10000

    const/16 v32, 0x0

    const/16 v23, 0x0

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v17, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v15, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v25, p17

    move-object/from16 v28, p19

    .line 62
    invoke-direct/range {v6 .. v32}, Lcom/stripe/hardware/status/ReaderInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
