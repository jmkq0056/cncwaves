.class public final Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;
.super Ljava/lang/Object;
.source "OfflineLogModule_ProvideOfflineTraceManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final randomProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
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
            "randomProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;->randomProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "randomProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;"
        }
    .end annotation

    .line 42
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideOfflineTraceManager(Lkotlin/random/Random;)Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule;

    invoke-virtual {v0, p0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->provideOfflineTraceManager(Lkotlin/random/Random;)Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;->randomProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/random/Random;

    invoke-static {v0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;->provideOfflineTraceManager(Lkotlin/random/Random;)Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceManagerFactory;->get()Lcom/stripe/offlinemode/log/DefaultOfflineTraceManager;

    move-result-object v0

    return-object v0
.end method
