.class public final Lcom/stripe/core/transactionlog/TransactionLogRepositoryImpl;
.super Ljava/lang/Object;
.source "TransactionLogRepositoryImpl.kt"

# interfaces
.implements Lcom/stripe/core/transactionlog/TransactionLogRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u0004H\u0096@\u00a2\u0006\u0002\u0010\u0005J\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u0096@\u00a2\u0006\u0002\u0010\u0005J\u0016\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0002\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/core/transactionlog/TransactionLogRepositoryImpl;",
        "Lcom/stripe/core/transactionlog/TransactionLogRepository;",
        "()V",
        "clearTransactionLogs",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getTransactionLogs",
        "",
        "Lcom/stripe/core/transactionlog/TransactionLog;",
        "insertTransactionLog",
        "transactionLog",
        "(Lcom/stripe/core/transactionlog/TransactionLog;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "transactionlog_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTransactionLogs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public getTransactionLogs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Lcom/stripe/core/transactionlog/TransactionLog;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public insertTransactionLog(Lcom/stripe/core/transactionlog/TransactionLog;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/transactionlog/TransactionLog;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
