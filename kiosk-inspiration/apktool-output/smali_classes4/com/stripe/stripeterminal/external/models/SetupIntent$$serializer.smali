.class public final Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;
.super Ljava/lang/Object;
.source "SetupIntent.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/SetupIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
    message = "This synthesized declaration should not be used directly"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = ""
        imports = {}
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/stripe/stripeterminal/external/models/SetupIntent.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;

    .line 20
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/internal/GeneratedSerializer;

    const/16 v2, 0x14

    const-string v3, "com.stripe.stripeterminal.external.models.SetupIntent"

    invoke-direct {v1, v3, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "clientSecret"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "customer"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "lastSetupError"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "metadata"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "nextAction"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paymentMethod"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paymentMethodTypes"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "status"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "usage"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "application"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "cancellationReason"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "created"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "latestAttempt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "livemode"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "mandate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "onBehalfOf"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paymentMethodOptions"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "singleUseMandate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 20
    invoke-static {}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x14

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    sget-object v2, Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction$$serializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x8

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/16 v2, 0x9

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const/16 v2, 0xc

    aget-object v0, v0, v2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v1, v2

    const/16 v0, 0xd

    sget-object v2, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v2, v1, v0

    sget-object v0, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0xe

    aput-object v0, v1, v2

    const/16 v0, 0xf

    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    aput-object v2, v1, v0

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x10

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x11

    aput-object v0, v1, v2

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x12

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x13

    aput-object v0, v1, v2

    return-object v1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 44

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x3

    const/4 v15, 0x4

    const/4 v4, 0x2

    const/16 v6, 0xa

    const/16 v14, 0x9

    const/4 v7, 0x5

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/16 v22, 0xc

    const/4 v5, 0x0

    const/4 v10, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v5, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v9, v5, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v9, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v4, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v9, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v13, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v13, Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;

    check-cast v13, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v15, v13, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/stripe/stripeterminal/external/api/ApiError;

    aget-object v15, v2, v7

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v7, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    sget-object v15, Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction$$serializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v12, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v11, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    aget-object v15, v2, v8

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v8, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    aget-object v15, v2, v14

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v14, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    aget-object v15, v2, v6

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v6, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v24, v2

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aget-object v15, v24, v22

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v23, v2

    move/from16 v2, v22

    invoke-interface {v0, v1, v2, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    const/16 v15, 0xd

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v21

    sget-object v15, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v24, v2

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v15, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    const/16 v15, 0xf

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v15

    sget-object v19, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v19, v3

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v18, v2

    const/16 v2, 0x11

    invoke-interface {v0, v1, v2, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v17, v2

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v16, v5

    const/16 v5, 0x13

    invoke-interface {v0, v1, v5, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const v5, 0xfffff

    move-object/from16 v10, v16

    move-object/from16 v16, v8

    move-object/from16 v8, v19

    move-object/from16 v19, v23

    move-object/from16 v23, v20

    move-object/from16 v20, v24

    move/from16 v24, v15

    move-object v15, v11

    move-object v11, v9

    move-object v9, v10

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object v10, v4

    move-object/from16 v26, v17

    move-object/from16 v25, v18

    move-object/from16 v18, v6

    move-object/from16 v17, v14

    move-object v14, v12

    move-object v12, v13

    move-object v13, v7

    move v7, v5

    goto/16 :goto_9

    :cond_0
    move-object/from16 v24, v2

    move v2, v5

    const/16 v5, 0x13

    const-wide/16 v25, 0x0

    move v3, v2

    move/from16 v39, v3

    move/from16 v32, v6

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v42, v9

    move-object v2, v10

    move-object v4, v2

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v33, v15

    move-object/from16 v34, v33

    move-object/from16 v35, v34

    move-object/from16 v36, v35

    move-object/from16 v37, v36

    move-object/from16 v38, v37

    move/from16 v31, v14

    move-wide/from16 v40, v25

    move-object/from16 v14, v38

    :goto_0
    if-eqz v42, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v5}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v43, v2

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2, v5, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    const/high16 v5, 0x80000

    or-int/2addr v3, v5

    move v5, v2

    move-object/from16 v2, v43

    goto :goto_0

    :pswitch_1
    move-object/from16 v43, v2

    const/16 v2, 0x13

    sget-object v5, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v16, v10

    move-object/from16 v2, v37

    const/16 v10, 0x12

    invoke-interface {v0, v1, v10, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v37, v2

    check-cast v37, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    const/high16 v2, 0x40000

    or-int/2addr v3, v2

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v2, v37

    const/16 v10, 0x12

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v17, v2

    move-object/from16 v10, v36

    const/16 v2, 0x11

    invoke-interface {v0, v1, v2, v5, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v36, v5

    check-cast v36, Ljava/lang/String;

    const/high16 v5, 0x20000

    or-int/2addr v3, v5

    move-object/from16 v10, v16

    move-object/from16 v37, v17

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v36

    move-object/from16 v17, v37

    const/16 v2, 0x11

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v18, v10

    move-object/from16 v2, v35

    const/16 v10, 0x10

    invoke-interface {v0, v1, v10, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v35, v2

    check-cast v35, Ljava/lang/String;

    const/high16 v2, 0x10000

    or-int/2addr v3, v2

    move-object/from16 v10, v16

    move-object/from16 v36, v18

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v2, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/16 v5, 0xf

    const/16 v10, 0x10

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v39

    const v19, 0x8000

    or-int v3, v3, v19

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v2, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/16 v5, 0xf

    const/16 v10, 0x10

    sget-object v19, Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionSerializer;

    move-object/from16 v5, v19

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v20, v2

    move-object/from16 v10, v34

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v5, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v34, v5

    check-cast v34, Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;

    or-int/lit16 v3, v3, 0x4000

    move-object/from16 v10, v16

    move-object/from16 v35, v20

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/16 v2, 0xe

    const/16 v5, 0xd

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v40

    or-int/lit16 v3, v3, 0x2000

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/16 v2, 0xc

    const/16 v5, 0xd

    aget-object v22, v24, v2

    move-object/from16 v5, v22

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v22, v10

    move-object/from16 v10, v33

    invoke-interface {v0, v1, v2, v5, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v33, v5

    check-cast v33, Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;

    or-int/lit16 v3, v3, 0x1000

    move-object/from16 v10, v16

    move-object/from16 v34, v22

    goto :goto_2

    :pswitch_8
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/16 v2, 0xc

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v5, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    or-int/lit16 v3, v3, 0x800

    goto :goto_1

    :pswitch_9
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/16 v2, 0xb

    aget-object v5, v24, v32

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v2, v32

    invoke-interface {v0, v1, v2, v5, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;

    or-int/lit16 v3, v3, 0x400

    :goto_1
    move-object/from16 v10, v16

    :goto_2
    move-object/from16 v2, v43

    const/16 v5, 0x13

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move/from16 v2, v32

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    aget-object v5, v24, v31

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v2, v31

    invoke-interface {v0, v1, v2, v5, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    or-int/lit16 v3, v3, 0x200

    move-object/from16 v10, v16

    move-object/from16 v2, v43

    const/16 v5, 0x13

    goto/16 :goto_8

    :pswitch_b
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move/from16 v2, v31

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    aget-object v5, v24, v30

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v2, v30

    invoke-interface {v0, v1, v2, v5, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/util/List;

    or-int/lit16 v3, v3, 0x100

    move-object/from16 v10, v16

    move-object/from16 v2, v43

    const/16 v5, 0x13

    goto/16 :goto_7

    :pswitch_c
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move/from16 v2, v30

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2, v5, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ljava/lang/String;

    or-int/lit16 v3, v3, 0x80

    goto :goto_3

    :pswitch_d
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/4 v2, 0x7

    sget-object v5, Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction$$serializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v5, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;

    or-int/lit8 v3, v3, 0x40

    goto :goto_3

    :pswitch_e
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/4 v2, 0x6

    aget-object v5, v24, v29

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v2, v29

    invoke-interface {v0, v1, v2, v5, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Ljava/util/Map;

    or-int/lit8 v3, v3, 0x20

    :goto_3
    move-object/from16 v10, v16

    move-object/from16 v2, v43

    const/16 v5, 0x13

    goto/16 :goto_6

    :pswitch_f
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move/from16 v2, v29

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    sget-object v5, Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v5, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/stripe/stripeterminal/external/api/ApiError;

    or-int/lit8 v3, v3, 0x10

    goto :goto_4

    :pswitch_10
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/4 v2, 0x4

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    or-int/lit8 v3, v3, 0x8

    goto :goto_4

    :pswitch_11
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/4 v2, 0x3

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v5, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    or-int/lit8 v3, v3, 0x4

    :goto_4
    move-object/from16 v10, v16

    move-object/from16 v2, v43

    goto :goto_5

    :pswitch_12
    move-object/from16 v43, v2

    move-object/from16 v16, v10

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/4 v2, 0x2

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 p1, v3

    move-object/from16 v2, v43

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v5, p1, 0x2

    move v3, v5

    move-object/from16 v10, v16

    goto :goto_5

    :pswitch_13
    move/from16 p1, v3

    move-object/from16 v16, v10

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    const/4 v3, 0x1

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v25, v2

    move-object/from16 v3, v38

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v5, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v38, v3

    check-cast v38, Ljava/lang/String;

    or-int/lit8 v3, p1, 0x1

    move-object/from16 v10, v16

    move-object/from16 v2, v25

    :goto_5
    const/16 v5, 0x13

    const/16 v29, 0x5

    :goto_6
    const/16 v30, 0x8

    :goto_7
    const/16 v31, 0x9

    :goto_8
    const/16 v32, 0xa

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v25, v2

    move/from16 p1, v3

    move-object/from16 v16, v10

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    move-object/from16 v3, v38

    const/4 v2, 0x0

    move/from16 v42, v2

    move-object/from16 v10, v16

    move-object/from16 v2, v25

    const/16 v5, 0x13

    const/16 v29, 0x5

    const/16 v30, 0x8

    const/16 v31, 0x9

    const/16 v32, 0xa

    move/from16 v3, p1

    goto/16 :goto_0

    :cond_1
    move-object/from16 v25, v2

    move/from16 p1, v3

    move-object/from16 v16, v10

    move-object/from16 v10, v33

    move-object/from16 v22, v34

    move-object/from16 v20, v35

    move-object/from16 v18, v36

    move-object/from16 v17, v37

    move-object/from16 v3, v38

    move-object/from16 v19, v10

    move-object v10, v9

    move-object/from16 v9, v25

    move-object/from16 v25, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v15

    move-object v15, v12

    move-object v12, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v6

    move-object/from16 v28, v16

    move-object/from16 v27, v17

    move-object/from16 v26, v18

    move-object/from16 v23, v22

    move/from16 v24, v39

    move-wide/from16 v21, v40

    move-object/from16 v17, v8

    move-object/from16 v16, v11

    move-object/from16 v18, v14

    move-object v8, v3

    move-object v11, v4

    move-object v14, v7

    move/from16 v7, p1

    :goto_9
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v6, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    const/16 v29, 0x0

    invoke-direct/range {v6 .. v29}, Lcom/stripe/stripeterminal/external/models/SetupIntent;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;Ljava/util/Map;Lcom/stripe/stripeterminal/external/models/SetupIntentNextAction;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;Lcom/stripe/stripeterminal/external/models/SetupIntentUsage;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationReason;JLcom/stripe/stripeterminal/external/models/SetupAttemptUnion;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 20
    sget-object v0, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/stripe/stripeterminal/external/models/SetupIntent;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->write$Self$public_release(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 20
    check-cast p2, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/SetupIntent$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/stripe/stripeterminal/external/models/SetupIntent;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
