.class public final Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;
.super Ljava/lang/Object;
.source "BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;",
        ">;"
    }
.end annotation


# instance fields
.field private final appScopeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCardRemovalChecker$hardware_release(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;
    .locals 1

    .line 52
    sget-object v0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;->INSTANCE:Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule;->provideCardRemovalChecker$hardware_release(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;->provideCardRemovalChecker$hardware_release(Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/dagger/BbposEmvModule_ProvideCardRemovalChecker$hardware_releaseFactory;->get()Lcom/stripe/core/bbpos/hardware/CardRemovalChecker;

    move-result-object v0

    return-object v0
.end method
