.class public final Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;
.super Ljava/lang/Object;
.source "MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
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

.field private final featureFlagsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final readerConnectionControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
            ">;"
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
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;->readerConnectionControllerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;->appScopeProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/ReaderConnectionController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideMposReaderDebugLogManager(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/ReaderConnectionController;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;
    .locals 1

    .line 61
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule;->provideMposReaderDebugLogManager(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/ReaderConnectionController;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;->readerConnectionControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/core/hardware/ReaderConnectionController;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;->provideMposReaderDebugLogManager(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/ReaderConnectionController;Lkotlinx/coroutines/CoroutineScope;)Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/dagger/MposReaderDebugLogManagerModule_ProvideMposReaderDebugLogManagerFactory;->get()Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;

    move-result-object v0

    return-object v0
.end method
