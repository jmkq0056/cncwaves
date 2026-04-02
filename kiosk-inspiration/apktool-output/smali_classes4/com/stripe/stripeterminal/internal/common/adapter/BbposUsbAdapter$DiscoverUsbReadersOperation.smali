.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;
.source "BbposUsbAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscoverUsbReadersOperation"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposUsbAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposUsbAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 8 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,622:1\n49#2:623\n51#2:627\n46#3:624\n51#3:626\n105#4:625\n1747#5,2:628\n1747#5,3:630\n1749#5:633\n1064#6,2:634\n1#7:636\n318#8,11:637\n*S KotlinDebug\n*F\n+ 1 BbposUsbAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation\n*L\n422#1:623\n422#1:627\n422#1:624\n422#1:626\n422#1:625\n473#1:628,2\n474#1:630,3\n473#1:633\n487#1:634,2\n524#1:637,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\u0008\u0082\u0004\u0018\u00002\u00060\u0001R\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010!J\u001e\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001f0#2\u0006\u0010 \u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010!J\u0008\u0010$\u001a\u00020%H\u0016J\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\'0#H\u0082@\u00a2\u0006\u0002\u0010(J\u0008\u0010)\u001a\u00020\'H\u0002J*\u0010*\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020,\u0018\u00010+0#2\u0006\u0010 \u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010!J$\u0010-\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020,\u0018\u00010+2\u0006\u0010.\u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010!J$\u0010/\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020,\u0018\u00010+2\u0006\u0010 \u001a\u00020\u001fH\u0082@\u00a2\u0006\u0002\u0010!J$\u00100\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002010\u000f0#*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u0011020#H\u0016R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\"\u0010\u000e\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00110\u00100\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u00158VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019*\u0004\u0018\u00010\u001a8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0019*\u0004\u0018\u00010\u001a8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001c\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00063"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "applicationInformation",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/terminal/appinfo/ApplicationInformation;)V",
        "connectionType",
        "Lcom/stripe/core/hardware/ConnectionType;",
        "getConnectionType",
        "()Lcom/stripe/core/hardware/ConnectionType;",
        "readerClasses",
        "",
        "Lkotlin/reflect/KClass;",
        "Lcom/stripe/core/hardware/Reader;",
        "getReaderClasses",
        "()Ljava/util/List;",
        "timeout",
        "Lkotlin/time/Duration;",
        "getTimeout-UwyO8pc",
        "()J",
        "hasSupportedPrefix",
        "",
        "",
        "getHasSupportedPrefix",
        "(Ljava/lang/String;)Z",
        "isValidReaderSerial",
        "checkUsbPermission",
        "Landroid/hardware/usb/UsbDevice;",
        "usbDevice",
        "(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "connect",
        "Lkotlinx/coroutines/flow/Flow;",
        "createTimeoutException",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "disconnect",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disconnectUnsafe",
        "getDeviceInfo",
        "Lkotlin/Pair;",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "getDeviceName",
        "device",
        "pairWithReaderInfo",
        "transformDiscoveredReaders",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "",
        "adapter_release"
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
.field private final applicationInformation:Lcom/stripe/terminal/appinfo/ApplicationInformation;

.field private final config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/terminal/appinfo/ApplicationInformation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
            "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
            "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicationInformation"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    .line 399
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p0, p1, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V

    .line 396
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    .line 398
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->applicationInformation:Lcom/stripe/terminal/appinfo/ApplicationInformation;

    return-void
.end method

.method public static final synthetic access$checkUsbPermission(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->checkUsbPermission(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$connect(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->connect(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$disconnect(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->disconnect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$disconnectUnsafe(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;)V
    .locals 0

    .line 395
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->disconnectUnsafe()V

    return-void
.end method

.method public static final synthetic access$getDeviceInfo(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->getDeviceInfo(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDeviceName(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->getDeviceName(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$pairWithReaderInfo(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 395
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->pairWithReaderInfo(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final checkUsbPermission(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/hardware/usb/UsbDevice;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;

    iget v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 523
    iget v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    iget-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->L$1:Ljava/lang/Object;

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    iget-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 524
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    .line 637
    iput-object p0, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    .line 638
    new-instance v2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 644
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 645
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/CancellableContinuation;

    .line 525
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$1;

    invoke-direct {v4, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v4}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    .line 527
    invoke-static {p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getUsbPermissionReceiver$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;

    move-result-object p2

    .line 529
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$2;

    invoke-direct {v4, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$2;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 527
    new-instance v5, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$3;

    invoke-direct {v5, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$checkUsbPermission$permissionCheckResult$1$3;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p1, v4, v5}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->startListening(Landroid/hardware/usb/UsbDevice;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 646
    invoke-virtual {v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p2

    .line 637
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 524
    :goto_1
    check-cast p2, Landroid/hardware/usb/UsbDevice;

    .line 540
    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getUsbPermissionReceiver$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/usb/UsbPermissionReceiverManager;->stopListening()V

    return-object p2
.end method

.method private final connect(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Landroid/hardware/usb/UsbDevice;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 568
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$connect$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method private final disconnect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 584
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$disconnect$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method private final disconnectUnsafe()V
    .locals 7

    .line 616
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getScope$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$disconnectUnsafe$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$disconnectUnsafe$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getDeviceInfo(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 602
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceInfo$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method private final getDeviceName(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "+",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 544
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final getHasSupportedPrefix(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 473
    :cond_0
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getSUPPORTED_USB_DEVICE_TYPES$cp()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 628
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 629
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/DeviceType;

    .line 474
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getSerialPrefixes()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .line 630
    instance-of v3, v2, Ljava/util/Collection;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 631
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 475
    invoke-static {p1, v3, v0, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_5
    return v0
.end method

.method private final isValidReaderSerial(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 487
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->getHasSupportedPrefix(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_3

    check-cast p1, Ljava/lang/CharSequence;

    move v1, v0

    .line 634
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 487
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private final pairWithReaderInfo(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "+",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;

    iget v4, v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;

    invoke-direct {v3, v0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 497
    iget v5, v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;->label:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 500
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    .line 501
    invoke-direct {v0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->isValidReaderSerial(Ljava/lang/String;)Z

    move-result v7

    .line 502
    invoke-static {v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v5

    const/4 v8, 0x2

    .line 504
    new-array v8, v8, [Lkotlin/Pair;

    const-string v9, "serialNumber"

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    .line 505
    const-string v9, "isValidSerial"

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v6

    .line 502
    const-string v9, "pairWithReaderInfo"

    invoke-interface {v5, v9, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    if-eqz v7, :cond_3

    .line 508
    new-instance v3, Lcom/stripe/hardware/status/ReaderInfo;

    const v28, 0xff7fff

    const/16 v29, 0x0

    const/4 v4, 0x0

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

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v19, v2

    invoke-direct/range {v3 .. v29}, Lcom/stripe/hardware/status/ReaderInfo;-><init>(Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;ZLjava/lang/String;Ljava/lang/Float;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    return-object v1

    .line 511
    :cond_3
    iput-object v0, v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;->L$0:Ljava/lang/Object;

    iput v6, v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$pairWithReaderInfo$1;->label:I

    invoke-direct {v0, v1, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->getDeviceName(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    :cond_4
    move-object v1, v0

    :goto_1
    check-cast v2, Lkotlin/Pair;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/hardware/status/ReaderInfo;

    .line 513
    invoke-virtual {v2}, Lcom/stripe/hardware/status/ReaderInfo;->getSerial()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->getHasSupportedPrefix(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 514
    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    return-object v1

    :cond_5
    return-object v3
.end method


# virtual methods
.method public createTimeoutException()Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 7

    .line 405
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->USB_DISCOVERY_TIMED_OUT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "Usb discovery timed out"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public getConnectionType()Lcom/stripe/core/hardware/ConnectionType;
    .locals 1

    .line 401
    sget-object v0, Lcom/stripe/core/hardware/ConnectionType;->USB:Lcom/stripe/core/hardware/ConnectionType;

    return-object v0
.end method

.method public getReaderClasses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation

    .line 408
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 409
    const-class v1, Lcom/stripe/core/hardware/Reader$UsbReader$Chipper2xReader;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    const-class v1, Lcom/stripe/core/hardware/Reader$UsbReader$StripeM2Reader;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    const-class v1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3Reader;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->applicationInformation:Lcom/stripe/terminal/appinfo/ApplicationInformation;

    invoke-virtual {v1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getWisepad3SReadersEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    const-class v1, Lcom/stripe/core/hardware/Reader$UsbReader$Wisepad3SReader;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->applicationInformation:Lcom/stripe/terminal/appinfo/ApplicationInformation;

    invoke-virtual {v1}, Lcom/stripe/terminal/appinfo/ApplicationInformation;->getShopifyReadersEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    const-class v1, Lcom/stripe/core/hardware/Reader$UsbReader$WisecubeReader;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeout-UwyO8pc()J
    .locals 2

    .line 403
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    const-string v1, "null cannot be cast to non-null type com.stripe.stripeterminal.external.models.DiscoveryConfiguration.UsbDiscoveryConfiguration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;->getTimeout()I

    move-result v0

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transformDiscoveredReaders(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 423
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$2;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-direct {p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 434
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$transformDiscoveredReaders$3;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
