.class public final Lcom/stripe/stripeterminal/external/models/ChargesList;
.super Ljava/lang/Object;
.source "PaymentIntent.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/ChargesList$$serializer;,
        Lcom/stripe/stripeterminal/external/models/ChargesList$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentIntent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentIntent.kt\ncom/stripe/stripeterminal/external/models/ChargesList\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,297:1\n26#2:298\n*S KotlinDebug\n*F\n+ 1 PaymentIntent.kt\ncom/stripe/stripeterminal/external/models/ChargesList\n*L\n283#1:298\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0081\u0008\u0018\u0000 #2\u00060\u0001j\u0002`\u0002:\u0002\"#B)\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\u0015\u0012\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u000bJ\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00c0\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\rJ\u001e\u0010\u0011\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0004H\u0016J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J&\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u00c1\u0001\u00a2\u0006\u0002\u0008!R\u001c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0080\u0004\u00a2\u0006\n\n\u0002\u0010\u000e\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ChargesList;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "data",
        "",
        "Lcom/stripe/stripeterminal/external/models/Charge;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(I[Lcom/stripe/stripeterminal/external/models/Charge;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "([Lcom/stripe/stripeterminal/external/models/Charge;)V",
        "getData$public_release",
        "()[Lcom/stripe/stripeterminal/external/models/Charge;",
        "[Lcom/stripe/stripeterminal/external/models/Charge;",
        "component1",
        "component1$public_release",
        "copy",
        "([Lcom/stripe/stripeterminal/external/models/Charge;)Lcom/stripe/stripeterminal/external/models/ChargesList;",
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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/ChargesList$Companion;


# instance fields
.field private final data:[Lcom/stripe/stripeterminal/external/models/Charge;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/stripeterminal/external/models/ChargesList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/ChargesList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ChargesList;->Companion:Lcom/stripe/stripeterminal/external/models/ChargesList$Companion;

    const/4 v0, 0x1

    .line 282
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    new-instance v1, Lkotlinx/serialization/internal/ReferenceArraySerializer;

    const-class v2, Lcom/stripe/stripeterminal/external/models/Charge;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/Charge$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v2, v3}, Lkotlinx/serialization/internal/ReferenceArraySerializer;-><init>(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ChargesList;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/stripe/stripeterminal/external/models/ChargesList;-><init>([Lcom/stripe/stripeterminal/external/models/Charge;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(I[Lcom/stripe/stripeterminal/external/models/Charge;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 298
    new-array p1, p1, [Lcom/stripe/stripeterminal/external/models/Charge;

    .line 282
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    return-void

    :cond_0
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    return-void
.end method

.method public constructor <init>([Lcom/stripe/stripeterminal/external/models/Charge;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    return-void
.end method

.method public synthetic constructor <init>([Lcom/stripe/stripeterminal/external/models/Charge;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 298
    new-array p1, p1, [Lcom/stripe/stripeterminal/external/models/Charge;

    .line 283
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/external/models/ChargesList;-><init>([Lcom/stripe/stripeterminal/external/models/Charge;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 282
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ChargesList;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/ChargesList;[Lcom/stripe/stripeterminal/external/models/Charge;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/ChargesList;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/ChargesList;->copy([Lcom/stripe/stripeterminal/external/models/Charge;)Lcom/stripe/stripeterminal/external/models/ChargesList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/ChargesList;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 282
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ChargesList;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    .line 298
    new-array v3, v1, [Lcom/stripe/stripeterminal/external/models/Charge;

    .line 283
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 282
    :goto_0
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1$public_release()[Lcom/stripe/stripeterminal/external/models/Charge;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    return-object v0
.end method

.method public final copy([Lcom/stripe/stripeterminal/external/models/Charge;)Lcom/stripe/stripeterminal/external/models/ChargesList;
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/ChargesList;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/models/ChargesList;-><init>([Lcom/stripe/stripeterminal/external/models/Charge;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 286
    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/ChargesList;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    check-cast p1, Lcom/stripe/stripeterminal/external/models/ChargesList;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getData$public_release()[Lcom/stripe/stripeterminal/external/models/Charge;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChargesList(data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ChargesList;->data:[Lcom/stripe/stripeterminal/external/models/Charge;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
