.class public final Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;
.super Ljava/lang/Object;
.source "DefaultPaymentCollectionStateTimer.kt"

# interfaces
.implements Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J(\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0016H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateTimer;",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "timeoutSupplier",
        "Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;",
        "logger",
        "Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;",
        "(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V",
        "isActive",
        "",
        "()Z",
        "job",
        "Lkotlinx/coroutines/Job;",
        "cancel",
        "",
        "start",
        "state",
        "Lcom/stripe/paymentcollection/PaymentCollectionState;",
        "data",
        "Lcom/stripe/paymentcollection/PaymentCollectionData;",
        "onTimeout",
        "Lkotlin/Function0;",
        "impl_release"
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
.field private final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private job:Lkotlinx/coroutines/Job;

.field private final logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

.field private final timeoutSupplier:Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;)V
    .locals 1

    const-string v0, "coroutineScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timeoutSupplier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 12
    iput-object p2, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->timeoutSupplier:Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;

    .line 13
    iput-object p3, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-void
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;)Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->logger:Lcom/stripe/paymentcollection/log/PaymentCollectionLogger;

    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 42
    :cond_0
    iput-object v1, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->job:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final isActive()Z
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public start(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionData;Lkotlin/jvm/functions/Function0;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/PaymentCollectionState;",
            "Lcom/stripe/paymentcollection/PaymentCollectionData;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTimeout"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->cancel()V

    .line 28
    iget-object v0, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->timeoutSupplier:Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;

    invoke-interface {v0, p1, p2}, Lcom/stripe/paymentcollection/PaymentCollectionTimeoutSupplier;->get-3UGz1UU(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionData;)Lkotlin/time/Duration;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkotlin/time/Duration;->unbox-impl()J

    move-result-wide v1

    .line 29
    iget-object p1, p0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer$start$1;

    const/4 v5, 0x0

    move-object v3, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer$start$1;-><init>(JLcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object p2, v3

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p2, Lcom/stripe/paymentcollection/DefaultPaymentCollectionStateTimer;->job:Lkotlinx/coroutines/Job;

    const/4 p1, 0x1

    return p1

    :cond_0
    move-object p2, p0

    const/4 p1, 0x0

    return p1
.end method
