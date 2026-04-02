.class public final Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ConfirmPaymentIntentPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;",
        "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0015\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008R\u0016\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;",
        "()V",
        "amount_surcharge",
        "",
        "Ljava/lang/Long;",
        "payment_intent_id",
        "",
        "return_url",
        "(Ljava/lang/Long;)Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;",
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

.field public payment_intent_id:Ljava/lang/String;

.field public return_url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;->payment_intent_id:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;->return_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final amount_surcharge(Ljava/lang/Long;)Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;->amount_surcharge:Ljava/lang/Long;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;
    .locals 5

    .line 127
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;->payment_intent_id:Ljava/lang/String;

    .line 129
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;->amount_surcharge:Ljava/lang/Long;

    .line 130
    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;->return_url:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 127
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final payment_intent_id(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;
    .locals 1

    const-string v0, "payment_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;->payment_intent_id:Ljava/lang/String;

    return-object p0
.end method

.method public final return_url(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;
    .locals 1

    const-string v0, "return_url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload$Builder;->return_url:Ljava/lang/String;

    return-object p0
.end method
