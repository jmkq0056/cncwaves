.class public final Lcom/stripe/stripeterminal/dagger/RootAccessModule$provideRootAccessDetector$1;
.super Ljava/lang/Object;
.source "RootAccessModule.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/dagger/RootAccessModule;->provideRootAccessDetector(Lcom/scottyab/rootbeer/RootBeer;)Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/stripe/stripeterminal/dagger/RootAccessModule$provideRootAccessDetector$1",
        "Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;",
        "detectRootAccess",
        "",
        "onRootAccessDetectedHandler",
        "Lkotlin/Function0;",
        "sdkmanager_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $rootBeer:Lcom/scottyab/rootbeer/RootBeer;


# direct methods
.method constructor <init>(Lcom/scottyab/rootbeer/RootBeer;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/RootAccessModule$provideRootAccessDetector$1;->$rootBeer:Lcom/scottyab/rootbeer/RootBeer;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public detectRootAccess(Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onRootAccessDetectedHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/stripeterminal/dagger/RootAccessModule$provideRootAccessDetector$1$detectRootAccess$1;

    iget-object v2, p0, Lcom/stripe/stripeterminal/dagger/RootAccessModule$provideRootAccessDetector$1;->$rootBeer:Lcom/scottyab/rootbeer/RootBeer;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p1, v3}, Lcom/stripe/stripeterminal/dagger/RootAccessModule$provideRootAccessDetector$1$detectRootAccess$1;-><init>(Lcom/scottyab/rootbeer/RootBeer;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
