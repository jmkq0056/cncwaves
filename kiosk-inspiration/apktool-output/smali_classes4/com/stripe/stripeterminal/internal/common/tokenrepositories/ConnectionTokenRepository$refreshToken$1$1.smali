.class public final Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$refreshToken$1$1;
.super Ljava/lang/Object;
.source "ConnectionTokenRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->refreshToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$refreshToken$1$1",
        "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;",
        "onFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;",
        "onSuccess",
        "token",
        "",
        "common_publish"
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
.field final synthetic $tokenResult:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$refreshToken$1$1;->$tokenResult:Lkotlinx/coroutines/CompletableDeferred;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->access$getLOGGER$cp()Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Error in external token provider"

    invoke-virtual {v0, v2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 108
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$refreshToken$1$1;->$tokenResult:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->access$getLOGGER$cp()Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "fetchConnectionToken.onSuccess"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 103
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository$refreshToken$1$1;->$tokenResult:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method
