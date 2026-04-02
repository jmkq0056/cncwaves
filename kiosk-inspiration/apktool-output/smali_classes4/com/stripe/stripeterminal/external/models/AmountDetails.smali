.class public final Lcom/stripe/stripeterminal/external/models/AmountDetails;
.super Ljava/lang/Object;
.source "AmountDetails.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;,
        Lcom/stripe/stripeterminal/external/models/AmountDetails$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 $2\u00060\u0001j\u0002`\u0002:\u0002#$B-\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB\u001d\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J!\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J&\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u00c1\u0001\u00a2\u0006\u0002\u0008\"R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/AmountDetails;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "tip",
        "Lcom/stripe/stripeterminal/external/models/Tip;",
        "surcharge",
        "Lcom/stripe/stripeterminal/external/models/SurchargeDetails;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;)V",
        "getSurcharge",
        "()Lcom/stripe/stripeterminal/external/models/SurchargeDetails;",
        "getTip",
        "()Lcom/stripe/stripeterminal/external/models/Tip;",
        "component1",
        "component2",
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
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/AmountDetails$Companion;


# instance fields
.field private final surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

.field private final tip:Lcom/stripe/stripeterminal/external/models/Tip;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/AmountDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/AmountDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->Companion:Lcom/stripe/stripeterminal/external/models/AmountDetails$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/stripe/stripeterminal/external/models/AmountDetails;-><init>(Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    return-void

    :cond_1
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    .line 22
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 13
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/AmountDetails;-><init>(Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/AmountDetails;Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/AmountDetails;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/AmountDetails;->copy(Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;)Lcom/stripe/stripeterminal/external/models/AmountDetails;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/AmountDetails;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 12
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lcom/stripe/stripeterminal/external/models/Tip$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/Tip$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lcom/stripe/stripeterminal/external/models/SurchargeDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SurchargeDetails$$serializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/Tip;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/SurchargeDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;)Lcom/stripe/stripeterminal/external/models/AmountDetails;
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/AmountDetails;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/external/models/AmountDetails;-><init>(Lcom/stripe/stripeterminal/external/models/Tip;Lcom/stripe/stripeterminal/external/models/SurchargeDetails;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/AmountDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/AmountDetails;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getSurcharge()Lcom/stripe/stripeterminal/external/models/SurchargeDetails;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    return-object v0
.end method

.method public final getTip()Lcom/stripe/stripeterminal/external/models/Tip;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Tip;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SurchargeDetails;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AmountDetails(tip="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->tip:Lcom/stripe/stripeterminal/external/models/Tip;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surcharge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/AmountDetails;->surcharge:Lcom/stripe/stripeterminal/external/models/SurchargeDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
