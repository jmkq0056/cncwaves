.class public final Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;
.super Ljava/lang/Object;
.source "RootAccessModule_ProvideRootBeerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/scottyab/rootbeer/RootBeer;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/RootAccessModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/RootAccessModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;->module:Lcom/stripe/stripeterminal/dagger/RootAccessModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/RootAccessModule;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;-><init>(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRootBeer(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Landroid/content/Context;)Lcom/scottyab/rootbeer/RootBeer;
    .locals 0

    .line 50
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/RootAccessModule;->provideRootBeer(Landroid/content/Context;)Lcom/scottyab/rootbeer/RootBeer;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/scottyab/rootbeer/RootBeer;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/scottyab/rootbeer/RootBeer;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;->module:Lcom/stripe/stripeterminal/dagger/RootAccessModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;->provideRootBeer(Lcom/stripe/stripeterminal/dagger/RootAccessModule;Landroid/content/Context;)Lcom/scottyab/rootbeer/RootBeer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/RootAccessModule_ProvideRootBeerFactory;->get()Lcom/scottyab/rootbeer/RootBeer;

    move-result-object v0

    return-object v0
.end method
