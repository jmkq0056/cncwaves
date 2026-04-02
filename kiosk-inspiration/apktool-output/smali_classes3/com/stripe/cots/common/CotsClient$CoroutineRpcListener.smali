.class final Lcom/stripe/cots/common/CotsClient$CoroutineRpcListener;
.super Lcom/stripe/core/aidlrpc/AidlRpcListener$Stub;
.source "CotsClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/cots/common/CotsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CoroutineRpcListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/cots/common/CotsClient$CoroutineRpcListener;",
        "Lcom/stripe/core/aidlrpc/AidlRpcListener$Stub;",
        "cont",
        "Lkotlin/coroutines/Continuation;",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
        "(Lkotlin/coroutines/Continuation;)V",
        "onComplete",
        "",
        "completeBytes",
        "",
        "common_release"
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
.field private final cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cont"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-direct {p0}, Lcom/stripe/core/aidlrpc/AidlRpcListener$Stub;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/stripe/cots/common/CotsClient$CoroutineRpcListener;->cont:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method public onComplete([B)V
    .locals 2

    const-string v0, "completeBytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    .line 284
    iget-object v0, p0, Lcom/stripe/cots/common/CotsClient$CoroutineRpcListener;->cont:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method
