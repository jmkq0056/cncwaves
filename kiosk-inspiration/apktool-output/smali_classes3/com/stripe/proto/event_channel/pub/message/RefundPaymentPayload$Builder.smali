.class public final Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RefundPaymentPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;",
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0013\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u0014J\u001a\u0010\u000c\u001a\u00020\u00002\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0015\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u0014J\u0015\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u0014R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u001e\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0016\u0010\u0012\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;",
        "()V",
        "amount",
        "",
        "charge",
        "",
        "currency",
        "enable_customer_cancellation",
        "",
        "Ljava/lang/Boolean;",
        "metadata",
        "",
        "payment_intent",
        "reason",
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;",
        "refund_application_fee",
        "reverse_transfer",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;",
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
.field public amount:J

.field public charge:Ljava/lang/String;

.field public currency:Ljava/lang/String;

.field public enable_customer_cancellation:Ljava/lang/Boolean;

.field public metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public payment_intent:Ljava/lang/String;

.field public reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

.field public refund_application_fee:Ljava/lang/Boolean;

.field public reverse_transfer:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 187
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->charge:Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->payment_intent:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->currency:Ljava/lang/String;

    .line 201
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;->REASON_INVALID:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    .line 210
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final amount(J)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
    .locals 0

    .line 226
    iput-wide p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->amount:J

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;
    .locals 12

    .line 260
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 261
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->charge:Ljava/lang/String;

    .line 262
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->payment_intent:Ljava/lang/String;

    .line 263
    iget-wide v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->amount:J

    .line 264
    iget-object v5, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->currency:Ljava/lang/String;

    .line 265
    iget-object v6, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    .line 266
    iget-object v7, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->refund_application_fee:Ljava/lang/Boolean;

    .line 267
    iget-object v8, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->reverse_transfer:Ljava/lang/Boolean;

    .line 268
    iget-object v9, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->metadata:Ljava/util/Map;

    .line 269
    iget-object v10, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 270
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v11

    .line 260
    invoke-direct/range {v0 .. v11}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final charge(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
    .locals 1

    const-string v0, "charge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->charge:Ljava/lang/String;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final enable_customer_cancellation(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final payment_intent(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
    .locals 1

    const-string v0, "payment_intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->payment_intent:Ljava/lang/String;

    return-object p0
.end method

.method public final reason(Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    return-object p0
.end method

.method public final refund_application_fee(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->refund_application_fee:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final reverse_transfer(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->reverse_transfer:Ljava/lang/Boolean;

    return-object p0
.end method
