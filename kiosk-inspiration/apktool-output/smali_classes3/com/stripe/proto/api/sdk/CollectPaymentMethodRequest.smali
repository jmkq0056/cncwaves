.class public final Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;
.super Lcom/squareup/wire/Message;
.source "CollectPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;,
        Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Companion;,
        Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$RoutingPriority;,
        Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;,
        Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipOption;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u0000 ,2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0005+,-./B\u00c7\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0002\u0010 J\u00cd\u0001\u0010\"\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\n2\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0008\u0002\u0010\u0015\u001a\u00020\n2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\n2\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020\n2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u0096\u0002J\u0008\u0010\'\u001a\u00020(H\u0016J\u0008\u0010)\u001a\u00020\u0002H\u0016J\u0008\u0010*\u001a\u00020\u0006H\u0016R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u001a8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u0010\u0010\u000e\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;",
        "charge_amount",
        "Lcom/stripe/proto/model/sdk/ChargeAmount;",
        "payment_intent_id",
        "",
        "tip_configuration",
        "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;",
        "skip_tipping",
        "",
        "manual_entry",
        "tip_eligible_amount",
        "",
        "update_payment_intent",
        "computed_routing_priority",
        "",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
        "stripe_account_id",
        "offline_details",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "enable_customer_cancellation",
        "payment_intent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "request_dynamic_currency_conversion",
        "offline_behavior",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "surcharge_notice",
        "allow_redisplay",
        "Lcom/stripe/proto/model/rest/AllowRedisplay;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "copy",
        "(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "RoutingPriority",
        "TipConfiguration",
        "TipOption",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.AllowRedisplay#ADAPTER"
        jsonName = "allowRedisplay"
        schemaIndex = 0xf
        tag = 0x16
    .end annotation
.end field

.field public final charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.sdk.ChargeAmount#ADAPTER"
        jsonName = "chargeAmount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x4
    .end annotation
.end field

.field public final computed_routing_priority:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentMethodOptions$RoutingPriority#ADAPTER"
        jsonName = "computedRoutingPriority"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;"
        }
    .end annotation
.end field

.field public final enable_customer_cancellation:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableCustomerCancellation"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0x11
    .end annotation
.end field

.field public final manual_entry:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "manualEntry"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0xb
    .end annotation
.end field

.field public final offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions$OfflineBehavior#ADAPTER"
        jsonName = "offlineBehavior"
        schemaIndex = 0xd
        tag = 0x14
    .end annotation
.end field

.field public final offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.OfflinePaymentDetails#ADAPTER"
        jsonName = "offlineDetails"
        schemaIndex = 0x9
        tag = 0x10
    .end annotation
.end field

.field public final payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.PaymentIntent#ADAPTER"
        jsonName = "paymentIntent"
        schemaIndex = 0xb
        tag = 0x12
    .end annotation
.end field

.field public final payment_intent_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentIntentId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x9
    .end annotation
.end field

.field public final request_dynamic_currency_conversion:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "requestDynamicCurrencyConversion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0x13
    .end annotation
.end field

.field public final skip_tipping:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "skipTipping"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0xa
    .end annotation
.end field

.field public final stripe_account_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "stripeAccountId"
        schemaIndex = 0x8
        tag = 0xf
    .end annotation
.end field

.field public final surcharge_notice:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        jsonName = "surchargeNotice"
        schemaIndex = 0xe
        tag = 0x15
    .end annotation
.end field

.field public final tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.api.sdk.CollectPaymentMethodRequest$TipConfiguration#ADAPTER"
        jsonName = "tipConfiguration"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x8
    .end annotation
.end field

.field public final tip_eligible_amount:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "tipEligibleAmount"
        schemaIndex = 0x5
        tag = 0xc
    .end annotation
.end field

.field public final update_payment_intent:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "updatePaymentIntent"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0xd
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->Companion:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Companion;

    .line 489
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 488
    const-class v1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 492
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 488
    new-instance v3, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 20

    const v18, 0x1ffff

    const/16 v19, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v19}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;-><init>(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/sdk/ChargeAmount;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;",
            "ZZ",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
            "Z",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Z",
            "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/AllowRedisplay;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p17

    const-string v1, "payment_intent_id"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "computed_routing_priority"

    invoke-static {p8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "unknownFields"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    sget-object v2, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v2, v0}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 42
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    .line 51
    iput-object p2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    .line 75
    iput-boolean p4, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->skip_tipping:Z

    .line 87
    iput-boolean p5, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->manual_entry:Z

    .line 99
    iput-object p6, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    .line 110
    iput-boolean p7, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->update_payment_intent:Z

    .line 120
    iput-object p9, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->stripe_account_id:Ljava/lang/String;

    .line 128
    iput-object p10, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 136
    iput-boolean p11, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->enable_customer_cancellation:Z

    .line 148
    iput-object p12, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    move/from16 p1, p13

    .line 156
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Z

    move-object/from16 p1, p14

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    move-object/from16 p1, p15

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 181
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    .line 200
    invoke-static {v1, p8}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 59
    const-string v3, ""

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move v9, v6

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    .line 119
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    move v13, v6

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v6, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v0, v0, v17

    if-eqz v0, :cond_10

    .line 189
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p18, v0

    goto :goto_10

    :cond_10
    move-object/from16 p18, p17

    :goto_10
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p14, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    .line 38
    invoke-direct/range {p1 .. p18}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;-><init>(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 294
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 295
    iget-object v3, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 296
    iget-object v4, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 297
    iget-boolean v5, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->skip_tipping:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 298
    iget-boolean v6, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->manual_entry:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 299
    iget-object v7, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 300
    iget-boolean v8, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->update_payment_intent:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 301
    iget-object v9, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 302
    iget-object v10, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->stripe_account_id:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 303
    iget-object v11, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 304
    iget-boolean v12, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->enable_customer_cancellation:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 305
    iget-object v13, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 306
    iget-boolean v14, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 307
    iget-object v15, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 308
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 309
    iget-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p18, v16

    if-eqz v16, :cond_10

    .line 310
    invoke-virtual {v0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p18, v16

    goto :goto_10

    :cond_10
    move-object/from16 p18, p17

    :goto_10
    move-object/from16 p2, p1

    move-object/from16 p1, v0

    move-object/from16 p17, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    move/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move/from16 p12, v12

    move-object/from16 p13, v13

    move/from16 p14, v14

    move-object/from16 p15, v15

    .line 293
    invoke-virtual/range {p1 .. p18}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->copy(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/sdk/ChargeAmount;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;",
            "ZZ",
            "Ljava/lang/Long;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
            "Z",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Z",
            "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/AllowRedisplay;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;"
        }
    .end annotation

    const-string v0, "payment_intent_id"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computed_routing_priority"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    new-instance v1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;-><init>(Lcom/stripe/proto/model/sdk/ChargeAmount;Ljava/lang/String;Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;ZZLjava/lang/Long;ZLjava/util/List;Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Ljava/lang/String;Lcom/stripe/proto/model/rest/AllowRedisplay;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 226
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 229
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 230
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 231
    :cond_5
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->skip_tipping:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->skip_tipping:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 232
    :cond_6
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->manual_entry:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->manual_entry:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 233
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 234
    :cond_8
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->update_payment_intent:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->update_payment_intent:Z

    if-eq v1, v3, :cond_9

    return v2

    .line 235
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 236
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->stripe_account_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->stripe_account_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 237
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 238
    :cond_c
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->enable_customer_cancellation:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->enable_customer_cancellation:Z

    if-eq v1, v3, :cond_d

    return v2

    .line 239
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 240
    :cond_e
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Z

    iget-boolean v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Z

    if-eq v1, v3, :cond_f

    return v2

    .line 241
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eq v1, v3, :cond_10

    return v2

    .line 242
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 243
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    iget-object p1, p1, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    if-eq v1, p1, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 248
    iget v0, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->hashCode:I

    if-nez v0, :cond_9

    .line 250
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 251
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/sdk/ChargeAmount;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 252
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 253
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 254
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->skip_tipping:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 255
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->manual_entry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 256
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 257
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->update_payment_intent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 258
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 259
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->stripe_account_id:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 260
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 261
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->enable_customer_cancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 262
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/PaymentIntent;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 263
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 264
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 265
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 266
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/AllowRedisplay;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    .line 267
    iput v0, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->hashCode:I

    :cond_9
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->newBuilder()Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;
    .locals 2

    .line 203
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    .line 205
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    .line 207
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->skip_tipping:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->skip_tipping:Z

    .line 208
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->manual_entry:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->manual_entry:Z

    .line 209
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->tip_eligible_amount:Ljava/lang/Long;

    .line 210
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->update_payment_intent:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->update_payment_intent:Z

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->computed_routing_priority:Ljava/util/List;

    .line 212
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->stripe_account_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->stripe_account_id:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 214
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->enable_customer_cancellation:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->enable_customer_cancellation:Z

    .line 215
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 216
    iget-boolean v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Z

    iput-boolean v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->request_dynamic_currency_conversion:Z

    .line 217
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    .line 218
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->surcharge_notice:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    iput-object v1, v0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    .line 220
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 274
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charge_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->charge_amount:Lcom/stripe/proto/model/sdk/ChargeAmount;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tip_configuration="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_configuration:Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest$TipConfiguration;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skip_tipping="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->skip_tipping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "manual_entry="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->manual_entry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tip_eligible_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "update_payment_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->update_payment_intent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computed_routing_priority="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->stripe_account_id:Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_account_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->stripe_account_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_details:Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_customer_cancellation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->enable_customer_cancellation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_dynamic_currency_conversion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_behavior="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->offline_behavior:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_7
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "surcharge_notice="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_8
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_redisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/api/sdk/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/model/rest/AllowRedisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_9
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CollectPaymentMethodRequest{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
