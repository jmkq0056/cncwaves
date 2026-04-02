.class public final Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;
.super Lcom/stripe/loggingmodels/ApplicationTraceResult;
.source "SdkResponse.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSdkResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SdkResponse.kt\ncom/stripe/stripeterminal/internal/common/log/SdkResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n1#2:116\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000  2\u00020\u0001:\u0001 BW\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010R\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0016\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001c\u0010\u0014R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001e\u0010\u0014R\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u001f\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "outcome",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "method",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "exception",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "refund",
        "Lcom/stripe/stripeterminal/external/models/Refund;",
        "(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;)V",
        "intentId",
        "",
        "getIntentId$annotations",
        "()V",
        "methodId",
        "getMethodId$annotations",
        "metricOutcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "getMetricOutcome",
        "()Lcom/stripe/loggingmodels/Outcome;",
        "readerId",
        "getReaderId$annotations",
        "readerName",
        "getReaderName$annotations",
        "getSetupIntent$annotations",
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;


# instance fields
.field private intentId:Ljava/lang/String;

.field private methodId:Ljava/lang/String;

.field private readerId:Ljava/lang/String;

.field private readerName:Ljava/lang/String;

.field private setupIntent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;)V
    .locals 3

    .line 27
    move-object p7, p5

    check-cast p7, Ljava/lang/Throwable;

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p5, :cond_1

    .line 29
    invoke-virtual {p5}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object p5

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object v0

    .line 25
    :cond_1
    invoke-direct {p0, p1, p7, v1, v0}, Lcom/stripe/loggingmodels/ApplicationTraceResult;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->intentId:Ljava/lang/String;

    :cond_2
    if-eqz p6, :cond_3

    .line 59
    invoke-virtual {p6}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->setupIntent:Ljava/lang/String;

    :cond_3
    if-eqz p3, :cond_4

    .line 63
    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/PaymentMethod;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->methodId:Ljava/lang/String;

    :cond_4
    if-eqz p4, :cond_5

    .line 67
    invoke-virtual {p4}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->readerId:Ljava/lang/String;

    .line 68
    invoke-virtual {p4}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->readerName:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method synthetic constructor <init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_5

    move-object p8, v0

    goto :goto_0

    :cond_5
    move-object p8, p7

    :goto_0
    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 17
    invoke-direct/range {p1 .. p8}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;)V

    return-void
.end method

.method private static synthetic getIntentId$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "payment_intent_id"
    .end annotation

    return-void
.end method

.method private static synthetic getMethodId$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "payment_method_id"
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

.method private static synthetic getSetupIntent$annotations()V
    .locals 0
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "setup_intent_id"
    .end annotation

    return-void
.end method


# virtual methods
.method public getMetricOutcome()Lcom/stripe/loggingmodels/Outcome;
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 49
    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/stripe/loggingmodels/Outcome$TerminalError;

    check-cast v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/stripe/loggingmodels/Outcome$TerminalError;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V

    check-cast v1, Lcom/stripe/loggingmodels/Outcome;

    return-object v1

    .line 50
    :cond_0
    invoke-super {p0}, Lcom/stripe/loggingmodels/ApplicationTraceResult;->getMetricOutcome()Lcom/stripe/loggingmodels/Outcome;

    move-result-object v0

    return-object v0
.end method
