.class public final Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;
.super Ljava/lang/Object;
.source "ExpandableLocationSerializer.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/encoding/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/encoding/Encoder;",
        "value",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;

    .line 21
    sget-object v0, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    move-object v2, v0

    check-cast v2, Lkotlinx/serialization/descriptors/SerialKind;

    const/4 v0, 0x0

    new-array v3, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "ExpandableLocation"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor$default(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/stripe/stripeterminal/external/models/ExpandableLocation;
    .locals 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    instance-of v0, p1, Lkotlinx/serialization/json/JsonDecoder;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 41
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 42
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    .line 44
    instance-of v1, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v1, :cond_1

    .line 45
    new-instance v1, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/Location;->Companion:Lcom/stripe/stripeterminal/external/models/Location$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Location$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p1, v2, v0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/Location;

    invoke-direct {v1, p1}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;-><init>(Lcom/stripe/stripeterminal/external/models/Location;)V

    check-cast v1, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;

    return-object v1

    .line 46
    :cond_1
    instance-of p1, v0, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz p1, :cond_2

    move-object p1, v0

    check-cast p1, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Reference;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Reference;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;

    return-object v0

    .line 48
    :cond_2
    new-instance p1, Lkotlinx/serialization/SerializationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected JSON element: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_3
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "This serializer can be used only with Json format"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/stripe/stripeterminal/external/models/ExpandableLocation;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 21
    sget-object v0, Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    instance-of v0, p1, Lkotlinx/serialization/json/JsonEncoder;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonEncoder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 28
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonEncoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/Location;->Companion:Lcom/stripe/stripeterminal/external/models/Location$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Location$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Expanded;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/json/JsonEncoder;->encodeJsonElement(Lkotlinx/serialization/json/JsonElement;)V

    return-void

    .line 32
    :cond_1
    instance-of v0, p2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation$Reference;

    if-eqz v0, :cond_2

    .line 33
    invoke-interface {p2}, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/json/JsonEncoder;->encodeString(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 25
    :cond_3
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string p2, "This serializer can be used only with Json format"

    invoke-direct {p1, p2}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p2, Lcom/stripe/stripeterminal/external/models/ExpandableLocation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/json/ExpandableLocationSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/stripe/stripeterminal/external/models/ExpandableLocation;)V

    return-void
.end method
