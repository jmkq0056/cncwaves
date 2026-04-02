.class public final Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;
.super Ljava/lang/Object;
.source "RootAccessModule_ProvideRootAccessDetectorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/stripeterminal/dagger/RootAccessModule;

.field private final rootBeerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/scottyab/rootbeer/RootBeer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/RootAccessModule;",
            "Ljavax/inject/Provider<",
            "Lcom/scottyab/rootbeer/RootBeer;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;->module:Lcom/stripe/stripeterminal/dagger/RootAccessModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;->rootBeerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/RootAccessModule;",
            "Ljavax/inject/Provider<",
            "Lcom/scottyab/rootbeer/RootBeer;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;-><init>(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRootAccessDetector(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/scottyab/rootbeer/RootBeer;)Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/RootAccessModule;->provideRootAccessDetector(Lcom/scottyab/rootbeer/RootBeer;)Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;->module:Lcom/stripe/stripeterminal/dagger/RootAccessModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;->rootBeerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scottyab/rootbeer/RootBeer;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;->provideRootAccessDetector(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Lcom/scottyab/rootbeer/RootBeer;)Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootAccessDetectorFactory;->get()Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;

    move-result-object v0

    return-object v0
.end method
