.class public final Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;
.super Ljava/lang/Object;
.source "DynamicCurrencyConversion.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$$serializer;,
        Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 :2\u00060\u0001j\u0002`\u0002:\u00029:B_\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0002\u0010\u0012BI\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0002\u0010\u0013J\t\u0010!\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0008H\u00c6\u0003J\t\u0010#\u001a\u00020\nH\u00c6\u0003J\t\u0010$\u001a\u00020\nH\u00c6\u0003J\t\u0010%\u001a\u00020\nH\u00c6\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010\'\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\t\u0010(\u001a\u00020\nH\u00c6\u0003Jb\u0010)\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nH\u00c6\u0001\u00a2\u0006\u0002\u0010*J\u0013\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u00d6\u0003J\t\u0010/\u001a\u00020\u0004H\u00d6\u0001J\t\u00100\u001a\u00020\u0008H\u00d6\u0001J&\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u00002\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u00c1\u0001\u00a2\u0006\u0002\u00088R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u000f\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0017R\u0015\u0010\r\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001b\u0010\u001cR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001cR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u0017R\u0011\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0017\u00a8\u0006;"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "amount",
        "",
        "currency",
        "",
        "transactionFxRate",
        "",
        "transactionMarkupPercent",
        "cardholderRate",
        "referenceFxRate",
        "referenceMarkupPercent",
        "fxAsOf",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IJLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;FLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(JLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;F)V",
        "getAmount",
        "()J",
        "getCardholderRate",
        "()F",
        "getCurrency",
        "()Ljava/lang/String;",
        "getFxAsOf",
        "getReferenceFxRate",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getReferenceMarkupPercent",
        "getTransactionFxRate",
        "getTransactionMarkupPercent",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "copy",
        "(JLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;F)Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;",
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
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$Companion;


# instance fields
.field private final amount:J

.field private final cardholderRate:F

.field private final currency:Ljava/lang/String;

.field private final fxAsOf:F

.field private final referenceFxRate:Ljava/lang/Float;

.field private final referenceMarkupPercent:Ljava/lang/Float;

.field private final transactionFxRate:F

.field private final transactionMarkupPercent:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->Companion:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IJLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;FLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit16 p11, p1, 0xff

    const/16 v0, 0xff

    if-eq v0, p11, :cond_0

    .line 8
    sget-object p11, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$$serializer;

    invoke-virtual {p11}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p11

    invoke-static {p1, v0, p11}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->amount:J

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->currency:Ljava/lang/String;

    iput p5, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionFxRate:F

    iput p6, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionMarkupPercent:F

    iput p7, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->cardholderRate:F

    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceFxRate:Ljava/lang/Float;

    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceMarkupPercent:Ljava/lang/Float;

    iput p10, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->fxAsOf:F

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;F)V
    .locals 1

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->amount:J

    .line 11
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->currency:Ljava/lang/String;

    .line 12
    iput p4, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionFxRate:F

    .line 13
    iput p5, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionMarkupPercent:F

    .line 14
    iput p6, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->cardholderRate:F

    .line 15
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceFxRate:Ljava/lang/Float;

    .line 16
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceMarkupPercent:Ljava/lang/Float;

    .line 17
    iput p9, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->fxAsOf:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;JLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;FILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;
    .locals 10

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget-wide p1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->amount:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->currency:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_2

    iget p4, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionFxRate:F

    :cond_2
    move v4, p4

    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    iget p5, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionMarkupPercent:F

    :cond_3
    move v5, p5

    and-int/lit8 p1, v0, 0x10

    if-eqz p1, :cond_4

    iget p1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->cardholderRate:F

    move v6, p1

    goto :goto_0

    :cond_4
    move/from16 v6, p6

    :goto_0
    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceFxRate:Ljava/lang/Float;

    move-object v7, p1

    goto :goto_1

    :cond_5
    move-object/from16 v7, p7

    :goto_1
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceMarkupPercent:Ljava/lang/Float;

    move-object v8, p1

    goto :goto_2

    :cond_6
    move-object/from16 v8, p8

    :goto_2
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->fxAsOf:F

    move v9, p1

    goto :goto_3

    :cond_7
    move/from16 v9, p9

    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->copy(JLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;F)Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    .line 8
    iget-wide v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->amount:J

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->currency:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionFxRate:F

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionMarkupPercent:F

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->cardholderRate:F

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    sget-object v0, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceFxRate:Ljava/lang/Float;

    const/4 v2, 0x5

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceMarkupPercent:Ljava/lang/Float;

    const/4 v2, 0x6

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x7

    iget p0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->fxAsOf:F

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeFloatElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IF)V

    return-void
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->amount:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionFxRate:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionMarkupPercent:F

    return v0
.end method

.method public final component5()F
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->cardholderRate:F

    return v0
.end method

.method public final component6()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceFxRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final component7()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceMarkupPercent:Ljava/lang/Float;

    return-object v0
.end method

.method public final component8()F
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->fxAsOf:F

    return v0
.end method

.method public final copy(JLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;F)Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;
    .locals 11

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;-><init>(JLjava/lang/String;FFFLjava/lang/Float;Ljava/lang/Float;F)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;

    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->amount:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionFxRate:F

    iget v3, p1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionFxRate:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionMarkupPercent:F

    iget v3, p1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionMarkupPercent:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->cardholderRate:F

    iget v3, p1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->cardholderRate:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceFxRate:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceFxRate:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceMarkupPercent:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceMarkupPercent:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->fxAsOf:F

    iget p1, p1, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->fxAsOf:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getAmount()J
    .locals 2

    .line 10
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->amount:J

    return-wide v0
.end method

.method public final getCardholderRate()F
    .locals 1

    .line 14
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->cardholderRate:F

    return v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getFxAsOf()F
    .locals 1

    .line 17
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->fxAsOf:F

    return v0
.end method

.method public final getReferenceFxRate()Ljava/lang/Float;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceFxRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getReferenceMarkupPercent()Ljava/lang/Float;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceMarkupPercent:Ljava/lang/Float;

    return-object v0
.end method

.method public final getTransactionFxRate()F
    .locals 1

    .line 12
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionFxRate:F

    return v0
.end method

.method public final getTransactionMarkupPercent()F
    .locals 1

    .line 13
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionMarkupPercent:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->amount:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionFxRate:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionMarkupPercent:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->cardholderRate:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceFxRate:Ljava/lang/Float;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceMarkupPercent:Ljava/lang/Float;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->fxAsOf:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicCurrencyConversionOptions(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->amount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionFxRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionFxRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transactionMarkupPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->transactionMarkupPercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardholderRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->cardholderRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", referenceFxRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceFxRate:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", referenceMarkupPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->referenceMarkupPercent:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fxAsOf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/DynamicCurrencyConversionOptions;->fxAsOf:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
