.class public final Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;
.super Lcom/squareup/wire/Message;
.source "CollectPaymentMethodPayload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;,
        Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 /2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002./B\u00e1\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0002\u0010 J\u00e7\u0001\u0010%\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u000e\u0008\u0002\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0002\u0010&J\u0013\u0010\'\u001a\u00020\t2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0096\u0002J\u0008\u0010*\u001a\u00020+H\u0016J\u0008\u0010,\u001a\u00020\u0002H\u0016J\u0008\u0010-\u001a\u00020\u0004H\u0016R\u0010\u0010\u001c\u001a\u00020\u001d8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010!\u0012\u0004\u0008\"\u0010#R\u0010\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010!R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010$\u00a8\u00060"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;",
        "payment_intent_id",
        "",
        "charge_amount",
        "",
        "currency",
        "skip_tipping",
        "",
        "moto",
        "tip_eligible_amount",
        "is_tip_eligible_amount_set",
        "computed_routing_priority",
        "",
        "Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;",
        "enable_customer_cancellation",
        "request_dynamic_currency_conversion",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;",
        "payment_method_types",
        "surcharge_notice",
        "surcharge",
        "Lcom/stripe/proto/event_channel/pub/message/Surcharge;",
        "request_incremental_authorization_support",
        "setup_future_usage",
        "setup_future_usage_str",
        "amount_details",
        "Lcom/stripe/proto/event_channel/pub/message/AmountDetails;",
        "allow_redisplay",
        "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "getSetup_future_usage$annotations",
        "()V",
        "Ljava/lang/Long;",
        "copy",
        "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
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


# static fields
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.AllowRedisplay#ADAPTER"
        jsonName = "allowRedisplay"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x11
        tag = 0x12
    .end annotation
.end field

.field public final amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.AmountDetails#ADAPTER"
        jsonName = "amountDetails"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final charge_amount:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "chargeAmount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final computed_routing_priority:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.RoutingPaymentMethodOptions#ADAPTER"
        jsonName = "computedRoutingPriority"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;",
            ">;"
        }
    .end annotation
.end field

.field public final currency:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final enable_customer_cancellation:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "enableCustomerCancellation"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final is_tip_eligible_amount_set:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "isTipEligibleAmountSet"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final moto:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final payment_intent_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentIntentId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final payment_method_types:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentMethodTypes"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.RequestDynamicCurrencyConversionPaymentMethodOptions#ADAPTER"
        jsonName = "requestDynamicCurrencyConversion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final request_incremental_authorization_support:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "requestIncrementalAuthorizationSupport"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final setup_future_usage:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "setupFutureUsage"
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final setup_future_usage_str:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "setupFutureUsageStr"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final skip_tipping:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "skipTipping"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.Surcharge#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final surcharge_notice:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "surchargeNotice"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final tip_eligible_amount:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "tipEligibleAmount"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->Companion:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion;

    .line 493
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 492
    const-class v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 496
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 492
    new-instance v3, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 23

    const v21, 0x7ffff

    const/16 v22, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v22}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/event_channel/pub/message/Surcharge;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/event_channel/pub/message/AmountDetails;",
            "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object v0, p4

    move-object/from16 v1, p9

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object/from16 v4, p13

    move-object/from16 v5, p17

    move-object/from16 v6, p19

    move-object/from16 v7, p20

    const-string v8, "payment_intent_id"

    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "currency"

    invoke-static {p4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "computed_routing_priority"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "request_dynamic_currency_conversion"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "payment_method_types"

    invoke-static {v3, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "surcharge_notice"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "setup_future_usage_str"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "allow_redisplay"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "unknownFields"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    sget-object v10, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v10, v7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 33
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    .line 42
    iput-wide p2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    .line 51
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    move-object/from16 p1, p5

    .line 59
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    move-object/from16 p1, p6

    .line 67
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    move-object/from16 p1, p7

    .line 74
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    move-object/from16 p1, p8

    .line 82
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    move-object/from16 p1, p10

    .line 91
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 99
    iput-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 110
    iput-object v4, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 119
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    move-object/from16 p1, p15

    .line 127
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    move-object/from16 p1, p16

    .line 135
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    .line 144
    iput-object v5, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 153
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    .line 162
    iput-object v6, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    .line 182
    invoke-static {v8, v1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    .line 193
    invoke-static {v9, v3}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p21

    and-int/lit8 v1, v0, 0x1

    .line 32
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    move-object v5, v2

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v9, p7

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v10, p8

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    .line 90
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_7

    :cond_7
    move-object/from16 v11, p9

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    const/4 v12, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v12, p10

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    .line 108
    sget-object v13, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    goto :goto_9

    :cond_9
    move-object/from16 v13, p11

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    .line 109
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v14

    goto :goto_a

    :cond_a
    move-object/from16 v14, p12

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    move-object v15, v2

    goto :goto_b

    :cond_b
    move-object/from16 v15, p13

    :goto_b
    and-int/lit16 v7, v0, 0x1000

    if-eqz v7, :cond_c

    const/4 v7, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v7, p14

    :goto_c
    move-object/from16 p22, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v1, p15

    :goto_d
    move-object/from16 p2, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v1, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    goto :goto_f

    :cond_f
    move-object/from16 v2, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v0, v16

    if-eqz v16, :cond_10

    const/16 v16, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v16, p18

    :goto_10
    const/high16 v17, 0x20000

    and-int v17, v0, v17

    if-eqz v17, :cond_11

    .line 170
    sget-object v17, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    goto :goto_11

    :cond_11
    move-object/from16 v17, p19

    :goto_11
    const/high16 v18, 0x40000

    and-int v0, v0, v18

    if-eqz v0, :cond_12

    .line 171
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p21, v0

    goto :goto_12

    :cond_12
    move-object/from16 p21, p20

    :goto_12
    move-object/from16 p1, p0

    move-object/from16 p16, p2

    move-object/from16 p2, p22

    move-object/from16 p17, v1

    move-object/from16 p18, v2

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p15, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p19, v16

    move-object/from16 p20, v17

    .line 32
    invoke-direct/range {p1 .. p21}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 295
    iget-object v2, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 296
    iget-wide v3, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    .line 297
    iget-object v5, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    .line 298
    iget-object v6, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    .line 299
    iget-object v7, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    .line 300
    iget-object v8, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    .line 301
    iget-object v9, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    .line 302
    iget-object v10, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    .line 303
    iget-object v11, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    .line 304
    iget-object v12, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    .line 305
    iget-object v13, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    .line 306
    iget-object v14, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    .line 307
    iget-object v15, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    .line 308
    iget-object v2, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    :goto_d
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 309
    iget-object v2, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 310
    iget-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p21, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_10

    .line 311
    iget-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p21, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_11

    .line 312
    iget-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p21, v16

    if-eqz v16, :cond_12

    .line 313
    invoke-virtual {v0}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p21, v16

    goto :goto_12

    :cond_12
    move-object/from16 p21, p20

    :goto_12
    move-object/from16 p16, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, v1

    move-object/from16 p17, v2

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    .line 294
    invoke-virtual/range {p1 .. p21}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getSetup_future_usage$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "setup_future_usage is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/event_channel/pub/message/RoutingPaymentMethodOptions;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/event_channel/pub/message/Surcharge;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/event_channel/pub/message/AmountDetails;",
            "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;"
        }
    .end annotation

    const-string v0, "payment_intent_id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computed_routing_priority"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request_dynamic_currency_conversion"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_method_types"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surcharge_notice"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setup_future_usage_str"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allow_redisplay"

    move-object/from16 v3, p19

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v4, p20

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-wide/from16 v3, p2

    invoke-direct/range {v1 .. v21}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Surcharge;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AmountDetails;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 221
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 223
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 224
    :cond_3
    iget-wide v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    iget-wide v5, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 226
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 227
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 228
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 229
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 230
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 231
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 232
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    if-eq v1, v3, :cond_c

    return v2

    .line 233
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 234
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 235
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 236
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 237
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 238
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 239
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 240
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    if-eq v1, p1, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 245
    iget v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->hashCode:I

    if-nez v0, :cond_9

    .line 247
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 248
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 249
    iget-wide v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 250
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 251
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 252
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 253
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 254
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 255
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 256
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 257
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 258
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 259
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 260
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/Surcharge;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 261
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 262
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 263
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 264
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/AmountDetails;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 265
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    iput v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->hashCode:I

    :cond_9
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->newBuilder()Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;
    .locals 3

    .line 196
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->payment_intent_id:Ljava/lang/String;

    .line 198
    iget-wide v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    iput-wide v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->charge_amount:J

    .line 199
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->currency:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->skip_tipping:Ljava/lang/Boolean;

    .line 201
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->moto:Ljava/lang/Boolean;

    .line 202
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->tip_eligible_amount:Ljava/lang/Long;

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->computed_routing_priority:Ljava/util/List;

    .line 205
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 207
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->payment_method_types:Ljava/util/List;

    .line 208
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->surcharge_notice:Ljava/lang/String;

    .line 209
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    .line 210
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->setup_future_usage:Ljava/lang/Boolean;

    .line 212
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->setup_future_usage_str:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    .line 214
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    .line 215
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 273
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_intent_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charge_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->charge_amount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->currency:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 276
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skip_tipping="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moto="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->moto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tip_eligible_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_tip_eligible_amount_set="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computed_routing_priority="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_customer_cancellation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_dynamic_currency_conversion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_types="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->payment_method_types:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "surcharge_notice="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge_notice:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "surcharge="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->surcharge:Lcom/stripe/proto/event_channel/pub/message/Surcharge;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 286
    :cond_7
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_incremental_authorization_support="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_8
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_future_usage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_future_usage_str="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->amount_details:Lcom/stripe/proto/event_channel/pub/message/AmountDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_redisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 291
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "CollectPaymentMethodPayload{"

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
