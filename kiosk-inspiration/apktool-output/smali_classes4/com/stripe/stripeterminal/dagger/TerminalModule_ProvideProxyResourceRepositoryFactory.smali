.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideProxyResourceRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final directResourceRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

.field private final remoteReaderResourceRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;",
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
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 40
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;->directResourceRepositoryProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;->remoteReaderResourceRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideProxyResourceRepository(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideProxyResourceRepository(Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;->directResourceRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;->remoteReaderResourceRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;

    invoke-static {v0, v1, v2}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;->provideProxyResourceRepository(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;Lcom/stripe/stripeterminal/internal/common/resourcerepository/RemoteReaderResourceRepository;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyResourceRepositoryFactory;->get()Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object v0

    return-object v0
.end method
