.class public final Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;
.super Ljava/lang/Object;
.source "SetupIntentPaymentMethodDetails.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails$$serializer;,
        Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 +2\u00060\u0001j\u0002`\u0002:\u0002*+B;\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u000cB+\u0008\u0000\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0006H\u00c0\u0003\u00a2\u0006\u0002\u0008\u0017J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J-\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0004H\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001J&\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u00002\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(H\u00c1\u0001\u00a2\u0006\u0002\u0008)R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00088\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u000f\u001a\u0004\u0008\u0013\u0010\u0011R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006,"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "type",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "cardPresentDetails",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;",
        "interacPresentDetails",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;)V",
        "getCardPresentDetails$annotations",
        "()V",
        "getCardPresentDetails",
        "()Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;",
        "getInteracPresentDetails$annotations",
        "getInteracPresentDetails",
        "getType$public_release",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "component1",
        "component1$public_release",
        "component2",
        "component3",
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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails$Companion;


# instance fields
.field private final cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

.field private final interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

.field private final type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->Companion:Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails$Companion;

    const/4 v0, 0x3

    .line 17
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

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p3    # Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "cardPresent"
        .end annotation
    .end param
    .param p4    # Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "interacPresent"
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x0

    if-nez p5, :cond_0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    :goto_1
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    return-void

    :cond_2
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 26
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    .line 33
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 18
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 17
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->copy(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;)Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    move-result-object p0

    return-object p0
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

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 17
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eqz v2, :cond_1

    :goto_0
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final component1$public_release()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    return-object v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;)Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCardPresentDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    return-object v0
.end method

.method public final getInteracPresentDetails()Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    return-object v0
.end method

.method public final getType$public_release()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetupIntentPaymentMethodDetails(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->type:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardPresentDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->cardPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", interacPresentDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SetupIntentPaymentMethodDetails;->interacPresentDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentCardPresentDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
