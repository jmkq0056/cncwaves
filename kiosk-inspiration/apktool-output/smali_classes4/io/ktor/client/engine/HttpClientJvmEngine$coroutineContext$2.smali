.class final Lio/ktor/client/engine/HttpClientJvmEngine$coroutineContext$2;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpClientJvmEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/HttpClientJvmEngine;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/coroutines/CoroutineContext;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/coroutines/CoroutineContext;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $engineName:Ljava/lang/String;

.field final synthetic this$0:Lio/ktor/client/engine/HttpClientJvmEngine;


# direct methods
.method constructor <init>(Lio/ktor/client/engine/HttpClientJvmEngine;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/ktor/client/engine/HttpClientJvmEngine$coroutineContext$2;->this$0:Lio/ktor/client/engine/HttpClientJvmEngine;

    iput-object p2, p0, Lio/ktor/client/engine/HttpClientJvmEngine$coroutineContext$2;->$engineName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lio/ktor/client/engine/HttpClientJvmEngine$coroutineContext$2;->invoke()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/coroutines/CoroutineContext;
    .locals 4

    .line 24
    iget-object v0, p0, Lio/ktor/client/engine/HttpClientJvmEngine$coroutineContext$2;->this$0:Lio/ktor/client/engine/HttpClientJvmEngine;

    invoke-virtual {v0}, Lio/ktor/client/engine/HttpClientJvmEngine;->getDispatcher()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/client/engine/HttpClientJvmEngine$coroutineContext$2;->this$0:Lio/ktor/client/engine/HttpClientJvmEngine;

    invoke-static {v1}, Lio/ktor/client/engine/HttpClientJvmEngine;->access$getClientContext$p(Lio/ktor/client/engine/HttpClientJvmEngine;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    new-instance v1, Lkotlinx/coroutines/CoroutineName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/ktor/client/engine/HttpClientJvmEngine$coroutineContext$2;->$engineName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-context"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/coroutines/CoroutineName;-><init>(Ljava/lang/String;)V

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method
