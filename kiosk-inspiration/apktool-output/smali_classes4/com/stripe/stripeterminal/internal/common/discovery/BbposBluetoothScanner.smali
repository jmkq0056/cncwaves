.class public final Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;
.super Landroid/bluetooth/le/ScanCallback;
.source "BbposBluetoothScanner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$Companion;,
        Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;,
        Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 !2\u00020\u0001:\u0002!\"B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u001a\u001a\u00020\u0014H\u0016J\u001a\u0010\u001b\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\u00142\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0017JJ\u0010\u001f\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u001426\u0010\n\u001a2\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000bH\u0007J\u0008\u0010 \u001a\u00020\u0012H\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R>\u0010\n\u001a2\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u000f\u0012\u0013\u0012\u00110\u0010\u00a2\u0006\u000c\u0008\r\u0012\u0008\u0008\u000e\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u00120\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;",
        "Landroid/bluetooth/le/ScanCallback;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
        "scannerProvider",
        "Ljavax/inject/Provider;",
        "Landroid/bluetooth/le/BluetoothLeScanner;",
        "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/status/ReaderStatusListener;Ljavax/inject/Provider;)V",
        "onReaderDiscovered",
        "Lkotlin/Function2;",
        "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
        "Lkotlin/ParameterName;",
        "name",
        "reader",
        "",
        "deviceName",
        "",
        "retryCount",
        "",
        "scanState",
        "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;",
        "scanStateLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "onScanFailed",
        "errorCode",
        "onScanResult",
        "callbackType",
        "result",
        "Landroid/bluetooth/le/ScanResult;",
        "startScan",
        "stopScan",
        "Companion",
        "ScanState",
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
.field private static final BASE_BLUETOOTH_UUID_POSTFIX:Ljava/lang/String; = "0000-1000-8000-00805F9B34FB"

.field private static final BASE_BLUETOOTH_UUID_PREFIX:Ljava/lang/String; = "0000"

.field private static final BBPOS_BLUETOOTH_SID:Ljava/lang/String; = "FFA0"

.field private static final BLUETOOTH_SERVICE_ID:Ljava/lang/String; = "0000FFA0-0000-1000-8000-00805F9B34FB"

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$Companion;

.field private static final MAX_RETRIES:I = 0x5

.field private static final RETRY_DELAY:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "BbposBluetoothScanner"


# instance fields
.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private onReaderDiscovered:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

.field private retryCount:I

.field private volatile scanState:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

.field private final scanStateLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final scannerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/bluetooth/le/BluetoothLeScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->Companion:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/status/ReaderStatusListener;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
            "Ljavax/inject/Provider<",
            "Landroid/bluetooth/le/BluetoothLeScanner;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scannerProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 39
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 40
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scannerProvider:Ljavax/inject/Provider;

    .line 55
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$onReaderDiscovered$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$onReaderDiscovered$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->onReaderDiscovered:Lkotlin/jvm/functions/Function2;

    .line 60
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;->STOPPED:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanState:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    .line 61
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public static final synthetic access$getOnReaderDiscovered$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->onReaderDiscovered:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getRetryCount$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->retryCount:I

    return p0
.end method

.method public static final synthetic access$getScanState$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanState:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    return-object p0
.end method

.method public static final synthetic access$getScanStateLock$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method public static final synthetic access$getScannerProvider$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;)Ljavax/inject/Provider;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scannerProvider:Ljavax/inject/Provider;

    return-object p0
.end method

.method public static final synthetic access$setScanState$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanState:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    return-void
.end method

.method public static synthetic startScan$default(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->startScan(ILkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 8

    .line 125
    sget-object v0, Lcom/stripe/core/stripeterminal/log/AndroidLog;->INSTANCE:Lcom/stripe/core/stripeterminal/log/AndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "scanFailed, errorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BbposBluetoothScanner"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/core/stripeterminal/log/AndroidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    move v3, p1

    .line 153
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 154
    new-instance v2, Lcom/stripe/core/hardware/status/ScanFailedFatalError;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "Bluetooth scan failed"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/stripe/core/hardware/status/ScanFailedFatalError;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/stripe/hardware/status/ReaderException;

    .line 153
    invoke-interface {p1, v2}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderException(Lcom/stripe/hardware/status/ReaderException;)V

    return-void

    .line 141
    :pswitch_0
    iget v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->retryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$onScanFailed$1;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$onScanFailed$1;-><init>(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 148
    new-instance v1, Lcom/stripe/core/hardware/status/ScanFailedFatalError;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v3, "Bluetooth scan failed"

    const/4 v4, 0x0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/stripe/core/hardware/status/ScanFailedFatalError;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/stripe/hardware/status/ReaderException;

    .line 147
    invoke-interface {v0, v1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderException(Lcom/stripe/hardware/status/ReaderException;)V

    return-void

    :pswitch_1
    move v3, p1

    .line 134
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->readerStatusListener:Lcom/stripe/core/hardware/status/ReaderStatusListener;

    .line 135
    new-instance v2, Lcom/stripe/core/hardware/status/ScanFailedFatalError;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, "Bluetooth scan failed"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/stripe/core/hardware/status/ScanFailedFatalError;-><init>(ILjava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/stripe/hardware/status/ReaderException;

    .line 134
    invoke-interface {p1, v2}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderException(Lcom/stripe/hardware/status/ReaderException;)V

    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 118
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromBluetoothDeviceOrNull(Landroid/bluetooth/BluetoothDevice;)Lcom/stripe/core/hardware/Reader$BluetoothReader;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->onReaderDiscovered:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final startScan(ILkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/core/hardware/Reader$BluetoothReader;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onReaderDiscovered"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->onReaderDiscovered:Lkotlin/jvm/functions/Function2;

    .line 69
    iput p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->retryCount:I

    .line 71
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 72
    :try_start_0
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanState:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance p2, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {p2}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 81
    const-string v1, "0000FFA0-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object p2

    .line 82
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object p2

    .line 84
    new-instance v1, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 85
    invoke-virtual {v1, v0}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scannerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v1, :cond_1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    move-object v2, p0

    check-cast v2, Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, p2, v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 89
    :cond_1
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;->STARTED:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanState:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    goto :goto_0

    .line 76
    :cond_2
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;->STARTED:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanState:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    .line 92
    :goto_0
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p2

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p2
.end method

.method public final stopScan()V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object v1, v0

    check-cast v1, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanState:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;->STARTED:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    if-ne v0, v2, :cond_0

    .line 99
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;->STOPPING:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->scanState:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    .line 101
    :cond_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 102
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;-><init>(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :catchall_0
    move-exception v0

    .line 97
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
