.class public final Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineLogRepositoryFactory;
.super Ljava/lang/Object;
.source "OfflineLogModule_ProvideOfflineLogRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineLogRepositoryFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
        "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
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

.method public static create()Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineLogRepositoryFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineLogRepositoryFactory$InstanceHolder;->access$000()Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineLogRepositoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideOfflineLogRepository()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
            ">;"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule;

    invoke-virtual {v0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->provideOfflineLogRepository()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

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
            "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineLogRepositoryFactory;->provideOfflineLogRepository()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineLogRepositoryFactory;->get()Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    move-result-object v0

    return-object v0
.end method
