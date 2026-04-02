.class public final Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IotMetadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;",
        "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;",
        "()V",
        "action_id",
        "",
        "deadline",
        "Lcom/stripe/proto/model/common/InstantPb;",
        "message_id",
        "routing_info",
        "sent_at",
        "service_method",
        "service_name",
        "source_region",
        "target_id",
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
.field public action_id:Ljava/lang/String;

.field public deadline:Lcom/stripe/proto/model/common/InstantPb;

.field public message_id:Ljava/lang/String;

.field public routing_info:Ljava/lang/String;

.field public sent_at:Lcom/stripe/proto/model/common/InstantPb;

.field public service_method:Ljava/lang/String;

.field public service_name:Ljava/lang/String;

.field public source_region:Ljava/lang/String;

.field public target_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->message_id:Ljava/lang/String;

    .line 223
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->target_id:Ljava/lang/String;

    .line 226
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->action_id:Ljava/lang/String;

    .line 235
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->service_name:Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->service_method:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->routing_info:Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->source_region:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final action_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
    .locals 1

    const-string v0, "action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->action_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->build()Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;
    .locals 11

    .line 319
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;

    .line 320
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->message_id:Ljava/lang/String;

    .line 321
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->target_id:Ljava/lang/String;

    .line 322
    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->action_id:Ljava/lang/String;

    .line 323
    iget-object v4, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    .line 324
    iget-object v5, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    .line 325
    iget-object v6, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->service_name:Ljava/lang/String;

    .line 326
    iget-object v7, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->service_method:Ljava/lang/String;

    .line 327
    iget-object v8, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->routing_info:Ljava/lang/String;

    .line 328
    iget-object v9, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->source_region:Ljava/lang/String;

    .line 329
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 319
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/InstantPb;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final deadline(Lcom/stripe/proto/model/common/InstantPb;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->deadline:Lcom/stripe/proto/model/common/InstantPb;

    return-object p0
.end method

.method public final message_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
    .locals 1

    const-string v0, "message_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->message_id:Ljava/lang/String;

    return-object p0
.end method

.method public final routing_info(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
    .locals 1

    const-string v0, "routing_info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->routing_info:Ljava/lang/String;

    return-object p0
.end method

.method public final sent_at(Lcom/stripe/proto/model/common/InstantPb;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    return-object p0
.end method

.method public final service_method(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
    .locals 1

    const-string v0, "service_method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->service_method:Ljava/lang/String;

    return-object p0
.end method

.method public final service_name(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
    .locals 1

    const-string v0, "service_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->service_name:Ljava/lang/String;

    return-object p0
.end method

.method public final source_region(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
    .locals 1

    const-string v0, "source_region"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->source_region:Ljava/lang/String;

    return-object p0
.end method

.method public final target_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;
    .locals 1

    const-string v0, "target_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotMetadata$Builder;->target_id:Ljava/lang/String;

    return-object p0
.end method
