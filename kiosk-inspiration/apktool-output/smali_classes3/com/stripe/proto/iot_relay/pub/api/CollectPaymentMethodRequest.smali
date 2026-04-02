.class public final Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;
.super Lcom/squareup/wire/Message;
.source "CollectPaymentMethodRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;,
        Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 22\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u000212B\u0087\u0002\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017\u0012\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0012\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020 \u0012\u0008\u0008\u0002\u0010!\u001a\u00020\"\u00a2\u0006\u0002\u0010#J\u008d\u0002\u0010(\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00172\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00122\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00042\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020 2\u0008\u0008\u0002\u0010!\u001a\u00020\"\u00a2\u0006\u0002\u0010)J\u0013\u0010*\u001a\u00020\u000b2\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0096\u0002J\u0008\u0010-\u001a\u00020.H\u0016J\u0008\u0010/\u001a\u00020\u0002H\u0016J\u0008\u00100\u001a\u00020\u0004H\u0016R\u0010\u0010\u001f\u001a\u00020 8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010$R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010$R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010$R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u00178\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010$R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010$\u0012\u0004\u0008%\u0010&R\u0010\u0010\u001c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010$R\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\'\u00a8\u00063"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;",
        "device_id",
        "",
        "stripe_ephemeral_key",
        "payment_intent_id",
        "charge_amount",
        "",
        "currency",
        "skip_tipping",
        "",
        "moto",
        "tip_eligible_amount",
        "terminal_action_id",
        "is_tip_eligible_amount_set",
        "reader_id",
        "computed_routing_priority",
        "",
        "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;",
        "stripe_account",
        "enable_customer_cancellation",
        "request_dynamic_currency_conversion",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;",
        "payment_method_types",
        "surcharge_notice",
        "request_incremental_authorization_support",
        "setup_future_usage",
        "setup_future_usage_str",
        "amount_details",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;",
        "allow_redisplay",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "getSetup_future_usage$annotations",
        "()V",
        "Ljava/lang/Long;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;",
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
            "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AllowRedisplay#ADAPTER"
        jsonName = "allowRedisplay"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x15
        tag = 0x16
    .end annotation
.end field

.field public final amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AmountDetails#ADAPTER"
        jsonName = "amountDetails"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x14
        tag = 0x15
    .end annotation
.end field

.field public final charge_amount:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "chargeAmount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final computed_routing_priority:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.iot_relay.pub.api.RoutingPaymentMethodOptions#ADAPTER"
        jsonName = "computedRoutingPriority"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;",
            ">;"
        }
    .end annotation
.end field

.field public final currency:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final device_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "deviceId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final enable_customer_cancellation:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "enableCustomerCancellation"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final is_tip_eligible_amount_set:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "isTipEligibleAmountSet"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final moto:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final payment_intent_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentIntentId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final payment_method_types:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentMethodTypes"
        label = .enum Lcom/squareup/wire/WireField$Label;->REPEATED:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xf
        tag = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final reader_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "readerId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.RequestDynamicCurrencyConversionPaymentMethodOptions#ADAPTER"
        jsonName = "requestDynamicCurrencyConversion"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final request_incremental_authorization_support:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "requestIncrementalAuthorizationSupport"
        schemaIndex = 0x11
        tag = 0x12
    .end annotation
.end field

.field public final setup_future_usage:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "setupFutureUsage"
        schemaIndex = 0x12
        tag = 0x13
    .end annotation
.end field

.field public final setup_future_usage_str:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "setupFutureUsageStr"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x13
        tag = 0x14
    .end annotation
.end field

.field public final skip_tipping:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "skipTipping"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final stripe_account:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "stripeAccount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final stripe_ephemeral_key:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "stripeEphemeralKey"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final surcharge_notice:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "surchargeNotice"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final terminal_action_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "terminalActionId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final tip_eligible_amount:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        jsonName = "tipEligibleAmount"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->Companion:Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion;

    .line 594
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 593
    const-class v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 597
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 593
    new-instance v3, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 27

    const v25, 0x7fffff

    const/16 v26, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

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

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v26}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;",
            "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p10

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    move-object/from16 v9, p16

    move-object/from16 v10, p17

    move-object/from16 v11, p18

    move-object/from16 v12, p21

    move-object/from16 v13, p23

    move-object/from16 v14, p24

    const-string v15, "device_id"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "stripe_ephemeral_key"

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "payment_intent_id"

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "currency"

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "terminal_action_id"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "reader_id"

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "computed_routing_priority"

    invoke-static {v7, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "stripe_account"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "request_dynamic_currency_conversion"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "payment_method_types"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v7

    const-string v7, "surcharge_notice"

    invoke-static {v11, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "setup_future_usage_str"

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "allow_redisplay"

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "unknownFields"

    invoke-static {v14, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    sget-object v7, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {v0, v7, v14}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 35
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    .line 44
    iput-object v2, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    .line 53
    iput-object v3, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    move-wide/from16 v1, p4

    .line 62
    iput-wide v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    .line 71
    iput-object v4, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 79
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    move-object/from16 v1, p8

    .line 87
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    move-object/from16 v1, p9

    .line 94
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    .line 102
    iput-object v5, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 111
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    .line 119
    iput-object v6, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    .line 132
    iput-object v8, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 141
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 149
    iput-object v9, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 160
    iput-object v11, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 169
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    move-object/from16 v1, p20

    .line 177
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    .line 186
    iput-object v12, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 195
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    .line 204
    iput-object v13, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    move-object/from16 v7, p13

    .line 224
    invoke-static {v15, v7}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    move-object/from16 v1, v16

    .line 235
    invoke-static {v1, v10}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p25

    and-int/lit8 v1, v0, 0x1

    .line 34
    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const-wide/16 v5, 0x0

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

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

    const/4 v11, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v11, p9

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    move-object v12, v2

    goto :goto_8

    :cond_8
    move-object/from16 v12, p10

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v13, p11

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    move-object v14, v2

    goto :goto_a

    :cond_a
    move-object/from16 v14, p12

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    .line 128
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v15

    goto :goto_b

    :cond_b
    move-object/from16 v15, p13

    :goto_b
    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_c

    move-object v9, v2

    goto :goto_c

    :cond_c
    move-object/from16 v9, p14

    :goto_c
    move-object/from16 p26, v1

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

    .line 158
    sget-object v1, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->REQUEST_DYNAMIC_CURRENCY_CONVERSION_PAYMENT_METHOD_OPTIONS_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    goto :goto_e

    :cond_e
    move-object/from16 v1, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    .line 159
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v16

    goto :goto_f

    :cond_f
    move-object/from16 v16, p17

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    move-object/from16 v17, v2

    goto :goto_10

    :cond_10
    move-object/from16 v17, p18

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p19

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p20

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    goto :goto_13

    :cond_13
    move-object/from16 v2, p21

    :goto_13
    const/high16 v20, 0x100000

    and-int v20, v0, v20

    if-eqz v20, :cond_14

    const/16 v20, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v20, p22

    :goto_14
    const/high16 v21, 0x200000

    and-int v21, v0, v21

    if-eqz v21, :cond_15

    .line 212
    sget-object v21, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    goto :goto_15

    :cond_15
    move-object/from16 v21, p23

    :goto_15
    const/high16 v22, 0x400000

    and-int v0, v0, v22

    if-eqz v0, :cond_16

    .line 213
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p25, v0

    goto :goto_16

    :cond_16
    move-object/from16 p25, p24

    :goto_16
    move-object/from16 p1, p0

    move-object/from16 p16, p2

    move-object/from16 p2, p26

    move-object/from16 p17, v1

    move-object/from16 p22, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-wide/from16 p5, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p15, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p18, v16

    move-object/from16 p19, v17

    move-object/from16 p20, v18

    move-object/from16 p21, v19

    move-object/from16 p23, v20

    move-object/from16 p24, v21

    .line 34
    invoke-direct/range {p1 .. p25}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p25

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 354
    iget-object v3, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 355
    iget-object v4, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 356
    iget-wide v5, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    .line 357
    iget-object v7, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    .line 358
    iget-object v8, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    .line 359
    iget-object v9, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    .line 360
    iget-object v10, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    .line 361
    iget-object v11, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    .line 362
    iget-object v12, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    .line 363
    iget-object v13, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    .line 364
    iget-object v14, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    .line 365
    iget-object v15, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    .line 366
    iget-object v2, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    :goto_d
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 367
    iget-object v2, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 368
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p25, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_10

    .line 369
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p25, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_11

    .line 370
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p25, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_12

    .line 371
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p25, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_13

    .line 372
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p25, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_14

    .line 373
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p22

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p25, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_15

    .line 374
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p23

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p25, v16

    if-eqz v16, :cond_16

    .line 375
    invoke-virtual {v0}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p25, v16

    goto :goto_16

    :cond_16
    move-object/from16 p25, p24

    :goto_16
    move-object/from16 p16, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, v1

    move-object/from16 p17, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-wide/from16 p5, v5

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

    .line 352
    invoke-virtual/range {p1 .. p25}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

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
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;",
            "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;"
        }
    .end annotation

    const-string v0, "device_id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_ephemeral_key"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_intent_id"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminal_action_id"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader_id"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computed_routing_priority"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_account"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request_dynamic_currency_conversion"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_method_types"

    move-object/from16 v5, p17

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surcharge_notice"

    move-object/from16 v6, p18

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setup_future_usage_str"

    move-object/from16 v8, p21

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allow_redisplay"

    move-object/from16 v9, p23

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v10, p24

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    new-instance v1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    move-object/from16 v12, p11

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v23, p22

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v22, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-wide/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v25}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 267
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 271
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 272
    :cond_5
    iget-wide v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    iget-wide v5, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 273
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 274
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 275
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 276
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 277
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 278
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 279
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 280
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 281
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 282
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 283
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    if-eq v1, v3, :cond_11

    return v2

    .line 284
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 285
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 286
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 287
    :cond_14
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 288
    :cond_15
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 289
    :cond_16
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 290
    :cond_17
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    iget-object p1, p1, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    if-eq v1, p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 295
    iget v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->hashCode:I

    if-nez v0, :cond_8

    .line 297
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 298
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 299
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 300
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 301
    iget-wide v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 302
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 303
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

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

    .line 304
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 305
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 306
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 307
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 308
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 309
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 310
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 311
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 312
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 313
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 314
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 315
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 316
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 317
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 318
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 319
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 320
    iput v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->hashCode:I

    :cond_8
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->newBuilder()Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;
    .locals 3

    .line 238
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;-><init>()V

    .line 239
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->device_id:Ljava/lang/String;

    .line 240
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 241
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 242
    iget-wide v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    iput-wide v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->charge_amount:J

    .line 243
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->currency:Ljava/lang/String;

    .line 244
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->skip_tipping:Ljava/lang/Boolean;

    .line 245
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->moto:Ljava/lang/Boolean;

    .line 246
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->tip_eligible_amount:Ljava/lang/Long;

    .line 247
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    .line 249
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->reader_id:Ljava/lang/String;

    .line 250
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->computed_routing_priority:Ljava/util/List;

    .line 251
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->stripe_account:Ljava/lang/String;

    .line 252
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 253
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    .line 254
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->payment_method_types:Ljava/util/List;

    .line 255
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->surcharge_notice:Ljava/lang/String;

    .line 256
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    .line 257
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->setup_future_usage:Ljava/lang/Boolean;

    .line 258
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->setup_future_usage_str:Ljava/lang/String;

    .line 259
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    .line 260
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    .line 261
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 327
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->device_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_ephemeral_key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charge_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->charge_amount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->currency:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skip_tipping="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moto="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->moto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tip_eligible_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_action_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_tip_eligible_amount_set="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->reader_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computed_routing_priority="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_account="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_customer_cancellation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_dynamic_currency_conversion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_dynamic_currency_conversion:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/RequestDynamicCurrencyConversionPaymentMethodOptions;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_types="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->payment_method_types:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "surcharge_notice="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->surcharge_notice:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_incremental_authorization_support="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_7
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_future_usage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_future_usage_str="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount_details="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->amount_details:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AmountDetails;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_redisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectPaymentMethodRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 349
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
