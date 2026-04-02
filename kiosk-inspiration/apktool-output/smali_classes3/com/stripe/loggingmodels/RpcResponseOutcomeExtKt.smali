.class public final Lcom/stripe/loggingmodels/RpcResponseOutcomeExtKt;
.super Ljava/lang/Object;
.source "RpcResponseOutcomeExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toOutcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
        "public_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toOutcome(Lcom/stripe/proto/net/rpc/base/RpcResponse;)Lcom/stripe/loggingmodels/Outcome;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->OK:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    if-eq v0, v1, :cond_0

    .line 11
    sget-object v0, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;->Companion:Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion;

    iget-object p0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-virtual {v0, p0}, Lcom/stripe/loggingmodels/Outcome$RpcApplicationError$Companion;->toOutcome(Lcom/stripe/proto/net/rpc/base/ApplicationEC;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_OK:Lcom/stripe/proto/net/rpc/base/RpcEC;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

    if-eq v0, v1, :cond_1

    .line 13
    sget-object v0, Lcom/stripe/loggingmodels/Outcome$RpcTransportError;->Companion:Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion;

    iget-object p0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-virtual {v0, p0}, Lcom/stripe/loggingmodels/Outcome$RpcTransportError$Companion;->toOutcome(Lcom/stripe/proto/net/rpc/base/RpcEC;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object p0

    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p0, Lcom/stripe/loggingmodels/Outcome;

    return-object p0
.end method
