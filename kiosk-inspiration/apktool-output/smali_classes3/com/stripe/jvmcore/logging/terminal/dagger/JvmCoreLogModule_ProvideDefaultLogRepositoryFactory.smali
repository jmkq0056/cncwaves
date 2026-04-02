.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideDefaultLogRepositoryFactory;
.super Ljava/lang/Object;
.source "JvmCoreLogModule_ProvideDefaultLogRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideDefaultLogRepositoryFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideDefaultLogRepositoryFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideDefaultLogRepositoryFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideDefaultLogRepositoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideDefaultLogRepository()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->provideDefaultLogRepository()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideDefaultLogRepositoryFactory;->provideDefaultLogRepository()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideDefaultLogRepositoryFactory;->get()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    move-result-object v0

    return-object v0
.end method
