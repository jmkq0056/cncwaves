.class public final Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReaderResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;",
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\u0007J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;",
        "()V",
        "code",
        "",
        "message",
        "response_code",
        "Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;",
        "terminal_action_id",
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
.field public code:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

.field public terminal_action_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 123
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->code:Ljava/lang/String;

    .line 128
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->message:Ljava/lang/String;

    .line 131
    sget-object v1, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;->RESPONSE_CODE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    iput-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    .line 134
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->terminal_action_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;
    .locals 6

    .line 157
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;

    .line 158
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->code:Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->message:Ljava/lang/String;

    .line 160
    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    .line 161
    iget-object v4, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->terminal_action_id:Ljava/lang/String;

    .line 162
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 157
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final code(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "code is deprecated"
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public final message(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final response_code(Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;)Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;
    .locals 1

    const-string v0, "response_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->response_code:Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$ResponseCode;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;
    .locals 1

    const-string v0, "terminal_action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ReaderResponse$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method
