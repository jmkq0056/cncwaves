.class public final Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;
.super Ljava/lang/Object;
.source "FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/lang/Boolean;",
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;->module:Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;

    .line 34
    iput-object p2, p0, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Ljavax/inject/Provider;)Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            ">;)",
            "Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;-><init>(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static providesDebugLogsShouldBeSentToSplunkFeatureFlag(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Z
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;->providesDebugLogsShouldBeSentToSplunkFeatureFlag(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get()Ljava/lang/Boolean;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;->module:Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;

    iget-object v1, p0, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;->featureFlagsRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-static {v0, v1}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;->providesDebugLogsShouldBeSentToSplunkFeatureFlag(Lcom/stripe/core/featureflag/dagger/FeatureFlagModule;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/featureflag/dagger/FeatureFlagModule_ProvidesDebugLogsShouldBeSentToSplunkFeatureFlagFactory;->get()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
