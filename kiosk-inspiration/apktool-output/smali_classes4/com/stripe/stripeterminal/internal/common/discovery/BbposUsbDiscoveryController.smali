.class public final Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;
.super Ljava/lang/Object;
.source "BbposUsbDiscoveryController.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J&\u0010\u000b\u001a\u00020\u000c2\u0014\u0010\r\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u000f0\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/hardware/status/ReaderStatusListener;Landroid/hardware/usb/UsbManager;)V",
        "job",
        "Lkotlinx/coroutines/Job;",
        "discover",
        "",
        "readerClasses",
        "",
        "Lkotlin/reflect/KClass;",
        "Lcom/stripe/core/hardware/Reader;",
        "connectionType",
        "Lcom/stripe/core/hardware/ConnectionType;",
        "getUsbDevices",
        "",
        "Landroid/hardware/usb/UsbDevice;",
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
.field private static final Companion:Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$Companion;

.field private static final POLL_DELAY:J


# instance fields
.field private job:Lkotlinx/coroutines/Job;

.field private final readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->Companion:Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$Companion;

    .line 52
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x1

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->POLL_DELAY:J

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/hardware/status/ReaderStatusListener;Landroid/hardware/usb/UsbManager;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 20
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 21
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->usbManager:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method public static final synthetic access$getPOLL_DELAY$cp()J
    .locals 2

    .line 18
    sget-wide v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->POLL_DELAY:J

    return-wide v0
.end method

.method public static final synthetic access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;)Lcom/stripe/core/hardware/status/ReaderStatusListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    return-object p0
.end method

.method public static final synthetic access$getUsbDevices(Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;)Ljava/util/Collection;
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->getUsbDevices()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private final getUsbDevices()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->usbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public discover(Ljava/util/List;Lcom/stripe/core/hardware/ConnectionType;)V
    .locals 6
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

    .line 27
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->job:Lkotlinx/coroutines/Job;

    if-eqz p2, :cond_0

    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;

    const/4 v1, 0x0

    invoke-direct {p2, p0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;-><init>(Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public stopDiscover()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 48
    :cond_0
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
