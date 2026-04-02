.class public final Lcom/stripe/proto/model/rest/PaymentMethodDetails;
.super Lcom/squareup/wire/Message;
.source "PaymentMethodDetails.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;,
        Lcom/stripe/proto/model/rest/PaymentMethodDetails$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u0000 \u001b2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bBW\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010JX\u0010\u0011\u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0002H\u0016J\u0008\u0010\u0019\u001a\u00020\u0004H\u0016R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;",
        "type",
        "",
        "card_present",
        "Lcom/stripe/proto/model/rest/CardPresent;",
        "interac_present",
        "card",
        "Lcom/stripe/proto/model/rest/Card;",
        "wechat_pay",
        "Lcom/stripe/proto/model/rest/WechatPay;",
        "affirm",
        "Lcom/stripe/proto/model/rest/Affirm;",
        "unknownFields",
        "Lokio/ByteString;",
        "(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V",
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
            "Lcom/stripe/proto/model/rest/PaymentMethodDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/rest/PaymentMethodDetails$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final affirm:Lcom/stripe/proto/model/rest/Affirm;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Affirm#ADAPTER"
        oneofName = "details_object"
        schemaIndex = 0x5
        tag = 0x7
    .end annotation
.end field

.field public final card:Lcom/stripe/proto/model/rest/Card;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.Card#ADAPTER"
        oneofName = "details_object"
        schemaIndex = 0x3
        tag = 0x5
    .end annotation
.end field

.field public final card_present:Lcom/stripe/proto/model/rest/CardPresent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.CardPresent#ADAPTER"
        jsonName = "cardPresent"
        oneofName = "details_object"
        schemaIndex = 0x1
        tag = 0x3
    .end annotation
.end field

.field public final interac_present:Lcom/stripe/proto/model/rest/CardPresent;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.CardPresent#ADAPTER"
        jsonName = "interacPresent"
        oneofName = "details_object"
        schemaIndex = 0x2
        tag = 0x4
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#STRING_VALUE"
        schemaIndex = 0x0
        tag = 0x2
    .end annotation
.end field

.field public final wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.rest.WechatPay#ADAPTER"
        jsonName = "wechatPay"
        oneofName = "details_object"
        schemaIndex = 0x4
        tag = 0x6
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->Companion:Lcom/stripe/proto/model/rest/PaymentMethodDetails$Companion;

    .line 240
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 239
    const-class v1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 243
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 239
    new-instance v3, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V
    .locals 1

    const-string v0, "unknownFields"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v0, p7}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 34
    iput-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->type:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 50
    iput-object p3, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 59
    iput-object p4, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    .line 67
    iput-object p5, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 76
    iput-object p6, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    .line 87
    filled-new-array {p6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p4, p5, p1}, Lcom/squareup/wire/internal/Internal;->countNonNull(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At most one of card_present, interac_present, card, wechat_pay, affirm may be non-null"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 84
    sget-object p7, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    :cond_6
    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 30
    invoke-direct/range {p1 .. p8}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/PaymentMethodDetails;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    .line 144
    iget-object p1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->type:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    .line 145
    iget-object p2, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    .line 146
    iget-object p3, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    .line 147
    iget-object p4, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    .line 148
    iget-object p5, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    .line 149
    iget-object p6, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    .line 150
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->unknownFields()Lokio/ByteString;

    move-result-object p7

    :cond_6
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    .line 143
    invoke-virtual/range {p2 .. p9}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->copy(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)Lcom/stripe/proto/model/rest/PaymentMethodDetails;
    .locals 9

    const-string v0, "unknownFields"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;-><init>(Ljava/lang/String;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/CardPresent;Lcom/stripe/proto/model/rest/Card;Lcom/stripe/proto/model/rest/WechatPay;Lcom/stripe/proto/model/rest/Affirm;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 106
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    invoke-virtual {p1}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 109
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 111
    :cond_5
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 112
    :cond_6
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    iget-object v3, p1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 113
    :cond_7
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    iget-object p1, p1, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 118
    iget v0, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->hashCode:I

    if-nez v0, :cond_6

    .line 120
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 121
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->type:Ljava/lang/String;

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

    .line 122
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/CardPresent;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 123
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/CardPresent;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 124
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Card;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 125
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/WechatPay;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 126
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/proto/model/rest/Affirm;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    .line 127
    iput v0, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->hashCode:I

    :cond_6
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->newBuilder()Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;
    .locals 2

    .line 93
    new-instance v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->type:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->type:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 96
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    .line 97
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->card:Lcom/stripe/proto/model/rest/Card;

    .line 98
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    .line 99
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    iput-object v1, v0, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    .line 100
    invoke-virtual {p0}, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/rest/PaymentMethodDetails$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 134
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card_present="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card_present:Lcom/stripe/proto/model/rest/CardPresent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interac_present="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->interac_present:Lcom/stripe/proto/model/rest/CardPresent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "card="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->card:Lcom/stripe/proto/model/rest/Card;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wechat_pay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->wechat_pay:Lcom/stripe/proto/model/rest/WechatPay;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_4
    iget-object v1, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "affirm="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/rest/PaymentMethodDetails;->affirm:Lcom/stripe/proto/model/rest/Affirm;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_5
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "PaymentMethodDetails{"

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
