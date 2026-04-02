.class public final Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomUtilFactory;
.super Ljava/lang/Object;
.source "RandomModule_ProvideRandomUtilFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/core/random/RandomUtil;",
        ">;"
    }
.end annotation


# instance fields
.field private final randomProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomUtilFactory;->randomProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomUtilFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lkotlin/random/Random;",
            ">;)",
            "Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomUtilFactory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomUtilFactory;

    invoke-direct {v0, p0}, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomUtilFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideRandomUtil(Lkotlin/random/Random;)Lcom/stripe/core/random/RandomUtil;
    .locals 1

    .line 45
    sget-object v0, Lcom/stripe/core/random/dagger/RandomModule;->INSTANCE:Lcom/stripe/core/random/dagger/RandomModule;

    invoke-virtual {v0, p0}, Lcom/stripe/core/random/dagger/RandomModule;->provideRandomUtil(Lkotlin/random/Random;)Lcom/stripe/core/random/RandomUtil;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/random/RandomUtil;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/core/random/RandomUtil;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomUtilFactory;->randomProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/random/Random;

    invoke-static {v0}, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomUtilFactory;->provideRandomUtil(Lkotlin/random/Random;)Lcom/stripe/core/random/RandomUtil;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomUtilFactory;->get()Lcom/stripe/core/random/RandomUtil;

    move-result-object v0

    return-object v0
.end method
