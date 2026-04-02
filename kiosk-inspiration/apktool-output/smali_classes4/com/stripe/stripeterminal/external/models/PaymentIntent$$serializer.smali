.class public final Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;
.super Ljava/lang/Object;
.source "PaymentIntent.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/PaymentIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
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
        "com/stripe/stripeterminal/external/models/PaymentIntent.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;

    .line 22
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/internal/GeneratedSerializer;

    const/16 v2, 0x23

    const-string v3, "com.stripe.stripeterminal.external.models.PaymentIntent"

    invoke-direct {v1, v3, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "amount"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "amountCapturable"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "amountReceived"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "application"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "applicationFeeAmount"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "canceledAt"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "cancellationReason"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "captureMethod"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "charges"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "clientSecret"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "confirmationMethod"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "created"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "currency"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "customer"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "invoice"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "lastPaymentError"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "livemode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "metadata"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "onBehalfOf"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paymentMethod"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "receiptEmail"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "review"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "setupFutureUsage"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "statementDescriptor"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "status"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "transferGroup"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "amountDetails"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "amountTip"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "statementDescriptorSuffix"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paymentMethodOptions"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paymentMethodTypes"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "nextAction"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "amountRequested"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
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

    .line 22
    invoke-static {}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x23

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/stripe/stripeterminal/external/models/ChargesList$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ChargesList$$serializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const/16 v2, 0xc

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const/16 v2, 0x12

    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/stripe/stripeterminal/external/json/PaymentMethodUnionSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/PaymentMethodUnionSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x19

    aput-object v2, v1, v3

    const/16 v2, 0x1a

    aget-object v0, v0, v2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x1b

    aput-object v0, v1, v2

    sget-object v0, Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x1d

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x1e

    aput-object v0, v1, v2

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    const/16 v0, 0x20

    sget-object v2, Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;

    aput-object v2, v1, v0

    sget-object v0, Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    return-object v1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 73

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x3

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v18, 0x1a

    const/16 v19, 0x13

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v7, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v6

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v24

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v26

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v4, v5, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v1, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v12

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v28

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v15, v5, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v14, v11, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    sget-object v14, Lcom/stripe/stripeterminal/external/models/ChargesList$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ChargesList$$serializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v10, v14, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/stripe/stripeterminal/external/models/ChargesList;

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v9, v14, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0xb

    invoke-interface {v0, v1, v15, v14, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/16 v15, 0xc

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v22

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v31, v2

    const/16 v2, 0xd

    invoke-interface {v0, v1, v2, v15, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v21, v2

    const/16 v2, 0xe

    invoke-interface {v0, v1, v2, v15, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v20, v2

    const/16 v2, 0xf

    invoke-interface {v0, v1, v2, v15, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v17, v2

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2, v15, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v16, v2

    const/16 v2, 0x11

    invoke-interface {v0, v1, v2, v15, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/api/ApiError;

    const/16 v15, 0x12

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v15

    aget-object v32, v31, v19

    move-object/from16 v33, v2

    move-object/from16 v2, v32

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v32, v3

    move/from16 v3, v19

    invoke-interface {v0, v1, v3, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v19, v2

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/stripe/stripeterminal/external/json/PaymentMethodUnionSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/PaymentMethodUnionSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v34, v2

    const/16 v2, 0x15

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v35, v2

    const/16 v2, 0x16

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v36, v2

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v37, v2

    const/16 v2, 0x18

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v38, v2

    const/16 v2, 0x19

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aget-object v3, v31, v18

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v39, v2

    move/from16 v2, v18

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v18, v2

    const/16 v2, 0x1b

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v31, v2

    const/16 v2, 0x1c

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/AmountDetails;

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v40, v2

    const/16 v2, 0x1d

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v41, v2

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v42, v2

    const/16 v2, 0x1f

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    sget-object v3, Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v43, v2

    const/16 v2, 0x20

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 p1, v2

    const/16 v2, 0x21

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/NextAction;

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v44, v2

    const/16 v2, 0x22

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/4 v3, -0x1

    move-object/from16 v46, v2

    move-wide v7, v6

    move/from16 v30, v15

    move-object/from16 v6, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v38

    move-object/from16 v45, v44

    move-object/from16 v44, p1

    move-object/from16 v38, v18

    move-object/from16 v18, v5

    const/4 v5, 0x7

    move-object/from16 v69, v4

    move v4, v3

    move-wide/from16 v70, v12

    move-object/from16 v13, v69

    move-object/from16 v69, v21

    move-object/from16 v21, v9

    move-object/from16 v72, v20

    move-object/from16 v20, v10

    move-wide/from16 v9, v24

    move-object/from16 v25, v69

    move-wide/from16 v23, v22

    move-object/from16 v22, v14

    move-wide/from16 v14, v70

    move-object/from16 v69, v19

    move-object/from16 v19, v11

    move-wide/from16 v11, v26

    move-object/from16 v27, v17

    move-object/from16 v26, v72

    move-wide/from16 v70, v28

    move-object/from16 v28, v16

    move-wide/from16 v16, v70

    move-object/from16 v29, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v31

    move-object/from16 v31, v69

    goto/16 :goto_15

    :cond_0
    move-object/from16 v31, v2

    const-wide/16 v2, 0x0

    move-wide/from16 v24, v2

    move-wide/from16 v53, v24

    move-wide/from16 v56, v53

    move-wide/from16 v58, v56

    move-wide/from16 v60, v58

    move-wide/from16 v62, v60

    move/from16 v64, v6

    move/from16 v46, v7

    move/from16 v55, v46

    move/from16 v65, v55

    move-object v2, v8

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v9, v7

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v38, v15

    move-object/from16 v39, v38

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v45, v44

    move-object/from16 v47, v45

    move-object/from16 v48, v47

    move-object/from16 v49, v48

    move-object/from16 v50, v49

    move-object/from16 v51, v50

    move-object/from16 v52, v51

    :goto_0
    move-object/from16 v66, v2

    if-eqz v64, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v2}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v2, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v67, v15

    const/16 v15, 0x22

    invoke-interface {v0, v1, v15, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    or-int/lit8 v65, v65, 0x4

    sget-object v8, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v8, v2

    goto :goto_1

    :pswitch_1
    move-object/from16 v67, v15

    sget-object v2, Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x21

    invoke-interface {v0, v1, v15, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/NextAction;

    or-int/lit8 v65, v65, 0x2

    sget-object v9, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v9, v2

    goto :goto_1

    :pswitch_2
    move-object/from16 v67, v15

    sget-object v2, Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x20

    invoke-interface {v0, v1, v15, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    or-int/lit8 v65, v65, 0x1

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v10, v2

    :goto_1
    move-object/from16 v17, v4

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v67, v15

    const/16 v15, 0x20

    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x1f

    invoke-interface {v0, v1, v15, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    const/high16 v14, -0x80000000

    or-int v14, v46, v14

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v4

    move/from16 v46, v14

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v15, v67

    const/4 v4, 0x0

    move-object v14, v2

    goto/16 :goto_3

    :pswitch_4
    move-object/from16 v67, v15

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x1e

    invoke-interface {v0, v1, v15, v2, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v11, 0x40000000    # 2.0f

    or-int v11, v46, v11

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v4

    move/from16 v46, v11

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v15, v67

    const/4 v4, 0x0

    move-object v11, v2

    goto/16 :goto_3

    :pswitch_5
    move-object/from16 v67, v15

    sget-object v2, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x1d

    invoke-interface {v0, v1, v15, v2, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const/high16 v12, 0x20000000

    or-int v12, v46, v12

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v4

    move/from16 v46, v12

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v15, v67

    const/4 v4, 0x0

    move-object v12, v2

    goto/16 :goto_3

    :pswitch_6
    move-object/from16 v67, v15

    sget-object v2, Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x1c

    invoke-interface {v0, v1, v15, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/AmountDetails;

    const/high16 v3, 0x10000000

    or-int v3, v46, v3

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v46, v3

    move-object/from16 v17, v4

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v15, v67

    const/4 v4, 0x0

    move-object v3, v2

    goto/16 :goto_3

    :pswitch_7
    move-object/from16 v67, v15

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x1b

    invoke-interface {v0, v1, v15, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v4, 0x8000000

    or-int v4, v46, v4

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v2

    move/from16 v46, v4

    :goto_2
    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v2, v66

    move-object/from16 v15, v67

    goto/16 :goto_5

    :pswitch_8
    move-object/from16 v67, v15

    const/16 v15, 0x1a

    aget-object v2, v31, v15

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v15, v2, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    const/high16 v13, 0x4000000

    or-int v13, v46, v13

    sget-object v18, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v4

    move/from16 v46, v13

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v15, v67

    const/4 v4, 0x0

    move-object v13, v2

    goto/16 :goto_3

    :pswitch_9
    move-object/from16 v67, v15

    const/16 v15, 0x1a

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x19

    invoke-interface {v0, v1, v15, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v5, 0x2000000

    or-int v5, v46, v5

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v4

    move/from16 v46, v5

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v15, v67

    const/4 v4, 0x0

    move-object v5, v2

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v67, v15

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x18

    invoke-interface {v0, v1, v15, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v6, 0x1000000

    or-int v6, v46, v6

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v4

    move/from16 v46, v6

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v15, v67

    const/4 v4, 0x0

    move-object v6, v2

    goto :goto_3

    :pswitch_b
    move-object/from16 v67, v15

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x17

    invoke-interface {v0, v1, v15, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v7, 0x800000

    or-int v7, v46, v7

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v4

    move/from16 v46, v7

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v15, v67

    const/4 v4, 0x0

    move-object v7, v2

    :goto_3
    move-object/from16 v52, v51

    goto/16 :goto_9

    :pswitch_c
    move-object/from16 v67, v15

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x16

    move-object/from16 v68, v3

    move-object/from16 v3, v67

    invoke-interface {v0, v1, v15, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v3, 0x400000

    or-int v3, v46, v3

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v15, v2

    move/from16 v46, v3

    move-object/from16 v17, v4

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v2, v66

    goto :goto_4

    :pswitch_d
    move-object/from16 v68, v3

    move-object v3, v15

    sget-object v2, Lcom/stripe/stripeterminal/external/json/PaymentMethodUnionSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/PaymentMethodUnionSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x15

    move-object/from16 v67, v3

    move-object/from16 v3, v66

    invoke-interface {v0, v1, v15, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    const/high16 v3, 0x200000

    or-int v3, v46, v3

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v46, v3

    move-object/from16 v17, v4

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v21, v52

    move-object/from16 v15, v67

    :goto_4
    move-object/from16 v3, v68

    :goto_5
    const/4 v4, 0x0

    move-object/from16 v52, v51

    goto/16 :goto_14

    :pswitch_e
    move-object/from16 v68, v3

    move-object/from16 v67, v15

    move-object/from16 v3, v66

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x14

    move-object/from16 v3, v52

    invoke-interface {v0, v1, v15, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v3, 0x100000

    or-int v3, v46, v3

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v21, v2

    move/from16 v46, v3

    move-object/from16 v17, v4

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    move-object/from16 v52, v51

    goto/16 :goto_8

    :pswitch_f
    move-object/from16 v68, v3

    move-object/from16 v67, v15

    move-object/from16 v3, v52

    const/16 v15, 0x13

    aget-object v2, v31, v15

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v19, v3

    move-object/from16 v3, v51

    invoke-interface {v0, v1, v15, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/high16 v3, 0x80000

    or-int v3, v46, v3

    sget-object v46, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v52, v2

    goto :goto_6

    :pswitch_10
    move-object/from16 v68, v3

    move-object/from16 v67, v15

    move-object/from16 v3, v51

    move-object/from16 v19, v52

    const/16 v15, 0x13

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v55

    const/high16 v2, 0x40000

    or-int v2, v46, v2

    sget-object v46, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v46, v2

    move-object/from16 v52, v3

    goto :goto_7

    :pswitch_11
    move-object/from16 v68, v3

    move-object/from16 v67, v15

    move-object/from16 v3, v51

    move-object/from16 v19, v52

    const/16 v15, 0x13

    sget-object v2, Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0x11

    move-object/from16 v52, v3

    move-object/from16 v3, v50

    invoke-interface {v0, v1, v15, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/api/ApiError;

    const/high16 v3, 0x20000

    or-int v3, v46, v3

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v50, v2

    :goto_6
    move/from16 v46, v3

    :goto_7
    move-object/from16 v17, v4

    move-object/from16 v21, v19

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v19, v49

    :goto_8
    move-object/from16 v2, v66

    move-object/from16 v15, v67

    move-object/from16 v3, v68

    const/4 v4, 0x0

    goto/16 :goto_14

    :pswitch_12
    move-object/from16 v68, v3

    move-object/from16 v67, v15

    move-object/from16 v3, v50

    move-object/from16 v19, v52

    move-object/from16 v52, v51

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v16, v3

    move-object/from16 v15, v49

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3, v2, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v15, 0x10000

    or-int v15, v46, v15

    sget-object v46, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v17, v4

    move/from16 v46, v15

    move-object/from16 v50, v16

    move-object/from16 v21, v19

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v67

    move-object/from16 v3, v68

    const/4 v4, 0x0

    move-object/from16 v19, v2

    :goto_9
    move-object/from16 v2, v66

    goto/16 :goto_14

    :pswitch_13
    move-object/from16 v68, v3

    move-object/from16 v67, v15

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/16 v3, 0x10

    move-object/from16 v52, v51

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v17, v4

    move-object/from16 v3, v48

    const/16 v4, 0xf

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v3, 0x8000

    or-int v3, v46, v3

    sget-object v46, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v20, v2

    move/from16 v46, v3

    move-object/from16 v21, v19

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v16, v47

    move-object/from16 v2, v66

    move-object/from16 v3, v68

    const/4 v4, 0x0

    goto/16 :goto_12

    :pswitch_14
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v67, v15

    move-object/from16 v3, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/16 v4, 0xf

    move-object/from16 v52, v51

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v20, v3

    move-object/from16 v4, v47

    const/16 v3, 0xe

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v4, v46

    or-int/lit16 v4, v4, 0x4000

    sget-object v46, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v46, v4

    move-object/from16 v21, v19

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move-object/from16 v3, v68

    const/4 v4, 0x0

    move-object/from16 v16, v2

    move-object/from16 v19, v15

    move-object/from16 v2, v66

    goto/16 :goto_13

    :pswitch_15
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v67, v15

    move/from16 v2, v46

    move-object/from16 v4, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/16 v3, 0xe

    move-object/from16 v52, v51

    sget-object v46, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v46

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v46, v4

    move-object/from16 v21, v5

    move-object/from16 v4, v45

    const/16 v5, 0xd

    invoke-interface {v0, v1, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x2000

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v23, v3

    goto :goto_a

    :pswitch_16
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v4, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/16 v3, 0xc

    const/16 v5, 0xd

    move-object/from16 v52, v51

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v56

    or-int/lit16 v2, v2, 0x1000

    sget-object v22, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v23, v4

    :goto_a
    move-object/from16 v5, v21

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    goto/16 :goto_f

    :pswitch_17
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v4, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/16 v3, 0xc

    const/16 v5, 0xd

    move-object/from16 v52, v51

    sget-object v22, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v22

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v23, v4

    move-object/from16 v5, v44

    const/16 v4, 0xb

    invoke-interface {v0, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x800

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v37, v3

    move-object/from16 v5, v21

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    goto/16 :goto_f

    :pswitch_18
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v5, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/16 v4, 0xb

    move-object/from16 v52, v51

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v37, v5

    move-object/from16 v4, v43

    const/16 v5, 0xa

    invoke-interface {v0, v1, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x400

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v36, v3

    move-object/from16 v5, v21

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    goto/16 :goto_f

    :pswitch_19
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v4, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/16 v5, 0xa

    move-object/from16 v52, v51

    sget-object v3, Lcom/stripe/stripeterminal/external/models/ChargesList$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ChargesList$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v36, v4

    move-object/from16 v5, v42

    const/16 v4, 0x9

    invoke-interface {v0, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/stripeterminal/external/models/ChargesList;

    or-int/lit16 v2, v2, 0x200

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v35, v3

    move-object/from16 v5, v21

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    goto/16 :goto_f

    :pswitch_1a
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v5, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/16 v4, 0x9

    move-object/from16 v52, v51

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v35, v5

    move-object/from16 v4, v41

    const/16 v5, 0x8

    invoke-interface {v0, v1, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x100

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v30, v3

    move-object/from16 v5, v21

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    goto/16 :goto_f

    :pswitch_1b
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v4, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/16 v5, 0x8

    move-object/from16 v52, v51

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v30, v4

    move-object/from16 v5, v40

    const/4 v4, 0x7

    invoke-interface {v0, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x80

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v32, v3

    goto/16 :goto_c

    :pswitch_1c
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v5, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/4 v3, 0x6

    const/4 v4, 0x7

    move-object/from16 v52, v51

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v62

    or-int/lit8 v2, v2, 0x40

    sget-object v34, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_b

    :pswitch_1d
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v5, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/4 v3, 0x5

    const/4 v4, 0x7

    move-object/from16 v52, v51

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v53

    or-int/lit8 v2, v2, 0x20

    sget-object v33, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_b
    move-object/from16 v32, v5

    :goto_c
    move-object/from16 v5, v21

    move-object/from16 v26, v39

    goto/16 :goto_f

    :pswitch_1e
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v5, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/4 v3, 0x5

    const/4 v4, 0x7

    move-object/from16 v52, v51

    sget-object v33, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v33

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v32, v5

    move-object/from16 v4, v39

    const/4 v5, 0x4

    invoke-interface {v0, v1, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit8 v2, v2, 0x10

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v26, v3

    goto/16 :goto_e

    :pswitch_1f
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v4, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/4 v3, 0x3

    const/4 v5, 0x4

    move-object/from16 v52, v51

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v60

    or-int/lit8 v2, v2, 0x8

    sget-object v29, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto/16 :goto_d

    :pswitch_20
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v4, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/4 v3, 0x2

    const/4 v5, 0x4

    move-object/from16 v52, v51

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v58

    or-int/lit8 v2, v2, 0x4

    sget-object v28, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_d

    :pswitch_21
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v4, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/4 v3, 0x1

    const/4 v5, 0x4

    move-object/from16 v52, v51

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v24

    or-int/lit8 v2, v2, 0x2

    sget-object v27, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_d
    move-object/from16 v26, v4

    :goto_e
    move-object/from16 v5, v21

    :goto_f
    move-object/from16 v16, v46

    move-object/from16 v3, v68

    const/4 v4, 0x0

    goto/16 :goto_11

    :pswitch_22
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v4, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/4 v3, 0x1

    const/4 v5, 0x4

    move-object/from16 v52, v51

    sget-object v27, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v3, v27

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v26, v4

    move-object/from16 v5, v38

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit8 v2, v2, 0x1

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v38, v3

    goto :goto_10

    :pswitch_23
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v5, v38

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    const/4 v4, 0x0

    move-object/from16 v52, v51

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v64, v4

    :goto_10
    move-object/from16 v5, v21

    move-object/from16 v16, v46

    move-object/from16 v3, v68

    :goto_11
    move/from16 v46, v2

    move-object/from16 v21, v19

    move-object/from16 v2, v66

    :goto_12
    move-object/from16 v19, v15

    :goto_13
    move-object/from16 v15, v67

    :goto_14
    move-object/from16 v47, v16

    move-object/from16 v4, v17

    move-object/from16 v49, v19

    move-object/from16 v48, v20

    move-object/from16 v45, v23

    move-object/from16 v39, v26

    move-object/from16 v41, v30

    move-object/from16 v40, v32

    move-object/from16 v42, v35

    move-object/from16 v43, v36

    move-object/from16 v44, v37

    move-object/from16 v51, v52

    move-object/from16 v52, v21

    goto/16 :goto_0

    :cond_1
    move-object/from16 v68, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v67, v15

    move-object/from16 v5, v38

    move-object/from16 v26, v39

    move-object/from16 v32, v40

    move-object/from16 v30, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v43

    move-object/from16 v37, v44

    move-object/from16 v23, v45

    move/from16 v2, v46

    move-object/from16 v46, v47

    move-object/from16 v20, v48

    move-object/from16 v15, v49

    move-object/from16 v16, v50

    move-object/from16 v19, v52

    move-object/from16 v52, v51

    move v4, v2

    move-object/from16 v45, v9

    move-object/from16 v44, v10

    move-object/from16 v42, v11

    move-object/from16 v41, v12

    move-object/from16 v38, v13

    move-object/from16 v43, v14

    move-object/from16 v28, v15

    move-object/from16 v29, v16

    move-object/from16 v39, v17

    move-object/from16 v27, v20

    move-object/from16 v13, v26

    move-object/from16 v18, v32

    move-object/from16 v20, v35

    move-object/from16 v22, v37

    move-object/from16 v26, v46

    move-object/from16 v31, v52

    move-wide/from16 v14, v53

    move-wide/from16 v9, v58

    move-wide/from16 v11, v60

    move-wide/from16 v16, v62

    move-object/from16 v33, v66

    move-object/from16 v34, v67

    move-object/from16 v40, v68

    move-object/from16 v35, v7

    move-object/from16 v46, v8

    move-object/from16 v32, v19

    move-object/from16 v37, v21

    move-wide/from16 v7, v24

    move-object/from16 v19, v30

    move-object/from16 v21, v36

    move/from16 v30, v55

    move-object/from16 v36, v6

    move-object/from16 v25, v23

    move-wide/from16 v23, v56

    move-object v6, v5

    move/from16 v5, v65

    :goto_15
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v3, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    const/16 v47, 0x0

    invoke-direct/range {v3 .. v47}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;-><init>(IILjava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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

    .line 22
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 22
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->write$Self$public_release(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p2, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

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

    .line 22
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
