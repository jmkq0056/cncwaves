.class public final Lcom/stripe/proto/event_channel/pub/message/Command;
.super Lcom/squareup/wire/Message;
.source "Command.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/event_channel/pub/message/Command$Builder;,
        Lcom/stripe/proto/event_channel/pub/message/Command$Companion;,
        Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/event_channel/pub/message/Command;",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \'2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003&\'(B\u00a3\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0002\u0010\u001cJ\u00a4\u0001\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00042\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u001bJ\u0013\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0096\u0002J\u0008\u0010\"\u001a\u00020#H\u0016J\u0008\u0010$\u001a\u00020\u0002H\u0016J\u0008\u0010%\u001a\u00020\u0004H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/Command;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Builder;",
        "trace_id",
        "",
        "stripe_ephemeral_key",
        "stripe_account",
        "payment_intent_payload",
        "Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;",
        "cancel_payload",
        "Lcom/stripe/proto/event_channel/pub/message/CancelPayload;",
        "setup_intent_payload",
        "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;",
        "display_payload",
        "Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;",
        "refund_payment_payload",
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;",
        "collect_inputs_payload",
        "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;",
        "confirm_payment_intent_payload",
        "Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;",
        "collect_payment_method_payload",
        "Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;",
        "reader_id",
        "metadata",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "Metadata",
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
            "Lcom/stripe/proto/event_channel/pub/message/Command;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/event_channel/pub/message/Command$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.CancelPayload#ADAPTER"
        jsonName = "cancelPayload"
        oneofName = "payload"
        schemaIndex = 0x4
        tag = 0x4
    .end annotation
.end field

.field public final collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.CollectInputsPayload#ADAPTER"
        jsonName = "collectInputsPayload"
        oneofName = "payload"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.CollectPaymentMethodPayload#ADAPTER"
        jsonName = "collectPaymentMethodPayload"
        oneofName = "payload"
        schemaIndex = 0xa
        tag = 0xc
    .end annotation
.end field

.field public final confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.ConfirmPaymentIntentPayload#ADAPTER"
        jsonName = "confirmPaymentIntentPayload"
        oneofName = "payload"
        schemaIndex = 0x9
        tag = 0xb
    .end annotation
.end field

.field public final display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.DisplayPayload#ADAPTER"
        jsonName = "displayPayload"
        oneofName = "payload"
        schemaIndex = 0x6
        tag = 0x6
    .end annotation
.end field

.field public final metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.Command$Metadata#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xe
    .end annotation
.end field

.field public final payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.PaymentIntentPayload#ADAPTER"
        jsonName = "paymentIntentPayload"
        oneofName = "payload"
        schemaIndex = 0x3
        tag = 0x3
    .end annotation
.end field

.field public final reader_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "readerId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xa
    .end annotation
.end field

.field public final refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.RefundPaymentPayload#ADAPTER"
        jsonName = "refundPaymentPayload"
        oneofName = "payload"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.SetupIntentPayload#ADAPTER"
        jsonName = "setupIntentPayload"
        oneofName = "payload"
        schemaIndex = 0x5
        tag = 0x5
    .end annotation
.end field

.field public final stripe_account:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "stripeAccount"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
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

.field public final trace_id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "traceId"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/Command$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/event_channel/pub/message/Command$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/event_channel/pub/message/Command;->Companion:Lcom/stripe/proto/event_channel/pub/message/Command$Companion;

    .line 455
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 454
    const-class v1, Lcom/stripe/proto/event_channel/pub/message/Command;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 458
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 454
    new-instance v3, Lcom/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/event_channel/pub/message/Command$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/event_channel/pub/message/Command;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    const/16 v15, 0x3fff

    const/16 v16, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Lcom/stripe/proto/event_channel/pub/message/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;)V
    .locals 1

    const-string v0, "trace_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_ephemeral_key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_account"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader_id"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    invoke-static {p14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Command;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p14}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 38
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 80
    iput-object p5, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 89
    iput-object p6, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 98
    iput-object p7, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 107
    iput-object p8, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 116
    iput-object p9, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 125
    iput-object p10, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 134
    iput-object p11, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    .line 143
    iput-object p12, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    .line 152
    iput-object p13, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    .line 163
    filled-new-array {p8, p9, p10, p11}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p4, p5, p6, p7, p1}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of payment_intent_payload, cancel_payload, setup_intent_payload, display_payload, refund_payment_payload, collect_inputs_payload, confirm_payment_intent_payload, collect_payment_method_payload may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 15

    move/from16 v0, p15

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

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move-object v7, v6

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move-object v8, v6

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move-object v9, v6

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v6

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    move-object v11, v6

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    move-object v12, v6

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    move-object v13, v6

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    goto :goto_b

    :cond_b
    move-object/from16 v2, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v6, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 160
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p15, v0

    goto :goto_d

    :cond_d
    move-object/from16 p15, p14

    :goto_d
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p13, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p14, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    .line 34
    invoke-direct/range {p1 .. p15}, Lcom/stripe/proto/event_channel/pub/message/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/event_channel/pub/message/Command;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/Command;
    .locals 14

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    .line 251
    iget-object v4, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    goto :goto_3

    :cond_3
    move-object/from16 v4, p4

    :goto_3
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_4

    .line 252
    iget-object v5, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    goto :goto_4

    :cond_4
    move-object/from16 v5, p5

    :goto_4
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    .line 253
    iget-object v6, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    goto :goto_5

    :cond_5
    move-object/from16 v6, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    .line 254
    iget-object v7, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    goto :goto_6

    :cond_6
    move-object/from16 v7, p7

    :goto_6
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    .line 255
    iget-object v8, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    goto :goto_7

    :cond_7
    move-object/from16 v8, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    .line 256
    iget-object v9, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    .line 257
    iget-object v10, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    .line 258
    iget-object v11, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    goto :goto_a

    :cond_a
    move-object/from16 v11, p11

    :goto_a
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    .line 259
    iget-object v12, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v12, p12

    :goto_b
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_c

    .line 260
    iget-object v13, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    goto :goto_c

    :cond_c
    move-object/from16 v13, p13

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    .line 261
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Command;->unknownFields()Lokio/ByteString;

    move-result-object v0

    move-object/from16 p15, v0

    goto :goto_d

    :cond_d
    move-object/from16 p15, p14

    :goto_d
    move-object p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    .line 247
    invoke-virtual/range {p1 .. p15}, Lcom/stripe/proto/event_channel/pub/message/Command;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/Command;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/Command;
    .locals 16

    const-string v0, "trace_id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_ephemeral_key"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stripe_account"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader_id"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v15, p14

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/Command;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v14, p13

    invoke-direct/range {v1 .. v15}, Lcom/stripe/proto/event_channel/pub/message/Command;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CancelPayload;Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;Ljava/lang/String;Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 189
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/event_channel/pub/message/Command;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 190
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Command;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/Command;

    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/Command;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 193
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 194
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 195
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 196
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 197
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 198
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 199
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 200
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 201
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 202
    :cond_d
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 203
    :cond_e
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 208
    iget v0, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->hashCode:I

    if-nez v0, :cond_9

    .line 210
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Command;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 211
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 212
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 213
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 214
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 215
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/CancelPayload;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 216
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 217
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 218
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 219
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 220
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 221
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 222
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 223
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;->hashCode()I

    move-result v2

    :cond_8
    add-int/2addr v0, v2

    .line 224
    iput v0, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->hashCode:I

    :cond_9
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Command;->newBuilder()Lcom/stripe/proto/event_channel/pub/message/Command$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/event_channel/pub/message/Command$Builder;
    .locals 2

    .line 169
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->trace_id:Ljava/lang/String;

    .line 171
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 172
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->stripe_account:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    .line 174
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    .line 175
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 176
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    .line 177
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    .line 178
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 179
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    .line 180
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    .line 181
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->reader_id:Ljava/lang/String;

    .line 182
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    .line 183
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Command;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/event_channel/pub/message/Command$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 231
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trace_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->trace_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_ephemeral_key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_ephemeral_key:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stripe_account="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->stripe_account:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent_payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/PaymentIntentPayload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancel_payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->cancel_payload:Lcom/stripe/proto/event_channel/pub/message/CancelPayload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setup_intent_payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->setup_intent_payload:Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "display_payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->display_payload:Lcom/stripe/proto/event_channel/pub/message/DisplayPayload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_3
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refund_payment_payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->refund_payment_payload:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 239
    :cond_4
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "collect_inputs_payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_inputs_payload:Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_5
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "confirm_payment_intent_payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->confirm_payment_intent_payload:Lcom/stripe/proto/event_channel/pub/message/ConfirmPaymentIntentPayload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_6
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "collect_payment_method_payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->collect_payment_method_payload:Lcom/stripe/proto/event_channel/pub/message/CollectPaymentMethodPayload;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reader_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->reader_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/Command;->metadata:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_8
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "Command{"

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
