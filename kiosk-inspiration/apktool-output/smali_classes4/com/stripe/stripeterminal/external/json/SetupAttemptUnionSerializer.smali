.class public final Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;
.super Ljava/lang/Object;
.source "SetupAttemptUnionSerializer.kt"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;

    .line 21
    sget-object v0, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    move-object v2, v0

    check-cast v2, Lkotlinx/serialization/descriptors/SerialKind;

    const/4 v0, 0x0

    new-array v3, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "SetupAttemptUnion"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor$default(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;
    .locals 3

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p1, Lkotlinx/serialization/json/JsonDecoder;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 38
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->decodeJsonElement()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    .line 39
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object p1

    .line 42
    instance-of v1, v0, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonPrimitive;->isString()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Reference;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Reference;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    return-object p1

    .line 43
    :cond_1
    instance-of v1, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Expanded;

    .line 45
    sget-object v2, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->Companion:Lcom/stripe/stripeterminal/external/models/SetupAttempt$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/SetupAttempt$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    .line 44
    invoke-virtual {p1, v2, v0}, Lkotlinx/serialization/json/Json;->decodeFromJsonElement(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;

    .line 43
    invoke-direct {v1, p1}, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Expanded;-><init>(Lcom/stripe/stripeterminal/external/models/SetupAttempt;)V

    check-cast v1, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    return-object v1

    .line 50
    :cond_2
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "Unknown SetupAttemptUnion format"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_3
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "This serializer can be used only with Json format"

    invoke-direct {p1, v0}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 21
    sget-object v0, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;)V
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

    .line 26
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonEncoder;->getJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    .line 28
    instance-of v1, p2, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Reference;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/serialization/json/JsonElementKt;->JsonPrimitive(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p2

    check-cast p2, Lkotlinx/serialization/json/JsonElement;

    invoke-interface {p1, p2}, Lkotlinx/serialization/json/JsonEncoder;->encodeJsonElement(Lkotlinx/serialization/json/JsonElement;)V

    return-void

    .line 29
    :cond_1
    instance-of v1, p2, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Expanded;

    if-eqz v1, :cond_2

    .line 30
    sget-object v1, Lcom/stripe/stripeterminal/external/models/SetupAttempt;->Companion:Lcom/stripe/stripeterminal/external/models/SetupAttempt$Companion;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupAttempt$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    check-cast p2, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Expanded;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion$Expanded;->getSetupAttempt()Lcom/stripe/stripeterminal/external/models/SetupAttempt;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lkotlinx/serialization/json/Json;->encodeToJsonElement(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p2

    .line 29
    invoke-interface {p1, p2}, Lkotlinx/serialization/json/JsonEncoder;->encodeJsonElement(Lkotlinx/serialization/json/JsonElement;)V

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
    check-cast p2, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;)V

    return-void
.end method
