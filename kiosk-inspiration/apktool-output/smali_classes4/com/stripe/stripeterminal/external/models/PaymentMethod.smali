.class public final Lcom/stripe/stripeterminal/external/models/PaymentMethod;
.super Ljava/lang/Object;
.source "PaymentMethod.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/PaymentMethod$$serializer;,
        Lcom/stripe/stripeterminal/external/models/PaymentMethod$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008*\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 Q2\u00060\u0001j\u0002`\u0002:\u0002PQB\u0099\u0001\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0001\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0002\u0010\u001bB\u008f\u0001\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010\u001cJ\t\u00107\u001a\u00020\u0006H\u00c6\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\t\u0010<\u001a\u00020\u000cH\u00c6\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010>\u001a\u00020\u000fH\u00c6\u0003J\u0017\u0010?\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u0093\u0001\u0010B\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00112\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00c6\u0001J\u0013\u0010C\u001a\u00020\u000f2\u0008\u0010D\u001a\u0004\u0018\u00010EH\u00d6\u0003J\t\u0010F\u001a\u00020\u0004H\u00d6\u0001J\t\u0010G\u001a\u00020\u0006H\u00d6\u0001J&\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020\u00002\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020NH\u00c1\u0001\u00a2\u0006\u0002\u0008OR\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008!\u0010\u001e\u001a\u0004\u0008\"\u0010#R\u001e\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008$\u0010\u001e\u001a\u0004\u0008%\u0010&R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010*R\u001e\u0010\u0014\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008,\u0010\u001e\u001a\u0004\u0008-\u0010&R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u001f\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u00101R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00084\u0010\u001e\u001a\u0004\u00085\u00106\u00a8\u0006R"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "id",
        "",
        "cardDetails",
        "Lcom/stripe/stripeterminal/external/models/CardDetails;",
        "cardPresentDetails",
        "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;",
        "created",
        "",
        "customer",
        "livemode",
        "",
        "metadata",
        "",
        "type",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "interacPresentDetails",
        "wechatPayDetails",
        "Lcom/stripe/stripeterminal/external/models/WechatPayDetails;",
        "affirmDetails",
        "Lcom/stripe/stripeterminal/external/models/AffirmDetails;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)V",
        "getAffirmDetails$annotations",
        "()V",
        "getAffirmDetails",
        "()Lcom/stripe/stripeterminal/external/models/AffirmDetails;",
        "getCardDetails$annotations",
        "getCardDetails",
        "()Lcom/stripe/stripeterminal/external/models/CardDetails;",
        "getCardPresentDetails$annotations",
        "getCardPresentDetails",
        "()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;",
        "getCreated",
        "()J",
        "getCustomer",
        "()Ljava/lang/String;",
        "getId",
        "getInteracPresentDetails$annotations",
        "getInteracPresentDetails",
        "getLivemode",
        "()Z",
        "getMetadata",
        "()Ljava/util/Map;",
        "getType",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "getWechatPayDetails$annotations",
        "getWechatPayDetails",
        "()Lcom/stripe/stripeterminal/external/models/WechatPayDetails;",
        "component1",
        "component10",
        "component11",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/PaymentMethod$Companion;


# instance fields
.field private final affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

.field private final cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

.field private final cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

.field private final created:J

.field private final customer:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

.field private final livemode:Z

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

.field private final wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentMethod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->Companion:Lcom/stripe/stripeterminal/external/models/PaymentMethod$Companion;

    const/16 v0, 0xb

    .line 18
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3, v4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v3, 0x6

    aput-object v2, v0, v3

    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->Companion:Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p3    # Lcom/stripe/stripeterminal/external/models/CardDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "card"
        .end annotation
    .end param
    .param p4    # Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "cardPresent"
        .end annotation
    .end param
    .param p11    # Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "interacPresent"
        .end annotation
    .end param
    .param p12    # Lcom/stripe/stripeterminal/external/models/WechatPayDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "wechatPay"
        .end annotation
    .end param
    .param p13    # Lcom/stripe/stripeterminal/external/models/AffirmDetails;
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

    and-int/lit8 p14, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p14, :cond_0

    .line 18
    sget-object p14, Lcom/stripe/stripeterminal/external/models/PaymentMethod$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethod$$serializer;

    invoke-virtual {p14}, Lcom/stripe/stripeterminal/external/models/PaymentMethod$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p14

    invoke-static {p1, v0, p14}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->id:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    const/4 p14, 0x0

    if-nez p2, :cond_1

    iput-object p14, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object p14, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    goto :goto_1

    :cond_2
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    goto :goto_2

    :cond_3
    iput-wide p5, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    :goto_2
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object p14, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    goto :goto_4

    :cond_5
    iput-boolean p8, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    :goto_4
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    .line 58
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    .line 18
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    goto :goto_5

    :cond_6
    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    :goto_5
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object p14, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    goto :goto_6

    :cond_7
    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    :goto_6
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput-object p14, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    goto :goto_7

    :cond_8
    iput-object p11, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    :goto_7
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-object p14, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    goto :goto_8

    :cond_9
    iput-object p12, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    :goto_8
    and-int/lit16 p1, p1, 0x400

    if-nez p1, :cond_a

    iput-object p14, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    return-void

    :cond_a
    iput-object p13, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/CardDetails;",
            "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;",
            "Lcom/stripe/stripeterminal/external/models/WechatPayDetails;",
            "Lcom/stripe/stripeterminal/external/models/AffirmDetails;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->id:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    .line 35
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    .line 41
    iput-wide p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    .line 47
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    .line 53
    iput-boolean p7, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    .line 58
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    .line 60
    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 65
    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    .line 71
    iput-object p11, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    .line 77
    iput-object p12, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x2

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_2

    const-wide/16 p4, 0x0

    :cond_2
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_3

    move-object p6, v0

    :cond_3
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_4

    const/4 p7, 0x0

    :cond_4
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_5

    .line 58
    new-instance p8, Ljava/util/HashMap;

    invoke-direct {p8}, Ljava/util/HashMap;-><init>()V

    check-cast p8, Ljava/util/Map;

    :cond_5
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_6

    move-object p9, v0

    :cond_6
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_7

    move-object p10, v0

    :cond_7
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_8

    move-object p11, v0

    :cond_8
    and-int/lit16 p13, p13, 0x400

    if-eqz p13, :cond_9

    move-object p13, v0

    goto :goto_0

    :cond_9
    move-object p13, p12

    :goto_0
    move-object p12, p11

    move-object p11, p10

    move-object p10, p9

    move-object p9, p8

    move p8, p7

    move-object p7, p6

    move-wide p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 19
    invoke-direct/range {p1 .. p13}, Lcom/stripe/stripeterminal/external/models/PaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 18
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/PaymentMethod;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-wide p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p6, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-boolean p7, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-object p8, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-object p9, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-object p10, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-object p11, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    :cond_9
    and-int/lit16 p13, p13, 0x400

    if-eqz p13, :cond_a

    iget-object p12, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    :cond_a
    move-object p13, p11

    move-object p14, p12

    move-object p11, p9

    move-object p12, p10

    move p9, p7

    move-object p10, p8

    move-object p8, p6

    move-wide p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p14}, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->copy(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;

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

.method public static synthetic getCardDetails$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "card"
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

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 18
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lcom/stripe/stripeterminal/external/models/CardDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardDetails$$serializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    if-eqz v2, :cond_3

    :goto_1
    sget-object v2, Lcom/stripe/stripeterminal/external/models/CardPresentDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardPresentDetails$$serializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    :goto_2
    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_5
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_3
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    if-eqz v2, :cond_9

    :goto_4
    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_9
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    .line 58
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 18
    :goto_5
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eqz v2, :cond_d

    :goto_6
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    const/16 v0, 0x8

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    if-eqz v1, :cond_f

    :goto_7
    sget-object v1, Lcom/stripe/stripeterminal/external/models/CardPresentDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardPresentDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    const/16 v0, 0x9

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    if-eqz v1, :cond_11

    :goto_8
    sget-object v1, Lcom/stripe/stripeterminal/external/models/WechatPayDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/WechatPayDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v0, 0xa

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_9

    :cond_12
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    if-eqz v1, :cond_13

    :goto_9
    sget-object v1, Lcom/stripe/stripeterminal/external/models/AffirmDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/AffirmDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/stripe/stripeterminal/external/models/WechatPayDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    return-object v0
.end method

.method public final component11()Lcom/stripe/stripeterminal/external/models/AffirmDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/CardDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    return-object v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    return v0
.end method

.method public final component7()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final component8()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public final component9()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/CardDetails;",
            "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            "Lcom/stripe/stripeterminal/external/models/CardPresentDetails;",
            "Lcom/stripe/stripeterminal/external/models/WechatPayDetails;",
            "Lcom/stripe/stripeterminal/external/models/AffirmDetails;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethod;"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/stripe/stripeterminal/external/models/PaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/CardDetails;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;JLjava/lang/String;ZLjava/util/Map;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/CardPresentDetails;Lcom/stripe/stripeterminal/external/models/WechatPayDetails;Lcom/stripe/stripeterminal/external/models/AffirmDetails;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getAffirmDetails()Lcom/stripe/stripeterminal/external/models/AffirmDetails;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    return-object v0
.end method

.method public final getCardDetails()Lcom/stripe/stripeterminal/external/models/CardDetails;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    return-object v0
.end method

.method public final getCardPresentDetails()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    return-object v0
.end method

.method public final getCreated()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    return-wide v0
.end method

.method public final getCustomer()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInteracPresentDetails()Lcom/stripe/stripeterminal/external/models/CardPresentDetails;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    return-object v0
.end method

.method public final getLivemode()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    return v0
.end method

.method public final getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public final getWechatPayDetails()Lcom/stripe/stripeterminal/external/models/WechatPayDetails;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/CardDetails;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/CardPresentDetails;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/WechatPayDetails;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/AffirmDetails;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentMethod(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardDetails:Lcom/stripe/stripeterminal/external/models/CardDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardPresentDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", created="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->created:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->customer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", livemode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->livemode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", metadata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interacPresentDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/CardPresentDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wechatPayDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->wechatPayDetails:Lcom/stripe/stripeterminal/external/models/WechatPayDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", affirmDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->affirmDetails:Lcom/stripe/stripeterminal/external/models/AffirmDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
