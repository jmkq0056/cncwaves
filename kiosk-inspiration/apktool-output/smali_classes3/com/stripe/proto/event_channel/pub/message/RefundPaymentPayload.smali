.class public final Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;
.super Lcom/squareup/wire/Message;
.source "RefundPaymentPayload.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;,
        Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Companion;,
        Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;",
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u001e\u001f B{\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0014\u0008\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0013J\u0081\u0001\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0014\u0008\u0002\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0002H\u0016J\u0008\u0010\u001d\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u001c\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;",
        "charge",
        "",
        "payment_intent",
        "amount",
        "",
        "currency",
        "reason",
        "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;",
        "refund_application_fee",
        "",
        "reverse_transfer",
        "metadata",
        "",
        "enable_customer_cancellation",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;)V",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
        "Reason",
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
            "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final amount:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final charge:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final currency:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
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

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final payment_intent:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        jsonName = "paymentIntent"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.event_channel.pub.message.RefundPaymentPayload$Reason#ADAPTER"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final refund_application_fee:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "refundApplicationFee"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final reverse_transfer:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        jsonName = "reverseTransfer"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->Companion:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Companion;

    .line 278
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 277
    const-class v1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 281
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 277
    new-instance v3, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x3ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "charge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    sget-object v1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p11}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->charge:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->payment_intent:Ljava/lang/String;

    .line 51
    iput-wide p3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->amount:J

    .line 59
    iput-object p5, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->currency:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    .line 75
    iput-object p7, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->refund_application_fee:Ljava/lang/Boolean;

    .line 83
    iput-object p8, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reverse_transfer:Ljava/lang/Boolean;

    .line 92
    iput-object p10, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 109
    invoke-static {v0, p9}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->metadata:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x1

    .line 33
    const-string v0, ""

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    const-wide/16 p3, 0x0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 74
    sget-object p6, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;->REASON_INVALID:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    const/4 v0, 0x0

    if-eqz p13, :cond_5

    move-object p7, v0

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move-object p8, v0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 91
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p9

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move-object p10, v0

    :cond_8
    and-int/lit16 p12, p12, 0x200

    if-eqz p12, :cond_9

    .line 100
    sget-object p11, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_9
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-wide p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 33
    invoke-direct/range {p1 .. p12}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;
    .locals 0

    and-int/lit8 p13, p12, 0x1

    if-eqz p13, :cond_0

    .line 175
    iget-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->charge:Ljava/lang/String;

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    .line 176
    iget-object p2, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->payment_intent:Ljava/lang/String;

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    .line 177
    iget-wide p3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->amount:J

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    .line 178
    iget-object p5, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->currency:Ljava/lang/String;

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    .line 179
    iget-object p6, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    .line 180
    iget-object p7, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->refund_application_fee:Ljava/lang/Boolean;

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    .line 181
    iget-object p8, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reverse_transfer:Ljava/lang/Boolean;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    .line 182
    iget-object p9, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->metadata:Ljava/util/Map;

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    .line 183
    iget-object p10, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    :cond_8
    and-int/lit16 p12, p12, 0x200

    if-eqz p12, :cond_9

    .line 184
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->unknownFields()Lokio/ByteString;

    move-result-object p11

    :cond_9
    move-object p12, p10

    move-object p13, p11

    move-object p10, p8

    move-object p11, p9

    move-object p8, p6

    move-object p9, p7

    move-object p7, p5

    move-wide p5, p3

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 174
    invoke-virtual/range {p2 .. p13}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;)Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;"
        }
    .end annotation

    const-string v0, "charge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payment_intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadata"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 128
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;

    invoke-virtual {p1}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->charge:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->charge:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->payment_intent:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->payment_intent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 132
    :cond_4
    iget-wide v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->amount:J

    iget-wide v5, p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    .line 133
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    if-eq v1, v3, :cond_7

    return v2

    .line 135
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->refund_application_fee:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->refund_application_fee:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 136
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reverse_transfer:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reverse_transfer:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 137
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 138
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 143
    iget v0, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->hashCode:I

    if-nez v0, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->charge:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 147
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->payment_intent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 148
    iget-wide v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 149
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 150
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    invoke-virtual {v1}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 151
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->refund_application_fee:Ljava/lang/Boolean;

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

    .line 152
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reverse_transfer:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 153
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 154
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    .line 155
    iput v0, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->hashCode:I

    :cond_3
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->newBuilder()Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;
    .locals 3

    .line 112
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->charge:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->charge:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->payment_intent:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->payment_intent:Ljava/lang/String;

    .line 115
    iget-wide v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->amount:J

    iput-wide v1, v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->amount:J

    .line 116
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->currency:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->currency:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    .line 118
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->refund_application_fee:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->refund_application_fee:Ljava/lang/Boolean;

    .line 119
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reverse_transfer:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->reverse_transfer:Ljava/lang/Boolean;

    .line 120
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->metadata:Ljava/util/Map;

    .line 121
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 122
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 162
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "charge="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->charge:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payment_intent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->payment_intent:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "amount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->amount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currency="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->currency:Ljava/lang/String;

    invoke-static {v3}, Lcom/squareup/wire/internal/Internal;->sanitize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reason:Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload$Reason;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->refund_application_fee:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refund_application_fee="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->refund_application_fee:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reverse_transfer:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reverse_transfer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->reverse_transfer:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->metadata:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_customer_cancellation="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/RefundPaymentPayload;->enable_customer_cancellation:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_3
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "RefundPaymentPayload{"

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
