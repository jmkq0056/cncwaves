.class public final Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010$\u001a\u00020\u0002H\u0016J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0014\u0010\n\u001a\u00020\u00002\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eJ\u0015\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010%J\u0015\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010%J\u0015\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010%J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u000eJ\u0014\u0010\u0016\u001a\u00020\u00002\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000eJ\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019J\u0015\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010%J\u0017\u0010\u001b\u001a\u00020\u00002\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0011H\u0007\u00a2\u0006\u0002\u0010%J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u000eJ\u0015\u0010\u001d\u001a\u00020\u00002\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010%J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u000eJ\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u000eJ\u000e\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u000eJ\u000e\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u000eJ\u0015\u0010\"\u001a\u00020\u00002\u0008\u0010\"\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010&R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0016\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u001c\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001d\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u001e\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\"\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010#\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;",
        "()V",
        "allow_redisplay",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;",
        "amount_details",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;",
        "charge_amount",
        "",
        "computed_routing_priority",
        "",
        "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;",
        "currency",
        "",
        "device_id",
        "enable_customer_cancellation",
        "",
        "Ljava/lang/Boolean;",
        "is_tip_eligible_amount_set",
        "moto",
        "payment_intent_id",
        "payment_method_types",
        "reader_id",
        "request_dynamic_currency_conversion",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;",
        "request_incremental_authorization_support",
        "setup_future_usage",
        "setup_future_usage_str",
        "skip_tipping",
        "stripe_account",
        "stripe_ephemeral_key",
        "surcharge_notice",
        "terminal_action_id",
        "tip_eligible_amount",
        "Ljava/lang/Long;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;",
        "(Ljava/lang/Long;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;",
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
.field public allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

.field public amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

.field public charge_amount:J

.field public computed_routing_priority:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;",
            ">;"
        }
    .end annotation
.end field

.field public currency:Ljava/lang/String;

.field public device_id:Ljava/lang/String;

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

.field public reader_id:Ljava/lang/String;

.field public request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

.field public request_incremental_authorization_support:Ljava/lang/Boolean;

.field public setup_future_usage:Ljava/lang/Boolean;

.field public setup_future_usage_str:Ljava/lang/String;

.field public skip_tipping:Ljava/lang/Boolean;

.field public stripe_account:Ljava/lang/String;

.field public stripe_ephemeral_key:Ljava/lang/String;

.field public surcharge_notice:Ljava/lang/String;

.field public terminal_action_id:Ljava/lang/String;

.field public tip_eligible_amount:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 378
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->device_id:Ljava/lang/String;

    .line 383
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 386
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 392
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->currency:Ljava/lang/String;

    .line 404
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 410
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->reader_id:Ljava/lang/String;

    .line 413
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->computed_routing_priority:Ljava/util/List;

    .line 416
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->stripe_account:Ljava/lang/String;

    .line 424
    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    iput-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 427
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->payment_method_types:Ljava/util/List;

    .line 430
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->surcharge_notice:Ljava/lang/String;

    .line 439
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->setup_future_usage_str:Ljava/lang/String;

    .line 445
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    return-void
.end method


# virtual methods
.method public final allow_redisplay(Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "allow_redisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    return-object p0
.end method

.method public final amount_details(Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;
    .locals 27

    move-object/from16 v0, p0

    .line 563
    new-instance v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    .line 564
    iget-object v2, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->device_id:Ljava/lang/String;

    .line 565
    iget-object v3, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 566
    iget-object v4, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 567
    iget-wide v5, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->charge_amount:J

    .line 568
    iget-object v7, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->currency:Ljava/lang/String;

    .line 569
    iget-object v8, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->skip_tipping:Ljava/lang/Boolean;

    .line 570
    iget-object v9, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->moto:Ljava/lang/Boolean;

    .line 571
    iget-object v10, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->tip_eligible_amount:Ljava/lang/Long;

    .line 572
    iget-object v11, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 573
    iget-object v12, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    .line 574
    iget-object v13, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->reader_id:Ljava/lang/String;

    .line 575
    iget-object v14, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->computed_routing_priority:Ljava/util/List;

    .line 576
    iget-object v15, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->stripe_account:Ljava/lang/String;

    move-object/from16 v16, v1

    .line 577
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    move-object/from16 v17, v1

    .line 578
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    move-object/from16 v18, v1

    .line 579
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->payment_method_types:Ljava/util/List;

    move-object/from16 v19, v1

    .line 580
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->surcharge_notice:Ljava/lang/String;

    move-object/from16 v20, v1

    .line 581
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    move-object/from16 v21, v1

    .line 582
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->setup_future_usage:Ljava/lang/Boolean;

    move-object/from16 v22, v1

    .line 583
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->setup_future_usage_str:Ljava/lang/String;

    move-object/from16 v23, v1

    .line 584
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    move-object/from16 v24, v1

    .line 585
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    .line 586
    invoke-virtual {v0}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v25

    move-object/from16 v26, v24

    move-object/from16 v24, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v26

    .line 563
    invoke-direct/range {v1 .. v25}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final charge_amount(J)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 463
    iput-wide p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->charge_amount:J

    return-object p0
.end method

.method public final computed_routing_priority(Ljava/util/List;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;",
            ">;)",
            "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;"
        }
    .end annotation

    const-string v0, "computed_routing_priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 504
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->computed_routing_priority:Ljava/util/List;

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final device_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public final enable_customer_cancellation(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final is_tip_eligible_amount_set(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final moto(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->moto:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final payment_intent_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "payment_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->payment_intent_id:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method_types(Ljava/util/List;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;"
        }
    .end annotation

    const-string v0, "payment_method_types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 528
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->payment_method_types:Ljava/util/List;

    return-object p0
.end method

.method public final reader_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "reader_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->reader_id:Ljava/lang/String;

    return-object p0
.end method

.method public final request_dynamic_currency_conversion(Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "request_dynamic_currency_conversion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 522
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    return-object p0
.end method

.method public final request_incremental_authorization_support(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 538
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setup_future_usage(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "setup_future_usage is deprecated"
    .end annotation

    .line 544
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->setup_future_usage:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setup_future_usage_str(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "setup_future_usage_str"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->setup_future_usage_str:Ljava/lang/String;

    return-object p0
.end method

.method public final skip_tipping(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->skip_tipping:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final stripe_account(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "stripe_account"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 512
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->stripe_account:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_ephemeral_key(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "stripe_ephemeral_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    return-object p0
.end method

.method public final surcharge_notice(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "surcharge_notice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->surcharge_notice:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "terminal_action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method

.method public final tip_eligible_amount(Ljava/lang/Long;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->tip_eligible_amount:Ljava/lang/Long;

    return-object p0
.end method
