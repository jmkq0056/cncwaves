.class public final Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;
.super Ljava/lang/Object;
.source "AdapterModule_ProvideDisconnectReasonRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
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
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;->clockProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDisconnectReasonRepository(Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;
    .locals 1

    .line 52
    sget-object v0, Lcom/stripe/stripeterminal/dagger/AdapterModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/AdapterModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/AdapterModule;->provideDisconnectReasonRepository(Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/time/Clock;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;->provideDisconnectReasonRepository(Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/AdapterModule_ProvideDisconnectReasonRepositoryFactory;->get()Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    move-result-object v0

    return-object v0
.end method
