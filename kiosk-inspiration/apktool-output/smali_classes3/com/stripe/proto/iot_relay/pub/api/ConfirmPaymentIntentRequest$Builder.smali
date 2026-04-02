.class public final Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmPaymentIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0008J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0008J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0008J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0008J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0008R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;",
        "()V",
        "amount_surcharge",
        "",
        "Ljava/lang/Long;",
        "device_id",
        "",
        "payment_intent_id",
        "reader_id",
        "return_url",
        "stripe_account",
        "stripe_ephemeral_key",
        "terminal_action_id",
        "(Ljava/lang/Long;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;",
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
.field public amount_surcharge:Ljava/lang/Long;

.field public device_id:Ljava/lang/String;

.field public payment_intent_id:Ljava/lang/String;

.field public reader_id:Ljava/lang/String;

.field public return_url:Ljava/lang/String;

.field public stripe_account:Ljava/lang/String;

.field public stripe_ephemeral_key:Ljava/lang/String;

.field public terminal_action_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 175
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 177
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->device_id:Ljava/lang/String;

    .line 180
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 186
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 189
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->reader_id:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->stripe_account:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->return_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final amount_surcharge(Ljava/lang/Long;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->amount_surcharge:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 175
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;
    .locals 10

    .line 243
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;

    .line 244
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->device_id:Ljava/lang/String;

    .line 245
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 246
    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 247
    iget-object v4, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 248
    iget-object v5, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->reader_id:Ljava/lang/String;

    .line 249
    iget-object v6, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->stripe_account:Ljava/lang/String;

    .line 250
    iget-object v7, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->amount_surcharge:Ljava/lang/Long;

    .line 251
    iget-object v8, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->return_url:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 243
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;
    .locals 1

    const-string v0, "device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_intent_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;
    .locals 1

    const-string v0, "payment_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->payment_intent_id:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;
    .locals 1

    const-string v0, "reader_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->reader_id:Ljava/lang/String;

    return-object p0
.end method

.method public final return_url(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;
    .locals 1

    const-string v0, "return_url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->return_url:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_account(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;
    .locals 1

    const-string v0, "stripe_account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->stripe_account:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_ephemeral_key(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;
    .locals 1

    const-string v0, "stripe_ephemeral_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;
    .locals 1

    const-string v0, "terminal_action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ConfirmPaymentIntentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method
