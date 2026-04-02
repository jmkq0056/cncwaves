.class public final Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;
.super Ljava/lang/Object;
.source "UpdateInstaller_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/readerupdate/UpdateInstaller;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final dispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final ingesterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;>;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;->dispatcherProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;->applicatorProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;->ingesterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;>;)",
            "Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/updater/Ingester;)Lcom/stripe/core/readerupdate/UpdateInstaller;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;)",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/stripe/core/readerupdate/UpdateInstaller;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/readerupdate/UpdateInstaller;-><init>(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/updater/Ingester;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/readerupdate/UpdateInstaller;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;->applicatorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/updater/Applicator;

    iget-object v2, p0, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;->ingesterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/updater/Ingester;

    invoke-static {v0, v1, v2}, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;->newInstance(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/updater/Ingester;)Lcom/stripe/core/readerupdate/UpdateInstaller;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/UpdateInstaller_Factory;->get()Lcom/stripe/core/readerupdate/UpdateInstaller;

    move-result-object v0

    return-object v0
.end method
