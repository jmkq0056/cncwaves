.class public final Lcom/stripe/transaction/payment/MagstripePayment;
.super Lcom/stripe/transaction/payment/Payment;
.source "MagstripePayment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;,
        Lcom/stripe/transaction/payment/MagstripePayment$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u000eBE\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0003H\u0002\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/transaction/payment/MagstripePayment;",
        "Lcom/stripe/transaction/payment/Payment;",
        "encryptedTrack2",
        "",
        "ksn",
        "maskedPan",
        "expiryDate",
        "fallbackReason",
        "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;",
        "epb",
        "epbKsn",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Ljava/lang/String;Ljava/lang/String;)V",
        "cardBrand",
        "Lcom/stripe/proto/model/sdk/CreditCardBrand;",
        "FallbackReason",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move-object/from16 v1, p5

    const-string v3, "encryptedTrack2"

    move-object/from16 v8, p1

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "ksn"

    move-object/from16 v4, p2

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "maskedPan"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "expiryDate"

    move-object/from16 v5, p4

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "fallbackReason"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {v0}, Lcom/stripe/transaction/payment/Payment;-><init>()V

    .line 27
    invoke-virtual {v0}, Lcom/stripe/transaction/payment/MagstripePayment;->getRestSource()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v3

    .line 35
    sget-object v6, Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;->NONE:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    if-ne v1, v6, :cond_0

    .line 36
    const-string v6, "magnetic_stripe_track2"

    goto :goto_0

    .line 38
    :cond_0
    const-string v6, "magnetic_stripe_fallback"

    .line 40
    :goto_0
    sget-object v7, Lcom/stripe/transaction/payment/MagstripePayment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;->ordinal()I

    move-result v9

    aget v7, v7, v9

    const/4 v9, 0x1

    if-eq v7, v9, :cond_3

    const/4 v9, 0x2

    if-eq v7, v9, :cond_2

    const/4 v9, 0x3

    if-ne v7, v9, :cond_1

    .line 44
    const-string v7, "empty_candidate_list"

    goto :goto_1

    :cond_1
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v1

    .line 42
    :cond_2
    const-string v7, "chip_error"

    goto :goto_1

    .line 41
    :cond_3
    const-string v7, "no_chip"

    .line 29
    :goto_1
    new-instance v4, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    const v21, 0xf730

    const/16 v22, 0x0

    const-string v5, "encrypted_track_data"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, p2

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v4 .. v22}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v12, 0x7c

    .line 27
    const-string v5, "card_present"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v6, v4

    move-object v4, v3

    invoke-static/range {v4 .. v13}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/stripe/transaction/payment/MagstripePayment;->setRestSource(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)V

    .line 49
    invoke-virtual {v0}, Lcom/stripe/transaction/payment/MagstripePayment;->getSdkSource()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 52
    invoke-direct {v0, v2}, Lcom/stripe/transaction/payment/MagstripePayment;->cardBrand(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/CreditCardBrand;

    move-result-object v4

    .line 53
    sget-object v3, Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;->NONE:Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;

    if-ne v1, v3, :cond_4

    .line 54
    sget-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->SWIPED:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    goto :goto_2

    .line 56
    :cond_4
    sget-object v1, Lcom/stripe/proto/model/sdk/CardEntryMethod;->FSWIPE:Lcom/stripe/proto/model/sdk/CardEntryMethod;

    :goto_2
    move-object v5, v1

    .line 50
    new-instance v1, Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    invoke-direct/range {v1 .. v8}, Lcom/stripe/proto/model/sdk/CardPaymentMethod;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/CreditCardBrand;Lcom/stripe/proto/model/sdk/CardEntryMethod;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 p2, v1

    move/from16 p6, v2

    move-object/from16 p7, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p1, v9

    .line 49
    invoke-static/range {p1 .. p7}, Lcom/stripe/proto/model/sdk/PaymentMethod;->copy$default(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/stripe/transaction/payment/MagstripePayment;->setSdkSource(Lcom/stripe/proto/model/sdk/PaymentMethod;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x20

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_1

    move-object p8, v0

    goto :goto_0

    :cond_1
    move-object p8, p7

    :goto_0
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 11
    invoke-direct/range {p1 .. p8}, Lcom/stripe/transaction/payment/MagstripePayment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final cardBrand(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/CreditCardBrand;
    .locals 7

    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 65
    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->INVALID_CREDIT_CARD_BRAND:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v2, "substring(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v2, 0x28

    const/16 v3, 0x32

    if-gt v2, p1, :cond_1

    if-ge p1, v3, :cond_1

    .line 89
    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->VISA:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p1

    :cond_1
    const/16 v2, 0x3c

    if-gt v3, p1, :cond_2

    if-ge p1, v2, :cond_2

    .line 90
    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->MASTERCARD:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p1

    :cond_2
    const/16 v3, 0x16

    if-gt v3, p1, :cond_3

    const/16 v3, 0x1c

    if-ge p1, v3, :cond_3

    .line 91
    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->MASTERCARD:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p1

    :cond_3
    const/16 v3, 0x43

    if-ne p1, v3, :cond_4

    .line 92
    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->MASTERCARD:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p1

    :cond_4
    const/16 v3, 0x23

    if-ne p1, v3, :cond_5

    .line 93
    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->JCB:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p1

    :cond_5
    const/4 v3, 0x4

    .line 94
    new-array v3, v3, [Ljava/lang/Integer;

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/16 v4, 0x24

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/16 v4, 0x26

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/16 v4, 0x27

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x3

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->DINERS:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p1

    .line 95
    :cond_6
    new-array v3, v6, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    const/16 v0, 0x41

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->DISCOVER:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p1

    :cond_7
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_8

    .line 96
    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->CUP:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p1

    .line 97
    :cond_8
    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->UNKNOWN_CREDIT:Lcom/stripe/proto/model/sdk/CreditCardBrand;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 100
    :catch_0
    sget-object p1, Lcom/stripe/proto/model/sdk/CreditCardBrand;->INVALID_CREDIT_CARD_BRAND:Lcom/stripe/proto/model/sdk/CreditCardBrand;

    return-object p1
.end method
