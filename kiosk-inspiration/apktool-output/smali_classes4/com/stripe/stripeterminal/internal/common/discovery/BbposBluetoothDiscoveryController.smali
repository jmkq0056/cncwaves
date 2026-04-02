.class public final Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;
.super Ljava/lang/Object;
.source "BbposBluetoothDiscoveryController.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J&\u0010\t\u001a\u00020\n2\u0014\u0010\u000b\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\r0\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
        "bbposDeviceController",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "bbposBluetoothDiscoveryFilter",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;",
        "(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;)V",
        "isScanning",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "discover",
        "",
        "readerClasses",
        "",
        "Lkotlin/reflect/KClass;",
        "Lcom/stripe/core/hardware/Reader;",
        "connectionType",
        "Lcom/stripe/core/hardware/ConnectionType;",
        "stopDiscover",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController$Companion;

.field private static final TAG:Ljava/lang/String; = "BBBTDiscoveryController"


# instance fields
.field private final bbposBluetoothDiscoveryFilter:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;

.field private final bbposDeviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

.field private final isScanning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;->Companion:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;)V
    .locals 1

    const-string v0, "bbposDeviceController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbposBluetoothDiscoveryFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;->bbposDeviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    .line 13
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;->bbposBluetoothDiscoveryFilter:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;

    .line 16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;->isScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public discover(Ljava/util/List;Lcom/stripe/core/hardware/ConnectionType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;",
            "Lcom/stripe/core/hardware/ConnectionType;",
            ")V"
        }
    .end annotation

    const-string v0, "readerClasses"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object p2, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v0, "BBBTDiscoveryController"

    const-string v1, "discoverDevices"

    invoke-virtual {p2, v0, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;->isScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 21
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;->bbposBluetoothDiscoveryFilter:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;

    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;->setReaderClasses$common_publish(Ljava/util/List;)V

    .line 22
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;->bbposDeviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    const/4 p2, 0x0

    invoke-interface {p1, p2, v1}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->startBtScan(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public stopDiscover()V
    .locals 3

    .line 27
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    const-string v1, "BBBTDiscoveryController"

    const-string v2, "stopDiscoverReaders"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;->isScanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;->bbposDeviceController:Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->stopBtScan()V

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;->bbposBluetoothDiscoveryFilter:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;->clearReaderClassesFilter$common_publish()V

    :cond_0
    return-void
.end method
