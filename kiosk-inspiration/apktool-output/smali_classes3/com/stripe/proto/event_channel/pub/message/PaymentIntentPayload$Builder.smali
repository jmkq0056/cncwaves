.class public final Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentIntentPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u001b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u0015\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u001cJ\u0015\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u001cJ\u0015\u0010\u0011\u001a\u00020\u00002\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u000cJ\u0014\u0010\u0013\u001a\u00020\u00002\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\tJ\u0015\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u000cJ\u0017\u0010\u0016\u001a\u00020\u00002\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u000eH\u0007\u00a2\u0006\u0002\u0010\u001cJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000cJ\u0015\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u001cJ\u0015\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u001dR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0012\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0015\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0012\u0010\u0017\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
        "()V",
        "allow_redisplay",
        "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;",
        "charge_amount",
        "",
        "computed_routing_priority",
        "",
        "Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;",
        "currency",
        "",
        "enable_customer_cancellation",
        "",
        "Ljava/lang/Boolean;",
        "is_tip_eligible_amount_set",
        "moto",
        "payment_intent_id",
        "payment_method_types",
        "request_incremental_authorization_support",
        "return_url",
        "setup_future_usage",
        "setup_future_usage_str",
        "skip_tipping",
        "tip_eligible_amount",
        "Ljava/lang/Long;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;",
        "(Ljava/lang/Long;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;",
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
.field public allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

.field public charge_amount:J

.field public computed_routing_priority:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;",
            ">;"
        }
    .end annotation
.end field

.field public currency:Ljava/lang/String;

.field public enable_customer_cancellation:Ljava/lang/Boolean;

.field public is_tip_eligible_amount_set:Ljava/lang/Boolean;

.field public moto:Ljava/lang/Boolean;

.field public payment_intent_id:Ljava/lang/String;

.field public payment_method_types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public request_incremental_authorization_support:Ljava/lang/Boolean;

.field public return_url:Ljava/lang/String;

.field public setup_future_usage:Ljava/lang/Boolean;

.field public setup_future_usage_str:Ljava/lang/String;

.field public skip_tipping:Ljava/lang/Boolean;

.field public tip_eligible_amount:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 273
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 275
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->payment_intent_id:Ljava/lang/String;

    .line 281
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->currency:Ljava/lang/String;

    .line 296
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->computed_routing_priority:Ljava/util/List;

    .line 302
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->payment_method_types:Ljava/util/List;

    .line 311
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->setup_future_usage_str:Ljava/lang/String;

    .line 314
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    iput-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    .line 317
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->return_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final allow_redisplay(Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 1

    const-string v0, "allow_redisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;
    .locals 20

    move-object/from16 v0, p0

    .line 397
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 398
    iget-object v2, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->payment_intent_id:Ljava/lang/String;

    .line 399
    iget-wide v3, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->charge_amount:J

    .line 400
    iget-object v5, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->currency:Ljava/lang/String;

    .line 401
    iget-object v6, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->skip_tipping:Ljava/lang/Boolean;

    .line 402
    iget-object v7, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->moto:Ljava/lang/Boolean;

    .line 403
    iget-object v8, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->tip_eligible_amount:Ljava/lang/Long;

    .line 404
    iget-object v9, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    .line 405
    iget-object v10, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->computed_routing_priority:Ljava/util/List;

    .line 406
    iget-object v11, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 407
    iget-object v12, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->payment_method_types:Ljava/util/List;

    .line 408
    iget-object v13, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    .line 409
    iget-object v14, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->setup_future_usage:Ljava/lang/Boolean;

    .line 410
    iget-object v15, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->setup_future_usage_str:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 411
    iget-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    move-object/from16 v17, v1

    .line 412
    iget-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->return_url:Ljava/lang/String;

    .line 413
    invoke-virtual {v0}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v18

    move-object/from16 v19, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    .line 397
    invoke-direct/range {v1 .. v18}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final charge_amount(J)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 0

    .line 325
    iput-wide p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->charge_amount:J

    return-object p0
.end method

.method public final computed_routing_priority(Ljava/util/List;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;",
            ">;)",
            "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;"
        }
    .end annotation

    const-string v0, "computed_routing_priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 356
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->computed_routing_priority:Ljava/util/List;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final enable_customer_cancellation(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final is_tip_eligible_amount_set(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final moto(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->moto:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final payment_intent_id(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 1

    const-string v0, "payment_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->payment_intent_id:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_types(Ljava/util/List;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;"
        }
    .end annotation

    const-string v0, "payment_method_types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 367
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->payment_method_types:Ljava/util/List;

    return-object p0
.end method

.method public final request_incremental_authorization_support(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final return_url(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 1

    const-string v0, "return_url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->return_url:Ljava/lang/String;

    return-object p0
.end method

.method public final setup_future_usage(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "setup_future_usage is deprecated"
    .end annotation

    .line 378
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->setup_future_usage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setup_future_usage_str(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 1

    const-string v0, "setup_future_usage_str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->setup_future_usage_str:Ljava/lang/String;

    return-object p0
.end method

.method public final skip_tipping(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->skip_tipping:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final tip_eligible_amount(Ljava/lang/Long;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->tip_eligible_amount:Ljava/lang/Long;

    return-object p0
.end method
