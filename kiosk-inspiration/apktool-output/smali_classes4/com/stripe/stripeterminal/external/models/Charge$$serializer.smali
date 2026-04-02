.class public final Lcom/stripe/stripeterminal/external/models/Charge$$serializer;
.super Ljava/lang/Object;
.source "Charge.kt"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/external/models/Charge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/stripe/stripeterminal/external/models/Charge;",
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
        "com/stripe/stripeterminal/external/models/Charge.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/stripe/stripeterminal/external/models/Charge;",
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/external/models/Charge$$serializer;

.field private static final synthetic descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/Charge$$serializer;

    .line 12
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/internal/GeneratedSerializer;

    const/16 v2, 0x24

    const-string v3, "com.stripe.stripeterminal.external.models.Charge"

    invoke-direct {v1, v3, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "amount"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "amountRefunded"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "application"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "applicationFee"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "applicationFeeAmount"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "balanceTransaction"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "captured"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "created"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "currency"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "customer"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "dispute"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "failureCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "failureMessage"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "invoice"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "livemode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "metadata"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "onBehalfOf"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "order"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paid"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paymentIntent"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paymentMethod"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "paymentMethodDetails"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "receiptEmail"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "receiptNumber"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "receiptUrl"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "refunded"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "review"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "statementDescriptor"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "status"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "transfer"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "transferGroup"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "statementDescriptorSuffix"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "calculatedStatementDescriptor"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "authorizationCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
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

    .line 12
    invoke-static {}, Lcom/stripe/stripeterminal/external/models/Charge;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v1, 0x24

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const/4 v2, 0x7

    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    aput-object v3, v1, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

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

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

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

    const/16 v2, 0x10

    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aget-object v0, v0, v2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

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

    const/16 v0, 0x14

    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    aput-object v2, v1, v0

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x15

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x16

    aput-object v0, v1, v2

    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x18

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x19

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x1a

    aput-object v0, v1, v2

    const/16 v0, 0x1b

    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    aput-object v2, v1, v0

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x1c

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

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

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x1f

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x20

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x21

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x22

    aput-object v0, v1, v2

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/16 v2, 0x23

    aput-object v0, v1, v2

    return-object v1
.end method

.method public deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/stripe/stripeterminal/external/models/Charge;
    .locals 68

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/Charge;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/16 v10, 0x9

    const/4 v11, 0x7

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/16 v18, 0x11

    const/16 v15, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v0, v1, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v6

    invoke-interface {v0, v1, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v24

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v14, v5, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v14, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v4, v14, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v1, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v13

    sget-object v26, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v9, v26

    check-cast v9, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v12, v9, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v0, v1, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v11

    invoke-interface {v0, v1, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v28

    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v12, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v10, v12, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    sget-object v12, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v12, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v15, 0xa

    invoke-interface {v0, v1, v15, v12, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v26, v2

    const/16 v2, 0xb

    invoke-interface {v0, v1, v2, v15, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v23, v2

    const/16 v2, 0xc

    invoke-interface {v0, v1, v2, v15, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v15, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v22, v2

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

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v2, 0x10

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    aget-object v17, v26, v18

    move/from16 v27, v2

    move-object/from16 v2, v17

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v17, v3

    move/from16 v3, v18

    invoke-interface {v0, v1, v3, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v18, v2

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v16, v2

    const/16 v2, 0x13

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x14

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    sget-object v26, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v30, v2

    move-object/from16 v2, v26

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v26, v3

    const/16 v3, 0x15

    invoke-interface {v0, v1, v3, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v31, v2

    const/16 v2, 0x16

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$$serializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v32, v2

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v33, v2

    const/16 v2, 0x18

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v34, v2

    const/16 v2, 0x19

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v35, v2

    const/16 v2, 0x1a

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x1b

    invoke-interface {v0, v1, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    sget-object v36, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v37, v2

    move-object/from16 v2, v36

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v36, v3

    const/16 v3, 0x1c

    invoke-interface {v0, v1, v3, v2, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v38, v2

    const/16 v2, 0x1d

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v39, v2

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v40, v2

    const/16 v2, 0x1f

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v41, v2

    const/16 v2, 0x20

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 p1, v2

    const/16 v2, 0x21

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v42, v2

    const/16 v2, 0x22

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v43, v2

    const/16 v2, 0x23

    invoke-interface {v0, v1, v2, v3, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    move-object/from16 v47, p1

    move-object/from16 v50, v2

    move-object/from16 v44, v39

    move-object/from16 v45, v40

    move-object/from16 v46, v41

    move-object/from16 v48, v42

    move-object/from16 v49, v43

    move-object/from16 v39, v34

    move-object/from16 v40, v35

    move/from16 v42, v36

    move-object/from16 v41, v37

    move-object/from16 v43, v38

    move/from16 v35, v26

    move-object/from16 v34, v30

    move-object/from16 v36, v31

    move-object/from16 v37, v32

    move-object/from16 v38, v33

    move-object/from16 v30, v15

    move-object/from16 v33, v16

    move-object/from16 v32, v18

    move-object/from16 v26, v23

    move/from16 v31, v27

    move-object/from16 v16, v5

    move-wide/from16 v18, v13

    move-object/from16 v27, v22

    move-wide/from16 v14, v24

    move-wide/from16 v22, v28

    move-object/from16 v24, v10

    move-object/from16 v25, v12

    move-object/from16 v29, v20

    move-object/from16 v28, v21

    const/16 v10, 0xf

    move-wide v12, v6

    move-object/from16 v20, v9

    move/from16 v21, v11

    move-object/from16 v11, v17

    move v9, v3

    move-object/from16 v17, v4

    goto/16 :goto_e

    :cond_0
    move-object/from16 v26, v2

    const-wide/16 v2, 0x0

    move-wide/from16 v24, v2

    move-wide/from16 v57, v24

    move-wide/from16 v59, v57

    move-wide/from16 v61, v59

    move/from16 v63, v6

    move/from16 v39, v7

    move/from16 v40, v39

    move/from16 v41, v40

    move/from16 v50, v41

    move/from16 v56, v50

    move/from16 v64, v56

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

    move-object/from16 v28, v15

    move-object/from16 v42, v28

    move-object/from16 v43, v42

    move-object/from16 v44, v43

    move-object/from16 v45, v44

    move-object/from16 v46, v45

    move-object/from16 v47, v46

    move-object/from16 v48, v47

    move-object/from16 v49, v48

    move-object/from16 v51, v49

    move-object/from16 v52, v51

    move-object/from16 v53, v52

    move-object/from16 v54, v53

    move-object/from16 v55, v54

    :goto_0
    if-eqz v63, :cond_1

    move-object/from16 v65, v7

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v7}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v7, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v66, v6

    const/16 v6, 0x23

    invoke-interface {v0, v1, v6, v7, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    or-int/lit8 v64, v64, 0x8

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v20, v4

    move-object v9, v6

    goto/16 :goto_4

    :pswitch_1
    move-object/from16 v66, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x22

    invoke-interface {v0, v1, v7, v6, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    or-int/lit8 v64, v64, 0x4

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v20, v4

    move-object v8, v6

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v66, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x21

    invoke-interface {v0, v1, v7, v6, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v64, v64, 0x2

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v20, v4

    goto/16 :goto_4

    :pswitch_3
    move-object/from16 v66, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x20

    invoke-interface {v0, v1, v7, v6, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    or-int/lit8 v64, v64, 0x1

    sget-object v10, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v20, v4

    move-object v10, v6

    goto/16 :goto_4

    :pswitch_4
    move-object/from16 v66, v6

    const/16 v7, 0x20

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x1f

    invoke-interface {v0, v1, v7, v6, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/high16 v7, -0x80000000

    or-int v7, v50, v7

    sget-object v15, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v20, v4

    move-object v15, v6

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v66, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x1e

    invoke-interface {v0, v1, v7, v6, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v6, 0x40000000    # 2.0f

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v66, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x1d

    invoke-interface {v0, v1, v7, v6, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/high16 v7, 0x20000000

    or-int v7, v50, v7

    sget-object v11, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v20, v4

    move-object v11, v6

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v66, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x1c

    invoke-interface {v0, v1, v7, v6, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/high16 v7, 0x10000000

    or-int v7, v50, v7

    sget-object v12, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v20, v4

    move-object v12, v6

    goto :goto_1

    :pswitch_8
    move-object/from16 v66, v6

    const/16 v6, 0x1b

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    const/high16 v7, 0x8000000

    or-int v7, v50, v7

    sget-object v41, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v20, v4

    move/from16 v41, v6

    goto :goto_1

    :pswitch_9
    move-object/from16 v66, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x1a

    invoke-interface {v0, v1, v7, v6, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/high16 v7, 0x4000000

    or-int v7, v50, v7

    sget-object v13, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v20, v4

    move-object v13, v6

    goto :goto_1

    :pswitch_a
    move-object/from16 v66, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x19

    invoke-interface {v0, v1, v7, v6, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/high16 v6, 0x2000000

    goto :goto_2

    :pswitch_b
    move-object/from16 v66, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x18

    invoke-interface {v0, v1, v7, v6, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/high16 v7, 0x1000000

    or-int v7, v50, v7

    sget-object v14, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    move-object/from16 v20, v4

    move-object v14, v6

    :goto_1
    move/from16 v50, v7

    goto/16 :goto_4

    :pswitch_c
    move-object/from16 v66, v6

    sget-object v6, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$$serializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x17

    invoke-interface {v0, v1, v7, v6, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    const/high16 v6, 0x800000

    :goto_2
    or-int v6, v50, v6

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v67, v2

    goto/16 :goto_3

    :pswitch_d
    move-object/from16 v66, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x16

    move-object/from16 v67, v2

    move-object/from16 v2, v66

    invoke-interface {v0, v1, v7, v6, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v6, 0x400000

    or-int v6, v50, v6

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v20, v4

    move/from16 v50, v6

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move-object/from16 v19, v51

    move-object/from16 v21, v52

    move-object/from16 v29, v53

    move-object/from16 v30, v54

    move-object/from16 v7, v65

    const/4 v4, 0x3

    move-object v6, v2

    goto/16 :goto_9

    :pswitch_e
    move-object/from16 v67, v2

    move-object v2, v6

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x15

    move-object/from16 v66, v2

    move-object/from16 v2, v65

    invoke-interface {v0, v1, v7, v6, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v6, 0x200000

    or-int v6, v50, v6

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object v7, v2

    move-object/from16 v20, v4

    move/from16 v50, v6

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move-object/from16 v19, v51

    move-object/from16 v21, v52

    move-object/from16 v29, v53

    move-object/from16 v30, v54

    goto/16 :goto_6

    :pswitch_f
    move-object/from16 v67, v2

    move-object/from16 v66, v6

    move-object/from16 v2, v65

    const/16 v6, 0x14

    invoke-interface {v0, v1, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    const/high16 v7, 0x100000

    or-int v7, v50, v7

    sget-object v40, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v20, v4

    move/from16 v40, v6

    move/from16 v50, v7

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move-object/from16 v19, v51

    move-object/from16 v21, v52

    move-object/from16 v29, v53

    move-object/from16 v30, v54

    move-object/from16 v6, v66

    const/4 v4, 0x3

    move-object v7, v2

    goto/16 :goto_9

    :pswitch_10
    move-object/from16 v67, v2

    move-object/from16 v66, v6

    move-object/from16 v2, v65

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    const/16 v7, 0x13

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v7, v6, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/high16 v6, 0x80000

    or-int v6, v50, v6

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v55, v2

    :goto_3
    move-object/from16 v20, v4

    move/from16 v50, v6

    :goto_4
    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move-object/from16 v19, v51

    move-object/from16 v21, v52

    move-object/from16 v29, v53

    move-object/from16 v30, v54

    goto/16 :goto_5

    :pswitch_11
    move-object/from16 v67, v2

    move-object/from16 v66, v6

    move-object/from16 v2, v55

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v16, v2

    move-object/from16 v7, v54

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/high16 v7, 0x40000

    or-int v7, v50, v7

    sget-object v50, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v20, v4

    move-object/from16 v30, v6

    move/from16 v50, v7

    move-object/from16 v55, v16

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move-object/from16 v19, v51

    move-object/from16 v21, v52

    move-object/from16 v29, v53

    goto/16 :goto_5

    :pswitch_12
    move-object/from16 v67, v2

    move-object/from16 v66, v6

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/16 v2, 0x12

    const/16 v6, 0x11

    aget-object v18, v26, v6

    move-object/from16 v2, v18

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v18, v3

    move-object/from16 v3, v53

    invoke-interface {v0, v1, v6, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/high16 v3, 0x20000

    or-int v3, v50, v3

    sget-object v50, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v29, v2

    move/from16 v50, v3

    move-object/from16 v20, v4

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move-object/from16 v19, v51

    move-object/from16 v21, v52

    goto/16 :goto_5

    :pswitch_13
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v66, v6

    move-object/from16 v3, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/16 v2, 0x10

    const/16 v6, 0x11

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v17

    const/high16 v39, 0x10000

    or-int v39, v50, v39

    sget-object v50, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v29, v3

    move-object/from16 v20, v4

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move/from16 v50, v39

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move-object/from16 v19, v51

    move-object/from16 v21, v52

    move-object/from16 v7, v65

    move-object/from16 v6, v66

    const/4 v2, 0x0

    const/4 v4, 0x3

    move/from16 v39, v17

    goto/16 :goto_d

    :pswitch_14
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v66, v6

    move-object/from16 v3, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/16 v2, 0x10

    const/16 v6, 0x11

    sget-object v17, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v2, v17

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v19, v3

    move-object/from16 v6, v52

    const/16 v3, 0xf

    invoke-interface {v0, v1, v3, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v6, 0x8000

    or-int v6, v50, v6

    sget-object v50, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v21, v2

    move-object/from16 v20, v4

    move/from16 v50, v6

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v29, v19

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move-object/from16 v19, v51

    :goto_5
    move-object/from16 v7, v65

    :goto_6
    move-object/from16 v6, v66

    const/4 v2, 0x0

    const/4 v4, 0x3

    goto/16 :goto_d

    :pswitch_15
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v66, v6

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/16 v3, 0xf

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v20, v4

    move-object/from16 v3, v51

    const/16 v4, 0xe

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v3, v50

    or-int/lit16 v3, v3, 0x4000

    sget-object v50, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v50, v3

    move-object/from16 v21, v6

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v29, v19

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move-object/from16 v7, v65

    move-object/from16 v6, v66

    const/4 v4, 0x3

    move-object/from16 v19, v2

    goto/16 :goto_9

    :pswitch_16
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v66, v6

    move/from16 v2, v50

    move-object/from16 v3, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/16 v4, 0xe

    sget-object v50, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v4, v50

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v50, v3

    move-object/from16 v21, v5

    move-object/from16 v3, v49

    const/16 v5, 0xd

    invoke-interface {v0, v1, v5, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x2000

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v22, v3

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v29, v19

    move-object/from16 v5, v21

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    goto/16 :goto_8

    :pswitch_17
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v3, v49

    move/from16 v2, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/16 v5, 0xd

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v22, v3

    move-object/from16 v5, v48

    const/16 v3, 0xc

    invoke-interface {v0, v1, v3, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x1000

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v23, v4

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v29, v19

    move-object/from16 v5, v21

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    goto/16 :goto_8

    :pswitch_18
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v5, v48

    move-object/from16 v22, v49

    move/from16 v2, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/16 v3, 0xc

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v23, v5

    move-object/from16 v3, v47

    const/16 v5, 0xb

    invoke-interface {v0, v1, v5, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x800

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v27, v3

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v29, v19

    move-object/from16 v5, v21

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    goto/16 :goto_8

    :pswitch_19
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v3, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v2, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/16 v5, 0xb

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v27, v3

    move-object/from16 v5, v46

    const/16 v3, 0xa

    invoke-interface {v0, v1, v3, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x400

    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v38, v4

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v29, v19

    move-object/from16 v5, v21

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    move-object/from16 v33, v45

    goto/16 :goto_8

    :pswitch_1a
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v5, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v2, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/16 v3, 0xa

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v38, v5

    move-object/from16 v3, v45

    const/16 v5, 0x9

    invoke-interface {v0, v1, v5, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x200

    sget-object v4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_7

    :pswitch_1b
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v3, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v2, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/16 v4, 0x8

    const/16 v5, 0x9

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v61

    or-int/lit16 v2, v2, 0x100

    sget-object v37, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_7

    :pswitch_1c
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v3, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v2, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/4 v4, 0x7

    const/16 v5, 0x9

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v56

    or-int/lit16 v2, v2, 0x80

    sget-object v36, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_7
    move-object/from16 v33, v3

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v29, v19

    move-object/from16 v5, v21

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v18, v44

    :goto_8
    move-object/from16 v19, v50

    move-object/from16 v7, v65

    const/4 v4, 0x3

    move/from16 v50, v2

    move-object/from16 v21, v6

    move-object/from16 v6, v66

    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_d

    :pswitch_1d
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v3, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v2, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/4 v4, 0x7

    const/16 v5, 0x9

    sget-object v36, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v4, v36

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v35, v2

    move-object/from16 v5, v44

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    or-int/lit8 v5, v35, 0x40

    sget-object v35, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v33, v3

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v29, v19

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v19, v50

    move-object/from16 v7, v65

    const/4 v2, 0x0

    move-object/from16 v18, v4

    move/from16 v50, v5

    goto/16 :goto_a

    :pswitch_1e
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v5, v44

    move-object/from16 v3, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v35, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/4 v2, 0x6

    const/4 v4, 0x5

    invoke-interface {v0, v1, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v57

    or-int/lit8 v34, v35, 0x20

    sget-object v35, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v33, v3

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v29, v19

    move-object/from16 v16, v42

    move-object/from16 v32, v43

    move-object/from16 v19, v50

    move-object/from16 v7, v65

    const/4 v2, 0x0

    const/4 v4, 0x3

    move-object/from16 v18, v5

    move-object/from16 v5, v21

    move/from16 v50, v34

    goto/16 :goto_c

    :pswitch_1f
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v5, v44

    move-object/from16 v3, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v35, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/4 v2, 0x6

    const/4 v4, 0x5

    sget-object v34, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v2, v34

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v33, v3

    move-object/from16 v4, v43

    const/4 v3, 0x4

    invoke-interface {v0, v1, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v4, v35, 0x10

    sget-object v35, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v32, v2

    move-object/from16 v30, v7

    move-object/from16 v3, v18

    move-object/from16 v29, v19

    move-object/from16 v16, v42

    move-object/from16 v19, v50

    move-object/from16 v7, v65

    const/4 v2, 0x0

    move/from16 v50, v4

    move-object/from16 v18, v5

    :goto_a
    move-object/from16 v5, v21

    const/4 v4, 0x3

    goto/16 :goto_c

    :pswitch_20
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v4, v43

    move-object/from16 v5, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v35, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/4 v3, 0x4

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v32, v4

    move-object/from16 v3, v42

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v3, v35, 0x8

    sget-object v35, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v30, v7

    move-object/from16 v29, v19

    move-object/from16 v19, v50

    move-object/from16 v7, v65

    move-object/from16 v16, v2

    move/from16 v50, v3

    move-object/from16 v3, v18

    const/4 v2, 0x0

    goto/16 :goto_b

    :pswitch_21
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v3, v42

    move-object/from16 v32, v43

    move-object/from16 v5, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v35, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/4 v2, 0x2

    const/4 v4, 0x3

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v59

    or-int/lit8 v31, v35, 0x4

    sget-object v35, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v30, v7

    move-object/from16 v29, v19

    move-object/from16 v19, v50

    move-object/from16 v7, v65

    const/4 v2, 0x0

    move-object/from16 v16, v3

    move-object/from16 v3, v18

    move/from16 v50, v31

    goto/16 :goto_b

    :pswitch_22
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v3, v42

    move-object/from16 v32, v43

    move-object/from16 v5, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v35, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v24

    or-int/lit8 v30, v35, 0x2

    sget-object v31, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move-object/from16 v29, v19

    move-object/from16 v19, v50

    const/4 v2, 0x0

    move-object/from16 v16, v3

    move-object/from16 v3, v18

    move/from16 v50, v30

    move-object/from16 v18, v5

    move-object/from16 v30, v7

    move-object/from16 v5, v21

    move-object/from16 v7, v65

    goto/16 :goto_c

    :pswitch_23
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v3, v42

    move-object/from16 v32, v43

    move-object/from16 v5, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v35, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-interface {v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v28

    or-int/lit8 v29, v35, 0x1

    sget-object v30, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v30, v29

    move-object/from16 v29, v19

    move-object/from16 v19, v50

    move/from16 v50, v30

    move-object/from16 v30, v7

    move-object/from16 v7, v65

    move-object/from16 v16, v3

    move-object/from16 v3, v18

    goto :goto_b

    :pswitch_24
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v3, v42

    move-object/from16 v32, v43

    move-object/from16 v5, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v35, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    const/4 v2, 0x0

    const/4 v4, 0x3

    sget-object v29, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    move/from16 v63, v2

    move-object/from16 v30, v7

    move-object/from16 v29, v19

    move-object/from16 v19, v50

    move-object/from16 v7, v65

    move-object/from16 v16, v3

    move-object/from16 v3, v18

    move/from16 v50, v35

    :goto_b
    move-object/from16 v18, v5

    move-object/from16 v5, v21

    :goto_c
    move-object/from16 v21, v6

    move-object/from16 v6, v66

    :goto_d
    move-object/from16 v42, v16

    move-object/from16 v44, v18

    move-object/from16 v51, v19

    move-object/from16 v4, v20

    move-object/from16 v52, v21

    move-object/from16 v49, v22

    move-object/from16 v48, v23

    move-object/from16 v47, v27

    move-object/from16 v53, v29

    move-object/from16 v54, v30

    move-object/from16 v43, v32

    move-object/from16 v45, v33

    move-object/from16 v46, v38

    move-object/from16 v2, v67

    goto/16 :goto_0

    :cond_1
    move-object/from16 v67, v2

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v66, v6

    move-object/from16 v65, v7

    move-object/from16 v3, v42

    move-object/from16 v32, v43

    move-object/from16 v5, v44

    move-object/from16 v33, v45

    move-object/from16 v38, v46

    move-object/from16 v27, v47

    move-object/from16 v23, v48

    move-object/from16 v22, v49

    move/from16 v35, v50

    move-object/from16 v50, v51

    move-object/from16 v6, v52

    move-object/from16 v19, v53

    move-object/from16 v7, v54

    move-object/from16 v16, v55

    move-object/from16 v30, v6

    move-object/from16 v49, v8

    move-object/from16 v47, v10

    move-object/from16 v44, v11

    move-object/from16 v43, v12

    move-object/from16 v46, v15

    move-object/from16 v34, v16

    move-object/from16 v45, v18

    move-object/from16 v26, v27

    move-object/from16 v11, v28

    move-object/from16 v17, v32

    move/from16 v31, v39

    move/from16 v42, v41

    move-object/from16 v29, v50

    move/from16 v10, v64

    move-object/from16 v36, v65

    move-object/from16 v37, v66

    move-object/from16 v48, v67

    move-object/from16 v16, v3

    move-object/from16 v50, v9

    move-object/from16 v41, v13

    move-object/from16 v39, v14

    move-object/from16 v32, v19

    move-object/from16 v28, v22

    move-object/from16 v27, v23

    move-wide/from16 v12, v24

    move-object/from16 v24, v33

    move/from16 v9, v35

    move-object/from16 v25, v38

    move/from16 v35, v40

    move-wide/from16 v18, v57

    move-wide/from16 v14, v59

    move-wide/from16 v22, v61

    move-object/from16 v33, v7

    move-object/from16 v40, v20

    move-object/from16 v38, v21

    move/from16 v21, v56

    move-object/from16 v20, v5

    :goto_e
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v8, Lcom/stripe/stripeterminal/external/models/Charge;

    const/16 v51, 0x0

    invoke-direct/range {v8 .. v51}, Lcom/stripe/stripeterminal/external/models/Charge;-><init>(IILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_24
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

    .line 12
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/stripe/stripeterminal/external/models/Charge;

    move-result-object p1

    return-object p1
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 12
    sget-object v0, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;->descriptor:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/stripe/stripeterminal/external/models/Charge;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/stripe/stripeterminal/external/models/Charge;->write$Self$public_release(Lcom/stripe/stripeterminal/external/models/Charge;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/stripe/stripeterminal/external/models/Charge;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/stripe/stripeterminal/external/models/Charge;)V

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

    .line 12
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
