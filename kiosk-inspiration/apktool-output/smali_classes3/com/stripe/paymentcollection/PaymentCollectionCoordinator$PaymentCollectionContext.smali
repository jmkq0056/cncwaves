.class public final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;
.super Ljava/lang/Object;
.source "PaymentCollectionCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentCollectionContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001/B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\'\u001a\u00020\tH\u00c6\u0003J1\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010)\u001a\u00020\u00132\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020,H\u00d6\u0001J\t\u0010-\u001a\u00020.H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0013\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011\"\u0004\u0008\u001a\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\"\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u0011\"\u0004\u0008!\u0010\u0016R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#\u00a8\u00060"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;",
        "",
        "paymentCollectionListener",
        "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "paymentCollectionStateMachine",
        "Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "collectionResult",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
        "getCollectionResult",
        "()Lkotlinx/coroutines/CompletableDeferred;",
        "dccSelectionResult",
        "",
        "getDccSelectionResult",
        "setDccSelectionResult",
        "(Lkotlinx/coroutines/CompletableDeferred;)V",
        "nonCardPaymentMethodResult",
        "Lcom/stripe/hardware/emv/TransactionResult;",
        "getNonCardPaymentMethodResult",
        "setNonCardPaymentMethodResult",
        "getPaymentCollectionListener",
        "()Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        "getPaymentCollectionStateMachine",
        "()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;",
        "secondGenACResult",
        "getSecondGenACResult",
        "setSecondGenACResult",
        "getTransactionType",
        "()Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Factory",
        "public_release"
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
.field private final amount:Lcom/stripe/currency/Amount;

.field private final collectionResult:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private dccSelectionResult:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private nonCardPaymentMethodResult:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

.field private final paymentCollectionStateMachine:Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

.field private secondGenACResult:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;)V
    .locals 1

    const-string v0, "paymentCollectionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentCollectionStateMachine"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1385
    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    .line 1386
    iput-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->amount:Lcom/stripe/currency/Amount;

    .line 1387
    iput-object p3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    .line 1388
    iput-object p4, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionStateMachine:Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 1391
    invoke-static {p1, p2, p1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->collectionResult:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;ILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->amount:Lcom/stripe/currency/Amount;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionStateMachine:Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->copy(Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/paymentcollection/PaymentCollectionListener;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    return-object v0
.end method

.method public final component2()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component3()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public final component4()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionStateMachine:Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    return-object v0
.end method

.method public final copy(Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;
    .locals 1

    const-string v0, "paymentCollectionListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentCollectionStateMachine"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionListener;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    iget-object v3, p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    iget-object v3, p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionStateMachine:Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    iget-object p1, p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionStateMachine:Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 1386
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getCollectionResult()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
            ">;"
        }
    .end annotation

    .line 1391
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->collectionResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public final getDccSelectionResult()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1393
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->dccSelectionResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public final getNonCardPaymentMethodResult()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;"
        }
    .end annotation

    .line 1394
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->nonCardPaymentMethodResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public final getPaymentCollectionListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    return-object v0
.end method

.method public final getPaymentCollectionStateMachine()Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionStateMachine:Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    return-object v0
.end method

.method public final getSecondGenACResult()Lkotlinx/coroutines/CompletableDeferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;"
        }
    .end annotation

    .line 1392
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->secondGenACResult:Lkotlinx/coroutines/CompletableDeferred;

    return-object v0
.end method

.method public final getTransactionType()Lcom/stripe/hardware/paymentcollection/TransactionType;
    .locals 1

    .line 1387
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/TransactionType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionStateMachine:Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDccSelectionResult(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1393
    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->dccSelectionResult:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public final setNonCardPaymentMethodResult(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;)V"
        }
    .end annotation

    .line 1394
    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->nonCardPaymentMethodResult:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public final setSecondGenACResult(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;)V"
        }
    .end annotation

    .line 1392
    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->secondGenACResult:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentCollectionContext(paymentCollectionListener="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionListener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->transactionType:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentCollectionStateMachine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$PaymentCollectionContext;->paymentCollectionStateMachine:Lcom/stripe/paymentcollection/PaymentCollectionStateMachine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
