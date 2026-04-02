.class public final Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
.super Ljava/lang/Object;
.source "PaymentMethodData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B{\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0005H\u00c2\u0003J\t\u0010B\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\rH\u00c6\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u000bH\u00c6\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u007f\u0010I\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00c6\u0001J\u0013\u0010J\u001a\u00020\'2\u0008\u0010K\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010L\u001a\u00020MH\u00d6\u0001J\t\u0010N\u001a\u00020\u0003H\u00d6\u0001R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001e\u0010\u0008\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u0015\u001a\u0004\u0008\u001d\u0010\u0017R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010#R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0011\u0010&\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010(R\u0011\u0010)\u001a\u00020\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010(R\u001e\u0010*\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008+\u0010\u0015\u001a\u0004\u0008,\u0010\u0017R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010%R\u001e\u0010.\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008/\u0010\u0015\u001a\u0004\u00080\u0010\u0017R\u001e\u00101\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00082\u0010\u0015\u001a\u0004\u00083\u0010\u0017R\u0011\u00104\u001a\u000205\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00109R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008:\u0010\u0015\u001a\u0004\u0008;\u0010\u0017R\u001e\u0010<\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008=\u0010\u0015\u001a\u0004\u0008>\u0010\u0017\u00a8\u0006O"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "",
        "tlv",
        "",
        "magStripeReadResult",
        "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;",
        "swipeReason",
        "Lcom/stripe/stripeterminal/internal/models/SwipeReason;",
        "encryptedTrack2",
        "cryptogram",
        "ipPaymentMethod",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "ipPaymentIntent",
        "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
        "nonCardPaymentMethod",
        "ipCollectedData",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "encryptionType",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;",
        "(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;)V",
        "getCryptogram$annotations",
        "()V",
        "getCryptogram",
        "()Ljava/lang/String;",
        "decodedTlv",
        "Lcom/stripe/hardware/emv/TlvMap;",
        "getDecodedTlv",
        "()Lcom/stripe/hardware/emv/TlvMap;",
        "getEncryptedTrack2$annotations",
        "getEncryptedTrack2",
        "getEncryptionType",
        "()Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;",
        "getIpCollectedData",
        "()Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "getIpPaymentIntent",
        "()Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;",
        "getIpPaymentMethod",
        "()Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "isInterac",
        "",
        "()Z",
        "isNonCardPaymentMethod",
        "ksn",
        "getKsn$annotations",
        "getKsn",
        "getNonCardPaymentMethod",
        "pinBlock",
        "getPinBlock$annotations",
        "getPinBlock",
        "pinBlockKsn",
        "getPinBlockKsn$annotations",
        "getPinBlockKsn",
        "readMethod",
        "Lcom/stripe/stripeterminal/internal/models/ReadMethod;",
        "getReadMethod",
        "()Lcom/stripe/stripeterminal/internal/models/ReadMethod;",
        "getSwipeReason",
        "()Lcom/stripe/stripeterminal/internal/models/SwipeReason;",
        "getTlv$annotations",
        "getTlv",
        "track2",
        "getTrack2$annotations",
        "getTrack2",
        "component1",
        "component10",
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
.field private final cryptogram:Ljava/lang/String;

.field private final decodedTlv:Lcom/stripe/hardware/emv/TlvMap;

.field private final encryptedTrack2:Ljava/lang/String;

.field private final encryptionType:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

.field private final ipCollectedData:Lcom/stripe/proto/model/rest/ReaderCollectedData;

.field private final ipPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

.field private final ipPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

.field private final isInterac:Z

.field private final isNonCardPaymentMethod:Z

.field private final ksn:Ljava/lang/String;

.field private final magStripeReadResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

.field private final nonCardPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

.field private final pinBlock:Ljava/lang/String;

.field private final pinBlockKsn:Ljava/lang/String;

.field private final synthetic readMethod:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

.field private final swipeReason:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

.field private final tlv:Ljava/lang/String;

.field private final track2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 13

    const/16 v11, 0x3ff

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;)V
    .locals 1

    const-string v0, "swipeReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->tlv:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->magStripeReadResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    .line 18
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->swipeReason:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    .line 19
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptedTrack2:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->cryptogram:Ljava/lang/String;

    .line 23
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 24
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    .line 25
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->nonCardPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 26
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipCollectedData:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    .line 27
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptionType:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 30
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/models/TlvDecoder_androidKt;->decodeTlvMap(Ljava/lang/String;)Lcom/stripe/hardware/emv/TlvMap;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->decodedTlv:Lcom/stripe/hardware/emv/TlvMap;

    if-eqz p1, :cond_4

    .line 37
    const-string p4, "9F39"

    invoke-virtual {p1, p4}, Lcom/stripe/hardware/emv/TlvMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 38
    sget-object p5, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->Companion:Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;

    invoke-virtual {p5, p4}, Lcom/stripe/stripeterminal/internal/models/ReadMethod$Companion;->fromPosEntryMode$public_release(Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object p4

    if-nez p4, :cond_2

    .line 39
    :cond_1
    move-object p4, p0

    check-cast p4, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    .line 40
    iget-object p4, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->cryptogram:Ljava/lang/String;

    if-eqz p4, :cond_3

    .line 45
    sget-object p4, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACTLESS_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    :cond_2
    if-nez p4, :cond_5

    goto :goto_1

    .line 52
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to parse reader method from TLV data"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_4
    :goto_1
    sget-object p4, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->MAGNETIC_STRIPE_TRACK_2:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    .line 36
    :cond_5
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->readMethod:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    if-eqz p2, :cond_6

    .line 61
    invoke-virtual {p2}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getEncryptedTrack2()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_6
    move-object p4, p3

    :goto_2
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->track2:Ljava/lang/String;

    if-eqz p2, :cond_7

    .line 67
    invoke-virtual {p2}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getKsn()Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    :cond_7
    move-object p4, p3

    :goto_3
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ksn:Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 73
    invoke-virtual {p2}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getEpb()Ljava/lang/String;

    move-result-object p4

    goto :goto_4

    :cond_8
    move-object p4, p3

    :goto_4
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->pinBlock:Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 79
    invoke-virtual {p2}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->getEpbKsn()Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_9
    move-object p2, p3

    :goto_5
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->pinBlockKsn:Ljava/lang/String;

    if-eqz p1, :cond_a

    .line 84
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/TlvMap;->getApplicationId()Lcom/stripe/hardware/emv/ApplicationId;

    move-result-object p3

    :cond_a
    sget-object p1, Lcom/stripe/hardware/emv/ApplicationId;->INTERAC:Lcom/stripe/hardware/emv/ApplicationId;

    const/4 p2, 0x1

    const/4 p4, 0x0

    if-ne p3, p1, :cond_b

    move p1, p2

    goto :goto_6

    :cond_b
    move p1, p4

    :goto_6
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isInterac:Z

    if-eqz p8, :cond_c

    goto :goto_7

    :cond_c
    move p2, p4

    .line 86
    :goto_7
    iput-boolean p2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isNonCardPaymentMethod:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    .line 18
    sget-object p3, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->CHIP_ERROR:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    move-object p11, v0

    goto :goto_0

    :cond_9
    move-object p11, p10

    :goto_0
    move-object p10, p9

    move-object p9, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 14
    invoke-direct/range {p1 .. p11}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;)V

    return-void
.end method

.method private final component2()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->magStripeReadResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 0

    and-int/lit8 p12, p11, 0x1

    if-eqz p12, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->tlv:Ljava/lang/String;

    :cond_0
    and-int/lit8 p12, p11, 0x2

    if-eqz p12, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->magStripeReadResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->swipeReason:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    iget-object p4, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptedTrack2:Ljava/lang/String;

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    iget-object p5, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->cryptogram:Ljava/lang/String;

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    iget-object p6, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    iget-object p7, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    iget-object p8, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->nonCardPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    iget-object p9, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipCollectedData:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    iget-object p10, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptionType:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    :cond_9
    move-object p11, p9

    move-object p12, p10

    move-object p9, p7

    move-object p10, p8

    move-object p7, p5

    move-object p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p12}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->copy(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getCryptogram$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getEncryptedTrack2$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getKsn$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPinBlock$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getPinBlockKsn$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTlv$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getTrack2$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->tlv:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptionType:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    return-object v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/internal/models/SwipeReason;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->swipeReason:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptedTrack2:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->cryptogram:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/stripe/proto/model/sdk/PaymentMethod;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object v0
.end method

.method public final component7()Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    return-object v0
.end method

.method public final component8()Lcom/stripe/proto/model/sdk/PaymentMethod;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->nonCardPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object v0
.end method

.method public final component9()Lcom/stripe/proto/model/rest/ReaderCollectedData;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipCollectedData:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 12

    const-string v0, "swipeReason"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;-><init>(Ljava/lang/String;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/stripeterminal/internal/models/SwipeReason;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->tlv:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->tlv:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->magStripeReadResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->magStripeReadResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->swipeReason:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->swipeReason:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptedTrack2:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptedTrack2:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->cryptogram:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->cryptogram:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->nonCardPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->nonCardPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipCollectedData:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipCollectedData:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptionType:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptionType:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getCryptogram()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->cryptogram:Ljava/lang/String;

    return-object v0
.end method

.method public final getDecodedTlv()Lcom/stripe/hardware/emv/TlvMap;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->decodedTlv:Lcom/stripe/hardware/emv/TlvMap;

    return-object v0
.end method

.method public final getEncryptedTrack2()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptedTrack2:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncryptionType()Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptionType:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    return-object v0
.end method

.method public final getIpCollectedData()Lcom/stripe/proto/model/rest/ReaderCollectedData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipCollectedData:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    return-object v0
.end method

.method public final getIpPaymentIntent()Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    return-object v0
.end method

.method public final getIpPaymentMethod()Lcom/stripe/proto/model/sdk/PaymentMethod;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object v0
.end method

.method public final getKsn()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ksn:Ljava/lang/String;

    return-object v0
.end method

.method public final getNonCardPaymentMethod()Lcom/stripe/proto/model/sdk/PaymentMethod;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->nonCardPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object v0
.end method

.method public final getPinBlock()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->pinBlock:Ljava/lang/String;

    return-object v0
.end method

.method public final getPinBlockKsn()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->pinBlockKsn:Ljava/lang/String;

    return-object v0
.end method

.method public final getReadMethod()Lcom/stripe/stripeterminal/internal/models/ReadMethod;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->readMethod:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    return-object v0
.end method

.method public final getSwipeReason()Lcom/stripe/stripeterminal/internal/models/SwipeReason;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->swipeReason:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    return-object v0
.end method

.method public final getTlv()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->tlv:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrack2()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->track2:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->tlv:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->magStripeReadResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->swipeReason:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/models/SwipeReason;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptedTrack2:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->cryptogram:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/stripe/proto/model/sdk/PaymentMethod;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->nonCardPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/stripe/proto/model/sdk/PaymentMethod;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipCollectedData:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Lcom/stripe/proto/model/rest/ReaderCollectedData;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptionType:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final isInterac()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isInterac:Z

    return v0
.end method

.method public final isNonCardPaymentMethod()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->isNonCardPaymentMethod:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentMethodData(tlv=\u2588\u2588, magStripeReadResult="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->magStripeReadResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", swipeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->swipeReason:Lcom/stripe/stripeterminal/internal/models/SwipeReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptedTrack2=\u2588\u2588, cryptogram=\u2588\u2588, ipPaymentMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ipPaymentIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonCardPaymentMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->nonCardPaymentMethod:Lcom/stripe/proto/model/sdk/PaymentMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ipCollectedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->ipCollectedData:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->encryptionType:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
