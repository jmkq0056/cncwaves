.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideProxyAdapterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

.field private final repositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 40
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;->repositoryProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideProxyAdapter(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 0

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideProxyAdapter(Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/Adapter;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;->repositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;->provideProxyAdapter(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyAdapterFactory;->get()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    return-object v0
.end method
