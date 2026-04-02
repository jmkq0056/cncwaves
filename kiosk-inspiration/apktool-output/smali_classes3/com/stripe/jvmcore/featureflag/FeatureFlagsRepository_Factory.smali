.class public final Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;
.super Ljava/lang/Object;
.source "FeatureFlagsRepository_Factory.java"

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
.field private final factoryImageHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;",
            ">;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;->sharedPrefsProvider:Ljavax/inject/Provider;

    .line 35
    iput-object p2, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;->factoryImageHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;",
            ">;)",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;
    .locals 1

    .line 50
    new-instance v0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;-><init>(Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;->sharedPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/storage/SharedPrefs;

    iget-object v1, p0, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;->factoryImageHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;->newInstance(Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository_Factory;->get()Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object v0

    return-object v0
.end method
