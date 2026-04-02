.class public final Lcom/stripe/proto/model/rest/PaymentMethod;
.super Lcom/squareup/wire/Message;
.source "PaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/PaymentMethod$Builder;,
        Lcom/stripe/proto/model/rest/PaymentMethod$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "Lcom/stripe/proto/model/rest/PaymentMethod$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 %2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002$%B\u009d\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0002\u0010\u0018J\u00a3\u0001\u0010\u001b\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0017\u00a2\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\t2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0096\u0002J\u0008\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u0002H\u0016J\u0008\u0010#\u001a\u00020\u0004H\u0016R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0019R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001aR\u001c\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentMethod;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/PaymentMethod$Builder;",
        "id",
        "",
        "created",
        "",
        "customer",
        "livemode",
        "",
        "metadata",
        "",
        "type",
        "card",
        "Lcom/stripe/proto/model/rest/CardPaymentMethod;",
        "card_present",
        "Lcom/stripe/proto/model/rest/CardPresent;",
        "interac_present",
        "wechat_pay",
        "Lcom/stripe/proto/model/rest/WechatPay;",
        "affirm",
        "Lcom/stripe/proto/model/rest/Affirm;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V",
        "Ljava/lang/Long;",
        "Ljava/lang/Boolean;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentMethod;",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "Builder",
        "Companion",
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
            "Lcom/stripe/proto/model/rest/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/PaymentMethod$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final affirm:Lcom/stripe/proto/model/rest/Affirm;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Affirm#ADAPTER"
        oneofName = "details_object"
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final card:Lcom/stripe/proto/model/rest/CardPaymentMethod;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.CardPaymentMethod#ADAPTER"
        oneofName = "details_object"
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final card_present:Lcom/stripe/proto/model/rest/CardPresent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.CardPresent#ADAPTER"
        jsonName = "cardPresent"
        oneofName = "details_object"
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final created:Ljava/lang/Long;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64_VALUE"
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final customer:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final id:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final interac_present:Lcom/stripe/proto/model/rest/CardPresent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.CardPresent#ADAPTER"
        jsonName = "interacPresent"
        oneofName = "details_object"
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final livemode:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL_VALUE"
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final metadata:Ljava/util/Map;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING"
        keyAdapter = "com.squareup.wire.ProtoAdapter#STRING"
        schemaIndex = 0x4
        tag = 0x5
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

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.WechatPay#ADAPTER"
        jsonName = "wechatPay"
        oneofName = "details_object"
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/PaymentMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/PaymentMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/PaymentMethod;->Companion:Lcom/stripe/proto/model/rest/PaymentMethod$Companion;

    .line 401
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 400
    const-class v1, Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 404
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 400
    new-instance v3, Lcom/stripe/proto/model/rest/PaymentMethod$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/PaymentMethod$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    const/16 v13, 0xfff

    const/4 v14, 0x0

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

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/stripe/proto/model/rest/PaymentMethod;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/CardPaymentMethod;",
            "Lcom/stripe/proto/model/rest/CardPresent;",
            "Lcom/stripe/proto/model/rest/CardPresent;",
            "Lcom/stripe/proto/model/rest/WechatPay;",
            "Lcom/stripe/proto/model/rest/Affirm;",
            "Lokio/ByteString;",
            ")V"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "unknownFields"

    invoke-static {p12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    sget-object v1, Lcom/stripe/proto/model/rest/PaymentMethod;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, p12}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->id:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->created:Ljava/lang/Long;

    .line 54
    iput-object p3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->customer:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->livemode:Ljava/lang/Boolean;

    .line 75
    iput-object p6, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->type:Ljava/lang/String;

    .line 82
    iput-object p7, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    .line 93
    iput-object p8, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 105
    iput-object p9, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 117
    iput-object p10, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 129
    iput-object p11, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    .line 149
    invoke-static {v0, p5}, Lcom/squareup/wire/internal/Internal;->immutableCopyOf(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->metadata:Ljava/util/Map;

    .line 152
    filled-new-array {p11}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p7, p8, p9, p10, p1}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of card, card_present, interac_present, wechat_pay, affirm may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x1

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    .line 71
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p5

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    move-object p10, v0

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    move-object p11, v0

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    .line 137
    sget-object p12, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_b
    move-object p13, p12

    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 30
    invoke-direct/range {p1 .. p13}, Lcom/stripe/proto/model/rest/PaymentMethod;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/PaymentMethod;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/PaymentMethod;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    .line 229
    iget-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    .line 230
    iget-object p2, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->created:Ljava/lang/Long;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    .line 231
    iget-object p3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->customer:Ljava/lang/String;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    .line 232
    iget-object p4, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->livemode:Ljava/lang/Boolean;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    .line 233
    iget-object p5, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->metadata:Ljava/util/Map;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    .line 234
    iget-object p6, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->type:Ljava/lang/String;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    .line 235
    iget-object p7, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    .line 236
    iget-object p8, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    .line 237
    iget-object p9, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    .line 238
    iget-object p10, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    .line 239
    iget-object p11, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    .line 240
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object p12

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    .line 228
    invoke-virtual/range {p2 .. p14}, Lcom/stripe/proto/model/rest/PaymentMethod;->copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentMethod;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentMethod;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/rest/CardPaymentMethod;",
            "Lcom/stripe/proto/model/rest/CardPresent;",
            "Lcom/stripe/proto/model/rest/CardPresent;",
            "Lcom/stripe/proto/model/rest/WechatPay;",
            "Lcom/stripe/proto/model/rest/Affirm;",
            "Lokio/ByteString;",
            ")",
            "Lcom/stripe/proto/model/rest/PaymentMethod;"
        }
    .end annotation

    const-string v0, "metadata"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unknownFields"

    move-object/from16 v13, p12

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/stripe/proto/model/rest/PaymentMethod;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v13}, Lcom/stripe/proto/model/rest/PaymentMethod;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPaymentMethod;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 176
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/PaymentMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 177
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/PaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 179
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->created:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->created:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 180
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 181
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->livemode:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->livemode:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 182
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 183
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 184
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 185
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 186
    :cond_a
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 187
    :cond_b
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 188
    :cond_c
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentMethod;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 193
    iget v0, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->hashCode:I

    if-nez v0, :cond_a

    .line 195
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 196
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->id:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 197
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->created:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 198
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->customer:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 199
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 200
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->metadata:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 201
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->type:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 202
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/CardPaymentMethod;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 203
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/CardPresent;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/CardPresent;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 205
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/WechatPay;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Affirm;->hashCode()I

    move-result v2

    :cond_9
    add-int/2addr v0, v2

    .line 207
    iput v0, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->hashCode:I

    :cond_a
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethod;->newBuilder()Lcom/stripe/proto/model/rest/PaymentMethod$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/PaymentMethod$Builder;
    .locals 2

    .line 158
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->id:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->created:Ljava/lang/Long;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->created:Ljava/lang/Long;

    .line 161
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->customer:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->customer:Ljava/lang/String;

    .line 162
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->livemode:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->livemode:Ljava/lang/Boolean;

    .line 163
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->metadata:Ljava/util/Map;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->metadata:Ljava/util/Map;

    .line 164
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->type:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    .line 166
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 167
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 168
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 169
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    .line 170
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethod;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/PaymentMethod$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 214
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->id:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->created:Ljava/lang/Long;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "created="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->created:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->customer:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "customer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->customer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "livemode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->livemode:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->metadata:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "metadata="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->metadata:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->type:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card:Lcom/stripe/proto/model/rest/CardPaymentMethod;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_present="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interac_present="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_8
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wechat_pay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_9
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "affirm="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethod;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_a
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "PaymentMethod{"

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
