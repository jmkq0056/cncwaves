.class public final Lcom/stripe/stripeterminal/external/models/CardOptions;
.super Ljava/lang/Object;
.source "CardOptions.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/CardOptions$$serializer;,
        Lcom/stripe/stripeterminal/external/models/CardOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 !2\u00060\u0001j\u0002`\u0002:\u0002 !B%\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tB\u000f\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\nJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0015\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0004H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J&\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u00c1\u0001\u00a2\u0006\u0002\u0008\u001fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/CardOptions;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "request3dSecure",
        "Lcom/stripe/stripeterminal/external/models/Request3dSecureType;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILcom/stripe/stripeterminal/external/models/Request3dSecureType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Lcom/stripe/stripeterminal/external/models/Request3dSecureType;)V",
        "getRequest3dSecure$annotations",
        "()V",
        "getRequest3dSecure",
        "()Lcom/stripe/stripeterminal/external/models/Request3dSecureType;",
        "component1",
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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/CardOptions$Companion;


# instance fields
.field private final request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/CardOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardOptions;->Companion:Lcom/stripe/stripeterminal/external/models/CardOptions$Companion;

    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/Request3dSecureType;->Companion:Lcom/stripe/stripeterminal/external/models/Request3dSecureType$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Request3dSecureType$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/CardOptions;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/stripe/stripeterminal/external/models/Request3dSecureType;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .param p2    # Lcom/stripe/stripeterminal/external/models/Request3dSecureType;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "requestThreeDSecure"
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

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    .line 9
    sget-object p3, Lcom/stripe/stripeterminal/external/models/CardOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/CardOptions$$serializer;

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/CardOptions$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p3

    invoke-static {p1, v0, p3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/CardOptions;->request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/Request3dSecureType;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardOptions;->request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 9
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardOptions;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/CardOptions;Lcom/stripe/stripeterminal/external/models/Request3dSecureType;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/CardOptions;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/CardOptions;->request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/CardOptions;->copy(Lcom/stripe/stripeterminal/external/models/Request3dSecureType;)Lcom/stripe/stripeterminal/external/models/CardOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getRequest3dSecure$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "requestThreeDSecure"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/CardOptions;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 9
    sget-object v0, Lcom/stripe/stripeterminal/external/models/CardOptions;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/CardOptions;->request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/Request3dSecureType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardOptions;->request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/Request3dSecureType;)Lcom/stripe/stripeterminal/external/models/CardOptions;
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/external/models/CardOptions;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/models/CardOptions;-><init>(Lcom/stripe/stripeterminal/external/models/Request3dSecureType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/CardOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/CardOptions;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardOptions;->request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/CardOptions;->request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRequest3dSecure()Lcom/stripe/stripeterminal/external/models/Request3dSecureType;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardOptions;->request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/CardOptions;->request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Request3dSecureType;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CardOptions(request3dSecure="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/CardOptions;->request3dSecure:Lcom/stripe/stripeterminal/external/models/Request3dSecureType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
