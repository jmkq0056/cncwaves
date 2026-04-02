.class public final Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectPaymentMethodPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010!\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0014\u0010\n\u001a\u00020\u00002\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u0015\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\"J\u0015\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\"J\u0015\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\"J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u000eJ\u0014\u0010\u0015\u001a\u00020\u00002\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bJ\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0017J\u0015\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\"J\u0017\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0010H\u0007\u00a2\u0006\u0002\u0010\"J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u000eJ\u0015\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\"J\u0010\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dJ\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u000eJ\u0015\u0010\u001f\u001a\u00020\u00002\u0008\u0010\u001f\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010#R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0012\u0010\u0014\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00178\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0016\u0010\u0019\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0012\u0010\u001a\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0011R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010 \u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
        "()V",
        "allow_redisplay",
        "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;",
        "amount_details",
        "Lcom/stripe/proto/event_channel/pub/message/AmountDetails;",
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
        "request_dynamic_currency_conversion",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;",
        "request_incremental_authorization_support",
        "setup_future_usage",
        "setup_future_usage_str",
        "skip_tipping",
        "surcharge",
        "Lcom/stripe/proto/event_channel/pub/message/Surcharge;",
        "surcharge_notice",
        "tip_eligible_amount",
        "Ljava/lang/Long;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;",
        "(Ljava/lang/Long;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;",
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

.field public amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

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

.field public request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

.field public request_incremental_authorization_support:Ljava/lang/Boolean;

.field public setup_future_usage:Ljava/lang/Boolean;

.field public setup_future_usage_str:Ljava/lang/String;

.field public skip_tipping:Ljava/lang/Boolean;

.field public surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

.field public surcharge_notice:Ljava/lang/String;

.field public tip_eligible_amount:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 316
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 318
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->payment_intent_id:Ljava/lang/String;

    .line 324
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->currency:Ljava/lang/String;

    .line 339
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->computed_routing_priority:Ljava/util/List;

    .line 347
    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    iput-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 350
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->payment_method_types:Ljava/util/List;

    .line 353
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->surcharge_notice:Ljava/lang/String;

    .line 365
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->setup_future_usage_str:Ljava/lang/String;

    .line 371
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    return-void
.end method


# virtual methods
.method public final allow_redisplay(Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 1

    const-string v0, "allow_redisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    return-object p0
.end method

.method public final amount_details(Lcom/stripe/proto/event_channel/pub/message/AmountDetails;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;
    .locals 23

    move-object/from16 v0, p0

    .line 466
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    .line 467
    iget-object v2, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->payment_intent_id:Ljava/lang/String;

    .line 468
    iget-wide v3, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->charge_amount:J

    .line 469
    iget-object v5, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->currency:Ljava/lang/String;

    .line 470
    iget-object v6, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->skip_tipping:Ljava/lang/Boolean;

    .line 471
    iget-object v7, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->moto:Ljava/lang/Boolean;

    .line 472
    iget-object v8, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->tip_eligible_amount:Ljava/lang/Long;

    .line 473
    iget-object v9, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    .line 474
    iget-object v10, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->computed_routing_priority:Ljava/util/List;

    .line 475
    iget-object v11, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 476
    iget-object v12, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 477
    iget-object v13, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->payment_method_types:Ljava/util/List;

    .line 478
    iget-object v14, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->surcharge_notice:Ljava/lang/String;

    .line 479
    iget-object v15, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    move-object/from16 v16, v1

    .line 480
    iget-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    .line 481
    iget-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->setup_future_usage:Ljava/lang/Boolean;

    move-object/from16 v18, v1

    .line 482
    iget-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->setup_future_usage_str:Ljava/lang/String;

    move-object/from16 v19, v1

    .line 483
    iget-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    move-object/from16 v20, v1

    .line 484
    iget-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    .line 485
    invoke-virtual {v0}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v21

    move-object/from16 v22, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v22

    .line 466
    invoke-direct/range {v1 .. v21}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final charge_amount(J)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 0

    .line 379
    iput-wide p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->charge_amount:J

    return-object p0
.end method

.method public final computed_routing_priority(Ljava/util/List;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;",
            ">;)",
            "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;"
        }
    .end annotation

    const-string v0, "computed_routing_priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 410
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->computed_routing_priority:Ljava/util/List;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final enable_customer_cancellation(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final is_tip_eligible_amount_set(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final moto(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->moto:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final payment_intent_id(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 1

    const-string v0, "payment_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->payment_intent_id:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_types(Ljava/util/List;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;"
        }
    .end annotation

    const-string v0, "payment_method_types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 426
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->payment_method_types:Ljava/util/List;

    return-object p0
.end method

.method public final request_dynamic_currency_conversion(Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 1

    const-string v0, "request_dynamic_currency_conversion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    return-object p0
.end method

.method public final request_incremental_authorization_support(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setup_future_usage(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "setup_future_usage is deprecated"
    .end annotation

    .line 447
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->setup_future_usage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setup_future_usage_str(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 1

    const-string v0, "setup_future_usage_str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->setup_future_usage_str:Ljava/lang/String;

    return-object p0
.end method

.method public final skip_tipping(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->skip_tipping:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final surcharge(Lcom/stripe/proto/event_channel/pub/message/Surcharge;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    return-object p0
.end method

.method public final surcharge_notice(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 1

    const-string v0, "surcharge_notice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->surcharge_notice:Ljava/lang/String;

    return-object p0
.end method

.method public final tip_eligible_amount(Ljava/lang/Long;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->tip_eligible_amount:Ljava/lang/Long;

    return-object p0
.end method
