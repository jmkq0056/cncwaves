.class public abstract Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;
.super Ljava/lang/Object;
.source "RemoteReaderController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController$Companion;,
        Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteReaderController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteReaderController.kt\ncom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n1#2:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u0000 \u008f\u00012\u00020\u0001:\u0002\u008f\u0001B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 J!\u0010!\u001a\u0002H\"\"\u0004\u0008\u0000\u0010\"2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H\"0$H\u0004\u00a2\u0006\u0002\u0010%J)\u0010&\u001a\u0002H\"\"\u0004\u0008\u0000\u0010\"2\u0006\u0010\'\u001a\u00020(2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H\"0$H\u0004\u00a2\u0006\u0002\u0010)J\u0008\u0010*\u001a\u00020+H&J\u0008\u0010,\u001a\u00020+H&J\u0008\u0010-\u001a\u00020+H&J\u0008\u0010.\u001a\u00020+H&J\u0008\u0010/\u001a\u00020+H&J\u0010\u00100\u001a\u00020+2\u0006\u00101\u001a\u000202H&J\u0010\u00103\u001a\u00020+2\u0006\u00101\u001a\u000202H&J\u0010\u00104\u001a\u00020+2\u0006\u00101\u001a\u000202H&J\u0010\u00105\u001a\u0002062\u0006\u00107\u001a\u000206H&J\u0018\u00108\u001a\u0002092\u0006\u0010:\u001a\u0002092\u0006\u0010;\u001a\u00020<H&J\u0008\u0010=\u001a\u00020+H&J@\u0010>\u001a\u00020+2\u0006\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020B2\u0012\u0010C\u001a\u000e\u0012\u0004\u0012\u00020E\u0012\u0004\u0012\u00020+0D2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020+0DH&J\u0010\u0010H\u001a\u00020I2\u0006\u0010J\u001a\u00020KH&J \u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u001eH&J)\u0010S\u001a\u0002062\u0006\u00107\u001a\u0002062\u0008\u0010T\u001a\u0004\u0018\u00010(2\u0008\u0010U\u001a\u0004\u0018\u00010\u001eH&\u00a2\u0006\u0002\u0010VJ\u0010\u0010W\u001a\u0002092\u0006\u0010X\u001a\u000209H&J\u001e\u0010Y\u001a\u00020+2\u0006\u0010\u001c\u001a\u00020\t2\u000c\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020+0$H&J\u0016\u0010[\u001a\u0002062\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_J\u0018\u0010`\u001a\u0002092\u0006\u0010a\u001a\u00020b2\u0006\u0010^\u001a\u00020_H&J\u0008\u0010c\u001a\u00020+H&J(\u0010d\u001a\u0008\u0012\u0004\u0012\u00020\t0e2\u0006\u0010\u001d\u001a\u00020\u001e2\u0008\u0010f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010g\u001a\u00020hH&J\u0008\u0010i\u001a\u00020+H&J\u0008\u0010\u0018\u001a\u00020\u000fH&J \u0010j\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H$J\u0018\u0010k\u001a\u0002062\u0006\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020_H$J\u0008\u0010l\u001a\u00020+H&JD\u0010m\u001a\u00020+2\u0006\u0010n\u001a\u00020\u001e2\n\u0008\u0002\u0010o\u001a\u0004\u0018\u00010p2\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020+0D2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020+0DH&J\u0010\u0010s\u001a\u00020+2\u0006\u0010t\u001a\u00020uH&J\u0010\u0010v\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020wH&JT\u0010x\u001a\u00020+2\u0006\u0010y\u001a\u00020z2\u0008\u0010{\u001a\u0004\u0018\u00010\u001e2\u0008\u0010|\u001a\u0004\u0018\u00010\u001e2\u0006\u0010A\u001a\u00020B2\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020+0D2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020+0DH&J\u00cc\u0001\u0010}\u001a\u00020+2\u0006\u0010y\u001a\u00020z2\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020+0D2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020+0D2\u0006\u0010~\u001a\u00020B2\u0006\u0010\u007f\u001a\u00020B2\u0007\u0010\u0080\u0001\u001a\u00020B2\u0008\u0010n\u001a\u0004\u0018\u00010\u001e2\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010z2\u0010\u0010\u0082\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0083\u0001\u0018\u00010e2\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u001e2\u0008\u0010o\u001a\u0004\u0018\u00010p2\u0006\u0010A\u001a\u00020B2\t\u00107\u001a\u0005\u0018\u00010\u0085\u00012\u0007\u0010\u0086\u0001\u001a\u00020B2\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u00012\t\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u001e2\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u0001H&Jw\u0010\u008c\u0001\u001a\u00020+2\u0008\u0010n\u001a\u0004\u0018\u00010\u001e2\u0006\u0010A\u001a\u00020B2\u0006\u0010\u007f\u001a\u00020B2\t\u0010o\u001a\u0005\u0018\u00010\u008d\u00012\n\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0088\u00012\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00012\u0007\u0010X\u001a\u00030\u008e\u00012\u0012\u0010q\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020+0D2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020G\u0012\u0004\u0012\u00020+0DH&R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR$\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000f*\u0004\u0018\u00010\u000f8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u00148DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u00020\u000f*\u00020\u00148DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u0090\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        "",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "connectedReader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "getConnectedReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "getLogger",
        "()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "orDefault",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        "getOrDefault",
        "(Lcom/stripe/stripeterminal/external/models/ReaderSettings;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        "readerAccessibility",
        "Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;",
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;",
        "getReaderAccessibility",
        "(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;)Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;",
        "readerSettings",
        "getReaderSettings",
        "(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;",
        "activateReader",
        "Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;",
        "reader",
        "connectionToken",
        "",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "assertReaderSettingsIsSupported",
        "T",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "assertReaderVersionAtLeast",
        "minVersion",
        "",
        "(JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "cancelCollectData",
        "",
        "cancelCollectInputs",
        "cancelCollectInteracRefundMethod",
        "cancelCollectPaymentMethod",
        "cancelCollectSetupIntentPaymentMethod",
        "cancelConfirmInteracRefund",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "cancelConfirmPaymentIntent",
        "cancelConfirmSetupIntent",
        "cancelPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntent",
        "cancelSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "intent",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "clearReaderDisplay",
        "collectData",
        "type",
        "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;",
        "enableCustomerCancellation",
        "",
        "onDataCollected",
        "Lkotlin/Function1;",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "onFailure",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "collectInputs",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;",
        "kmpCollectInputsParameters",
        "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;",
        "confirmInteracRefund",
        "Lcom/stripe/stripeterminal/external/models/Refund;",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "paymentMethod",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "reason",
        "confirmPayment",
        "amountSurcharge",
        "returnUrl",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "confirmSetupIntent",
        "setupIntent",
        "connectReader",
        "disconnectCallback",
        "createPaymentIntent",
        "paymentIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "createSetupIntent",
        "setupIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "disconnectReader",
        "discoverReaders",
        "",
        "location",
        "timeoutInSeconds",
        "",
        "finishConfirmPayment",
        "onActivateReader",
        "onCreatePaymentIntent",
        "onPaymentMethodCollectedForPaymentIntent",
        "resumeCollectPaymentMethod",
        "intentId",
        "offlineDetails",
        "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "onPaymentCollected",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "setReaderDisplay",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "setReaderSettings",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;",
        "startInteracRefund",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "chargeId",
        "paymentIntentId",
        "startPaymentCollection",
        "skipTipping",
        "manualEntry",
        "updatePaymentIntent",
        "tipEligibleAmount",
        "computedPriorities",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
        "stripeAccountId",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "requestDynamicCurrencyConversion",
        "offlineBehavior",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "surchargeNotice",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "startSetupIntentPaymentCollection",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
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
.field private static final Companion:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController$Companion;

.field private static final MINIMUM_READER_SETTINGS_SW_VERSION:J = 0x219224L


# instance fields
.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->Companion:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static synthetic resumeCollectPaymentMethod$default(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 110
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: resumeCollectPaymentMethod"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "connectionToken"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "connectionConfiguration"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x3

    .line 55
    new-array v2, v2, [Lkotlin/Pair;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 56
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->toDeviceInfo()Lcom/stripe/proto/model/common/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "deviceInfo"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 57
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "connectionConfigurationType"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 53
    const-string v0, "activateReader"

    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->onActivateReader(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;

    move-result-object p1

    return-object p1
.end method

.method protected final assertReaderSettingsIsSupported(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x219224

    .line 239
    invoke-virtual {p0, v0, v1, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->assertReaderVersionAtLeast(JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected final assertReaderVersionAtLeast(JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getCanonicalReaderVersion()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    cmp-long p1, v0, p1

    if-ltz p1, :cond_1

    .line 229
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    .line 231
    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 232
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 231
    const-string v2, "This operation is not supported for this reader"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 236
    :cond_2
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NOT_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v3, "No active reader"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public abstract cancelCollectData()V
.end method

.method public abstract cancelCollectInputs()V
.end method

.method public abstract cancelCollectInteracRefundMethod()V
.end method

.method public abstract cancelCollectPaymentMethod()V
.end method

.method public abstract cancelCollectSetupIntentPaymentMethod()V
.end method

.method public abstract cancelConfirmInteracRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end method

.method public abstract cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end method

.method public abstract cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
.end method

.method public abstract cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
.end method

.method public abstract cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
.end method

.method public abstract clearReaderDisplay()V
.end method

.method public abstract collectData(Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract collectInputs(Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;)Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;
.end method

.method public abstract confirmInteracRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/proto/model/sdk/PaymentMethod;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/Refund;
.end method

.method public abstract confirmPayment(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
.end method

.method public abstract confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
.end method

.method public abstract connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public final createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 3

    const-string v0, "paymentIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createPaymentIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 73
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->onCreatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

.method public abstract createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
.end method

.method public abstract disconnectReader()V
.end method

.method public abstract discoverReaders(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation
.end method

.method public abstract finishConfirmPayment()V
.end method

.method public abstract getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;
.end method

.method protected final getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object v0
.end method

.method protected final getOrDefault(Lcom/stripe/stripeterminal/external/models/ReaderSettings;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 4

    if-nez p1, :cond_0

    .line 155
    new-instance p1, Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderAccessibility$Error;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->toTerminalException$default(Lcom/stripe/proto/model/sdk/Error;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/ReaderAccessibility$Error;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;

    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/external/models/ReaderSettings;-><init>(Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;)V

    :cond_0
    return-object p1
.end method

.method protected final getReaderAccessibility(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;)Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    iget-object v0, p1, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;->accessibility_settings:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 133
    new-instance p1, Lcom/stripe/stripeterminal/external/models/ReaderAccessibility$Accessibility;

    .line 134
    iget-object v0, v0, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;->text_to_speech_status:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 143
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;->SPEAKERS:Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 140
    :cond_1
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;->HEADPHONES:Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;

    goto :goto_0

    .line 137
    :cond_2
    sget-object v0, Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;->OFF:Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;

    .line 133
    :goto_0
    invoke-direct {p1, v0}, Lcom/stripe/stripeterminal/external/models/ReaderAccessibility$Accessibility;-><init>(Lcom/stripe/stripeterminal/external/models/ReaderTextToSpeechStatus;)V

    .line 131
    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;

    return-object p1

    .line 147
    :cond_3
    iget-object p1, p1, Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;->accessibility_settings_error:Lcom/stripe/proto/model/sdk/Error;

    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderAccessibility$Error;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/stripe/stripeterminal/internal/common/extensions/TerminalExceptionExtensionsKt;->toTerminalException$default(Lcom/stripe/proto/model/sdk/Error;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/models/ReaderAccessibility$Error;-><init>(Ljava/lang/Throwable;)V

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;

    return-object v0
.end method

.method public abstract getReaderSettings()Lcom/stripe/stripeterminal/external/models/ReaderSettings;
.end method

.method protected final getReaderSettings(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ReaderSettings;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->getReaderAccessibility(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;)Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/external/models/ReaderSettings;-><init>(Lcom/stripe/stripeterminal/external/models/ReaderAccessibility;)V

    return-object v0
.end method

.method protected abstract onActivateReader(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/proto/api/sdk/ActivateTerminalResponse;
.end method

.method protected abstract onCreatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
.end method

.method public abstract onPaymentMethodCollectedForPaymentIntent()V
.end method

.method public abstract resumeCollectPaymentMethod(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;)V
.end method

.method public abstract setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;)Lcom/stripe/stripeterminal/external/models/ReaderSettings;
.end method

.method public abstract startInteracRefund(Lcom/stripe/currency/Amount;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startPaymentCollection(Lcom/stripe/currency/Amount;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZZZLjava/lang/String;Lcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZLcom/stripe/proto/model/rest/PaymentIntent;ZLcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/Amount;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
            "Z",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Z",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startSetupIntentPaymentCollection(Ljava/lang/String;ZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
