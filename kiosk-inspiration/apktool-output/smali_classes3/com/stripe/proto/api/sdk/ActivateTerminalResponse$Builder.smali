.class public final Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ActivateTerminalResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u0012\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
        "()V",
        "account_id",
        "",
        "canonical_reader_version",
        "",
        "livemode",
        "",
        "location",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "network_status",
        "Lcom/stripe/proto/api/sdk/NetworkStatus;",
        "offline_stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "request_id",
        "sdk_rpc_session",
        "session_token",
        "store_name",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
        "version",
        "Lcom/stripe/proto/model/sdk/ReaderVersion;",
        "build",
        "internal_release"
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
.field public account_id:Ljava/lang/String;

.field public canonical_reader_version:J

.field public livemode:Z

.field public location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

.field public network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

.field public offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

.field public request_id:Ljava/lang/String;

.field public sdk_rpc_session:Ljava/lang/String;

.field public session_token:Ljava/lang/String;

.field public store_name:Ljava/lang/String;

.field public system_context:Lcom/stripe/proto/model/sdk/SystemContext;

.field public version:Lcom/stripe/proto/model/sdk/ReaderVersion;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 265
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->session_token:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->store_name:Ljava/lang/String;

    .line 279
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->sdk_rpc_session:Ljava/lang/String;

    .line 282
    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->request_id:Ljava/lang/String;

    .line 300
    sget-object v0, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    return-void
.end method


# virtual methods
.method public final account_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->account_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 265
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->build()Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
    .locals 15

    .line 396
    new-instance v0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    .line 397
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->session_token:Ljava/lang/String;

    .line 398
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 399
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->store_name:Ljava/lang/String;

    .line 400
    iget-boolean v4, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->livemode:Z

    .line 401
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->sdk_rpc_session:Ljava/lang/String;

    .line 402
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->request_id:Ljava/lang/String;

    .line 403
    iget-object v7, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    .line 404
    iget-object v8, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->account_id:Ljava/lang/String;

    .line 405
    iget-wide v9, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->canonical_reader_version:J

    .line 406
    iget-object v11, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    .line 407
    iget-object v12, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 408
    iget-object v13, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    .line 409
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v14

    .line 396
    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/ReaderVersion;Ljava/lang/String;JLcom/stripe/proto/model/merchant/ApiLocationPb;Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final canonical_reader_version(J)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 0

    .line 371
    iput-wide p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->canonical_reader_version:J

    return-object p0
.end method

.method public final livemode(Z)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 0

    .line 331
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->livemode:Z

    return-object p0
.end method

.method public final location(Lcom/stripe/proto/model/merchant/ApiLocationPb;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    return-object p0
.end method

.method public final network_status(Lcom/stripe/proto/api/sdk/NetworkStatus;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 1

    const-string v0, "network_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    return-object p0
.end method

.method public final offline_stats(Lcom/stripe/proto/api/sdk/OfflineStats;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    return-object p0
.end method

.method public final request_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 1

    const-string v0, "request_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->request_id:Ljava/lang/String;

    return-object p0
.end method

.method public final sdk_rpc_session(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 1

    const-string v0, "sdk_rpc_session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->sdk_rpc_session:Ljava/lang/String;

    return-object p0
.end method

.method public final session_token(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 1

    const-string v0, "session_token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->session_token:Ljava/lang/String;

    return-object p0
.end method

.method public final store_name(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 1

    const-string v0, "store_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->store_name:Ljava/lang/String;

    return-object p0
.end method

.method public final system_context(Lcom/stripe/proto/model/sdk/SystemContext;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    .line 315
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    return-object p0
.end method

.method public final version(Lcom/stripe/proto/model/sdk/ReaderVersion;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/ActivateTerminalResponse$Builder;->version:Lcom/stripe/proto/model/sdk/ReaderVersion;

    return-object p0
.end method
