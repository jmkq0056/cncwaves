.class public final Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;
.super Ljava/lang/Object;
.source "CardPresentRoutingOptions.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$$serializer;,
        Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 $2\u00060\u0001j\u0002`\u0002:\u0002#$B3\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bB\u001f\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000cJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0011\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J&\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u00c1\u0001\u00a2\u0006\u0002\u0008\"R\u0019\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006%"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "requestedPriority",
        "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
        "computedPriority",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/stripe/stripeterminal/external/models/RoutingPriority;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/stripe/stripeterminal/external/models/RoutingPriority;Ljava/util/List;)V",
        "getComputedPriority",
        "()Ljava/util/List;",
        "getRequestedPriority",
        "()Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$Companion;


# instance fields
.field private final computedPriority:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
            ">;"
        }
    .end annotation
.end field

.field private final requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->Companion:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$Companion;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/RoutingPriority;->Companion:Lcom/stripe/stripeterminal/external/models/RoutingPriority$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/RoutingPriority$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/RoutingPriority;->Companion:Lcom/stripe/stripeterminal/external/models/RoutingPriority$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/RoutingPriority$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-direct {v1, v2}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/stripeterminal/external/models/RoutingPriority;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 8
    sget-object p4, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$$serializer;

    invoke-virtual {p4}, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->computedPriority:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/RoutingPriority;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    .line 11
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->computedPriority:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 8
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Lcom/stripe/stripeterminal/external/models/RoutingPriority;Ljava/util/List;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->computedPriority:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->copy(Lcom/stripe/stripeterminal/external/models/RoutingPriority;Ljava/util/List;)Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 8
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->computedPriority:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/RoutingPriority;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->computedPriority:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/RoutingPriority;Ljava/util/List;)Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;-><init>(Lcom/stripe/stripeterminal/external/models/RoutingPriority;Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->computedPriority:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->computedPriority:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getComputedPriority()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->computedPriority:Ljava/util/List;

    return-object v0
.end method

.method public final getRequestedPriority()Lcom/stripe/stripeterminal/external/models/RoutingPriority;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/RoutingPriority;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->computedPriority:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardPresentRoutingOptions(requestedPriority="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->requestedPriority:Lcom/stripe/stripeterminal/external/models/RoutingPriority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", computedPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardPresentRoutingOptions;->computedPriority:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
