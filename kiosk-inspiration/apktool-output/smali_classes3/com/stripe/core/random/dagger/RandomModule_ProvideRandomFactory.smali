.class public final Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;
.super Ljava/lang/Object;
.source "RandomModule_ProvideRandomFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lkotlin/random/Random;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory$InstanceHolder;->access$000()Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideRandom()Lkotlin/random/Random;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/core/random/dagger/RandomModule;->INSTANCE:Lcom/stripe/core/random/dagger/RandomModule;

    invoke-virtual {v0}, Lcom/stripe/core/random/dagger/RandomModule;->provideRandom()Lkotlin/random/Random;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/random/Random;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;->get()Lkotlin/random/Random;

    move-result-object v0

    return-object v0
.end method

.method public get()Lkotlin/random/Random;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/core/random/dagger/RandomModule_ProvideRandomFactory;->provideRandom()Lkotlin/random/Random;

    move-result-object v0

    return-object v0
.end method
