.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposUsbAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->getDeviceName(Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Pair<",
        "+",
        "Landroid/hardware/usb/UsbDevice;",
        "+",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0001*\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "Landroid/hardware/usb/UsbDevice;",
        "Lcom/stripe/hardware/status/ReaderInfo;",
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
    c = "com.stripe.stripeterminal.internal.common.adapter.BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2"
    f = "BbposUsbAdapter.kt"
    i = {
        0x0,
        0x1,
        0x2,
        0x3
    }
    l = {
        0x221,
        0x221,
        0x223,
        0x223,
        0x226,
        0x226
    }
    m = "invokeSuspend"
    n = {
        "$this$coroutineScope",
        "$this$coroutineScope",
        "$this$coroutineScope",
        "$this$coroutineScope"
    }
    s = {
        "L$0",
        "L$0",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $device:Landroid/hardware/usb/UsbDevice;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;

.field final synthetic this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->$device:Landroid/hardware/usb/UsbDevice;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 4
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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->$device:Landroid/hardware/usb/UsbDevice;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Landroid/hardware/usb/UsbDevice;Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Pair<",
            "+",
            "Landroid/hardware/usb/UsbDevice;",
            "Lcom/stripe/hardware/status/ReaderInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 544
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->label:I

    const/4 v2, 0x0

    const-string v3, "disconnectUnsafe()"

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/Pair;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v0

    :pswitch_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;

    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$1:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;

    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :pswitch_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :cond_0
    move-object v6, v1

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    .line 545
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->$device:Landroid/hardware/usb/UsbDevice;

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    const/4 v7, 0x1

    iput v7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->label:I

    invoke-static {p1, v5, v6}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->access$connect(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_1

    goto/16 :goto_5

    :cond_1
    :goto_0
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->label:I

    invoke-static {p1, v5}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_0

    goto/16 :goto_5

    :goto_1
    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-eqz p1, :cond_8

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;

    .line 547
    :try_start_2
    iput-object v6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$2:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->label:I

    invoke-static {v5, p1, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->access$getDeviceInfo(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Landroid/hardware/usb/UsbDevice;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    goto :goto_5

    :cond_2
    :goto_2
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    iput-object v6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    iput-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$2:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_5

    .line 544
    :cond_3
    :goto_3
    check-cast p1, Lkotlin/Pair;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    invoke-static {v6}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 550
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2$1$1;

    invoke-direct {v2, v5, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$2:Ljava/lang/Object;

    const/4 v3, 0x5

    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_4

    goto :goto_5

    :cond_4
    return-object p1

    .line 560
    :cond_5
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    new-array v1, v2, [Lkotlin/Pair;

    invoke-interface {v0, v3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 561
    invoke-static {v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->access$disconnectUnsafe(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;)V

    return-object p1

    .line 549
    :goto_4
    invoke-static {v6}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 550
    sget-object v1, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2$1$1;

    invoke-direct {v2, v5, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$0:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->L$2:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation$getDeviceName$2;->label:I

    invoke-static {v1, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    :goto_5
    return-object v0

    :cond_6
    move-object v0, p1

    :goto_6
    move-object p1, v0

    goto :goto_7

    .line 560
    :cond_7
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    new-array v1, v2, [Lkotlin/Pair;

    invoke-interface {v0, v3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 561
    invoke-static {v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;->access$disconnectUnsafe(Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter$DiscoverUsbReadersOperation;)V

    :goto_7
    throw p1

    :cond_8
    return-object v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
