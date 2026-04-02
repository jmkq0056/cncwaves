.class public final Lcom/stripe/core/transactionlog/dagger/TransactionLogModule_ProvideTransactionLogRepositoryFactory;
.super Ljava/lang/Object;
.source "TransactionLogModule_ProvideTransactionLogRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/transactionlog/TransactionLogRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/core/transactionlog/dagger/TransactionLogModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/transactionlog/dagger/TransactionLogModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/core/transactionlog/dagger/TransactionLogModule_ProvideTransactionLogRepositoryFactory;->module:Lcom/stripe/core/transactionlog/dagger/TransactionLogModule;

    return-void
.end method

.method public static create(Lcom/stripe/core/transactionlog/dagger/TransactionLogModule;)Lcom/stripe/core/transactionlog/dagger/TransactionLogModule_ProvideTransactionLogRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/stripe/core/transactionlog/dagger/TransactionLogModule_ProvideTransactionLogRepositoryFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/transactionlog/dagger/TransactionLogModule_ProvideTransactionLogRepositoryFactory;-><init>(Lcom/stripe/core/transactionlog/dagger/TransactionLogModule;)V

    return-object v0
.end method

.method public static provideTransactionLogRepository(Lcom/stripe/core/transactionlog/dagger/TransactionLogModule;)Lcom/stripe/core/transactionlog/TransactionLogRepository;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/stripe/core/transactionlog/dagger/TransactionLogModule;->provideTransactionLogRepository()Lcom/stripe/core/transactionlog/TransactionLogRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/transactionlog/TransactionLogRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/transactionlog/TransactionLogRepository;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/core/transactionlog/dagger/TransactionLogModule_ProvideTransactionLogRepositoryFactory;->module:Lcom/stripe/core/transactionlog/dagger/TransactionLogModule;

    invoke-static {v0}, Lcom/stripe/core/transactionlog/dagger/TransactionLogModule_ProvideTransactionLogRepositoryFactory;->provideTransactionLogRepository(Lcom/stripe/core/transactionlog/dagger/TransactionLogModule;)Lcom/stripe/core/transactionlog/TransactionLogRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/transactionlog/dagger/TransactionLogModule_ProvideTransactionLogRepositoryFactory;->get()Lcom/stripe/core/transactionlog/TransactionLogRepository;

    move-result-object v0

    return-object v0
.end method
