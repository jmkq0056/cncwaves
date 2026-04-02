.class public final Lcom/stripe/kmpcore/jackrabbitclient/MappersKt;
.super Ljava/lang/Object;
.source "Mappers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001aB\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0012\u0008\u0000\u0010\u0002*\u000c\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\u0008\u00030\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0008H\u0086@\u00a2\u0006\u0002\u0010\t\u001aE\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0012\u0008\u0000\u0010\u0002*\u000c\u0012\u0004\u0012\u0002H\u0002\u0012\u0002\u0008\u00030\u0003*\u00020\u000b2\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00082\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0006H\u0000\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "toCrpcResponse",
        "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;",
        "M",
        "Lcom/squareup/wire/Message;",
        "Lio/ktor/client/statement/HttpResponse;",
        "requestId",
        "",
        "protoAdapter",
        "Lcom/squareup/wire/ProtoAdapter;",
        "(Lio/ktor/client/statement/HttpResponse;JLcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "toResponseType",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
        "durationMillis",
        "(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;)Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;",
        "jackrabbitclient_release"
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
.method public static final toCrpcResponse(Lio/ktor/client/statement/HttpResponse;JLcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(",
            "Lio/ktor/client/statement/HttpResponse;",
            "J",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse<",
            "TM;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;

    iget v1, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;

    invoke-direct {v0, p4}, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-wide p0, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->J$1:J

    iget-wide p2, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->J$0:J

    iget-object v0, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/wire/ProtoAdapter;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lio/ktor/client/statement/HttpResponse;->getResponseTime()Lio/ktor/util/date/GMTDate;

    move-result-object p4

    invoke-virtual {p4}, Lio/ktor/util/date/GMTDate;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {p0}, Lio/ktor/client/statement/HttpResponse;->getRequestTime()Lio/ktor/util/date/GMTDate;

    move-result-object p4

    invoke-virtual {p4}, Lio/ktor/util/date/GMTDate;->getTimestamp()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 22
    iput-object p3, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->L$0:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->J$0:J

    iput-wide v4, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->J$1:J

    iput v3, v0, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt$toCrpcResponse$1;->label:I

    invoke-static {p0, v0}, Lio/ktor/client/statement/ReadersKt;->readBytes(Lio/ktor/client/statement/HttpResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p3

    move-wide p2, p1

    move-wide p0, v4

    .line 16
    :goto_1
    check-cast p4, [B

    .line 24
    array-length v1, p4

    if-nez v1, :cond_4

    .line 25
    new-instance v2, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;

    .line 26
    sget-object v3, Lcom/stripe/proto/net/rpc/base/RpcEC;->SERVER_UNREACHABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 28
    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v5

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 25
    const-string v4, ""

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 32
    :cond_4
    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v1, p4}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    .line 34
    iget-wide v1, p4, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    cmp-long v1, p2, v1

    if-eqz v1, :cond_5

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request ID from cRPC request does not match response ID requestId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 36
    const-string p3, " responseId:"

    .line 35
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 36
    iget-wide p3, p4, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J

    .line 35
    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class p2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    .line 37
    invoke-static {p2, v2}, Lcom/stripe/kmpcore/jackrabbitclient/LoggerKt;->logError(Lkotlin/reflect/KClass;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->BAD_RESPONSE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 41
    :cond_5
    invoke-static {p0, p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p4, v0, p0}, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt;->toResponseType(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;)Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    move-result-object p0

    .line 43
    instance-of p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;

    if-eqz p1, :cond_6

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Application error in cRPC response  "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object p2, p0

    check-cast p2, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;

    invoke-virtual {p2}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;->getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    .line 45
    invoke-static {p2, p1}, Lcom/stripe/kmpcore/jackrabbitclient/LoggerKt;->logError(Lkotlin/reflect/KClass;Ljava/lang/String;)V

    .line 47
    :cond_6
    instance-of p1, p0, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;

    if-eqz p1, :cond_7

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "RPC error in cRPC response  "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object p2, p0

    check-cast p2, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;

    invoke-virtual {p2}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;->getCode()Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/stripe/kmpcore/jackrabbitclient/JackrabbitClient;

    invoke-static {p2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    .line 49
    invoke-static {p2, p1}, Lcom/stripe/kmpcore/jackrabbitclient/LoggerKt;->logError(Lkotlin/reflect/KClass;Ljava/lang/String;)V

    :cond_7
    return-object p0
.end method

.method public static final toResponseType(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;)Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(",
            "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse<",
            "TM;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protoAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 62
    new-array v1, v0, [Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    sget-object v2, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->OK:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    new-instance p1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;

    iget-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    iget-object p0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$ApplicationError;-><init>(Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Ljava/lang/Long;)V

    check-cast p1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    return-object p1

    .line 65
    :cond_0
    new-array v0, v0, [Lcom/stripe/proto/net/rpc/base/RpcEC;

    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_OK:Lcom/stripe/proto/net/rpc/base/RpcEC;

    aput-object v1, v0, v3

    sget-object v1, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

    aput-object v1, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    new-instance v1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;

    iget-object v2, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    iget-object v3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    return-object v1

    :cond_1
    move-object v4, p2

    .line 68
    new-instance p2, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$Success;

    iget-object p0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/Message;

    invoke-direct {p2, p0, v4}, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse$Success;-><init>(Lcom/squareup/wire/Message;Ljava/lang/Long;)V

    check-cast p2, Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    return-object p2
.end method

.method public static synthetic toResponseType$default(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;ILjava/lang/Object;)Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 54
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/stripe/kmpcore/jackrabbitclient/MappersKt;->toResponseType(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;)Lcom/stripe/kmpcore/jackrabbitclient/CrpcResponse;

    move-result-object p0

    return-object p0
.end method
