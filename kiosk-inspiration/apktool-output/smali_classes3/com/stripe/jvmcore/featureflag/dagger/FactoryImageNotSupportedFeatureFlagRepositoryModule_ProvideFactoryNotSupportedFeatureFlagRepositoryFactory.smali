.class public final Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;
.super Ljava/lang/Object;
.source "FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;

.field private final sharedPrefsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;->module:Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;

    .line 37
    iput-object p2, p0, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;->sharedPrefsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;)",
            "Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;-><init>(Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideFactoryNotSupportedFeatureFlagRepository(Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;->provideFactoryNotSupportedFeatureFlagRepository(Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;->module:Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;->sharedPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;->provideFactoryNotSupportedFeatureFlagRepository(Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule;Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/dagger/FactoryImageNotSupportedFeatureFlagRepositoryModule_ProvideFactoryNotSupportedFeatureFlagRepositoryFactory;->get()Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object v0

    return-object v0
.end method
