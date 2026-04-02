.class public final Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CompleteActionRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest;",
        "()V",
        "response",
        "Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;",
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
.field public response:Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest;
    .locals 3

    .line 80
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest;

    .line 81
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest$Builder;->response:Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;

    .line 82
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 80
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest;-><init>(Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;Lokio/ByteString;)V

    return-object v0
.end method

.method public final response(Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;)Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest$Builder;
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CompleteActionRequest$Builder;->response:Lcom/stripe/proto/iot_relay/pub/message/IotCommandResponse;

    return-object p0
.end method
