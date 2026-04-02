.class public final Lcom/stripe/core/random/dagger/RandomModule;
.super Ljava/lang/Object;
.source "RandomModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0004H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/core/random/dagger/RandomModule;",
        "",
        "()V",
        "provideRandom",
        "Lkotlin/random/Random;",
        "provideRandomUtil",
        "Lcom/stripe/core/random/RandomUtil;",
        "random",
        "random_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/core/random/dagger/RandomModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/random/dagger/RandomModule;

    invoke-direct {v0}, Lcom/stripe/core/random/dagger/RandomModule;-><init>()V

    sput-object v0, Lcom/stripe/core/random/dagger/RandomModule;->INSTANCE:Lcom/stripe/core/random/dagger/RandomModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideRandom()Lkotlin/random/Random;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 14
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v0, Lkotlin/random/Random;

    return-object v0
.end method

.method public final provideRandomUtil(Lkotlin/random/Random;)Lcom/stripe/core/random/RandomUtil;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/Reusable;
    .end annotation

    const-string v0, "random"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/stripe/core/random/RandomUtil;

    invoke-direct {v0, p1}, Lcom/stripe/core/random/RandomUtil;-><init>(Lkotlin/random/Random;)V

    return-object v0
.end method
