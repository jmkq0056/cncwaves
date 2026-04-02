.class public final Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;
.super Ljava/lang/Object;
.source "PaymentMethodDataMaker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J \u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006J@\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006J\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;",
        "",
        "()V",
        "newEmvData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "tlv",
        "",
        "newEncryptedEmvData",
        "encryptedTrack2",
        "cryptogram",
        "newEncryptedEmvDataWithTtpaPin",
        "clientPublicKey",
        "serverPublicKeyHash",
        "installationUuid",
        "pinBlock",
        "newIpData",
        "paymentMethod",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "paymentIntent",
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
        "newMsrData",
        "result",
        "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;",
        "fallbackReason",
        "Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;",
        "common_publish"
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
.field public static final INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newEmvData(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 14

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/16 v12, 0x3fe

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final newEncryptedEmvData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 14

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedTrack2"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/16 v12, 0x3e6

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v13}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final newEncryptedEmvDataWithTtpaPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 14

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedTrack2"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientPublicKey"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverPublicKeyHash"

    move-object/from16 v8, p5

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installationUuid"

    move-object/from16 v9, p6

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pinBlock"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v6, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v8, v6

    .line 50
    new-instance v11, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    .line 51
    sget-object v7, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;->ecka_ttpa:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;

    move-object v6, v11

    const/16 v11, 0x8

    move-object v9, v1

    .line 50
    invoke-direct/range {v6 .. v12}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;-><init>(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    new-instance v1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/16 v12, 0x1e6

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v11, v6

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v13}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final newIpData(Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 13

    const-string v0, "paymentMethod"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p1, Lcom/stripe/proto/model/sdk/PaymentMethod;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/16 v11, 0x37f

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, p1

    invoke-direct/range {v0 .. v12}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 87
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/16 v11, 0x39f

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v12}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final newMsrData(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 13

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/PaymentMethodDataMaker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/transaction/payment/MagstripePayment$FallbackReason;->ordinal()I

    move-result p2

    aget p2, v0, p2

    :goto_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 75
    sget-object p2, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->CHIP_ERROR:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    goto :goto_1

    .line 74
    :cond_1
    sget-object p2, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->EMPTY_CANDIDATE_LIST:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    goto :goto_1

    .line 73
    :cond_2
    sget-object p2, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->CHIP_ERROR:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    :goto_1
    move-object v3, p2

    .line 77
    new-instance v0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/16 v11, 0x3f9

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v12}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
