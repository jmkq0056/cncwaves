.class public final Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PostReaderEventRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;",
        "Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;",
        "()V",
        "command",
        "Lcom/stripe/proto/event_channel/pub/message/Command;",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "reader_response",
        "Lcom/stripe/proto/event_channel/pub/message/ReaderResponse;",
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
.field public command:Lcom/stripe/proto/event_channel/pub/message/Command;

.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public reader_response:Lcom/stripe/proto/event_channel/pub/message/ReaderResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;->build()Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;
    .locals 5

    .line 132
    new-instance v0, Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;

    .line 133
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 134
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;->reader_response:Lcom/stripe/proto/event_channel/pub/message/ReaderResponse;

    .line 135
    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;->command:Lcom/stripe/proto/event_channel/pub/message/Command;

    .line 136
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 132
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/event_channel/pub/message/ReaderResponse;Lcom/stripe/proto/event_channel/pub/message/Command;Lokio/ByteString;)V

    return-object v0
.end method

.method public final command(Lcom/stripe/proto/event_channel/pub/message/Command;)Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;->command:Lcom/stripe/proto/event_channel/pub/message/Command;

    return-object p0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final reader_response(Lcom/stripe/proto/event_channel/pub/message/ReaderResponse;)Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/api/PostReaderEventRequest$Builder;->reader_response:Lcom/stripe/proto/event_channel/pub/message/ReaderResponse;

    return-object p0
.end method
