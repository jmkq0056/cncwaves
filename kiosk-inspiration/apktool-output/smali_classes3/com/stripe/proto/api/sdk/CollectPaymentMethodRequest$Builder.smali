.class public final Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010 \u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u000cJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u000cJ\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u000cJ\u0010\u0010\u0018\u001a\u00020\u00002\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0019\u001a\u00020\u00002\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u001a\u001a\u00020\u00002\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bJ\u0015\u0010\u001c\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u00a2\u0006\u0002\u0010!J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u000cR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001eR\u0012\u0010\u001f\u001a\u00020\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;",
        "()V",
        "allow_redisplay",
        "Lcom/stripe/proto/model/rest/AllowRedisplay;",
        "charge_amount",
        "Lcom/stripe/proto/model/sdk/ChargeAmount;",
        "computed_routing_priority",
        "",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
        "enable_customer_cancellation",
        "",
        "manual_entry",
        "offline_behavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "payment_intent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "payment_intent_id",
        "",
        "request_dynamic_currency_conversion",
        "skip_tipping",
        "stripe_account_id",
        "surcharge_notice",
        "tip_configuration",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;",
        "tip_eligible_amount",
        "",
        "Ljava/lang/Long;",
        "update_payment_intent",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;",
        "internal_release"
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
.field public allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

.field public charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

.field public computed_routing_priority:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;"
        }
    .end annotation
.end field

.field public enable_customer_cancellation:Z

.field public manual_entry:Z

.field public offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

.field public offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

.field public payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

.field public payment_intent_id:Ljava/lang/String;

.field public request_dynamic_currency_conversion:Z

.field public skip_tipping:Z

.field public stripe_account_id:Ljava/lang/String;

.field public surcharge_notice:Ljava/lang/String;

.field public tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

.field public tip_eligible_amount:Ljava/lang/Long;

.field public update_payment_intent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 313
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 318
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 336
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->computed_routing_priority:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final allow_redisplay(Lcom/stripe/proto/model/rest/AllowRedisplay;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->build()Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;
    .locals 20

    move-object/from16 v0, p0

    .line 464
    new-instance v1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;

    .line 465
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    .line 466
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 467
    iget-object v4, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    .line 468
    iget-boolean v5, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->skip_tipping:Z

    .line 469
    iget-boolean v6, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->manual_entry:Z

    .line 470
    iget-object v7, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->tip_eligible_amount:Ljava/lang/Long;

    .line 471
    iget-boolean v8, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->update_payment_intent:Z

    .line 472
    iget-object v9, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->computed_routing_priority:Ljava/util/List;

    .line 473
    iget-object v10, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->stripe_account_id:Ljava/lang/String;

    .line 474
    iget-object v11, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 475
    iget-boolean v12, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->enable_customer_cancellation:Z

    .line 476
    iget-object v13, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 477
    iget-boolean v14, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->request_dynamic_currency_conversion:Z

    .line 478
    iget-object v15, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    move-object/from16 v16, v1

    .line 479
    iget-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->surcharge_notice:Ljava/lang/String;

    move-object/from16 v17, v1

    .line 480
    iget-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    .line 481
    invoke-virtual {v0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v18

    move-object/from16 v19, v17

    move-object/from16 v17, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v19

    .line 464
    invoke-direct/range {v1 .. v18}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;-><init>(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final charge_amount(Lcom/stripe/proto/model/sdk/ChargeAmount;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    return-object p0
.end method

.method public final computed_routing_priority(Ljava/util/List;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;)",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;"
        }
    .end annotation

    const-string v0, "computed_routing_priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 417
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->computed_routing_priority:Ljava/util/List;

    return-object p0
.end method

.method public final enable_customer_cancellation(Z)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 432
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->enable_customer_cancellation:Z

    return-object p0
.end method

.method public final manual_entry(Z)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 395
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->manual_entry:Z

    return-object p0
.end method

.method public final offline_behavior(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    return-object p0
.end method

.method public final offline_details(Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    return-object p0
.end method

.method public final payment_intent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    return-object p0
.end method

.method public final payment_intent_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 1

    const-string v0, "payment_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->payment_intent_id:Ljava/lang/String;

    return-object p0
.end method

.method public final request_dynamic_currency_conversion(Z)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 445
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->request_dynamic_currency_conversion:Z

    return-object p0
.end method

.method public final skip_tipping(Z)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 387
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->skip_tipping:Z

    return-object p0
.end method

.method public final stripe_account_id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->stripe_account_id:Ljava/lang/String;

    return-object p0
.end method

.method public final surcharge_notice(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 455
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->surcharge_notice:Ljava/lang/String;

    return-object p0
.end method

.method public final tip_configuration(Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    return-object p0
.end method

.method public final tip_eligible_amount(Ljava/lang/Long;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->tip_eligible_amount:Ljava/lang/Long;

    return-object p0
.end method

.method public final update_payment_intent(Z)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 0

    .line 411
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->update_payment_intent:Z

    return-object p0
.end method
