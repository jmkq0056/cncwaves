.class public final Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;
.super Ljava/lang/Object;
.source "PaymentMethodDetails.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$$serializer;,
        Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 62\u00060\u0001j\u0002`\u0002:\u000256BS\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010BC\u0008\u0000\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u0011J\u000b\u0010 \u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\rH\u00c6\u0003JE\u0010%\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001J\u0013\u0010&\u001a\u00020\'2\u0008\u0010(\u001a\u0004\u0018\u00010)H\u00d6\u0003J\t\u0010*\u001a\u00020\u0004H\u00d6\u0001J\t\u0010+\u001a\u00020,H\u00d6\u0001J&\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u00002\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u00c1\u0001\u00a2\u0006\u0002\u00084R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0019\u0010\u0013\u001a\u0004\u0008\u001a\u0010\u0018R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u0013\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u00067"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "type",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "cardPresentDetails",
        "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;",
        "interacPresentDetails",
        "wechatPayDetails",
        "Lcom/stripe/stripeterminal/external/models/WechatPayDetails;",
        "affirmDetails",
        "Lcom/stripe/stripeterminal/external/models/AffirmDetails;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)V",
        "getAffirmDetails$annotations",
        "()V",
        "getAffirmDetails",
        "()Lcom/stripe/stripeterminal/external/models/AffirmDetails;",
        "getCardPresentDetails$annotations",
        "getCardPresentDetails",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;",
        "getInteracPresentDetails$annotations",
        "getInteracPresentDetails",
        "getType",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "getWechatPayDetails$annotations",
        "getWechatPayDetails",
        "()Lcom/stripe/stripeterminal/external/models/WechatPayDetails;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$public_release",
        "$serializer",
        "Companion",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$Companion;


# instance fields
.field private final affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

.field private final cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

.field private final interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

.field private final type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

.field private final wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->Companion:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$Companion;

    const/4 v0, 0x5

    .line 15
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->Companion:Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p3    # Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "cardPresent"
        .end annotation
    .end param
    .param p4    # Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "interacPresent"
        .end annotation
    .end param
    .param p5    # Lcom/stripe/stripeterminal/external/models/WechatPayDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "wechatPay"
        .end annotation
    .end param
    .param p6    # Lcom/stripe/stripeterminal/external/models/AffirmDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "affirm"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p7, p1, 0x1

    const/4 v0, 0x0

    if-nez p7, :cond_0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    :goto_3
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    return-void

    :cond_4
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 24
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    .line 31
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    .line 38
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    .line 45
    iput-object p5, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p6, v0

    goto :goto_0

    :cond_4
    move-object p6, p5

    :goto_0
    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 16
    invoke-direct/range {p1 .. p6}, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 15
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->copy(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getAffirmDetails$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "affirm"
    .end annotation

    return-void
.end method

.method public static synthetic getCardPresentDetails$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "cardPresent"
    .end annotation

    return-void
.end method

.method public static synthetic getInteracPresentDetails$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "interacPresent"
    .end annotation

    return-void
.end method

.method public static synthetic getWechatPayDetails$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "wechatPay"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 15
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eqz v2, :cond_1

    :goto_0
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardPresentDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardPresentDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lcom/stripe/stripeterminal/external/models/WechatPayDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/WechatPayDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    if-eqz v1, :cond_9

    :goto_4
    sget-object v1, Lcom/stripe/stripeterminal/external/models/AffirmDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/AffirmDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    return-object v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    return-object v0
.end method

.method public final component4()Lcom/stripe/stripeterminal/external/models/WechatPayDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    return-object v0
.end method

.method public final component5()Lcom/stripe/stripeterminal/external/models/AffirmDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;
    .locals 6

    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAffirmDetails()Lcom/stripe/stripeterminal/external/models/AffirmDetails;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    return-object v0
.end method

.method public final getCardPresentDetails()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    return-object v0
.end method

.method public final getInteracPresentDetails()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    return-object v0
.end method

.method public final getType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public final getWechatPayDetails()Lcom/stripe/stripeterminal/external/models/WechatPayDetails;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/WechatPayDetails;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/AffirmDetails;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentMethodDetails(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardPresentDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interacPresentDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wechatPayDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", affirmDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
