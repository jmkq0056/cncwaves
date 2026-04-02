.class public final Lcom/stripe/stripeterminal/internal/common/api/ApiClient;
.super Ljava/lang/Object;
.source "ApiClient.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiClient.kt\ncom/stripe/stripeterminal/internal/common/api/ApiClient\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,456:1\n16#2:457\n*S KotlinDebug\n*F\n+ 1 ApiClient.kt\ncom/stripe/stripeterminal/internal/common/api/ApiClient\n*L\n66#1:457\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ec\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 Z2\u00020\u0001:\u0001ZB\'\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ&\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001dJ\u0016\u0010\u001f\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020 2\u0006\u0010!\u001a\u00020\"JU\u0010#\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010$\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010*2\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0002\u0010-J \u0010.\u001a\u00020 2\u0006\u0010\u001e\u001a\u00020 2\u0008\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010\u001a\u001a\u00020\u001bJ \u0010/\u001a\u0002002\u0006\u0010!\u001a\u0002012\u0006\u00102\u001a\u0002032\u0008\u0010$\u001a\u0004\u0018\u00010\u0015J\u0016\u00104\u001a\u00020\u001d2\u0006\u0010!\u001a\u0002052\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u00106\u001a\u0002072\u0006\u00102\u001a\u000203J\u0016\u00108\u001a\u00020 2\u0006\u0010!\u001a\u0002092\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010:\u001a\u0002002\u0006\u0010;\u001a\u000200H\u0007J\u001c\u0010<\u001a\u00020=2\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00170?2\u0006\u0010\u0016\u001a\u00020\u0017J!\u0010@\u001a\u0008\u0012\u0004\u0012\u00020B0A2\u0006\u0010C\u001a\u00020\u0017\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008D\u0010EJ.\u0010F\u001a\u00020G2\u0006\u0010\u0016\u001a\u00020\u00172\n\u0008\u0002\u0010H\u001a\u0004\u0018\u00010I2\n\u0008\u0002\u0010J\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001a\u001a\u00020\u001bJ\u0016\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020N2\u0006\u0010\u0016\u001a\u00020\u0017J\u001a\u0010O\u001a\u00020\u001d2\u0006\u0010P\u001a\u00020\u00172\n\u0008\u0002\u0010Q\u001a\u0004\u0018\u00010\u0017J\u001a\u0010R\u001a\u00020 2\u0006\u0010P\u001a\u00020\u00172\n\u0008\u0002\u0010Q\u001a\u0004\u0018\u00010\u0017J4\u0010S\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001d2\u0008\u0010$\u001a\u0004\u0018\u00010\u00152\u0008\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010T\u001a\u00020(2\u0008\u0010+\u001a\u0004\u0018\u00010,J\"\u0010U\u001a\u00020\u001d2\u0006\u0010V\u001a\u00020W2\u0012\u0010X\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170YR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u000e0\u000cj\u0002`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006["
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
        "",
        "apiRequestFactory",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
        "restClient",
        "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
        "unauthenticatedRestClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "getRestClient",
        "()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
        "activateReader",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "token",
        "",
        "connectionConfig",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "restConfig",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "cancelPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "intent",
        "cancelSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "confirmPaymentIntent",
        "connectedReader",
        "amountTip",
        "Lcom/stripe/currency/Amount;",
        "dynamicCurrencyConversionSelected",
        "",
        "amountSurcharge",
        "",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "confirmSetupIntent",
        "createCardPaymentMethod",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "paymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "createPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "createReaderCollectedData",
        "Lcom/stripe/stripeterminal/external/models/CollectedData;",
        "createSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "detachPaymentMethod",
        "method",
        "discoverLocations",
        "Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse;",
        "devices",
        "",
        "downloadImageAsset",
        "Lkotlin/Result;",
        "",
        "url",
        "downloadImageAsset-IoAF18A",
        "(Ljava/lang/String;)Ljava/lang/Object;",
        "listAllReaders",
        "Lcom/stripe/stripeterminal/internal/common/api/ListAllReadersResponse;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "location",
        "listLocations",
        "Lcom/stripe/stripeterminal/internal/common/api/ListLocationsResponse;",
        "parameters",
        "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;",
        "retrievePaymentIntent",
        "clientSecret",
        "connectionToken",
        "retrieveSetupIntent",
        "updatePaymentIntentExpandMethod",
        "requestDynamicCurrencyConversion",
        "updatePaymentIntentExpandedMethod",
        "request",
        "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
        "headers",
        "",
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;


# instance fields
.field private final apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

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

.field private final restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

.field private final unauthenticatedRestClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "apiRequestFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unauthenticatedRestClientProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 62
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 63
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->unauthenticatedRestClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    .line 457
    const-class p1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static synthetic confirmPaymentIntent$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    and-int/lit8 p9, p8, 0x4

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_3

    move-object p6, v0

    .line 126
    :cond_3
    invoke-virtual/range {p0 .. p7}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic listAllReaders$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DeviceType;Ljava/lang/String;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/api/ListAllReadersResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    .line 267
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->listAllReaders(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DeviceType;Ljava/lang/String;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/internal/common/api/ListAllReadersResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic retrievePaymentIntent$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 283
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->retrievePaymentIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic retrieveSetupIntent$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 216
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->retrieveSetupIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "reader"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "token"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "connectionConfig"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "restConfig"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v7, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v8, 0x2

    .line 77
    new-array v8, v8, [Lkotlin/Pair;

    invoke-static {v5, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 78
    invoke-static {v6, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v8, v6

    .line 75
    const-string v5, "activateReader"

    invoke-interface {v7, v5, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 81
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->isSimulated()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/stripe/stripeterminal/internal/common/api/ConnectionConfigurationKtxKt;->shouldActivateWithExpandedLocation(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v6, v9

    .line 88
    :goto_0
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v5, v1, v3, v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Z)Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;

    move-result-object v1

    .line 90
    const-string v3, ""

    if-eqz v6, :cond_1

    .line 91
    sget-object v10, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    .line 92
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    invoke-virtual {v5, v2, v3, v1, v4}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->activateTerminalWithExpandedLocation(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v11

    .line 93
    sget-object v12, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/4 v13, 0x0

    .line 91
    invoke-static/range {v10 .. v15}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    goto :goto_1

    .line 96
    :cond_1
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    .line 98
    iget-object v6, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    invoke-virtual {v6, v2, v3, v1, v4}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->activateTerminal(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, v5

    const/4 v5, 0x0

    .line 97
    invoke-static/range {v2 .. v7}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;

    .line 96
    invoke-static {v2, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->access$transformConnectionTokenResponseForSimulator(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/proto/model/rest/ActivatedConnectionToken;)Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    move-result-object v1

    .line 103
    :goto_1
    new-instance v10, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    .line 104
    iget-object v11, v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_id:Ljava/lang/String;

    .line 105
    iget-object v2, v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->livemode:Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    :cond_2
    move v12, v9

    .line 106
    iget-object v13, v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->reader_id:Ljava/lang/String;

    .line 107
    iget-object v14, v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->stripe_session_token:Ljava/lang/String;

    .line 108
    iget-object v15, v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->offline_stripe_session_token:Ljava/lang/String;

    .line 109
    iget-object v2, v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->sdk_rpc_session_token:Ljava/lang/String;

    .line 110
    iget-object v3, v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->connection_context_id:Ljava/lang/String;

    .line 112
    iget-object v1, v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;->account_ref:Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation$AccountRef;->store_id:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v19, v1

    const/16 v18, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .line 103
    invoke-direct/range {v10 .. v19}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/merchant/ApiLocationPb;)V

    return-object v10
.end method

.method public final cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelPaymentIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 119
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->cancelPaymentIntent(Lcom/stripe/proto/api/rest/CancelPaymentIntentRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 120
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;->CANCEL:Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/api/ApiResource;->PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/api/ApiResource;

    new-instance v3, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$cancelPaymentIntent$1;

    invoke-direct {v3, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$cancelPaymentIntent$1;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->withDetailedConnectionError(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method

.method public final cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "cancelSetupIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 244
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->cancelSetupIntent(Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 246
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;->CANCEL:Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiResource;->SETUP_INTENT:Lcom/stripe/stripeterminal/internal/common/api/ApiResource;

    new-instance v2, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$cancelSetupIntent$1;

    invoke-direct {v2, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$cancelSetupIntent$1;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->withDetailedConnectionError(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public final confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p7

    const-string v1, "intent"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "restConfig"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    const-string v4, "confirmPaymentIntent"

    invoke-interface {v1, v4, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 136
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    if-eqz p2, :cond_0

    .line 138
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    move-object v4, v1

    .line 136
    invoke-virtual/range {v2 .. v8}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 145
    invoke-virtual {v1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    .line 146
    invoke-virtual {v1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 144
    invoke-virtual {v2, v3, v1, v0}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->confirmPaymentIntent(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;->CONFIRM:Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/api/ApiResource;->PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/api/ApiResource;

    new-instance v4, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$confirmPaymentIntent$1;

    invoke-direct {v4, v0}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$confirmPaymentIntent$1;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->withDetailedConnectionError(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object v0
.end method

.method public final confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "confirmSetupIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 225
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 226
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    move-result-object p1

    .line 225
    invoke-virtual {v0, p1, p3}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->confirmSetupIntent(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 228
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    sget-object p3, Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;->CONFIRM:Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiResource;->SETUP_INTENT:Lcom/stripe/stripeterminal/internal/common/api/ApiResource;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$confirmSetupIntent$1;

    invoke-direct {v1, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$confirmSetupIntent$1;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p3, v0, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->withDetailedConnectionError(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object p1
.end method

.method public final createCardPaymentMethod(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createCardPaymentMethod"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 198
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 199
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    if-eqz p3, :cond_0

    .line 202
    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 199
    :goto_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->createPaymentMethod(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;Ljava/lang/String;)Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;

    move-result-object p1

    .line 198
    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->readCardPaymentMethod(Lcom/stripe/proto/api/rest/ReadCardPaymentMethodRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v2

    .line 205
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentMethod(Lcom/stripe/proto/model/rest/PaymentMethod;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    move-result-object p1

    return-object p1
.end method

.method public final createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createPaymentIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 211
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;)Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->createPaymentIntent(Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v2

    .line 212
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

.method public final createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/CollectedData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "paymentMethodData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createReaderCollectedData"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 306
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 307
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;

    move-result-object p1

    .line 306
    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->createReaderCollectedData(Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v2

    .line 309
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/ReaderCollectedData;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkCollectedData(Lcom/stripe/proto/model/rest/ReaderCollectedData;)Lcom/stripe/stripeterminal/external/models/CollectedData;

    move-result-object p1

    return-object p1
.end method

.method public final createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "createSetupIntent"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 236
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;)Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->createSetupIntent(Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v2

    .line 238
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    return-object p1
.end method

.method public final detachPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentMethod;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "detachPaymentMethod"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 255
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->detachPaymentMethod(Lcom/stripe/stripeterminal/external/models/PaymentMethod;)Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->detachPaymentMethod(Lcom/stripe/proto/api/rest/DetachPaymentMethodRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v2

    .line 256
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/PaymentMethod;

    invoke-virtual {p1, v0}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentMethod(Lcom/stripe/proto/model/rest/PaymentMethod;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    move-result-object p1

    return-object p1
.end method

.method public final discoverLocations(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "devices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "discoverLocations"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 262
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->discoverLocations(Ljava/util/List;)Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->discoverLocations(Ljava/lang/String;Lcom/stripe/proto/api/rest/DiscoverLocationsRequest;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v2

    .line 263
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkDiscoverLocationsResponse(Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;)Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse;

    move-result-object p1

    return-object p1
.end method

.method public final downloadImageAsset-IoAF18A(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 314
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 315
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->unauthenticatedRestClientProvider:Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    invoke-interface {v0}, Lcom/stripe/jvmcore/client/OkHttpClientProvider;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 316
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 317
    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->execute(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    .line 313
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getRestClient()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    return-object v0
.end method

.method public final listAllReaders(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/DeviceType;Ljava/lang/String;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/internal/common/api/ListAllReadersResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "restConfig"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "listAllReaders"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 274
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 276
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->listAllReaders(Lcom/stripe/stripeterminal/external/models/DeviceType;Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListAllReadersRequest;

    move-result-object p2

    .line 274
    invoke-virtual {v0, p1, p2, p4}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->listAllReaders(Ljava/lang/String;Lcom/stripe/proto/api/rest/ListAllReadersRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v2

    .line 279
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/api/rest/ListAllReadersResponse;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkListAllReadersResponse(Lcom/stripe/proto/api/rest/ListAllReadersResponse;)Lcom/stripe/stripeterminal/internal/common/api/ListAllReadersResponse;

    move-result-object p1

    return-object p1
.end method

.method public final listLocations(Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/api/ListLocationsResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "token"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "listLocations"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 295
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 296
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->listLocations(Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;)Lcom/stripe/proto/api/rest/ListLocationsRequest;

    move-result-object p1

    .line 295
    invoke-virtual {v0, p1, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->listLocations(Lcom/stripe/proto/api/rest/ListLocationsRequest;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v2

    .line 300
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/api/rest/ListLocationsResponse;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkListLocationsResponse(Lcom/stripe/proto/api/rest/ListLocationsResponse;)Lcom/stripe/stripeterminal/internal/common/api/ListLocationsResponse;

    move-result-object p1

    return-object p1
.end method

.method public final retrievePaymentIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "clientSecret"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "retrievePaymentIntent"

    invoke-interface {v2, v4, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 285
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    .line 286
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->retrievePaymentIntent(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;

    move-result-object v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p2

    .line 285
    invoke-static/range {v5 .. v10}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->retrievePaymentIntent$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v12

    .line 289
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v11, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    return-object v1
.end method

.method public final retrieveSetupIntent(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "clientSecret"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "retrieveSetupIntent"

    invoke-interface {v2, v4, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 218
    iget-object v5, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->retrieveSetupIntent(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;

    move-result-object v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p2

    invoke-static/range {v5 .. v10}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->retrieveSetupIntent$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v12

    .line 219
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v11, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeResponse$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/rest/SetupIntent;

    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkSetupIntent(Lcom/stripe/proto/model/rest/SetupIntent;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v1

    return-object v1
.end method

.method public final updatePaymentIntentExpandMethod(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/currency/Amount;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 9

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "updatePaymentIntentExpandMethod"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 163
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    .line 163
    invoke-virtual/range {v3 .. v8}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;Lcom/stripe/currency/Amount;ZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;

    .line 172
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getHeaders()Ljava/util/Map;

    move-result-object p1

    .line 170
    invoke-virtual {p0, p2, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->updatePaymentIntentExpandedMethod(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/Map;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

.method public final updatePaymentIntentExpandedMethod(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/Map;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;"
        }
    .end annotation

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->restClient:Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->updatePaymentIntentExpandedMethod(Lcom/stripe/proto/api/rest/UpdatePaymentIntentRequest;Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 186
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;->UPDATE:Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiResource;->PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/api/ApiResource;

    new-instance v2, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$updatePaymentIntentExpandedMethod$1;

    invoke-direct {v2, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$updatePaymentIntentExpandedMethod$1;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->withDetailedConnectionError(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object p1
.end method
