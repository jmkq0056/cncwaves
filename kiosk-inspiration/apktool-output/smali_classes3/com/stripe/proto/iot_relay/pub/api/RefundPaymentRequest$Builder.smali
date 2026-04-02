.class public final Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RefundPaymentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0019J\u001a\u0010\r\u001a\u00020\u00002\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012J\u0015\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0019J\u0015\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0019J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0007J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0007J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u001e\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0012\u0010\u0015\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;",
        "()V",
        "amount",
        "",
        "charge",
        "",
        "currency",
        "device_id",
        "enable_customer_cancellation",
        "",
        "Ljava/lang/Boolean;",
        "metadata",
        "",
        "payment_intent",
        "reader_id",
        "reason",
        "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;",
        "refund_application_fee",
        "reverse_transfer",
        "stripe_account",
        "stripe_ephemeral_key",
        "terminal_action_id",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;",
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

.field public device_id:Ljava/lang/String;

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

.field public reader_id:Ljava/lang/String;

.field public reason:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

.field public refund_application_fee:Ljava/lang/Boolean;

.field public reverse_transfer:Ljava/lang/Boolean;

.field public stripe_account:Ljava/lang/String;

.field public stripe_ephemeral_key:Ljava/lang/String;

.field public terminal_action_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 263
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 265
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->device_id:Ljava/lang/String;

    .line 268
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 271
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->charge:Ljava/lang/String;

    .line 274
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->payment_intent:Ljava/lang/String;

    .line 280
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->currency:Ljava/lang/String;

    .line 283
    sget-object v1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;->REASON_INVALID:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    iput-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->reason:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    .line 292
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 295
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->metadata:Ljava/util/Map;

    .line 298
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->reader_id:Ljava/lang/String;

    .line 301
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->stripe_account:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final amount(J)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 0

    .line 327
    iput-wide p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->amount:J

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;
    .locals 19

    move-object/from16 v0, p0

    .line 379
    new-instance v1, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;

    .line 380
    iget-object v2, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->device_id:Ljava/lang/String;

    .line 381
    iget-object v3, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 382
    iget-object v4, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->charge:Ljava/lang/String;

    .line 383
    iget-object v5, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->payment_intent:Ljava/lang/String;

    .line 384
    iget-wide v6, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->amount:J

    .line 385
    iget-object v8, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->currency:Ljava/lang/String;

    .line 386
    iget-object v9, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->reason:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    .line 387
    iget-object v10, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->refund_application_fee:Ljava/lang/Boolean;

    .line 388
    iget-object v11, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->reverse_transfer:Ljava/lang/Boolean;

    .line 389
    iget-object v12, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 390
    iget-object v13, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->metadata:Ljava/util/Map;

    .line 391
    iget-object v14, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->reader_id:Ljava/lang/String;

    .line 392
    iget-object v15, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->stripe_account:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 393
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 394
    invoke-virtual {v0}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v17

    move-object/from16 v18, v16

    move-object/from16 v16, v1

    move-object/from16 v1, v18

    .line 379
    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final charge(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 1

    const-string v0, "charge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 317
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->charge:Ljava/lang/String;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final device_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 1

    const-string v0, "device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public final enable_customer_cancellation(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final payment_intent(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 1

    const-string v0, "payment_intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->payment_intent:Ljava/lang/String;

    return-object p0
.end method

.method public final reader_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 1

    const-string v0, "reader_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->reader_id:Ljava/lang/String;

    return-object p0
.end method

.method public final reason(Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->reason:Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Reason;

    return-object p0
.end method

.method public final refund_application_fee(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->refund_application_fee:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final reverse_transfer(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->reverse_transfer:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final stripe_account(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 1

    const-string v0, "stripe_account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->stripe_account:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_ephemeral_key(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 1

    const-string v0, "stripe_ephemeral_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;
    .locals 1

    const-string v0, "terminal_action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/RefundPaymentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method
