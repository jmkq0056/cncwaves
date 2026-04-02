.class public final Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;
.super Ljava/lang/Object;
.source "PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private final readerFeatureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
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
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;->readerFeatureFlagsProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p2, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;->sharedPrefsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ">;)",
            "Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;"
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesFeatureFlagRepository(Ljavax/inject/Provider;Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;",
            "Lcom/stripe/jvmcore/storage/SharedPrefs;",
            ")",
            "Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;"
        }
    .end annotation

    .line 54
    sget-object v0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->INSTANCE:Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule;->providesFeatureFlagRepository(Ljavax/inject/Provider;Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;->readerFeatureFlagsProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;->sharedPrefsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/storage/SharedPrefs;

    invoke-static {v0, v1}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;->providesFeatureFlagRepository(Ljavax/inject/Provider;Lcom/stripe/jvmcore/storage/SharedPrefs;)Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/paymentcollection/dagger/PaymentCollectionModule_ProvidesFeatureFlagRepositoryFactory;->get()Lcom/stripe/paymentcollection/PaymentCollectionFeatureFlagRepository;

    move-result-object v0

    return-object v0
.end method
