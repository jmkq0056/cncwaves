.class public final Lcom/stripe/jvmcore/crpcclient/MappersKt;
.super Ljava/lang/Object;
.source "Mappers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aB\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\u0012\u0008\u0000\u0010\t*\u000c\u0012\u0004\u0012\u0002H\t\u0012\u0002\u0008\u00030\n*\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00032\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\t0\r2\u0006\u0010\u000e\u001a\u00020\u000f\u001aC\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u0002H\t0\u0008\"\u0012\u0008\u0000\u0010\t*\u000c\u0012\u0004\u0012\u0002H\t\u0012\u0002\u0008\u00030\n*\u00020\u00112\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u0002H\t0\r2\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0012\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0018\u0010\u0002\u001a\u00020\u0003*\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "TAG",
        "",
        "durationMillis",
        "",
        "Lokhttp3/Response;",
        "getDurationMillis",
        "(Lokhttp3/Response;)J",
        "toCrpcResponse",
        "Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "M",
        "Lcom/squareup/wire/Message;",
        "requestId",
        "protoAdapter",
        "Lcom/squareup/wire/ProtoAdapter;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "toResponseType",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
        "(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;",
        "crpcclient"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrpcResponse"


# direct methods
.method private static final getDurationMillis(Lokhttp3/Response;)J
    .locals 4

    .line 15
    invoke-virtual {p0}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static final toCrpcResponse(Lokhttp3/Response;JLcom/squareup/wire/ProtoAdapter;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;>(",
            "Lokhttp3/Response;",
            "J",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;"
        }
    .end annotation

    const-string v0, "RPC error in cRPC response  "

    const-string v1, "Application error in cRPC response  "

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "protoAdapter"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "logWriter"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p0}, Lcom/stripe/jvmcore/crpcclient/MappersKt;->getDurationMillis(Lokhttp3/Response;)J

    move-result-wide v2

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance v4, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    .line 25
    sget-object v5, Lcom/stripe/proto/net/rpc/base/RpcEC;->SERVER_UNREACHABLE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 26
    const-string v6, ""

    .line 27
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 24
    invoke-direct/range {v4 .. v10}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    return-object v4

    .line 31
    :cond_0
    sget-object v4, Lcom/stripe/proto/net/rpc/base/RpcResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    .line 33
    iget-wide v4, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->request_id:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, p1, v4

    const-string p2, "CrpcResponse"

    if-eqz p1, :cond_1

    .line 34
    :try_start_1
    const-string v6, "Request ID from cRPC request does not match response ID"

    .line 35
    invoke-interface {p4, p2, v6}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v4, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    sget-object v5, Lcom/stripe/proto/net/rpc/base/RpcEC;->BAD_RESPONSE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v4, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    return-object v4

    .line 39
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/stripe/jvmcore/crpcclient/MappersKt;->toResponseType(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p0

    .line 41
    instance-of p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    if-eqz p1, :cond_2

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object p3, p0

    check-cast p3, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    invoke-virtual {p3}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_2
    instance-of p1, p0, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    if-eqz p1, :cond_3

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object p3, p0

    check-cast p3, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    invoke-virtual {p3}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getCode()Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 50
    new-instance p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    .line 51
    sget-object p2, Lcom/stripe/proto/net/rpc/base/RpcEC;->BAD_RESPONSE:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 54
    check-cast p0, Ljava/lang/Throwable;

    .line 50
    const-string p4, "Unable to parse response"

    invoke-direct {p1, p2, p4, p3, p0}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;)V

    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    return-object p1
.end method

.method public static final toResponseType(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
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
            "Lcom/stripe/jvmcore/crpcclient/CrpcResponse<",
            "TM;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protoAdapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 67
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

    .line 68
    new-instance p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    iget-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    iget-object p0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;-><init>(Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Ljava/lang/Long;)V

    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    return-object p1

    .line 70
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

    .line 71
    new-instance v1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    iget-object v2, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    iget-object v3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->error:Ljava/lang/String;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;-><init>(Lcom/stripe/proto/net/rpc/base/RpcEC;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    return-object v1

    :cond_1
    move-object v4, p2

    .line 73
    new-instance p2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    iget-object p0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse;->content:Lokio/ByteString;

    invoke-virtual {p0}, Lokio/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/wire/Message;

    invoke-direct {p2, p0, v4}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;-><init>(Lcom/squareup/wire/Message;Ljava/lang/Long;)V

    check-cast p2, Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    return-object p2
.end method

.method public static synthetic toResponseType$default(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 59
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/stripe/jvmcore/crpcclient/MappersKt;->toResponseType(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p0

    return-object p0
.end method
