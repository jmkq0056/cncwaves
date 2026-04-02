.class public final Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;
.super Ljava/lang/Object;
.source "OfflineStorageModule_ProvideCoroutineScopeFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlinx/coroutines/CoroutineScope;",
        ">;"
    }
.end annotation


# instance fields
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
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dispatcherProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;->dispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dispatcherProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCoroutineScope(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/CoroutineScope;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dispatcher"
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineStorageModule;

    invoke-virtual {v0, p0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;->provideCoroutineScope(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;->get()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlinx/coroutines/CoroutineScope;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideCoroutineScopeFactory;->provideCoroutineScope(Lkotlinx/coroutines/CoroutineDispatcher;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
