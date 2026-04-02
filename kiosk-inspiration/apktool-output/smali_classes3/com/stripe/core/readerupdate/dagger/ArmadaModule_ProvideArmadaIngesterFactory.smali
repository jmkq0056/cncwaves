.class public final Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;
.super Ljava/lang/Object;
.source "ArmadaModule_ProvideArmadaIngesterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/updater/Ingester<",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final featureFlagsRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
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

.field private final readerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;"
        }
    .end annotation
.end field

.field private final updateClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->updateClientProvider:Ljavax/inject/Provider;

    .line 47
    iput-object p2, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->readerProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p3, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p4, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideArmadaIngester(Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/updater/Ingester;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/core/hardware/Reader;",
            ">;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;"
        }
    .end annotation

    .line 67
    sget-object v0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/ArmadaModule;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule;->provideArmadaIngester(Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/updater/Ingester;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/updater/Ingester;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/updater/Ingester;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->updateClientProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/readerupdate/UpdateClient;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->readerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    iget-object v3, p0, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->provideArmadaIngester(Lcom/stripe/core/readerupdate/UpdateClient;Ljavax/inject/Provider;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/updater/Ingester;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/core/readerupdate/dagger/ArmadaModule_ProvideArmadaIngesterFactory;->get()Lcom/stripe/core/updater/Ingester;

    move-result-object v0

    return-object v0
.end method
