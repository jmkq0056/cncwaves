.class public final Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;
.super Ljava/lang/Object;
.source "OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final defaultOfflineRepositoryFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final forwardingLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final unsupportedOfflineRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unsupportedOfflineRepositoryProvider",
            "defaultOfflineRepositoryFactoryProvider",
            "forwardingLoggerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;->unsupportedOfflineRepositoryProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;->defaultOfflineRepositoryFactoryProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p3, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;->forwardingLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unsupportedOfflineRepositoryProvider",
            "defaultOfflineRepositoryFactoryProvider",
            "forwardingLoggerProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideForwardingOfflineRepository(Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;)Lcom/stripe/offlinemode/storage/OfflineRepository;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "unsupportedOfflineRepository",
            "defaultOfflineRepositoryFactory",
            "forwardingLogger"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineStorageModule;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule;->provideForwardingOfflineRepository(Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;)Lcom/stripe/offlinemode/storage/OfflineRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/storage/OfflineRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/storage/OfflineRepository;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;->unsupportedOfflineRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;

    iget-object v1, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;->defaultOfflineRepositoryFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;

    iget-object v2, p0, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;->forwardingLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    invoke-static {v0, v1, v2}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;->provideForwardingOfflineRepository(Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;)Lcom/stripe/offlinemode/storage/OfflineRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineStorageModule_ProvideForwardingOfflineRepositoryFactory;->get()Lcom/stripe/offlinemode/storage/OfflineRepository;

    move-result-object v0

    return-object v0
.end method
