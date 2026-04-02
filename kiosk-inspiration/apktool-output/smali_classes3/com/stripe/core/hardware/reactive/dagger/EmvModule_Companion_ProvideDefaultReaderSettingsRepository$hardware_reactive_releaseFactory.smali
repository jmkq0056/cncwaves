.class public final Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;
.super Ljava/lang/Object;
.source "EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;",
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

.field private final configurationHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            ">;"
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;->dispatcherProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;->configurationHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineScope;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
            ">;)",
            "Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultReaderSettingsRepository$hardware_reactive_release(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;
    .locals 1

    .line 62
    sget-object v0, Lcom/stripe/core/hardware/reactive/dagger/EmvModule;->Companion:Lcom/stripe/core/hardware/reactive/dagger/EmvModule$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/core/hardware/reactive/dagger/EmvModule$Companion;->provideDefaultReaderSettingsRepository$hardware_reactive_release(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;->appScopeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v2, p0, Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;->configurationHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    invoke-static {v0, v1, v2}, Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;->provideDefaultReaderSettingsRepository$hardware_reactive_release(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/core/hardware/reactive/dagger/EmvModule_Companion_ProvideDefaultReaderSettingsRepository$hardware_reactive_releaseFactory;->get()Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;

    move-result-object v0

    return-object v0
.end method
