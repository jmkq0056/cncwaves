.class public final Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RpcRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/net/rpc/base/RpcRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000cJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000cH\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000cJ\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000cJ\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/net/rpc/base/RpcRequest;",
        "()V",
        "content",
        "Lokio/ByteString;",
        "deadline",
        "",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "id",
        "local_ip_address",
        "",
        "method",
        "parent_id",
        "parent_trace_id",
        "request_info",
        "Lcom/stripe/proto/model/trace/RequestInfoPb;",
        "service",
        "session_token",
        "version_info",
        "Lcom/stripe/proto/model/common/VersionInfoPb;",
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
.field public content:Lokio/ByteString;

.field public deadline:J

.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public id:J

.field public local_ip_address:Ljava/lang/String;

.field public method:Ljava/lang/String;

.field public parent_id:J

.field public parent_trace_id:Ljava/lang/String;

.field public request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

.field public service:Ljava/lang/String;

.field public session_token:Ljava/lang/String;

.field public version_info:Lcom/stripe/proto/model/common/VersionInfoPb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 263
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 268
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->service:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->method:Ljava/lang/String;

    .line 274
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->content:Lokio/ByteString;

    .line 280
    iput-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->parent_trace_id:Ljava/lang/String;

    .line 283
    iput-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->local_ip_address:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->session_token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->build()Lcom/stripe/proto/net/rpc/base/RpcRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/net/rpc/base/RpcRequest;
    .locals 20

    move-object/from16 v0, p0

    .line 392
    new-instance v1, Lcom/stripe/proto/net/rpc/base/RpcRequest;

    .line 393
    iget-wide v2, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->id:J

    .line 394
    iget-object v4, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->service:Ljava/lang/String;

    .line 395
    iget-object v5, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->method:Ljava/lang/String;

    .line 396
    iget-object v6, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->content:Lokio/ByteString;

    .line 397
    iget-wide v7, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->deadline:J

    .line 398
    iget-object v9, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->parent_trace_id:Ljava/lang/String;

    .line 399
    iget-object v10, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->local_ip_address:Ljava/lang/String;

    .line 400
    iget-object v11, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->session_token:Ljava/lang/String;

    .line 401
    iget-object v12, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    .line 402
    iget-object v13, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 403
    iget-object v14, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    move-object v15, v1

    move-wide/from16 v16, v2

    .line 404
    iget-wide v1, v0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->parent_id:J

    move-wide/from16 v18, v1

    move-object v1, v15

    move-wide/from16 v2, v16

    move-wide/from16 v15, v18

    .line 405
    invoke-virtual {v0}, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v17

    .line 392
    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/net/rpc/base/RpcRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Lokio/ByteString;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/trace/RequestInfoPb;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;JLokio/ByteString;)V

    return-object v1
.end method

.method public final content(Lokio/ByteString;)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 1

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->content:Lokio/ByteString;

    return-object p0
.end method

.method public final deadline(J)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 0

    .line 330
    iput-wide p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->deadline:J

    return-object p0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final id(J)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 0

    .line 304
    iput-wide p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->id:J

    return-object p0
.end method

.method public final local_ip_address(Ljava/lang/String;)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 1

    const-string v0, "local_ip_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->local_ip_address:Ljava/lang/String;

    return-object p0
.end method

.method public final method(Ljava/lang/String;)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public final parent_id(J)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 0

    .line 388
    iput-wide p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->parent_id:J

    return-object p0
.end method

.method public final parent_trace_id(Ljava/lang/String;)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "parent_trace_id is deprecated"
    .end annotation

    const-string v0, "parent_trace_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->parent_trace_id:Ljava/lang/String;

    return-object p0
.end method

.method public final request_info(Lcom/stripe/proto/model/trace/RequestInfoPb;)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->request_info:Lcom/stripe/proto/model/trace/RequestInfoPb;

    return-object p0
.end method

.method public final service(Ljava/lang/String;)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->service:Ljava/lang/String;

    return-object p0
.end method

.method public final session_token(Ljava/lang/String;)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 1

    const-string v0, "session_token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->session_token:Ljava/lang/String;

    return-object p0
.end method

.method public final version_info(Lcom/stripe/proto/model/common/VersionInfoPb;)Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/stripe/proto/net/rpc/base/RpcRequest$Builder;->version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    return-object p0
.end method
