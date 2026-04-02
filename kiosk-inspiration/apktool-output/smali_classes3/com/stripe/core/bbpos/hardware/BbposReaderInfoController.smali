.class public final Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;
.super Ljava/lang/Object;
.source "BbposReaderInfoController.kt"

# interfaces
.implements Lcom/stripe/core/hardware/ReaderInfoController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;",
        "Lcom/stripe/core/hardware/ReaderInfoController;",
        "deviceController",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)V",
        "requestReaderBatteryInfo",
        "",
        "requestReaderInfo",
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
.field private static final BATTERY_IS_CHARGING_KEY:Ljava/lang/String; = "isCharging"

.field private static final BATTERY_PERCENTAGE:Ljava/lang/String; = "batteryPercentage"

.field public static final Companion:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static final USB_CONNECTED:Ljava/lang/String; = "isUsbConnected"


# instance fields
.field private final deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;->Companion:Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController$Companion;

    .line 15
    const-string v0, "BbposReaderInfoController"

    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;)V
    .locals 1

    const-string v0, "deviceController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    return-void
.end method


# virtual methods
.method public requestReaderBatteryInfo()V
    .locals 4

    .line 27
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestReaderBatteryInfo"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    const/4 v1, 0x3

    .line 30
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "isCharging"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 31
    const-string v3, "batteryPercentage"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 32
    const-string v3, "isUsbConnected"

    aput-object v3, v1, v2

    .line 29
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->getDeviceInfoByKeys(Ljava/util/List;)V

    return-void
.end method

.method public requestReaderInfo()V
    .locals 3

    .line 22
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;->TAG:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "requestReaderInfo"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposReaderInfoController;->deviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->getDeviceInfo()V

    return-void
.end method
