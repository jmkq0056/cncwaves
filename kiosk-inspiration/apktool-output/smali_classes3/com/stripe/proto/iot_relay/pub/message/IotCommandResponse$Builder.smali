.class public final Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IotCommandResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;",
        "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;",
        "()V",
        "client_id",
        "",
        "message_id",
        "payload",
        "Lokio/ByteString;",
        "processing_time_ms",
        "",
        "queue_name",
        "request_topic",
        "routing_info",
        "sent_at",
        "Lcom/stripe/proto/model/common/InstantPb;",
        "service_method",
        "service_name",
        "trace_id",
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
.field public client_id:Ljava/lang/String;

.field public message_id:Ljava/lang/String;

.field public payload:Lokio/ByteString;

.field public processing_time_ms:I

.field public queue_name:Ljava/lang/String;

.field public request_topic:Ljava/lang/String;

.field public routing_info:Ljava/lang/String;

.field public sent_at:Lcom/stripe/proto/model/common/InstantPb;

.field public service_method:Ljava/lang/String;

.field public service_name:Ljava/lang/String;

.field public trace_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 246
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 248
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->message_id:Ljava/lang/String;

    .line 251
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->client_id:Ljava/lang/String;

    .line 254
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->trace_id:Ljava/lang/String;

    .line 257
    sget-object v1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    iput-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->payload:Lokio/ByteString;

    .line 263
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->request_topic:Ljava/lang/String;

    .line 266
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->service_name:Ljava/lang/String;

    .line 269
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->service_method:Ljava/lang/String;

    .line 272
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->queue_name:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->routing_info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 246
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->build()Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;
    .locals 13

    .line 361
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;

    .line 362
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->message_id:Ljava/lang/String;

    .line 363
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->client_id:Ljava/lang/String;

    .line 364
    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->trace_id:Ljava/lang/String;

    .line 365
    iget-object v4, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->payload:Lokio/ByteString;

    .line 366
    iget-object v5, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    .line 367
    iget-object v6, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->request_topic:Ljava/lang/String;

    .line 368
    iget-object v7, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->service_name:Ljava/lang/String;

    .line 369
    iget-object v8, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->service_method:Ljava/lang/String;

    .line 370
    iget-object v9, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->queue_name:Ljava/lang/String;

    .line 371
    iget-object v10, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->routing_info:Ljava/lang/String;

    .line 372
    iget v11, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->processing_time_ms:I

    .line 373
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 361
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;Lcom/stripe/proto/model/common/InstantPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILokio/ByteString;)V

    return-object v0
.end method

.method public final client_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 1

    const-string v0, "client_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->client_id:Ljava/lang/String;

    return-object p0
.end method

.method public final message_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 1

    const-string v0, "message_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->message_id:Ljava/lang/String;

    return-object p0
.end method

.method public final payload(Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->payload:Lokio/ByteString;

    return-object p0
.end method

.method public final processing_time_ms(I)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 0

    .line 357
    iput p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->processing_time_ms:I

    return-object p0
.end method

.method public final queue_name(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 1

    const-string v0, "queue_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->queue_name:Ljava/lang/String;

    return-object p0
.end method

.method public final request_topic(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 1

    const-string v0, "request_topic"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->request_topic:Ljava/lang/String;

    return-object p0
.end method

.method public final routing_info(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 1

    const-string v0, "routing_info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->routing_info:Ljava/lang/String;

    return-object p0
.end method

.method public final sent_at(Lcom/stripe/proto/model/common/InstantPb;)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->sent_at:Lcom/stripe/proto/model/common/InstantPb;

    return-object p0
.end method

.method public final service_method(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 1

    const-string v0, "service_method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->service_method:Ljava/lang/String;

    return-object p0
.end method

.method public final service_name(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 1

    const-string v0, "service_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->service_name:Ljava/lang/String;

    return-object p0
.end method

.method public final trace_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;
    .locals 1

    const-string v0, "trace_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse$Builder;->trace_id:Ljava/lang/String;

    return-object p0
.end method
