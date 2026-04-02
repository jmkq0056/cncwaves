.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;
.super Lcom/squareup/wire/Message;
.source "StageScope.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;,
        Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 !2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002 !B\u00c3\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015J\u00c4\u0001\u0010\u0016\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016J\u0008\u0010\u001d\u001a\u00020\u0002H\u0016J\u0008\u0010\u001e\u001a\u00020\u001fH\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;",
        "application_selection",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "account_selection",
        "pin_entry",
        "tipping_selection",
        "online_auth",
        "display_cart",
        "remove_card",
        "kernel_processing",
        "pos_app_processing",
        "language_selection",
        "card_present",
        "manual_entry",
        "dcc_selection",
        "non_card_payment_method_selection",
        "non_card_payment_method_action_required",
        "unknownFields",
        "Lokio/ByteString;",
        "(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "common_release"
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "accountSelection"
        oneofName = "event"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "applicationSelection"
        oneofName = "event"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "cardPresent"
        oneofName = "event"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "dccSelection"
        oneofName = "event"
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "displayCart"
        oneofName = "event"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "kernelProcessing"
        oneofName = "event"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "languageSelection"
        oneofName = "event"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "manualEntry"
        oneofName = "event"
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "nonCardPaymentMethodActionRequired"
        oneofName = "event"
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "nonCardPaymentMethodSelection"
        oneofName = "event"
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "onlineAuth"
        oneofName = "event"
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "pinEntry"
        oneofName = "event"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "posAppProcessing"
        oneofName = "event"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "removeCard"
        oneofName = "event"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Timer#ADAPTER"
        jsonName = "tippingSelection"
        oneofName = "event"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->Companion:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion;

    .line 1151
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 1150
    const-class v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 1154
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 1150
    new-instance v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    const v17, 0xffff

    const/16 v18, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v18}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p16

    const-string v6, "unknownFields"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    sget-object v6, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {v0, v6, v5}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 52
    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 77
    iput-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 101
    iput-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 128
    iput-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v5, p5

    .line 155
    iput-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v6, p6

    .line 183
    iput-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v7, p7

    .line 210
    iput-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v8, p8

    .line 235
    iput-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v9, p9

    .line 263
    iput-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v10, p10

    .line 288
    iput-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v11, p11

    .line 313
    iput-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v12, p12

    .line 344
    iput-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v13, p13

    .line 372
    iput-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v14, p14

    .line 395
    iput-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    move-object/from16 v15, p15

    .line 418
    iput-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 430
    filled-new-array/range {p5 .. p15}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "At most one of application_selection, account_selection, pin_entry, tipping_selection, online_auth, display_cart, remove_card, kernel_processing, pos_app_processing, language_selection, card_present, manual_entry, dcc_selection, non_card_payment_method_selection, non_card_payment_method_action_required may be non-null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

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

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

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

    and-int v0, v0, v16

    if-eqz v0, :cond_f

    .line 427
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p17, v0

    goto :goto_f

    :cond_f
    move-object/from16 p17, p16

    :goto_f
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

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

    .line 35
    invoke-direct/range {p1 .. p17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 523
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 524
    iget-object v3, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 525
    iget-object v4, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 526
    iget-object v5, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 527
    iget-object v6, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 528
    iget-object v7, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 529
    iget-object v8, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 530
    iget-object v9, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 531
    iget-object v10, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 532
    iget-object v11, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 533
    iget-object v12, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 534
    iget-object v13, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 535
    iget-object v14, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 536
    iget-object v15, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 537
    iget-object v2, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    .line 538
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->unknownFields()Lokio/ByteString;

    move-result-object v1

    move-object/from16 p17, v1

    goto :goto_f

    :cond_f
    move-object/from16 p17, p16

    :goto_f
    move-object/from16 p2, p1

    move-object/from16 p1, v0

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

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

    .line 522
    invoke-virtual/range {p1 .. p17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;
    .locals 18

    const-string v0, "unknownFields"

    move-object/from16 v1, p16

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    new-instance v1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v1 .. v17}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 458
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 459
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;

    invoke-virtual {p1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 460
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 461
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 462
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 463
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 464
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 465
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 466
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 467
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 468
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 469
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 470
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 471
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 472
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 473
    :cond_f
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object v3, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 474
    :cond_10
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iget-object p1, p1, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 479
    iget v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->hashCode:I

    if-nez v0, :cond_f

    .line 481
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 482
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 483
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 484
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 485
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 486
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 487
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 488
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 489
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 490
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 491
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 492
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 493
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 494
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 495
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 496
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;->hashCode()I

    move-result v2

    :cond_e
    add-int/2addr v0, v2

    .line 497
    iput v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->hashCode:I

    :cond_f
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;
    .locals 2

    .line 436
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;-><init>()V

    .line 437
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 438
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 439
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 440
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 441
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 442
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 443
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 444
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 445
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 446
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 447
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 448
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 449
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 450
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 451
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    iput-object v1, v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 452
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 504
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "application_selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->application_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "account_selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->account_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pin_entry="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pin_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tipping_selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->tipping_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "online_auth="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->online_auth:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "display_cart="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->display_cart:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove_card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->remove_card:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kernel_processing="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->kernel_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 512
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pos_app_processing="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->pos_app_processing:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 513
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "language_selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->language_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_present="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->card_present:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 515
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "manual_entry="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->manual_entry:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dcc_selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->dcc_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 517
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "non_card_payment_method_selection="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_selection:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "non_card_payment_method_action_required="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;->non_card_payment_method_action_required:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 519
    :cond_e
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "StageScope{"

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
