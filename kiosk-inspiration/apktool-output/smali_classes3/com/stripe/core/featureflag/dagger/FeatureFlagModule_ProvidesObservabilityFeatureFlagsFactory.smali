.class public final Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;
.super Ljava/lang/Object;
.source "FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
        ">;"
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

.field private final module:Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;


# direct methods
.method public constructor <init>(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;->module:Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Ljavax/inject/Provider;)Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;)",
            "Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;-><init>(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesObservabilityFeatureFlags(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;->providesObservabilityFeatureFlags(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;->module:Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;

    iget-object v1, p0, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-static {v0, v1}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;->providesObservabilityFeatureFlags(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesObservabilityFeatureFlagsFactory;->get()Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;

    move-result-object v0

    return-object v0
.end method
