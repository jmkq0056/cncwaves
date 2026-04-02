.class public final Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;
.super Ljava/lang/Object;
.source "DirectResourceRepositoryRouter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;",
        ">;"
    }
.end annotation


# instance fields
.field private final offlineConfigHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineDiscreteLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final offlineResourceRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final onlineResourceRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionTokenRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;"
        }
    .end annotation
.end field

.field private final stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->onlineResourceRepositoryProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->offlineResourceRepositoryProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->offlineDiscreteLoggerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->sessionTokenRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;"
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;",
            "Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;-><init>(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;
    .locals 7

    .line 61
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->onlineResourceRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->offlineResourceRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->stripeConnectivityRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->offlineConfigHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->offlineDiscreteLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/jvmcore/logging/HealthLogger;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->sessionTokenRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/resourcerepository/OfflineDirectResourceRepository;Lcom/stripe/stripeterminal/internal/common/connectivity/StripeConnectivityRepository;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter_Factory;->get()Lcom/stripe/stripeterminal/internal/common/resourcerepository/DirectResourceRepositoryRouter;

    move-result-object v0

    return-object v0
.end method
