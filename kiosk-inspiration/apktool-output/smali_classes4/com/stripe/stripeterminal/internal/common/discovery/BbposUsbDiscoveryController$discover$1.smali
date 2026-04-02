.class final Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposUsbDiscoveryController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->discover(Ljava/util/List;Lcom/stripe/core/hardware/ConnectionType;)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposUsbDiscoveryController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposUsbDiscoveryController.kt\ncom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,55:1\n1603#2,9:56\n1855#2:65\n1856#2:67\n1612#2:68\n766#2:69\n857#2,2:70\n1#3:66\n1#3:72\n*S KotlinDebug\n*F\n+ 1 BbposUsbDiscoveryController.kt\ncom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1\n*L\n32#1:56,9\n32#1:65\n32#1:67\n32#1:68\n33#1:69\n33#1:70,2\n32#1:66\n*E\n"
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
    c = "com.stripe.stripeterminal.internal.common.discovery.BbposUsbDiscoveryController$discover$1"
    f = "BbposUsbDiscoveryController.kt"
    i = {
        0x0
    }
    l = {
        0x25
    }
    m = "invokeSuspend"
    n = {
        "$this$launch"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $readerClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;"
        }
    .end annotation
.end field

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;Ljava/util/List;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/KClass<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->this$0:Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->$readerClasses:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->this$0:Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->$readerClasses:Ljava/util/List;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;-><init>(Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 29
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    move-object v1, p1

    .line 30
    :cond_2
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->isActive(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 31
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->this$0:Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->access$getUsbDevices(Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 32
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 65
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 64
    check-cast v5, Landroid/hardware/usb/UsbDevice;

    .line 32
    invoke-virtual {v3, v5}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->fromUsbDeviceOrNull(Landroid/hardware/usb/UsbDevice;)Lcom/stripe/core/hardware/Reader$UsbReader;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 64
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 68
    :cond_4
    check-cast v4, Ljava/util/List;

    .line 56
    check-cast v4, Ljava/lang/Iterable;

    .line 33
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->$readerClasses:Ljava/util/List;

    .line 69
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 70
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/stripe/core/hardware/Reader$UsbReader;

    .line 33
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 71
    :cond_6
    check-cast v3, Ljava/util/List;

    .line 69
    check-cast v3, Ljava/lang/Iterable;

    .line 34
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 35
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->this$0:Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;

    invoke-static {v3}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;)Lcom/stripe/core/hardware/status/ReaderStatusListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderDiscovery(Ljava/util/Set;)V

    .line 37
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;->access$getPOLL_DELAY$cp()J

    move-result-wide v3

    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController$discover$1;->label:I

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/DelayKt;->delay-VtjQ1oo(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 39
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
