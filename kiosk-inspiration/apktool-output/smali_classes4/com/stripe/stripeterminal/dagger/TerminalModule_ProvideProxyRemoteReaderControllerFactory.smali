.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideProxyRemoteReaderControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;",
        ">;"
    }
.end annotation


# instance fields
.field private final handoffReaderControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
            ">;"
        }
    .end annotation
.end field

.field private final ipReaderControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
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

.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 44
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->ipReaderControllerProvider:Ljavax/inject/Provider;

    .line 45
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->handoffReaderControllerProvider:Ljavax/inject/Provider;

    .line 46
    iput-object p4, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;"
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideProxyRemoteReaderController(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideProxyRemoteReaderController(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->ipReaderControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->handoffReaderControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    iget-object v3, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->provideProxyRemoteReaderController(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyRemoteReaderControllerFactory;->get()Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v0

    return-object v0
.end method
