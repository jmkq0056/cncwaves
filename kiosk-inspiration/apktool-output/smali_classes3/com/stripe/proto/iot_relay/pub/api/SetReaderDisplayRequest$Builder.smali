.class public final Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SetReaderDisplayRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;",
        "()V",
        "cart",
        "Lcom/stripe/proto/model/sdk/Cart;",
        "device_id",
        "",
        "reader_id",
        "stripe_ephemeral_key",
        "terminal_action_id",
        "type",
        "Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;",
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
.field public cart:Lcom/stripe/proto/model/sdk/Cart;

.field public device_id:Ljava/lang/String;

.field public reader_id:Ljava/lang/String;

.field public stripe_ephemeral_key:Ljava/lang/String;

.field public terminal_action_id:Ljava/lang/String;

.field public type:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->device_id:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 158
    sget-object v1, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;->DISPLAY_TYPE_INVALID:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    iput-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->type:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    .line 164
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->reader_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;
    .locals 8

    .line 199
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;

    .line 200
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->device_id:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 202
    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->type:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    .line 203
    iget-object v4, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->cart:Lcom/stripe/proto/model/sdk/Cart;

    .line 204
    iget-object v5, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 205
    iget-object v6, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->reader_id:Ljava/lang/String;

    .line 206
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 199
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;Lcom/stripe/proto/model/sdk/Cart;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final cart(Lcom/stripe/proto/model/sdk/Cart;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->cart:Lcom/stripe/proto/model/sdk/Cart;

    return-object p0
.end method

.method public final device_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;
    .locals 1

    const-string v0, "device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;
    .locals 1

    const-string v0, "reader_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->reader_id:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_ephemeral_key(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;
    .locals 1

    const-string v0, "stripe_ephemeral_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;
    .locals 1

    const-string v0, "terminal_action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method

.method public final type(Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;)Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$Builder;->type:Lcom/stripe/proto/iot_relay/pub/api/SetReaderDisplayRequest$DisplayType;

    return-object p0
.end method
