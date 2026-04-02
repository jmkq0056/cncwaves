.class public final Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RpcResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/net/rpc/base/RpcResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/net/rpc/base/RpcResponse;",
        "()V",
        "app_error_code",
        "Lcom/stripe/proto/net/rpc/base/ApplicationEC;",
        "content",
        "Lokio/ByteString;",
        "error",
        "",
        "request_id",
        "",
        "rpc_error_code",
        "Lcom/stripe/proto/net/rpc/base/RpcEC;",
        "build",
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
.field public app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

.field public content:Lokio/ByteString;

.field public error:Ljava/lang/String;

.field public request_id:J

.field public rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 146
    sget-object v0, Lcom/stripe/proto/net/rpc/base/RpcEC;->RPC_EC_INVALID:Lcom/stripe/proto/net/rpc/base/RpcEC;

    iput-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 149
    sget-object v0, Lcom/stripe/proto/net/rpc/base/ApplicationEC;->APPLICATION_EC_INVALID:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    iput-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->error:Ljava/lang/String;

    .line 155
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->content:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public final app_error_code(Lcom/stripe/proto/net/rpc/base/ApplicationEC;)Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;
    .locals 1

    const-string v0, "app_error_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->build()Lcom/stripe/proto/net/rpc/base/RpcResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/net/rpc/base/RpcResponse;
    .locals 8

    .line 191
    new-instance v0, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    .line 192
    iget-wide v1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->request_id:J

    .line 193
    iget-object v3, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    .line 194
    iget-object v4, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->app_error_code:Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    .line 195
    iget-object v5, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->error:Ljava/lang/String;

    .line 196
    iget-object v6, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->content:Lokio/ByteString;

    .line 197
    invoke-virtual {p0}, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 191
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/net/rpc/base/RpcResponse;-><init>(JLcom/stripe/proto/net/rpc/base/RpcEC;Lcom/stripe/proto/net/rpc/base/ApplicationEC;Ljava/lang/String;Lokio/ByteString;Lokio/ByteString;)V

    return-object v0
.end method

.method public final content(Lokio/ByteString;)Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->content:Lokio/ByteString;

    return-object p0
.end method

.method public final error(Ljava/lang/String;)Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->error:Ljava/lang/String;

    return-object p0
.end method

.method public final request_id(J)Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;
    .locals 0

    .line 161
    iput-wide p1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->request_id:J

    return-object p0
.end method

.method public final rpc_error_code(Lcom/stripe/proto/net/rpc/base/RpcEC;)Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;
    .locals 1

    const-string v0, "rpc_error_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcResponse$Builder;->rpc_error_code:Lcom/stripe/proto/net/rpc/base/RpcEC;

    return-object p0
.end method
