.class public final Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;
.super Ljava/lang/Object;
.source "DynamicCurrencyConversionSelectionModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010 \u001a\u00020\u0006H\u00c6\u0003J\t\u0010!\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\"\u001a\u00020\tH\u00c6\u0003J\t\u0010#\u001a\u00020\u000bH\u00c6\u0003J\t\u0010$\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003Jg\u0010\'\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u00c6\u0001J\u0013\u0010(\u001a\u00020\u000b2\u0008\u0010)\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010*\u001a\u00020+H\u00d6\u0001J\t\u0010,\u001a\u00020-H\u00d6\u0001R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001b\u00a8\u0006."
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;",
        "",
        "originalAmount",
        "Lcom/stripe/currency/Amount;",
        "targetAmount",
        "fxRate",
        "",
        "markupPercent",
        "disclosureMode",
        "Lcom/stripe/hardware/paymentcollection/DisclosureMode;",
        "isEu",
        "",
        "enableCustomerCancellation",
        "readerCountry",
        "Lcom/stripe/currency/CountryCode;",
        "cardCountry",
        "(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;FFLcom/stripe/hardware/paymentcollection/DisclosureMode;ZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)V",
        "getCardCountry",
        "()Lcom/stripe/currency/CountryCode;",
        "getDisclosureMode",
        "()Lcom/stripe/hardware/paymentcollection/DisclosureMode;",
        "getEnableCustomerCancellation",
        "()Z",
        "getFxRate",
        "()F",
        "getMarkupPercent",
        "getOriginalAmount",
        "()Lcom/stripe/currency/Amount;",
        "getReaderCountry",
        "getTargetAmount",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
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
.field private final cardCountry:Lcom/stripe/currency/CountryCode;

.field private final disclosureMode:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

.field private final enableCustomerCancellation:Z

.field private final fxRate:F

.field private final isEu:Z

.field private final markupPercent:F

.field private final originalAmount:Lcom/stripe/currency/Amount;

.field private final readerCountry:Lcom/stripe/currency/CountryCode;

.field private final targetAmount:Lcom/stripe/currency/Amount;


# direct methods
.method public constructor <init>(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;FFLcom/stripe/hardware/paymentcollection/DisclosureMode;ZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)V
    .locals 1

    const-string v0, "originalAmount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetAmount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disclosureMode"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->originalAmount:Lcom/stripe/currency/Amount;

    .line 19
    iput-object p2, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->targetAmount:Lcom/stripe/currency/Amount;

    .line 23
    iput p3, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->fxRate:F

    .line 27
    iput p4, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->markupPercent:F

    .line 31
    iput-object p5, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->disclosureMode:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    .line 35
    iput-boolean p6, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->isEu:Z

    .line 39
    iput-boolean p7, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->enableCustomerCancellation:Z

    .line 44
    iput-object p8, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->readerCountry:Lcom/stripe/currency/CountryCode;

    .line 49
    iput-object p9, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->cardCountry:Lcom/stripe/currency/CountryCode;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;FFLcom/stripe/hardware/paymentcollection/DisclosureMode;ZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;ILjava/lang/Object;)Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;
    .locals 0

    and-int/lit8 p11, p10, 0x1

    if-eqz p11, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->originalAmount:Lcom/stripe/currency/Amount;

    :cond_0
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->targetAmount:Lcom/stripe/currency/Amount;

    :cond_1
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_2

    iget p3, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->fxRate:F

    :cond_2
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_3

    iget p4, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->markupPercent:F

    :cond_3
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_4

    iget-object p5, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->disclosureMode:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    :cond_4
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_5

    iget-boolean p6, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->isEu:Z

    :cond_5
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_6

    iget-boolean p7, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->enableCustomerCancellation:Z

    :cond_6
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_7

    iget-object p8, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->readerCountry:Lcom/stripe/currency/CountryCode;

    :cond_7
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_8

    iget-object p9, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->cardCountry:Lcom/stripe/currency/CountryCode;

    :cond_8
    move-object p10, p8

    move-object p11, p9

    move p8, p6

    move p9, p7

    move p6, p4

    move-object p7, p5

    move-object p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p11}, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->copy(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;FFLcom/stripe/hardware/paymentcollection/DisclosureMode;ZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->originalAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component2()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->targetAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->fxRate:F

    return v0
.end method

.method public final component4()F
    .locals 1

    iget v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->markupPercent:F

    return v0
.end method

.method public final component5()Lcom/stripe/hardware/paymentcollection/DisclosureMode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->disclosureMode:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->isEu:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->enableCustomerCancellation:Z

    return v0
.end method

.method public final component8()Lcom/stripe/currency/CountryCode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->readerCountry:Lcom/stripe/currency/CountryCode;

    return-object v0
.end method

.method public final component9()Lcom/stripe/currency/CountryCode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->cardCountry:Lcom/stripe/currency/CountryCode;

    return-object v0
.end method

.method public final copy(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;FFLcom/stripe/hardware/paymentcollection/DisclosureMode;ZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;
    .locals 11

    const-string v0, "originalAmount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetAmount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disclosureMode"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;-><init>(Lcom/stripe/currency/Amount;Lcom/stripe/currency/Amount;FFLcom/stripe/hardware/paymentcollection/DisclosureMode;ZZLcom/stripe/currency/CountryCode;Lcom/stripe/currency/CountryCode;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->originalAmount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->originalAmount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->targetAmount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->targetAmount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->fxRate:F

    iget v3, p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->fxRate:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->markupPercent:F

    iget v3, p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->markupPercent:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->disclosureMode:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->disclosureMode:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->isEu:Z

    iget-boolean v3, p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->isEu:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->enableCustomerCancellation:Z

    iget-boolean v3, p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->enableCustomerCancellation:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->readerCountry:Lcom/stripe/currency/CountryCode;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->readerCountry:Lcom/stripe/currency/CountryCode;

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->cardCountry:Lcom/stripe/currency/CountryCode;

    iget-object p1, p1, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->cardCountry:Lcom/stripe/currency/CountryCode;

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getCardCountry()Lcom/stripe/currency/CountryCode;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->cardCountry:Lcom/stripe/currency/CountryCode;

    return-object v0
.end method

.method public final getDisclosureMode()Lcom/stripe/hardware/paymentcollection/DisclosureMode;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->disclosureMode:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    return-object v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getFxRate()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->fxRate:F

    return v0
.end method

.method public final getMarkupPercent()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->markupPercent:F

    return v0
.end method

.method public final getOriginalAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->originalAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getReaderCountry()Lcom/stripe/currency/CountryCode;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->readerCountry:Lcom/stripe/currency/CountryCode;

    return-object v0
.end method

.method public final getTargetAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->targetAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->originalAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->targetAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->fxRate:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->markupPercent:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->disclosureMode:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/DisclosureMode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->isEu:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->enableCustomerCancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->readerCountry:Lcom/stripe/currency/CountryCode;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/currency/CountryCode;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->cardCountry:Lcom/stripe/currency/CountryCode;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/stripe/currency/CountryCode;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isEu()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->isEu:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DynamicCurrencyConversionSelectionModel(originalAmount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->originalAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->targetAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fxRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->fxRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", markupPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->markupPercent:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", disclosureMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->disclosureMode:Lcom/stripe/hardware/paymentcollection/DisclosureMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->isEu:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableCustomerCancellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", readerCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->readerCountry:Lcom/stripe/currency/CountryCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/DynamicCurrencyConversionSelectionModel;->cardCountry:Lcom/stripe/currency/CountryCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
