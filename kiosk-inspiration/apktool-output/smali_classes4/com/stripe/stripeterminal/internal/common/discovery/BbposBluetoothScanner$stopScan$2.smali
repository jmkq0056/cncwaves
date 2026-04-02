.class final Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposBluetoothScanner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->stopScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.stripeterminal.internal.common.discovery.BbposBluetoothScanner$stopScan$2"
    f = "BbposBluetoothScanner.kt"
    i = {}
    l = {
        0x68
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;->this$0:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;->this$0:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    invoke-direct {p1, v0, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;-><init>(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 102
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 104
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;->label:I

    const-wide/16 v1, 0x1388

    invoke-static {v1, v2, p1}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 105
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;->this$0:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->access$getScanStateLock$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/locks/Lock;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$stopScan$2;->this$0:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 106
    :try_start_0
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->access$getScanState$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;)Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    move-result-object v1

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;->STOPPING:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    if-ne v1, v2, :cond_4

    .line 107
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->access$getScannerProvider$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/BluetoothLeScanner;

    if-eqz v1, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/bluetooth/le/ScanCallback;

    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 108
    :cond_3
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;->STOPPED:Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;->access$setScanState$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothScanner$ScanState;)V

    .line 110
    :cond_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 111
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception v0

    .line 105
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
