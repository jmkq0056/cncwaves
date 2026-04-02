.class public final Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;
.super Ljava/lang/Object;
.source "BbposProxyDiscoveryController.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000c\u00a2\u0006\u0002\u0010\rJ&\u0010\u000f\u001a\u00020\u00102\u0014\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00140\u00130\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
        "defaultBluetoothDiscoveryController",
        "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;",
        "bbposBluetoothDiscoveryController",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;",
        "usbDiscoveryController",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "currentController",
        "discover",
        "",
        "readerClasses",
        "",
        "Lkotlin/reflect/KClass;",
        "Lcom/stripe/core/hardware/Reader;",
        "connectionType",
        "Lcom/stripe/core/hardware/ConnectionType;",
        "stopDiscover",
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
.field private final bbposBluetoothDiscoveryController:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;

.field private currentController:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

.field private final defaultBluetoothDiscoveryController:Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final usbDiscoveryController:Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "defaultBluetoothDiscoveryController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbposBluetoothDiscoveryController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbDiscoveryController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->defaultBluetoothDiscoveryController:Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;

    .line 11
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->bbposBluetoothDiscoveryController:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;

    .line 12
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->usbDiscoveryController:Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;

    .line 13
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public discover(Ljava/util/List;Lcom/stripe/core/hardware/ConnectionType;)V
    .locals 3
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
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "discover"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 20
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/core/hardware/ConnectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->usbDiscoveryController:Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 23
    :cond_1
    const-class v0, Lcom/stripe/core/hardware/Reader$BluetoothReader$Chipper1xReader;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->bbposBluetoothDiscoveryController:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

    goto :goto_0

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->defaultBluetoothDiscoveryController:Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

    .line 20
    :goto_0
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->currentController:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

    if-eqz v0, :cond_3

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;->discover(Ljava/util/List;Lcom/stripe/core/hardware/ConnectionType;)V

    :cond_3
    return-void
.end method

.method public stopDiscover()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "stopDiscover"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 37
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;->currentController:Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;->stopDiscover()V

    :cond_0
    return-void
.end method
