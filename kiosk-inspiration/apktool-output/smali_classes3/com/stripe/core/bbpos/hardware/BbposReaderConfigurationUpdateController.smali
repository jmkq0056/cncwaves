.class public final Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;
.super Ljava/lang/Object;
.source "BbposReaderConfigurationUpdateController.kt"

# interfaces
.implements Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J0\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000bH\u0016J\u001c\u0010\u0010\u001a\u00020\u00062\u0012\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0012H\u0016J\u001c\u0010\u0013\u001a\u00020\u00062\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00150\u0012H\u0016J\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;",
        "Lcom/stripe/core/hardware/updates/ReaderConfigurationUpdateController;",
        "deviceController",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)V",
        "readAid",
        "",
        "index",
        "",
        "readSettings",
        "merchantName",
        "",
        "countryCode",
        "domesticDebitAidList",
        "buzzerSoundEnabled",
        "configHash",
        "updateAid",
        "aidData",
        "",
        "updateDisplay",
        "displayData",
        "",
        "updateSettings",
        "settings",
        "Lcom/stripe/hardware/emv/TlvMap;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->Companion:Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController$Companion;

    .line 55
    const-string v0, "getSimpleName(...)"

    const-string v1, "BbposReaderConfigurationUpdateController"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)V
    .locals 1

    const-string v0, "deviceController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    return-void
.end method


# virtual methods
.method public declared-synchronized readAid(Ljava/lang/String;)V
    .locals 4

    const-string v0, "readReaderAid: "

    monitor-enter p0

    :try_start_0
    const-string v1, "index"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v2, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->readAid(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized readSettings(ZZZZZ)V
    .locals 32

    move-object/from16 v1, p0

    monitor-enter p0

    .line 26
    :try_start_0
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v2, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->TAG:Ljava/lang/String;

    const-string v3, "readReaderSettings"

    invoke-virtual {v0, v2, v3}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v4, v1, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    const v30, 0x5fffed

    const/16 v31, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

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

    const/16 v27, 0x0

    move/from16 v9, p1

    move/from16 v6, p2

    move/from16 v26, p3

    move/from16 v28, p4

    move/from16 v29, p5

    invoke-static/range {v4 .. v31}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->readTerminalSetting$default(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;ZZZZZZZZZZZZZZZZZZZZZZZZZILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized updateAid(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "aidData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->TAG:Ljava/lang/String;

    const-string v2, "updateReaderAid"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->updateAid(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateDisplay(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "displayData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->TAG:Ljava/lang/String;

    const-string v2, "updateReaderDisplay"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->updateDisplaySettings(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized updateSettings(Lcom/stripe/hardware/emv/TlvMap;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->TAG:Ljava/lang/String;

    const-string v2, "updateReaderSettings"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderConfigurationUpdateController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->toBlob()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->updateTerminalSettings(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
