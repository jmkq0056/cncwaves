.class public final Lcom/stripe/stripeterminal/Terminal;
.super Ljava/lang/Object;
.source "Terminal.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/Terminal$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 r2\u00020\u0001:\u0001rB\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#J\u001e\u0010$\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010\"\u001a\u00020)J\u0006\u0010*\u001a\u00020\u001fJ\u000e\u0010+\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020,J\u0016\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u0010\"\u001a\u000201J\u0016\u00102\u001a\u00020.2\u0006\u00103\u001a\u0002042\u0006\u0010\"\u001a\u000205J\"\u00106\u001a\u00020.2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010/\u001a\u000207H\u0007J\"\u00108\u001a\u00020.2\u0006\u00109\u001a\u00020:2\u0008\u0008\u0002\u0010/\u001a\u00020;2\u0006\u0010\"\u001a\u00020,H\u0007J*\u0010<\u001a\u00020.2\u0006\u0010 \u001a\u00020&2\u0006\u0010=\u001a\u00020>2\u0008\u0008\u0002\u0010/\u001a\u00020?2\u0006\u0010\"\u001a\u00020)H\u0007J\"\u0010@\u001a\u00020.2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0008\u0008\u0002\u0010/\u001a\u00020AH\u0007J\u000e\u0010B\u001a\u00020.2\u0006\u0010\"\u001a\u00020CJ\u0016\u0010D\u001a\u00020.2\u0006\u0010 \u001a\u00020&2\u0006\u0010\"\u001a\u00020)J\u001e\u0010E\u001a\u00020\u001f2\u0006\u0010F\u001a\u00020\u00062\u0006\u0010/\u001a\u00020G2\u0006\u0010H\u001a\u00020IJ\u0016\u0010J\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020K2\u0006\u0010\"\u001a\u00020#J\"\u0010J\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020K2\u0006\u0010\"\u001a\u00020#2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0007J\u0016\u0010N\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020O2\u0006\u0010\"\u001a\u00020)J\"\u0010N\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020O2\u0006\u0010\"\u001a\u00020)2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0007J\u000e\u0010P\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020,J \u0010Q\u001a\u00020.2\u0006\u0010/\u001a\u00020R2\u0006\u0010S\u001a\u00020T2\u0006\u0010\"\u001a\u00020,H\u0007J\u000e\u0010U\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020VJ\u0006\u0010W\u001a\u00020\u001fJ\u0016\u0010X\u001a\u00020\u001f2\u0006\u0010Y\u001a\u00020Z2\u0006\u0010\"\u001a\u00020[J\u000e\u0010\\\u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020,J\u0016\u0010]\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_2\u0006\u0010\"\u001a\u00020#J\u0016\u0010`\u001a\u00020\u001f2\u0006\u0010^\u001a\u00020_2\u0006\u0010\"\u001a\u00020)J\u0010\u0010a\u001a\u00020\u001f2\u0006\u0010b\u001a\u00020cH\u0007J\u0016\u0010d\u001a\u00020\u001f2\u0006\u0010e\u001a\u00020f2\u0006\u0010\"\u001a\u00020,J\u0016\u0010g\u001a\u00020\u001f2\u0006\u0010\'\u001a\u00020h2\u0006\u0010\"\u001a\u00020VJ\u000e\u0010i\u001a\u00020\u001f2\u0006\u0010/\u001a\u00020jJ\u000e\u0010k\u001a\u00020\u001f2\u0006\u0010b\u001a\u00020lJ\u0016\u0010m\u001a\u00020n2\u0006\u0010o\u001a\u00020p2\u0006\u0010q\u001a\u00020RR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\r\u001a\u00020\u000e8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R$\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u00188F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006s"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/Terminal;",
        "",
        "terminalSession",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V",
        "connectedReader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "getConnectedReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "connectionStatus",
        "Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "getConnectionStatus",
        "()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;",
        "offlineStatus",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
        "getOfflineStatus$annotations",
        "()V",
        "getOfflineStatus",
        "()Lcom/stripe/stripeterminal/external/models/OfflineStatus;",
        "paymentStatus",
        "Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "getPaymentStatus",
        "()Lcom/stripe/stripeterminal/external/models/PaymentStatus;",
        "value",
        "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
        "simulatorConfiguration",
        "getSimulatorConfiguration",
        "()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
        "setSimulatorConfiguration",
        "(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V",
        "cancelPaymentIntent",
        "",
        "intent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        "cancelSetupIntent",
        "setupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;",
        "clearCachedCredentials",
        "clearReaderDisplay",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "collectData",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;",
        "Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;",
        "collectInputs",
        "collectInputsParameters",
        "Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;",
        "Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;",
        "collectPaymentMethod",
        "Lcom/stripe/stripeterminal/external/models/CollectConfiguration;",
        "collectRefundPaymentMethod",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "Lcom/stripe/stripeterminal/external/models/RefundConfiguration;",
        "collectSetupIntentPaymentMethod",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;",
        "confirmPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;",
        "confirmRefund",
        "Lcom/stripe/stripeterminal/external/callable/RefundCallback;",
        "confirmSetupIntent",
        "connectReader",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "connectionCallback",
        "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;",
        "createPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "createSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "disconnectReader",
        "discoverReaders",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "discoveryListener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "getReaderSettings",
        "Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;",
        "installAvailableUpdate",
        "listLocations",
        "parameters",
        "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;",
        "Lcom/stripe/stripeterminal/external/callable/LocationListCallback;",
        "rebootReader",
        "retrievePaymentIntent",
        "clientSecret",
        "",
        "retrieveSetupIntent",
        "setOfflineListener",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "setReaderDisplay",
        "cart",
        "Lcom/stripe/stripeterminal/external/models/Cart;",
        "setReaderSettings",
        "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;",
        "setTapToPayUxConfiguration",
        "Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;",
        "setTerminalListener",
        "Lcom/stripe/stripeterminal/external/callable/TerminalListener;",
        "supportsReadersOfType",
        "Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "discoveryConfiguration",
        "Companion",
        "core_publish"
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
.field public static final Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

.field private static instance:Lcom/stripe/stripeterminal/Terminal;


# instance fields
.field private final terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/Terminal$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/Terminal$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    .line 775
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    const-class v1, Lcom/stripe/stripeterminal/Terminal;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V
    .locals 1

    const-string v0, "terminalSession"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/stripe/stripeterminal/Terminal;
    .locals 1

    .line 66
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->instance:Lcom/stripe/stripeterminal/Terminal;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lcom/stripe/stripeterminal/Terminal;)V
    .locals 0

    .line 66
    sput-object p0, Lcom/stripe/stripeterminal/Terminal;->instance:Lcom/stripe/stripeterminal/Terminal;

    return-void
.end method

.method public static synthetic collectPaymentMethod$default(Lcom/stripe/stripeterminal/Terminal;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CollectConfiguration;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 194
    new-instance p3, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;

    invoke-direct {p3}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/CollectConfiguration$Builder;->build()Lcom/stripe/stripeterminal/external/models/CollectConfiguration;

    move-result-object p3

    .line 191
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/Terminal;->collectPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CollectConfiguration;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic collectRefundPaymentMethod$default(Lcom/stripe/stripeterminal/Terminal;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 252
    new-instance p2, Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;

    invoke-direct {p2}, Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;-><init>()V

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/RefundConfiguration$Builder;->build()Lcom/stripe/stripeterminal/external/models/RefundConfiguration;

    move-result-object p2

    .line 250
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/Terminal;->collectRefundPaymentMethod(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic collectSetupIntentPaymentMethod$default(Lcom/stripe/stripeterminal/Terminal;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 301
    new-instance p3, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;

    invoke-direct {p3}, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration$Builder;->build()Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;

    move-result-object p3

    .line 298
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/Terminal;->collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic confirmPaymentIntent$default(Lcom/stripe/stripeterminal/Terminal;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 576
    new-instance p3, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;

    invoke-direct {p3}, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;-><init>()V

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration$Builder;->build()Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;

    move-result-object p3

    .line 573
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/Terminal;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/stripe/stripeterminal/Terminal;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/Terminal$Companion;->getInstance()Lcom/stripe/stripeterminal/Terminal;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getOfflineStatus$annotations()V
    .locals 0

    return-void
.end method

.method public static final initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/Terminal$Companion;->initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V

    return-void
.end method

.method public static final initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/Terminal$Companion;->initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V

    return-void
.end method

.method public static final initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/stripeterminal/Terminal$Companion;->initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V

    return-void
.end method

.method public static final isInitialized()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/Terminal$Companion;->isInitialized()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelPaymentIntent"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 134
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V

    return-void
.end method

.method public final cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V
    .locals 3

    const-string v0, "setupIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelSetupIntent"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 451
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V

    return-void
.end method

.method public final clearCachedCredentials()V
    .locals 3

    .line 158
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "clearCachedCredentials"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 159
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->clearCachedCredentials()V

    return-void
.end method

.method public final clearReaderDisplay(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "clearReaderDisplay"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 169
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->clearReaderDisplay(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public final collectData(Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "collectData"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 668
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectData(Lcom/stripe/stripeterminal/external/models/CollectDataConfiguration;Lcom/stripe/stripeterminal/external/callable/CollectedDataCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final collectInputs(Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 3

    const-string v0, "collectInputsParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "collectInputs"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 650
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectInputs(Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;Lcom/stripe/stripeterminal/external/callable/CollectInputsResultCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final collectPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/Terminal;->collectPaymentMethod$default(Lcom/stripe/stripeterminal/Terminal;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CollectConfiguration;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final collectPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CollectConfiguration;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    sget-object v1, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "collectPaymentMethod"

    invoke-virtual {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 197
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CollectConfiguration;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final collectRefundPaymentMethod(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 7

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/Terminal;->collectRefundPaymentMethod$default(Lcom/stripe/stripeterminal/Terminal;Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final collectRefundPaymentMethod(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 4

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    sget-object v1, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "collectRefundPaymentMethod"

    invoke-virtual {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 256
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectRefundPaymentMethod(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/stripeterminal/external/models/RefundConfiguration;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 8

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowRedisplay"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/stripe/stripeterminal/Terminal;->collectSetupIntentPaymentMethod$default(Lcom/stripe/stripeterminal/Terminal;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 4

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowRedisplay"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    sget-object v1, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v2, 0x1

    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "collectSetupIntentPaymentMethod"

    invoke-virtual {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 305
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->collectSetupIntentPaymentMethod(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/stripeterminal/external/models/SetupIntentConfiguration;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/Terminal;->confirmPaymentIntent$default(Lcom/stripe/stripeterminal/Terminal;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "confirmPaymentIntent"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 579
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/ConfirmConfiguration;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final confirmRefund(Lcom/stripe/stripeterminal/external/callable/RefundCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "confirmRefund"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 601
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->confirmRefund(Lcom/stripe/stripeterminal/external/callable/RefundCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "confirmSetupIntent"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 329
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V
    .locals 4

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "serial_number"

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "connectReader"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 356
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V

    return-void
.end method

.method public final createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createPaymentIntent"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 367
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V

    return-void
.end method

.method public final createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createPaymentIntent"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 394
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    return-void
.end method

.method public final createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createSetupIntent"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 409
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    return-void
.end method

.method public final createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createSetupIntent"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 427
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)V

    return-void
.end method

.method public final disconnectReader(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "disconnectReader"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 483
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->disconnectReader(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public final discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 529
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "discoverReaders"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 530
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object p1

    return-object p1
.end method

.method public final getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    return-object v0
.end method

.method public final getConnectionStatus()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectionStatus()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getOfflineStatus()Lcom/stripe/stripeterminal/external/models/OfflineStatus;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getOfflineStatusStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/OfflineStatus;

    return-object v0
.end method

.method public final getPaymentStatus()Lcom/stripe/stripeterminal/external/models/PaymentStatus;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getPaymentStatus()Lcom/stripe/stripeterminal/external/models/PaymentStatus;

    move-result-object v0

    return-object v0
.end method

.method public final getReaderSettings(Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "getReaderSettings"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 770
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getReaderSettings(Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V

    return-void
.end method

.method public final getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getSimulatorConfiguration()Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public final installAvailableUpdate()V
    .locals 3

    .line 715
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "installAvailableUpdate"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 716
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->installAvailableUpdate()V

    return-void
.end method

.method public final listLocations(Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/callable/LocationListCallback;)V
    .locals 3

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "listLocations"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 208
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->listLocations(Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Lcom/stripe/stripeterminal/external/callable/LocationListCallback;)V

    return-void
.end method

.method public final rebootReader(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "rebootReader"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 468
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->rebootReader(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public final retrievePaymentIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V
    .locals 3

    const-string v0, "clientSecret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "retrievePaymentIntent"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 618
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->retrievePaymentIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;)V

    return-void
.end method

.method public final retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V
    .locals 3

    const-string v0, "clientSecret"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "retrieveSetupIntent"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 277
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/stripeterminal/external/callable/SetupIntentCallback;)V

    return-void
.end method

.method public final setOfflineListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "setOfflineListener"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 728
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->setOfflineListener(Lcom/stripe/stripeterminal/external/callable/OfflineListener;)V

    return-void
.end method

.method public final setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 3

    const-string v0, "cart"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "setReaderDisplay"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 633
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->setReaderDisplay(Lcom/stripe/stripeterminal/external/models/Cart;Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method public final setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V
    .locals 3

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "setReaderSettings"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 744
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->setReaderSettings(Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;Lcom/stripe/stripeterminal/external/callable/ReaderSettingsCallback;)V

    return-void
.end method

.method public final setSimulatorConfiguration(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->setSimulatorConfiguration(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;)V

    return-void
.end method

.method public final setTapToPayUxConfiguration(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "setTapToPayUxConfiguration"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 758
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->setTapToPayUxConfiguration(Lcom/stripe/stripeterminal/external/models/TapToPayUxConfiguration;)V

    return-void
.end method

.method public final setTerminalListener(Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V
    .locals 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "setTerminalListener"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 117
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->setTerminalListener(Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V

    return-void
.end method

.method public final supportsReadersOfType(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;
    .locals 3

    const-string v0, "deviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoveryConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "supportsReaderOfType"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 691
    iget-object v0, p0, Lcom/stripe/stripeterminal/Terminal;->terminalSession:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->supportsReadersOfType(Lcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/external/models/ReaderSupportResult;

    move-result-object p1

    return-object p1
.end method
