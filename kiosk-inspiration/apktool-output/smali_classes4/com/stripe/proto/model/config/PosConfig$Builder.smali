.class public final Lcom/stripe/proto/model/config/PosConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PosConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/PosConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/PosConfig;",
        "Lcom/stripe/proto/model/config/PosConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007H\u0007J\u0010\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u000bJ\u0010\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0007H\u0007J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/PosConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/PosConfig;",
        "()V",
        "beacon_config_deprecated_120716",
        "Lokio/ByteString;",
        "derived_session_token_deprecated_20170224",
        "",
        "device_trace_level",
        "Lcom/stripe/proto/model/config/DeviceTraceLevel;",
        "heartbeat_interval_seconds",
        "",
        "loyalty_collection_enabled",
        "",
        "merchant_id_deprecated_280115",
        "pos_trace_level",
        "Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;",
        "rabbit_client_config",
        "Lcom/stripe/proto/model/config/RabbitClientConfig;",
        "reachability_threshold",
        "store_id_deprecated_280115",
        "unreachability_threshold",
        "build",
        "terminal_release"
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
.field public beacon_config_deprecated_120716:Lokio/ByteString;

.field public derived_session_token_deprecated_20170224:Ljava/lang/String;

.field public device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

.field public heartbeat_interval_seconds:I

.field public loyalty_collection_enabled:Z

.field public merchant_id_deprecated_280115:Ljava/lang/String;

.field public pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

.field public rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

.field public reachability_threshold:I

.field public store_id_deprecated_280115:Ljava/lang/String;

.field public unreachability_threshold:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 244
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 258
    sget-object v0, Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;->ILLEGAL:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    iput-object v0, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    .line 267
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v0, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->beacon_config_deprecated_120716:Lokio/ByteString;

    .line 270
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->store_id_deprecated_280115:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->merchant_id_deprecated_280115:Ljava/lang/String;

    .line 276
    iput-object v0, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final beacon_config_deprecated_120716(Lokio/ByteString;)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "beacon_config_deprecated_120716 is deprecated"
    .end annotation

    const-string v0, "beacon_config_deprecated_120716"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iput-object p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->beacon_config_deprecated_120716:Lokio/ByteString;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/PosConfig$Builder;->build()Lcom/stripe/proto/model/config/PosConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/PosConfig;
    .locals 13

    .line 358
    new-instance v0, Lcom/stripe/proto/model/config/PosConfig;

    .line 359
    iget v1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->heartbeat_interval_seconds:I

    .line 360
    iget v2, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->reachability_threshold:I

    .line 361
    iget v3, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->unreachability_threshold:I

    .line 362
    iget-boolean v4, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->loyalty_collection_enabled:Z

    .line 363
    iget-object v5, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    .line 364
    iget-object v6, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    .line 365
    iget-object v7, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    .line 366
    iget-object v8, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->beacon_config_deprecated_120716:Lokio/ByteString;

    .line 367
    iget-object v9, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->store_id_deprecated_280115:Ljava/lang/String;

    .line 368
    iget-object v10, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->merchant_id_deprecated_280115:Ljava/lang/String;

    .line 369
    iget-object v11, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    .line 370
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/PosConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 358
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/config/PosConfig;-><init>(IIIZLcom/stripe/proto/model/config/PosConfig$PosTraceLevel;Lcom/stripe/proto/model/config/DeviceTraceLevel;Lcom/stripe/proto/model/config/RabbitClientConfig;Lokio/ByteString;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final derived_session_token_deprecated_20170224(Ljava/lang/String;)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "derived_session_token_deprecated_20170224 is deprecated"
    .end annotation

    const-string v0, "derived_session_token_deprecated_20170224"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iput-object p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->derived_session_token_deprecated_20170224:Ljava/lang/String;

    return-object p0
.end method

.method public final device_trace_level(Lcom/stripe/proto/model/config/DeviceTraceLevel;)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->device_trace_level:Lcom/stripe/proto/model/config/DeviceTraceLevel;

    return-object p0
.end method

.method public final heartbeat_interval_seconds(I)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 0

    .line 282
    iput p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->heartbeat_interval_seconds:I

    return-object p0
.end method

.method public final loyalty_collection_enabled(Z)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "loyalty_collection_enabled is deprecated"
    .end annotation

    .line 309
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->loyalty_collection_enabled:Z

    return-object p0
.end method

.method public final merchant_id_deprecated_280115(Ljava/lang/String;)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "merchant_id_deprecated_280115 is deprecated"
    .end annotation

    const-string v0, "merchant_id_deprecated_280115"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iput-object p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->merchant_id_deprecated_280115:Ljava/lang/String;

    return-object p0
.end method

.method public final pos_trace_level(Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "pos_trace_level is deprecated"
    .end annotation

    const-string v0, "pos_trace_level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iput-object p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->pos_trace_level:Lcom/stripe/proto/model/config/PosConfig$PosTraceLevel;

    return-object p0
.end method

.method public final rabbit_client_config(Lcom/stripe/proto/model/config/RabbitClientConfig;)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->rabbit_client_config:Lcom/stripe/proto/model/config/RabbitClientConfig;

    return-object p0
.end method

.method public final reachability_threshold(I)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 0

    .line 291
    iput p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->reachability_threshold:I

    return-object p0
.end method

.method public final store_id_deprecated_280115(Ljava/lang/String;)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "store_id_deprecated_280115 is deprecated"
    .end annotation

    const-string v0, "store_id_deprecated_280115"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    iput-object p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->store_id_deprecated_280115:Ljava/lang/String;

    return-object p0
.end method

.method public final unreachability_threshold(I)Lcom/stripe/proto/model/config/PosConfig$Builder;
    .locals 0

    .line 299
    iput p1, p0, Lcom/stripe/proto/model/config/PosConfig$Builder;->unreachability_threshold:I

    return-object p0
.end method
