.class public final Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;
.super Lcom/squareup/wire/Message;
.source "ProcessPaymentIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;,
        Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 .2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002-.B\u00f1\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000b\u0012\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0013\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0002\u0010\u001fJ\u00f7\u0001\u0010$\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00042\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000b2\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00132\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0002\u0010%J\u0013\u0010&\u001a\u00020\u000b2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0096\u0002J\u0008\u0010)\u001a\u00020*H\u0016J\u0008\u0010+\u001a\u00020\u0002H\u0016J\u0008\u0010,\u001a\u00020\u0004H\u0016R\u0010\u0010\u001a\u001a\u00020\u001b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010 R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010 R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010 R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010 R\u0010\u0010\u001c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010 \u0012\u0004\u0008!\u0010\"R\u0010\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010 R\u0010\u0010\u0011\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010#\u00a8\u0006/"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;",
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
        "stripe_account",
        "computed_routing_priority",
        "",
        "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;",
        "enable_customer_cancellation",
        "payment_method_types",
        "request_incremental_authorization_support",
        "setup_future_usage",
        "setup_future_usage_str",
        "allow_redisplay",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;",
        "return_url",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "getSetup_future_usage$annotations",
        "()V",
        "Ljava/lang/Long;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;",
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
            "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.terminal.pub.common.server_driven_integration.AllowRedisplay#ADAPTER"
        jsonName = "allowRedisplay"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x12
        tag = 0x13
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
        schemaIndex = 0xc
        tag = 0xd
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
        schemaIndex = 0xe
        tag = 0xf
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

.field public final request_incremental_authorization_support:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "requestIncrementalAuthorizationSupport"
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final return_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "returnUrl"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x13
        tag = 0x14
    .end annotation
.end field

.field public final setup_future_usage:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "setupFutureUsage"
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final setup_future_usage_str:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "setupFutureUsageStr"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x11
        tag = 0x12
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
        schemaIndex = 0xb
        tag = 0xc
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

    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->Companion:Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion;

    .line 543
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 542
    const-class v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 546
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 542
    new-instance v3, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 25

    const v23, 0x1fffff

    const/16 v24, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v24}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V
    .locals 16
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
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;",
            "Ljava/lang/String;",
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

    move-object/from16 v10, p19

    move-object/from16 v11, p20

    move-object/from16 v12, p21

    move-object/from16 v13, p22

    const-string v14, "device_id"

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "stripe_ephemeral_key"

    invoke-static {v2, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "payment_intent_id"

    invoke-static {v3, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "currency"

    invoke-static {v4, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "terminal_action_id"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "reader_id"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "stripe_account"

    invoke-static {v7, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v14, "computed_routing_priority"

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "payment_method_types"

    invoke-static {v9, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "setup_future_usage_str"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "allow_redisplay"

    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "return_url"

    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "unknownFields"

    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    sget-object v9, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {v0, v9, v13}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 33
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    .line 42
    iput-object v2, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    .line 51
    iput-object v3, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    move-wide/from16 v1, p4

    .line 60
    iput-wide v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    .line 69
    iput-object v4, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    move-object/from16 v1, p7

    .line 77
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    move-object/from16 v1, p8

    .line 85
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    move-object/from16 v1, p9

    .line 92
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    .line 100
    iput-object v5, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    move-object/from16 v1, p11

    .line 109
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    .line 117
    iput-object v6, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    .line 129
    iput-object v7, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 139
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    move-object/from16 v1, p17

    .line 148
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    move-object/from16 v1, p18

    .line 156
    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    .line 165
    iput-object v10, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    .line 174
    iput-object v11, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    .line 183
    iput-object v12, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    .line 203
    invoke-static {v14, v8}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    move-object/from16 v9, p16

    .line 214
    invoke-static {v15, v9}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    move/from16 v0, p23

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

    move-object v15, v2

    goto :goto_b

    :cond_b
    move-object/from16 v15, p13

    :goto_b
    and-int/lit16 v9, v0, 0x1000

    if-eqz v9, :cond_c

    .line 138
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_c

    :cond_c
    move-object/from16 v9, p14

    :goto_c
    move-object/from16 p24, v1

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

    .line 147
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_e

    :cond_e
    move-object/from16 v1, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p17

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p18

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    move-object/from16 v18, v2

    goto :goto_11

    :cond_11
    move-object/from16 v18, p19

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    .line 182
    sget-object v19, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

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

    and-int v0, v0, v20

    if-eqz v0, :cond_14

    .line 192
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p23, v0

    goto :goto_14

    :cond_14
    move-object/from16 p23, p22

    :goto_14
    move-object/from16 p1, p0

    move-object/from16 p16, p2

    move-object/from16 p2, p24

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

    .line 32
    invoke-direct/range {p1 .. p23}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 324
    iget-object v2, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 325
    iget-object v3, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 326
    iget-object v4, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 327
    iget-wide v5, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    .line 328
    iget-object v7, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    .line 329
    iget-object v8, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    .line 330
    iget-object v9, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    .line 331
    iget-object v10, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    .line 332
    iget-object v11, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    .line 333
    iget-object v12, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    .line 334
    iget-object v13, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    .line 335
    iget-object v14, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    .line 336
    iget-object v15, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    .line 337
    iget-object v2, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    :goto_d
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 338
    iget-object v2, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 339
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p23, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_10

    .line 340
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p23, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_11

    .line 341
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p23, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_12

    .line 342
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p20

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p23, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_13

    .line 343
    iget-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p21

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p23, v16

    if-eqz v16, :cond_14

    .line 344
    invoke-virtual {v0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p23, v16

    goto :goto_14

    :cond_14
    move-object/from16 p23, p22

    :goto_14
    move-object/from16 p16, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, v1

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

    .line 323
    invoke-virtual/range {p1 .. p23}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

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
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;
    .locals 24
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
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/iot_relay/pub/api/RoutingPaymentMethodOptions;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;"
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

    const-string v0, "stripe_account"

    move-object/from16 v14, p13

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computed_routing_priority"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_method_types"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setup_future_usage_str"

    move-object/from16 v5, p19

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allow_redisplay"

    move-object/from16 v6, p20

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "return_url"

    move-object/from16 v8, p21

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v9, p22

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    new-instance v1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    move-object/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move-wide/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v23}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 244
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 245
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;

    invoke-virtual {p1}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 248
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 249
    :cond_5
    iget-wide v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    iget-wide v5, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 250
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 251
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 252
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 253
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 254
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 255
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 256
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 257
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 258
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 259
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 260
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 261
    :cond_11
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 262
    :cond_12
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 263
    :cond_13
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 264
    :cond_14
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    iget-object v3, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    if-eq v1, v3, :cond_15

    return v2

    .line 265
    :cond_15
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return v2

    :cond_16
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 270
    iget v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->hashCode:I

    if-nez v0, :cond_7

    .line 272
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 273
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 274
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 275
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 276
    iget-wide v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 277
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 278
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

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

    .line 279
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 280
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 281
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 282
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 283
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 284
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 285
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 286
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 287
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 288
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 289
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 290
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 291
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 292
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    iput v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->hashCode:I

    :cond_7
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->newBuilder()Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;
    .locals 3

    .line 217
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;-><init>()V

    .line 218
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->device_id:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 220
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 221
    iget-wide v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    iput-wide v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->charge_amount:J

    .line 222
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->currency:Ljava/lang/String;

    .line 223
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->skip_tipping:Ljava/lang/Boolean;

    .line 224
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->moto:Ljava/lang/Boolean;

    .line 225
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->tip_eligible_amount:Ljava/lang/Long;

    .line 226
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    .line 228
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->reader_id:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->stripe_account:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->computed_routing_priority:Ljava/util/List;

    .line 231
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 232
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->payment_method_types:Ljava/util/List;

    .line 233
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    .line 234
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->setup_future_usage:Ljava/lang/Boolean;

    .line 235
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->setup_future_usage_str:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    .line 237
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->return_url:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 300
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->device_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_ephemeral_key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_intent_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charge_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->charge_amount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->currency:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skip_tipping="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moto="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->moto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tip_eligible_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_action_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->terminal_action_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_tip_eligible_amount_set="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->reader_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_account="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->stripe_account:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computed_routing_priority="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_customer_cancellation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_types="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->payment_method_types:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_6
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_incremental_authorization_support="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_7
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_future_usage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_future_usage_str="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_redisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessPaymentIntentRequest;->return_url:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 320
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ProcessPaymentIntentRequest{"

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
