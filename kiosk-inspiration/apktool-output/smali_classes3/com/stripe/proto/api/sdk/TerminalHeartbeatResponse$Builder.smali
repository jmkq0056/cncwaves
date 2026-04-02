.class public final Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "TerminalHeartbeatResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;",
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;",
        "()V",
        "connection_token_status",
        "Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;",
        "network_status",
        "Lcom/stripe/proto/api/sdk/NetworkStatus;",
        "offline_stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "reader_config_hash",
        "",
        "reader_events_count",
        "",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
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
.field public connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

.field public network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

.field public offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

.field public reader_config_hash:Ljava/lang/String;

.field public reader_events_count:I

.field public system_context:Lcom/stripe/proto/model/sdk/SystemContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->reader_config_hash:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->CONNECTION_TOKEN_STATUS_INVALID:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    .line 173
    sget-object v0, Lcom/stripe/proto/api/sdk/NetworkStatus;->NETWORK_STATUS_INVALID:Lcom/stripe/proto/api/sdk/NetworkStatus;

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->build()Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;
    .locals 8

    .line 221
    new-instance v0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;

    .line 222
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 223
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->reader_config_hash:Ljava/lang/String;

    .line 224
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    .line 225
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    .line 226
    iget-object v5, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    .line 227
    iget v6, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->reader_events_count:I

    .line 228
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 221
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Ljava/lang/String;Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;Lcom/stripe/proto/api/sdk/NetworkStatus;Lcom/stripe/proto/api/sdk/OfflineStats;ILokio/ByteString;)V

    return-object v0
.end method

.method public final connection_token_status(Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;
    .locals 1

    const-string v0, "connection_token_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    return-object p0
.end method

.method public final network_status(Lcom/stripe/proto/api/sdk/NetworkStatus;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;
    .locals 1

    const-string v0, "network_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    return-object p0
.end method

.method public final offline_stats(Lcom/stripe/proto/api/sdk/OfflineStats;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    return-object p0
.end method

.method public final reader_config_hash(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;
    .locals 1

    const-string v0, "reader_config_hash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->reader_config_hash:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_events_count(I)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;
    .locals 0

    .line 217
    iput p1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->reader_events_count:I

    return-object p0
.end method

.method public final system_context(Lcom/stripe/proto/model/sdk/SystemContext;)Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    return-object p0
.end method
