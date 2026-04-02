.class public final Lcom/stripe/transaction/DynamicCurrencyConversionData;
.super Ljava/lang/Object;
.source "DynamicCurrencyConversionData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bm\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000e\u001a\u00020\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0012J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u000cH\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\t\u0010)\u001a\u00020\u0005H\u00c6\u0003J\t\u0010*\u001a\u00020\u0005H\u00c6\u0003J\t\u0010+\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010,\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\u0010\u0010-\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u001cJ\t\u0010.\u001a\u00020\u0005H\u00c6\u0003J\t\u0010/\u001a\u00020\u000cH\u00c6\u0003J\t\u00100\u001a\u00020\u000cH\u00c6\u0003J\u008e\u0001\u00101\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000c2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u00c6\u0001\u00a2\u0006\u0002\u00102J\u0013\u00103\u001a\u00020\u000c2\u0008\u00104\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00105\u001a\u000206H\u00d6\u0001J\t\u00107\u001a\u000208H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0016R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001b\u0010\u001cR\u0015\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001cR\u0011\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010 R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010 R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0018R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u0018\u00a8\u00069"
    }
    d2 = {
        "Lcom/stripe/transaction/DynamicCurrencyConversionData;",
        "",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "transactionFxRate",
        "",
        "transactionMarkupPercent",
        "cardholderRate",
        "referenceFxRate",
        "referenceMarkupPercent",
        "fxAsOf",
        "setupFutureUsage",
        "",
        "requestIncrementalAuth",
        "requestExtendedAuth",
        "readerCountry",
        "Lcom/stripe/currency/CountryCode;",
        "cardCountry",
        "(Lcom/stripe/currency/Amount;FFFLjava/lang/Float;Ljava/lang/Float;FZZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getCardCountry",
        "()Lcom/stripe/currency/CountryCode;",
        "getCardholderRate",
        "()F",
        "getFxAsOf",
        "getReaderCountry",
        "getReferenceFxRate",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getReferenceMarkupPercent",
        "getRequestExtendedAuth",
        "()Z",
        "getRequestIncrementalAuth",
        "getSetupFutureUsage",
        "getTransactionFxRate",
        "getTransactionMarkupPercent",
        "component1",
        "component10",
        "component11",
        "component12",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Lcom/stripe/currency/Amount;FFFLjava/lang/Float;Ljava/lang/Float;FZZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)Lcom/stripe/transaction/DynamicCurrencyConversionData;",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final amount:Lcom/stripe/currency/Amount;

.field private final cardCountry:Lcom/stripe/currency/CountryCode;

.field private final cardholderRate:F

.field private final fxAsOf:F

.field private final readerCountry:Lcom/stripe/currency/CountryCode;

.field private final referenceFxRate:Ljava/lang/Float;

.field private final referenceMarkupPercent:Ljava/lang/Float;

.field private final requestExtendedAuth:Z

.field private final requestIncrementalAuth:Z

.field private final setupFutureUsage:Z

.field private final transactionFxRate:F

.field private final transactionMarkupPercent:F


# direct methods
.method public constructor <init>(Lcom/stripe/currency/Amount;FFFLjava/lang/Float;Ljava/lang/Float;FZZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)V
    .locals 1

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->amount:Lcom/stripe/currency/Amount;

    .line 9
    iput p2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionFxRate:F

    .line 10
    iput p3, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionMarkupPercent:F

    .line 11
    iput p4, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardholderRate:F

    .line 12
    iput-object p5, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceFxRate:Ljava/lang/Float;

    .line 13
    iput-object p6, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceMarkupPercent:Ljava/lang/Float;

    .line 14
    iput p7, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->fxAsOf:F

    .line 16
    iput-boolean p8, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->setupFutureUsage:Z

    .line 17
    iput-boolean p9, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestIncrementalAuth:Z

    .line 18
    iput-boolean p10, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestExtendedAuth:Z

    .line 21
    iput-object p11, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->readerCountry:Lcom/stripe/currency/CountryCode;

    .line 22
    iput-object p12, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardCountry:Lcom/stripe/currency/CountryCode;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/transaction/DynamicCurrencyConversionData;Lcom/stripe/currency/Amount;FFFLjava/lang/Float;Ljava/lang/Float;FZZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;ILjava/lang/Object;)Lcom/stripe/transaction/DynamicCurrencyConversionData;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->amount:Lcom/stripe/currency/Amount;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget p2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionFxRate:F

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget p3, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionMarkupPercent:F

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget p4, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardholderRate:F

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-object p5, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceFxRate:Ljava/lang/Float;

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-object p6, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceMarkupPercent:Ljava/lang/Float;

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget p7, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->fxAsOf:F

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-boolean p8, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->setupFutureUsage:Z

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-boolean p9, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestIncrementalAuth:Z

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget-boolean p10, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestExtendedAuth:Z

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    iget-object p11, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->readerCountry:Lcom/stripe/currency/CountryCode;

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    iget-object p12, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardCountry:Lcom/stripe/currency/CountryCode;

    :cond_b
    move-object p13, p11

    move-object p14, p12

    move p11, p9

    move p12, p10

    move p9, p7

    move p10, p8

    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->copy(Lcom/stripe/currency/Amount;FFFLjava/lang/Float;Ljava/lang/Float;FZZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)Lcom/stripe/transaction/DynamicCurrencyConversionData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestExtendedAuth:Z

    return v0
.end method

.method public final component11()Lcom/stripe/currency/CountryCode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->readerCountry:Lcom/stripe/currency/CountryCode;

    return-object v0
.end method

.method public final component12()Lcom/stripe/currency/CountryCode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardCountry:Lcom/stripe/currency/CountryCode;

    return-object v0
.end method

.method public final component2()F
    .locals 1

    iget v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionFxRate:F

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionMarkupPercent:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardholderRate:F

    return v0
.end method

.method public final component5()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceFxRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final component6()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceMarkupPercent:Ljava/lang/Float;

    return-object v0
.end method

.method public final component7()F
    .locals 1

    iget v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->fxAsOf:F

    return v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->setupFutureUsage:Z

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestIncrementalAuth:Z

    return v0
.end method

.method public final copy(Lcom/stripe/currency/Amount;FFFLjava/lang/Float;Ljava/lang/Float;FZZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)Lcom/stripe/transaction/DynamicCurrencyConversionData;
    .locals 14

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/transaction/DynamicCurrencyConversionData;

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/stripe/transaction/DynamicCurrencyConversionData;-><init>(Lcom/stripe/currency/Amount;FFFLjava/lang/Float;Ljava/lang/Float;FZZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;

    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionFxRate:F

    iget v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionFxRate:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionMarkupPercent:F

    iget v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionMarkupPercent:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardholderRate:F

    iget v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardholderRate:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceFxRate:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceFxRate:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceMarkupPercent:Ljava/lang/Float;

    iget-object v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceMarkupPercent:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->fxAsOf:F

    iget v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->fxAsOf:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->setupFutureUsage:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->setupFutureUsage:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestIncrementalAuth:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestIncrementalAuth:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestExtendedAuth:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestExtendedAuth:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->readerCountry:Lcom/stripe/currency/CountryCode;

    iget-object v3, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->readerCountry:Lcom/stripe/currency/CountryCode;

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardCountry:Lcom/stripe/currency/CountryCode;

    iget-object p1, p1, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardCountry:Lcom/stripe/currency/CountryCode;

    if-eq v1, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getCardCountry()Lcom/stripe/currency/CountryCode;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardCountry:Lcom/stripe/currency/CountryCode;

    return-object v0
.end method

.method public final getCardholderRate()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardholderRate:F

    return v0
.end method

.method public final getFxAsOf()F
    .locals 1

    .line 14
    iget v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->fxAsOf:F

    return v0
.end method

.method public final getReaderCountry()Lcom/stripe/currency/CountryCode;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->readerCountry:Lcom/stripe/currency/CountryCode;

    return-object v0
.end method

.method public final getReferenceFxRate()Ljava/lang/Float;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceFxRate:Ljava/lang/Float;

    return-object v0
.end method

.method public final getReferenceMarkupPercent()Ljava/lang/Float;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceMarkupPercent:Ljava/lang/Float;

    return-object v0
.end method

.method public final getRequestExtendedAuth()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestExtendedAuth:Z

    return v0
.end method

.method public final getRequestIncrementalAuth()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestIncrementalAuth:Z

    return v0
.end method

.method public final getSetupFutureUsage()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->setupFutureUsage:Z

    return v0
.end method

.method public final getTransactionFxRate()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionFxRate:F

    return v0
.end method

.method public final getTransactionMarkupPercent()F
    .locals 1

    .line 10
    iget v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionMarkupPercent:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionFxRate:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionMarkupPercent:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardholderRate:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceFxRate:Ljava/lang/Float;

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

    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceMarkupPercent:Ljava/lang/Float;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->fxAsOf:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->setupFutureUsage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestIncrementalAuth:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestExtendedAuth:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->readerCountry:Lcom/stripe/currency/CountryCode;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/stripe/currency/CountryCode;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardCountry:Lcom/stripe/currency/CountryCode;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/stripe/currency/CountryCode;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicCurrencyConversionData(amount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transactionFxRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionFxRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transactionMarkupPercent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->transactionMarkupPercent:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardholderRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardholderRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", referenceFxRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceFxRate:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", referenceMarkupPercent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->referenceMarkupPercent:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fxAsOf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->fxAsOf:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setupFutureUsage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->setupFutureUsage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestIncrementalAuth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestIncrementalAuth:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestExtendedAuth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->requestExtendedAuth:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", readerCountry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->readerCountry:Lcom/stripe/currency/CountryCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cardCountry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/transaction/DynamicCurrencyConversionData;->cardCountry:Lcom/stripe/currency/CountryCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
