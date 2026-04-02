.class public final Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;
.super Ljava/lang/Object;
.source "ExpandableLocation.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/models/ExpandableLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/ExpandableLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Expanded"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded$$serializer;,
        Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 !2\u00020\u0001:\u0002 !B-\u0008\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u0013\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001J&\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u00c1\u0001\u00a2\u0006\u0002\u0008\u001fR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;",
        "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;",
        "seen1",
        "",
        "location",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "id",
        "",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/stripe/stripeterminal/external/models/Location;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/stripe/stripeterminal/external/models/Location;)V",
        "getId",
        "()Ljava/lang/String;",
        "getLocation",
        "()Lcom/stripe/stripeterminal/external/models/Location;",
        "component1",
        "copy",
        "equals",
        "",
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
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded$Companion;


# instance fields
.field private final id:Ljava/lang/String;

.field private final location:Lcom/stripe/stripeterminal/external/models/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->Companion:Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/stripeterminal/external/models/Location;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 p4, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p4, :cond_0

    .line 28
    sget-object p4, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded$$serializer;

    invoke-virtual {p4}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 30
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/Location;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    .line 28
    :cond_1
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->id:Ljava/lang/String;

    return-void

    :cond_2
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/Location;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    .line 30
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Location;->getId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->id:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;Lcom/stripe/stripeterminal/external/models/Location;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->copy(Lcom/stripe/stripeterminal/external/models/Location;)Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 28
    sget-object v0, Lcom/stripe/stripeterminal/external/models/Location$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/Location$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    .line 30
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Location;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/Location;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/Location;)Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;-><init>(Lcom/stripe/stripeterminal/external/models/Location;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Lcom/stripe/stripeterminal/external/models/Location;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Location;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expanded(location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->location:Lcom/stripe/stripeterminal/external/models/Location;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
