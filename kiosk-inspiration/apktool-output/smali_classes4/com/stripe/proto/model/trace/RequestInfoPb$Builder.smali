.class public final Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RequestInfoPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/trace/RequestInfoPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/trace/RequestInfoPb;",
        "Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u001a\u0010\u0008\u001a\u00020\u00002\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/trace/RequestInfoPb;",
        "()V",
        "api_method",
        "",
        "entry_point",
        "grpc_service_name",
        "headers",
        "",
        "host_ip_address",
        "host_name",
        "ip_address",
        "method_name",
        "remote_port",
        "",
        "service_name",
        "user_agent",
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
.field public api_method:Ljava/lang/String;

.field public entry_point:Ljava/lang/String;

.field public grpc_service_name:Ljava/lang/String;

.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public host_ip_address:Ljava/lang/String;

.field public host_name:Ljava/lang/String;

.field public ip_address:Ljava/lang/String;

.field public method_name:Ljava/lang/String;

.field public remote_port:I

.field public service_name:Ljava/lang/String;

.field public user_agent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 252
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->user_agent:Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->ip_address:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->entry_point:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->service_name:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->method_name:Ljava/lang/String;

    .line 272
    iput-object v0, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->host_name:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->host_ip_address:Ljava/lang/String;

    .line 278
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->headers:Ljava/util/Map;

    .line 281
    iput-object v0, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->api_method:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->grpc_service_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final api_method(Ljava/lang/String;)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 1

    const-string v0, "api_method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iput-object p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->api_method:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->build()Lcom/stripe/proto/model/trace/RequestInfoPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/trace/RequestInfoPb;
    .locals 13

    .line 371
    new-instance v0, Lcom/stripe/proto/model/trace/RequestInfoPb;

    .line 372
    iget-object v1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->user_agent:Ljava/lang/String;

    .line 373
    iget-object v2, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->ip_address:Ljava/lang/String;

    .line 374
    iget v3, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->remote_port:I

    .line 375
    iget-object v4, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->entry_point:Ljava/lang/String;

    .line 376
    iget-object v5, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->service_name:Ljava/lang/String;

    .line 377
    iget-object v6, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->method_name:Ljava/lang/String;

    .line 378
    iget-object v7, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->host_name:Ljava/lang/String;

    .line 379
    iget-object v8, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->host_ip_address:Ljava/lang/String;

    .line 380
    iget-object v9, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->headers:Ljava/util/Map;

    .line 381
    iget-object v10, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->api_method:Ljava/lang/String;

    .line 382
    iget-object v11, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->grpc_service_name:Ljava/lang/String;

    .line 383
    invoke-virtual {p0}, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 371
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/trace/RequestInfoPb;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final entry_point(Ljava/lang/String;)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 1

    const-string v0, "entry_point"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iput-object p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->entry_point:Ljava/lang/String;

    return-object p0
.end method

.method public final grpc_service_name(Ljava/lang/String;)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 1

    const-string v0, "grpc_service_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    iput-object p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->grpc_service_name:Ljava/lang/String;

    return-object p0
.end method

.method public final headers(Ljava/util/Map;)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iput-object p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public final host_ip_address(Ljava/lang/String;)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 1

    const-string v0, "host_ip_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    iput-object p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->host_ip_address:Ljava/lang/String;

    return-object p0
.end method

.method public final host_name(Ljava/lang/String;)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 1

    const-string v0, "host_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iput-object p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->host_name:Ljava/lang/String;

    return-object p0
.end method

.method public final ip_address(Ljava/lang/String;)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 1

    const-string v0, "ip_address"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iput-object p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->ip_address:Ljava/lang/String;

    return-object p0
.end method

.method public final method_name(Ljava/lang/String;)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 1

    const-string v0, "method_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iput-object p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->method_name:Ljava/lang/String;

    return-object p0
.end method

.method public final remote_port(I)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 0

    .line 306
    iput p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->remote_port:I

    return-object p0
.end method

.method public final service_name(Ljava/lang/String;)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 1

    const-string v0, "service_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iput-object p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->service_name:Ljava/lang/String;

    return-object p0
.end method

.method public final user_agent(Ljava/lang/String;)Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;
    .locals 1

    const-string v0, "user_agent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    iput-object p1, p0, Lcom/stripe/proto/model/trace/RequestInfoPb$Builder;->user_agent:Ljava/lang/String;

    return-object p0
.end method
