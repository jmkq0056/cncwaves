.class public final Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
.super Lcom/stripe/loggingmodels/ApplicationTrace;
.source "SdkRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0011\u0018\u0000 )2\u00020\u0001:\u0001)B\u009d\u0001\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\u0014\u0008\u0002\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0019\u00a2\u0006\u0002\u0010\u001aR\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001d\u0010\u001cR\u001a\u0010\u001e\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001f\u0010\u001cR\u001a\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008 \u0010\u001cR\u001a\u0010!\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\"\u0010\u001cR\u001a\u0010#\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008$\u0010\u001cR\u001a\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008%\u0010\u001cR\u001a\u0010&\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\'\u0010\u001cR\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008(\u0010\u001c\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "method",
        "",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "setupIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "setupIntentCancellationParameters",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "refundParameters",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "listLocationsParameters",
        "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "tags",
        "",
        "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;)V",
        "getCart$annotations",
        "()V",
        "getConfig$annotations",
        "paymentIntentId",
        "getPaymentIntentId$annotations",
        "getPaymentIntentParameters$annotations",
        "readerId",
        "getReaderId$annotations",
        "readerName",
        "getReaderName$annotations",
        "getSetupIntentCancellationParameters$annotations",
        "setupIntentId",
        "getSetupIntentId$annotations",
        "getSetupIntentParameters$annotations",
        "Companion",
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;


# instance fields
.field private cart:Lcom/stripe/stripeterminal/external/models/Cart;

.field private config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

.field private paymentIntentId:Ljava/lang/String;

.field private paymentIntentParameters:Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;

.field private readerId:Ljava/lang/String;

.field private readerName:Ljava/lang/String;

.field private setupIntentCancellationParameters:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

.field private setupIntentId:Ljava/lang/String;

.field private setupIntentParameters:Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
            "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
            "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
            "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;",
            "Lcom/stripe/stripeterminal/external/models/Cart;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 35
    const-string p9, "SdkRequest"

    invoke-direct {p0, p9, p1, p12}, Lcom/stripe/loggingmodels/ApplicationTrace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 43
    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p1

    :goto_0
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->paymentIntentId:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->paymentIntentParameters:Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;

    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_1
    move-object p3, p1

    :goto_1
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->readerId:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_2
    move-object p2, p1

    :goto_2
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->readerName:Ljava/lang/String;

    if-eqz p6, :cond_3

    .line 59
    invoke-virtual {p6}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_3
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->setupIntentId:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->setupIntentParameters:Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;

    .line 67
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->setupIntentCancellationParameters:Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;

    .line 70
    iput-object p11, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->cart:Lcom/stripe/stripeterminal/external/models/Cart;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x2

    const/4 v0, 0x0

    if-eqz p14, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_5

    move-object p7, v0

    :cond_5
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_6

    move-object p8, v0

    :cond_6
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_7

    move-object p9, v0

    :cond_7
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_8

    move-object p10, v0

    :cond_8
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_9

    move-object p11, v0

    :cond_9
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_a

    .line 34
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p12

    :cond_a
    move-object p13, p12

    move-object p12, p11

    move-object p11, p10

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

    .line 22
    invoke-direct/range {p1 .. p13}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/models/Cart;Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic getCart$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getConfig$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "discovery_configuration"
    .end annotation

    return-void
.end method

.method private static synthetic getPaymentIntentId$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "payment_intent_id"
    .end annotation

    return-void
.end method

.method private static synthetic getPaymentIntentParameters$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "payment_intent_parameters"
    .end annotation

    return-void
.end method

.method private static synthetic getReaderId$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reader_id"
    .end annotation

    return-void
.end method

.method private static synthetic getReaderName$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "reader_name"
    .end annotation

    return-void
.end method

.method private static synthetic getSetupIntentCancellationParameters$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "setup_intent_cancellation_parameters"
    .end annotation

    return-void
.end method

.method private static synthetic getSetupIntentId$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "setup_intent_id"
    .end annotation

    return-void
.end method

.method private static synthetic getSetupIntentParameters$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "setup_intent_parameters"
    .end annotation

    return-void
.end method
