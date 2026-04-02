.class public final Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;
.super Ljava/lang/Object;
.source "CotsModule_ProvideCotsClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/cots/common/CotsClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
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

.field private final isCotsIncludedProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
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

.field private final module:Lcom/stripe/stripeterminal/dagger/CotsModule;

.field private final preFlightChecksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/CotsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    .line 53
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->applicationContextProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->dispatcherProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->isCotsIncludedProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p5, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->preFlightChecksProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p6, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/CotsModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;"
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;-><init>(Lcom/stripe/stripeterminal/dagger/CotsModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCotsClient(Lcom/stripe/stripeterminal/dagger/CotsModule;Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;ZLcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/cots/common/CotsClient;
    .locals 0

    .line 76
    invoke-virtual/range {p0 .. p5}, Lcom/stripe/stripeterminal/dagger/CotsModule;->provideCotsClient(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;ZLcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/cots/common/CotsClient;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/cots/common/CotsClient;
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->module:Lcom/stripe/stripeterminal/dagger/CotsModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->applicationContextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->dispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v3, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->isCotsIncludedProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->preFlightChecksProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    iget-object v5, p0, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static/range {v0 .. v5}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->provideCotsClient(Lcom/stripe/stripeterminal/dagger/CotsModule;Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;ZLcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/cots/common/CotsClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/CotsModule_ProvideCotsClientFactory;->get()Lcom/stripe/cots/common/CotsClient;

    move-result-object v0

    return-object v0
.end method
