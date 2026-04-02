.class public final Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;
.super Lcom/squareup/wire/Message;
.source "PaymentIntentPayload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;,
        Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 )2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002()B\u00bf\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0002\u0010\u001aJ\u00c5\u0001\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\t2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\t2\u000e\u0008\u0002\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0002\u0010 J\u0013\u0010!\u001a\u00020\t2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0096\u0002J\u0008\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020\u0002H\u0016J\u0008\u0010\'\u001a\u00020\u0004H\u0016R\u0010\u0010\u0015\u001a\u00020\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u0014\u0010\u000c\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u0014\u0010\n\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001b\u0012\u0004\u0008\u001c\u0010\u001dR\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001e\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;",
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
        "payment_method_types",
        "request_incremental_authorization_support",
        "setup_future_usage",
        "setup_future_usage_str",
        "allow_redisplay",
        "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;",
        "return_url",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "getSetup_future_usage$annotations",
        "()V",
        "Ljava/lang/Long;",
        "copy",
        "(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
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
            "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.AllowRedisplay#ADAPTER"
        jsonName = "allowRedisplay"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xe
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
        schemaIndex = 0x9
        tag = 0xa
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final request_incremental_authorization_support:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "requestIncrementalAuthorizationSupport"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final return_url:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "returnUrl"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final setup_future_usage:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "setupFutureUsage"
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final setup_future_usage_str:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "setupFutureUsageStr"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
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

    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->Companion:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion;

    .line 421
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 420
    const-class v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 424
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 420
    new-instance v3, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 20

    const v18, 0xffff

    const/16 v19, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v19}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V
    .locals 9
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p9

    move-object/from16 v1, p11

    move-object/from16 v2, p14

    move-object/from16 v3, p15

    move-object/from16 v4, p16

    move-object/from16 v5, p17

    const-string v6, "payment_intent_id"

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "currency"

    invoke-static {p4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "computed_routing_priority"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "payment_method_types"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "setup_future_usage_str"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "allow_redisplay"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "return_url"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "unknownFields"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    sget-object v8, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v8, v5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 32
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    .line 41
    iput-wide p2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    .line 50
    iput-object p4, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    move-object p1, p6

    .line 66
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    move-object/from16 p1, p7

    .line 73
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    move-object/from16 p1, p8

    .line 81
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    move-object/from16 p1, p10

    .line 90
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    move-object/from16 p1, p12

    .line 99
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    move-object/from16 p1, p13

    .line 107
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    .line 116
    iput-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    .line 125
    iput-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    .line 134
    iput-object v4, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    .line 154
    invoke-static {v6, v0}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    .line 165
    invoke-static {v7, v1}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    move/from16 v0, p18

    and-int/lit8 v1, v0, 0x1

    .line 31
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

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    move-object v6, v7

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    move-object v8, v7

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    move-object v9, v7

    goto :goto_5

    :cond_5
    move-object/from16 v9, p7

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    move-object v10, v7

    goto :goto_6

    :cond_6
    move-object/from16 v10, p8

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    .line 89
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v11

    goto :goto_7

    :cond_7
    move-object/from16 v11, p9

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_8

    move-object v12, v7

    goto :goto_8

    :cond_8
    move-object/from16 v12, p10

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    .line 98
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v13

    goto :goto_9

    :cond_9
    move-object/from16 v13, p11

    :goto_9
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_a

    move-object v14, v7

    goto :goto_a

    :cond_a
    move-object/from16 v14, p12

    :goto_a
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v7, p13

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    move-object v15, v2

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p1, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    .line 133
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    goto :goto_d

    :cond_d
    move-object/from16 v1, p15

    :goto_d
    move-object/from16 p2, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    goto :goto_e

    :cond_e
    move-object/from16 v2, p16

    :goto_e
    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 143
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p18, v0

    goto :goto_f

    :cond_f
    move-object/from16 p18, p17

    :goto_f
    move-object/from16 p16, p2

    move-object/from16 p17, v2

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p14, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, p0

    .line 31
    invoke-direct/range {p1 .. p18}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p18

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 256
    iget-wide v3, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    .line 257
    iget-object v5, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    .line 258
    iget-object v6, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    .line 259
    iget-object v7, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    .line 260
    iget-object v8, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    .line 261
    iget-object v9, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    .line 262
    iget-object v10, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    .line 263
    iget-object v11, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    .line 264
    iget-object v12, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    .line 265
    iget-object v13, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    .line 266
    iget-object v14, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v1, 0x1000

    if-eqz v15, :cond_c

    .line 267
    iget-object v15, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    .line 268
    iget-object v2, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p15

    :goto_d
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 269
    iget-object v2, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p16

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    .line 270
    invoke-virtual {v0}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v1

    move-object/from16 p18, v1

    goto :goto_f

    :cond_f
    move-object/from16 p18, p17

    :goto_f
    move-object/from16 p16, p2

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

    .line 254
    invoke-virtual/range {p1 .. p18}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

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
.method public final copy(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;
    .locals 19
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;",
            "Ljava/lang/String;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;"
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

    const-string v0, "payment_method_types"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setup_future_usage_str"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allow_redisplay"

    move-object/from16 v1, p15

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "return_url"

    move-object/from16 v3, p16

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v4, p17

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p15

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-wide/from16 v3, p2

    invoke-direct/range {v1 .. v18}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Ljava/lang/String;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 190
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 193
    :cond_3
    iget-wide v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    iget-wide v5, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 196
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 197
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 198
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 199
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 200
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 201
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 202
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 203
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 204
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 205
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    if-eq v1, v3, :cond_10

    return v2

    .line 206
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 211
    iget v0, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->hashCode:I

    if-nez v0, :cond_7

    .line 213
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 214
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 215
    iget-wide v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 216
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 217
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

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

    .line 218
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 219
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 220
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 221
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 222
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 223
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 224
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 225
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    .line 226
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 227
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 228
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    iput v0, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->hashCode:I

    :cond_7
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->newBuilder()Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;
    .locals 3

    .line 168
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;-><init>()V

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->payment_intent_id:Ljava/lang/String;

    .line 170
    iget-wide v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    iput-wide v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->charge_amount:J

    .line 171
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->currency:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->skip_tipping:Ljava/lang/Boolean;

    .line 173
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->moto:Ljava/lang/Boolean;

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->tip_eligible_amount:Ljava/lang/Long;

    .line 175
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    .line 176
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->computed_routing_priority:Ljava/util/List;

    .line 177
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->payment_method_types:Ljava/util/List;

    .line 179
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->request_incremental_authorization_support:Ljava/lang/Boolean;

    .line 180
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->setup_future_usage:Ljava/lang/Boolean;

    .line 181
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->setup_future_usage_str:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    .line 183
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->return_url:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 236
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_intent_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charge_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->charge_amount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->currency:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "skip_tipping="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->skip_tipping:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moto="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->moto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tip_eligible_amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->tip_eligible_amount:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_tip_eligible_amount_set="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->is_tip_eligible_amount_set:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "computed_routing_priority="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->computed_routing_priority:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_customer_cancellation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_method_types="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->payment_method_types:Ljava/util/List;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_6
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request_incremental_authorization_support="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->request_incremental_authorization_support:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_7
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_future_usage="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_future_usage_str="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->setup_future_usage_str:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_redisplay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return_url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->return_url:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 251
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "PaymentIntentPayload{"

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
