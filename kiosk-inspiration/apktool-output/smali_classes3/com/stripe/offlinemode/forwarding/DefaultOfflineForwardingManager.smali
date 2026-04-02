.class public final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;
.super Ljava/lang/Object;
.source "DefaultOfflineForwardingManager.kt"

# interfaces
.implements Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$Companion;,
        Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineForwardingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineForwardingManager.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager\n+ 2 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,675:1\n44#2,4:676\n1#3:680\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineForwardingManager.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager\n*L\n76#1:676,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00e6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0008\u0002\u0018\u0000 X2\u00020\u0001:\u0001XB\u00b9\u0001\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0001\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\"\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0017j\u0002`\u001c\u0012\"\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u0017j\u0002` \u0012\u0006\u0010!\u001a\u00020\"\u0012\u0006\u0010#\u001a\u00020$\u00a2\u0006\u0002\u0010%J\u0016\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0082@\u00a2\u0006\u0002\u00100J \u00101\u001a\u0002022\u0006\u0010.\u001a\u00020/2\u0008\u0008\u0002\u00103\u001a\u000204H\u0082@\u00a2\u0006\u0002\u00105J\u0016\u00106\u001a\u0002072\u0006\u00108\u001a\u00020-H\u0082@\u00a2\u0006\u0002\u00109J&\u0010:\u001a\u0002022\u0006\u0010;\u001a\u00020<2\u0006\u0010.\u001a\u00020/2\u0006\u00103\u001a\u000204H\u0082@\u00a2\u0006\u0002\u0010=J \u0010>\u001a\u0004\u0018\u0001022\u0006\u0010?\u001a\u00020@2\u0006\u0010.\u001a\u00020/H\u0082@\u00a2\u0006\u0002\u0010AJ\u0018\u0010B\u001a\u00020\u00082\u0006\u0010C\u001a\u00020D2\u0006\u0010?\u001a\u00020@H\u0002J\r\u0010E\u001a\u00020\u0008H\u0001\u00a2\u0006\u0002\u0008FJ\u001e\u0010G\u001a\u0002072\u0006\u0010H\u001a\u00020I2\u0006\u0010?\u001a\u00020@H\u0082@\u00a2\u0006\u0002\u0010JJ\u0016\u0010K\u001a\u0002072\u0006\u00108\u001a\u000202H\u0082@\u00a2\u0006\u0002\u0010LJ\u0008\u0010M\u001a\u000207H\u0016J\u0012\u0010N\u001a\u0002072\u0008\u0010O\u001a\u0004\u0018\u00010PH\u0016J\u001a\u0010Q\u001a\u00020@2\u0006\u0010?\u001a\u00020R2\u0008\u0008\u0002\u0010S\u001a\u00020PH\u0002J\u0010\u0010T\u001a\u0002072\u0006\u0010.\u001a\u00020/H\u0002J\u000c\u0010U\u001a\u00020P*\u00020RH\u0002J\u001a\u0010V\u001a\u000e\u0012\u0004\u0012\u00020P\u0012\u0004\u0012\u00020P0W*\u0004\u0018\u00010RH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u001d\u001a\u001e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f0\u0017j\u0002` X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0016\u001a\u001e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001b0\u0017j\u0002`\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010*\u001a\u00020\u00088BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010+R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingManager;",
        "apiClient",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;",
        "offlineRepository",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "networkConnectivityFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
        "networkStatusProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "offlineForwardingDelayCalculator",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "endToEndLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineEndToEndLogger;",
        "discreteLogger",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "traceLogger",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
        "offlineCredentialsProvider",
        "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
        "(Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Ljavax/inject/Provider;Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;)V",
        "exceptionHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "forwardingJob",
        "Lkotlinx/coroutines/Job;",
        "isFirstInitialization",
        "()Z",
        "forward",
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;",
        "request",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forwardAndRetryTransientErrors",
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;",
        "attempt",
        "",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleForwardResponse",
        "",
        "response",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "handleForwardingException",
        "exception",
        "Lcom/stripe/offlinemode/forwarding/ForwardingApiException;",
        "(Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "intentFromDuplicateConfirmError",
        "error",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "isExpectedError",
        "type",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;",
        "isForwardJobRunning",
        "isForwardJobRunning$offlinemode_release",
        "onFailedToForward",
        "offlineApiRequest",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/stripeterminal/external/models/TerminalException;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "onFinishedForwarding",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "startForwarding",
        "stopForwarding",
        "reason",
        "",
        "toTerminalException",
        "",
        "errorMessage",
        "validateOfflineData",
        "logErrorReason",
        "tags",
        "",
        "Companion",
        "offlinemode_release"
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
.field public static final Companion:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$Companion;

.field private static final MAX_CONSECUTIVE_FAILURES:I = 0xa

.field private static final ONE_HOUR_MS:J = 0x36ee80L

.field private static final PAYMENT_INTENT_UNEXPECTED_STATE_ERROR_CODE:Ljava/lang/String; = "payment_intent_unexpected_state"

.field private static final SETUP_INTENT_UNEXPECTED_STATE_ERROR_CODE:Ljava/lang/String; = "setup_intent_unexpected_state"

.field private static final TAG_ENTITY_ID:Ljava/lang/String; = "EntityId"

.field private static final TAG_NOTIFY_INTEGRATION:Ljava/lang/String; = "NotifyIntegration"

.field private static final TAG_REQUEST_TYPE:Ljava/lang/String; = "RequestType"


# instance fields
.field private final apiClient:Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;

.field private final clock:Lcom/stripe/time/Clock;

.field private final discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final endToEndLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

.field private forwardingJob:Lkotlinx/coroutines/Job;

.field private isFirstInitialization:Z

.field private final listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

.field private final networkConnectivityFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final networkStatusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

.field private final offlineCredentialsProvider:Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

.field private final offlineForwardingDelayCalculator:Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;

.field private final offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

.field private final traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->Companion:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;Lcom/stripe/offlinemode/storage/OfflineRepository;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/stripeterminal/external/callable/OfflineListener;Ljavax/inject/Provider;Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;)V
    .locals 1
    .param p2    # Lcom/stripe/offlinemode/storage/OfflineRepository;
        .annotation runtime Lcom/stripe/jvmcore/dagger/OfflineForwarding;
        .end annotation
    .end param
    .param p3    # Lkotlinx/coroutines/flow/Flow;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IsNetworkAvailable;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Offline;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;",
            "Lcom/stripe/offlinemode/storage/OfflineRepository;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/stripeterminal/external/callable/OfflineListener;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
            ">;",
            "Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/EndToEndScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
            ")V"
        }
    .end annotation

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkConnectivityFlow"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkStatusProvider"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineForwardingDelayCalculator"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndLogger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteLogger"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceLogger"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineCredentialsProvider"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->apiClient:Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;

    .line 60
    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 61
    iput-object p3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->networkConnectivityFlow:Lkotlinx/coroutines/flow/Flow;

    .line 62
    iput-object p4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 63
    iput-object p5, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    .line 64
    iput-object p6, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->networkStatusProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p7, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineForwardingDelayCalculator:Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;

    .line 66
    iput-object p8, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 67
    iput-object p9, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->clock:Lcom/stripe/time/Clock;

    .line 68
    iput-object p10, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->endToEndLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 69
    iput-object p11, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 70
    iput-object p12, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    .line 71
    iput-object p13, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineCredentialsProvider:Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

    .line 676
    sget-object p1, Lkotlinx/coroutines/CoroutineExceptionHandler;->Key:Lkotlinx/coroutines/CoroutineExceptionHandler$Key;

    new-instance p2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1;

    invoke-direct {p2, p1, p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$special$$inlined$CoroutineExceptionHandler$1;-><init>(Lkotlinx/coroutines/CoroutineExceptionHandler$Key;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)V

    check-cast p2, Lkotlinx/coroutines/CoroutineExceptionHandler;

    .line 76
    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    const/4 p1, 0x1

    .line 90
    iput-boolean p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->isFirstInitialization:Z

    return-void
.end method

.method public static final synthetic access$forward(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forward(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$forwardAndRetryTransientErrors(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forwardAndRetryTransientErrors(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getClock$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/time/Clock;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->clock:Lcom/stripe/time/Clock;

    return-object p0
.end method

.method public static final synthetic access$getEndToEndLogger$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->endToEndLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/stripeterminal/external/callable/OfflineListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    return-object p0
.end method

.method public static final synthetic access$getNetworkConnectivityFlow$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->networkConnectivityFlow:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public static final synthetic access$getOfflineCredentialsProvider$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineCredentialsProvider:Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

    return-object p0
.end method

.method public static final synthetic access$getOfflineForwardingDelayCalculator$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineForwardingDelayCalculator:Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;

    return-object p0
.end method

.method public static final synthetic access$getOfflineRepository$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/offlinemode/storage/OfflineRepository;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    return-object p0
.end method

.method public static final synthetic access$getTraceLogger$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    return-object p0
.end method

.method public static final synthetic access$handleForwardResponse(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/offlinemode/models/OfflineForwardingResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->handleForwardResponse(Lcom/stripe/offlinemode/models/OfflineForwardingResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleForwardingException(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->handleForwardingException(Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$intentFromDuplicateConfirmError(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->intentFromDuplicateConfirmError(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFailedToForward(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/stripeterminal/external/models/TerminalException;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->onFailedToForward(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/stripeterminal/external/models/TerminalException;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onFinishedForwarding(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->onFinishedForwarding(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$tags(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->tags(Ljava/lang/Throwable;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final forward(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;

    iget v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v4, v0

    iget-object p2, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 354
    iget v1, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    iget-object v0, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 357
    :try_start_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p2, p0

    check-cast p2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    .line 359
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->validateOfflineData(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V

    .line 361
    iput-object p0, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;->L$0:Ljava/lang/Object;

    iput-object p1, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;->L$1:Ljava/lang/Object;

    iput v2, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$1;->label:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    :try_start_2
    invoke-static/range {v1 .. v6}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forwardAndRetryTransientErrors$default(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    return-object p1

    :catchall_1
    move-exception v0

    move-object p2, v0

    move-object v1, p0

    move-object p1, v2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, p1

    move-object p2, v0

    move-object v1, p0

    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 364
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 366
    :cond_4
    instance-of p2, v5, Lcom/stripe/offlinemode/forwarding/HaltForwardingException;

    if-nez p2, :cond_9

    .line 367
    instance-of p2, v5, Ljava/util/concurrent/CancellationException;

    if-eqz p2, :cond_5

    new-instance p2, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;

    check-cast v5, Ljava/util/concurrent/CancellationException;

    invoke-direct {p2, v5, p1}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;-><init>(Ljava/util/concurrent/CancellationException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V

    check-cast p2, Lcom/stripe/offlinemode/models/OfflineForwardingResponse;

    goto :goto_2

    .line 368
    :cond_5
    instance-of p2, v5, Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;

    if-nez p2, :cond_8

    .line 373
    instance-of p2, v5, Lcom/stripe/offlinemode/models/ForwardingLivemodePaymentInTestmodeException;

    if-nez p2, :cond_7

    .line 384
    instance-of p2, v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz p2, :cond_6

    new-instance p2, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;

    check-cast v5, Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-direct {p2, v5, p1}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V

    check-cast p2, Lcom/stripe/offlinemode/models/OfflineForwardingResponse;

    goto :goto_2

    .line 385
    :cond_6
    new-instance p2, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v5, v2, v0, v2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->toTerminalException$default(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V

    check-cast p2, Lcom/stripe/offlinemode/models/OfflineForwardingResponse;

    :goto_2
    return-object p2

    .line 374
    :cond_7
    iget-object p1, v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->apiClient:Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;

    invoke-interface {p1}, Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;->clearStoredCredentials()V

    .line 375
    iget-object v6, v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$3$1;->INSTANCE:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forward$3$1;

    move-object v10, p1

    check-cast v10, Lkotlin/jvm/functions/Function2;

    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v12}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 378
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 379
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_LIVEMODE_PAYMENT_IN_TESTMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0x8

    .line 378
    const-string v4, "Cannot forward livemode payment in testmode. Halting forwarding."

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 368
    :cond_8
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 369
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CONNECTION_TOKEN_PROVIDER_ERROR_WHILE_FORWARDING:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 368
    const-string v4, "Failed to fetch connection token"

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    .line 366
    :cond_9
    throw v5
.end method

.method private final forwardAndRetryTransientErrors(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    instance-of v0, p3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;

    iget v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;

    invoke-direct {v0, p0, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 252
    iget v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->I$0:I

    iget-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_3
    iget p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->I$0:I

    iget-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    goto/16 :goto_4

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 256
    iget-object p3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Forwarding attempt "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v6, v6, [Lkotlin/Pair;

    invoke-interface {p3, v2, v6}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 258
    :try_start_2
    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getOfflineApiRequest()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object p3

    iget-object p3, p3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    sget-object v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result p3

    aget p3, v2, p3

    if-eq p3, v5, :cond_8

    if-eq p3, v4, :cond_8

    if-eq p3, v3, :cond_6

    const/4 v2, 0x4

    if-ne p3, v2, :cond_5

    goto :goto_1

    .line 273
    :cond_5
    new-instance p3, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p3}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p3

    .line 270
    :cond_6
    :goto_1
    iget-object p3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->apiClient:Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;

    iput-object p0, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->I$0:I

    iput v4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->label:I

    invoke-interface {p3, p1, v0}, Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;->forwardOfflineSetupIntent(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_2
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p3, v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v2, p0

    .line 252
    :goto_2
    :try_start_3
    check-cast p3, Lcom/stripe/proto/model/rest/SetupIntent;

    .line 273
    new-instance v4, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;

    invoke-direct {v4, p3, p1}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;-><init>(Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V

    check-cast v4, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;
    :try_end_3
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    .line 261
    :cond_8
    :try_start_4
    iget-object p3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->apiClient:Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;

    iput-object p0, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->I$0:I

    iput v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->label:I

    invoke-interface {p3, p1, v0}, Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;->forwardOfflinePayment(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_4 .. :try_end_4} :catch_1

    if-ne p3, v1, :cond_9

    goto :goto_5

    :cond_9
    move-object v2, p0

    .line 252
    :goto_3
    :try_start_5
    check-cast p3, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 264
    new-instance v4, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;

    invoke-direct {v4, p3, p1}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;-><init>(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V

    check-cast v4, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;
    :try_end_5
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v4

    :catch_1
    move-exception p3

    move-object v2, p0

    :goto_4
    const/4 v4, 0x0

    .line 279
    iput-object v4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$forwardAndRetryTransientErrors$1;->label:I

    invoke-direct {v2, p3, p1, p2, v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->handleForwardingException(Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    :goto_5
    return-object v1

    :cond_a
    return-object p1
.end method

.method static synthetic forwardAndRetryTransientErrors$default(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 252
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forwardAndRetryTransientErrors(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final handleForwardResponse(Lcom/stripe/offlinemode/models/OfflineForwardingResponse;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 540
    instance-of v0, p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;

    if-eqz v0, :cond_1

    .line 541
    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;

    .line 540
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->onFinishedForwarding(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 543
    :cond_1
    instance-of v0, p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;

    if-eqz v0, :cond_3

    .line 544
    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse;->getRequest()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getOfflineApiRequest()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v0

    .line 545
    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;

    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Failure;->getError()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    .line 543
    invoke-direct {p0, v0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->onFailedToForward(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/stripeterminal/external/models/TerminalException;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 547
    :cond_3
    instance-of p1, p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;

    if-eqz p1, :cond_4

    .line 551
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    .line 552
    const-string p2, "Failed to complete due to a change in network availability or active account."

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 551
    invoke-static {p1, v1, p2, v0, v1}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->endOperation$default(Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 556
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final handleForwardingException(Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/forwarding/ForwardingApiException;",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    instance-of v5, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;

    iget v6, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->label:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget v4, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->label:I

    sub-int/2addr v4, v7

    iput v4, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;

    invoke-direct {v5, v1, v4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v4, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 285
    iget v7, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->label:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v7, :cond_5

    if-eq v7, v11, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->I$0:I

    iget-object v2, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    iget-object v3, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v4

    :cond_4
    iget v0, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->I$1:I

    iget v2, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->I$0:I

    iget-object v3, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    iget-object v7, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    iget-object v11, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    iget-object v13, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    :try_start_0
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v3

    move v3, v2

    move-object v2, v7

    move-object/from16 v7, v16

    goto :goto_1

    :catch_0
    move-exception v0

    move v3, v2

    move-object v2, v7

    goto/16 :goto_3

    :cond_5
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    add-int/lit8 v4, v3, 0x1

    .line 291
    iget-object v7, v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->networkStatusProvider:Ljavax/inject/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    .line 292
    iget-object v13, v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    .line 294
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Forwarding api error, failures = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", networkStatus = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 293
    move-object v15, v0

    check-cast v15, Ljava/lang/Throwable;

    const/4 v10, 0x0

    new-array v10, v10, [Lkotlin/Pair;

    .line 292
    invoke-interface {v13, v14, v15, v10}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 300
    :try_start_1
    invoke-virtual {v0}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->getTerminalException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v10

    .line 299
    iput-object v1, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$0:Ljava/lang/Object;

    iput-object v0, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$2:Ljava/lang/Object;

    iput-object v7, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$3:Ljava/lang/Object;

    iput v3, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->I$0:I

    iput v4, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->I$1:I

    iput v11, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->label:I

    invoke-direct {v1, v10, v2, v5}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->intentFromDuplicateConfirmError(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_1
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v10, v6, :cond_6

    goto/16 :goto_4

    :cond_6
    move-object v11, v0

    move-object v13, v1

    move v0, v4

    move-object v4, v10

    .line 285
    :goto_1
    :try_start_2
    check-cast v4, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;
    :try_end_2
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_7

    return-object v4

    .line 314
    :cond_7
    invoke-virtual {v11}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isCredentialError()Z

    move-result v3

    if-nez v3, :cond_e

    .line 319
    invoke-virtual {v11}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isTransient()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 323
    sget-object v3, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-eq v7, v3, :cond_c

    const/16 v3, 0xa

    if-gt v0, v3, :cond_a

    .line 332
    iget-object v3, v13, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineForwardingDelayCalculator:Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;

    invoke-interface {v3, v0}, Lcom/stripe/offlinemode/forwarding/OfflineForwardingDelayCalculator;->calculateExponentialDelay(I)J

    move-result-wide v3

    iput-object v13, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$0:Ljava/lang/Object;

    iput-object v2, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$1:Ljava/lang/Object;

    iput-object v12, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$2:Ljava/lang/Object;

    iput-object v12, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$3:Ljava/lang/Object;

    iput v0, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->I$0:I

    iput v9, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->label:I

    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_8

    goto :goto_4

    :cond_8
    move-object v3, v13

    .line 334
    :goto_2
    iput-object v12, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$0:Ljava/lang/Object;

    iput-object v12, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$1:Ljava/lang/Object;

    iput v8, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->label:I

    invoke-direct {v3, v2, v0, v5}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forwardAndRetryTransientErrors(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_9

    goto :goto_4

    :cond_9
    return-object v0

    .line 339
    :cond_a
    sget-object v0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    if-ne v7, v0, :cond_b

    .line 342
    new-instance v0, Lcom/stripe/offlinemode/forwarding/HaltForwardingException$ExceededMaxRetries;

    invoke-virtual {v11}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->getTerminalException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Lcom/stripe/offlinemode/forwarding/HaltForwardingException$ExceededMaxRetries;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 346
    :cond_b
    invoke-virtual {v11}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->getTerminalException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0

    .line 326
    :cond_c
    new-instance v0, Lcom/stripe/offlinemode/forwarding/HaltForwardingException$TerminalIsOffline;

    invoke-virtual {v11}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->getTerminalException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Lcom/stripe/offlinemode/forwarding/HaltForwardingException$TerminalIsOffline;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 321
    :cond_d
    invoke-virtual {v11}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->getTerminalException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v0

    throw v0

    .line 317
    :cond_e
    new-instance v0, Lcom/stripe/offlinemode/forwarding/HaltForwardingException$FailedToFetchCredentials;

    invoke-virtual {v11}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->getTerminalException()Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Lcom/stripe/offlinemode/forwarding/HaltForwardingException$FailedToFetchCredentials;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v13, v1

    .line 306
    :goto_3
    iput-object v12, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$0:Ljava/lang/Object;

    iput-object v12, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$1:Ljava/lang/Object;

    iput-object v12, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$2:Ljava/lang/Object;

    iput-object v12, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->L$3:Ljava/lang/Object;

    const/4 v4, 0x2

    iput v4, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$handleForwardingException$1;->label:I

    invoke-direct {v13, v0, v2, v3, v5}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->handleForwardingException(Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_f

    :goto_4
    return-object v6

    :cond_f
    return-object v0
.end method

.method private final intentFromDuplicateConfirmError(Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;

    iget v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;

    invoke-direct {v0, p0, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v6, v0

    iget-object p3, v6, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 593
    iget v1, v6, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p1, v6, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;->L$0:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 597
    invoke-virtual {p2}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component1()Lcom/stripe/proto/model/offline_mode/OfflineReader;

    move-result-object v3

    invoke-virtual {p2}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component2()Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object v4

    invoke-virtual {p2}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component3()Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v5

    .line 598
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    const/4 v7, 0x2

    .line 600
    new-array v7, v7, [Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    const/4 v8, 0x0

    sget-object v9, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->SUCCEEDED:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    aput-object v9, v7, v8

    .line 601
    sget-object v8, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->REQUIRES_CAPTURE:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    aput-object v8, v7, v2

    .line 599
    invoke-static {v7}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 602
    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStatus()Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, v1

    :goto_1
    if-eqz p3, :cond_4

    .line 603
    sget-object v7, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v7, p3}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toProtoPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 604
    new-instance p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;

    invoke-direct {p1, p3, p2}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;-><init>(Lcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V

    return-object p1

    .line 610
    :cond_4
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getSetupIntent()Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 612
    sget-object p3, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;->SUCCEEDED:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    .line 611
    invoke-static {p3}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    .line 613
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getStatus()Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    move-result-object v7

    invoke-static {p3, v7}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_8

    .line 616
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->apiClient:Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;

    .line 617
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 616
    iput-object p2, v6, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;->L$0:Ljava/lang/Object;

    iput v2, v6, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$intentFromDuplicateConfirmError$1;->label:I

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;->retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_6

    return-object v0

    .line 593
    :cond_6
    :goto_3
    check-cast p3, Lcom/stripe/proto/model/rest/SetupIntent;

    .line 615
    new-instance p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;

    invoke-direct {p1, p3, p2}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;-><init>(Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V

    return-object p1

    .line 617
    :cond_7
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 618
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 617
    const-string v2, "SetupIntent ID cannot be null after forwarding."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_8
    return-object v1
.end method

.method private final isExpectedError(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Lcom/stripe/stripeterminal/external/models/TerminalException;)Z
    .locals 4

    .line 516
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-eq v0, v1, :cond_4

    .line 518
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getApiError()Lcom/stripe/stripeterminal/external/api/ApiError;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/api/ApiError;->getCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 520
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v1, p1, v0}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isKnownForwardingError(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 525
    sget-object v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 526
    const-string v1, "payment_intent_unexpected_state"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStatus()Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    sget-object v3, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->CANCELED:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    if-eq v1, v3, :cond_4

    .line 530
    :cond_1
    sget-object v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CONFIRM_SETUP_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    if-ne p1, v1, :cond_3

    .line 531
    const-string p1, "setup_intent_unexpected_state"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 532
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getSetupIntent()Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getStatus()Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    move-result-object v2

    :cond_2
    sget-object p1, Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;->CANCELLED:Lcom/stripe/stripeterminal/external/models/SetupIntentStatus;

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method private final isFirstInitialization()Z
    .locals 2

    .line 92
    iget-boolean v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->isFirstInitialization:Z

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->isFirstInitialization:Z

    return v0
.end method

.method private final logErrorReason(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 645
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 646
    :cond_0
    instance-of v0, p1, Lcom/stripe/offlinemode/forwarding/HaltForwardingException$TerminalIsOffline;

    if-eqz v0, :cond_1

    const-string p1, "terminal_offline"

    return-object p1

    .line 647
    :cond_1
    instance-of v0, p1, Lcom/stripe/offlinemode/forwarding/HaltForwardingException$ExceededMaxRetries;

    if-eqz v0, :cond_2

    const-string p1, "exceeded_max_retries"

    return-object p1

    .line 648
    :cond_2
    instance-of p1, p1, Ljava/util/concurrent/CancellationException;

    if-eqz p1, :cond_3

    const-string p1, "scope_cancelled"

    return-object p1

    .line 649
    :cond_3
    const-string p1, "unexpected_error"

    return-object p1
.end method

.method private final onFailedToForward(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/stripeterminal/external/models/TerminalException;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;

    iget v5, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;

    invoke-direct {v4, v0, v3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 454
    iget v6, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->label:I

    const-string v7, "EntityId"

    const-string v8, "Failed to forward entity "

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v11, :cond_2

    if-ne v6, v9, :cond_1

    iget-object v1, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-object v2, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-object v2, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 458
    iget-object v3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->entityId(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v12, v2

    check-cast v12, Ljava/lang/Throwable;

    new-array v13, v10, [Lkotlin/Pair;

    invoke-interface {v3, v6, v12, v13}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 461
    iget-object v3, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    const-string v6, "Required value was null."

    if-eqz v3, :cond_5

    .line 462
    iget-object v3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    .line 463
    iget-object v12, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v12, :cond_4

    .line 464
    iget-object v13, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    iget-wide v14, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    const/16 v19, 0x1c

    const/16 v20, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->withOfflineDetails$default(Lcom/stripe/proto/model/rest/PaymentIntent;Ljava/lang/String;JZLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v6

    .line 462
    invoke-interface {v3, v6, v2}, Lcom/stripe/stripeterminal/external/callable/OfflineListener;->onPaymentIntentForwarded(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    goto :goto_1

    .line 463
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :cond_5
    iget-object v3, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v3, :cond_d

    .line 469
    iget-object v3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    .line 470
    iget-object v12, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v12, :cond_c

    .line 471
    iget-object v13, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    iget-wide v14, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    const/16 v18, 0xc

    const/16 v19, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->withOfflineDetails$default(Lcom/stripe/proto/model/rest/SetupIntent;Ljava/lang/String;JZLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v6

    .line 469
    invoke-interface {v3, v6, v2}, Lcom/stripe/stripeterminal/external/callable/OfflineListener;->onSetupIntentForwarded(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 478
    :goto_1
    iget-object v3, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-direct {v0, v3, v2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->isExpectedError(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Lcom/stripe/stripeterminal/external/models/TerminalException;)Z

    move-result v3

    if-ne v3, v11, :cond_9

    .line 482
    iget-object v3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    .line 483
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "Deleting from db, since this error is expected "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getApiError()Lcom/stripe/stripeterminal/external/api/ApiError;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/stripe/stripeterminal/external/api/ApiError;->getCode()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    :cond_6
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v12

    :cond_7
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 484
    new-array v6, v9, [Lkotlin/Pair;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->entityId(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v10

    .line 485
    const-string v7, "RequestType"

    iget-object v9, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v11

    .line 482
    invoke-interface {v3, v2, v6}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 487
    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    iput-object v0, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->L$1:Ljava/lang/Object;

    iput v11, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->label:I

    invoke-interface {v2, v1, v4}, Lcom/stripe/offlinemode/storage/OfflineRepository;->delete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_8

    goto :goto_2

    :cond_8
    move-object v2, v0

    goto :goto_5

    .line 491
    :cond_9
    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    iput-object v0, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->L$1:Ljava/lang/Object;

    iput v9, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$1;->label:I

    invoke-interface {v2, v1, v4}, Lcom/stripe/offlinemode/storage/OfflineRepository;->softDelete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_a

    :goto_2
    return-object v5

    :cond_a
    move-object v2, v0

    :goto_3
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 492
    iget-object v4, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    .line 493
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "soft deleted "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " record(s)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 494
    new-array v6, v11, [Lkotlin/Pair;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->entityId(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v6, v10

    .line 492
    invoke-interface {v4, v5, v6}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    :goto_4
    if-ge v10, v3, :cond_b

    .line 498
    iget-object v12, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$2$1$1;->INSTANCE:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFailedToForward$2$1$1;

    move-object/from16 v16, v4

    check-cast v16, Lkotlin/jvm/functions/Function2;

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v18}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 503
    :cond_b
    :goto_5
    iget-object v2, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->entityId(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v11, v3}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->endOperation$default(Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 504
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1

    .line 470
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "PaymentIntent or SetupIntent should always be defined."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final onFinishedForwarding(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;

    iget v4, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;

    invoke-direct {v3, v0, v2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 390
    iget v5, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_1

    if-ne v5, v7, :cond_2

    :cond_1
    iget-object v1, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 393
    invoke-virtual {v1}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;->getRequest()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getOfflineApiRequest()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v2

    .line 394
    invoke-virtual {v1}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;->getRequest()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    move-result-object v5

    invoke-virtual {v5}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getHasMoreRelatedRequests()Z

    move-result v5

    .line 395
    iget-object v10, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    .line 397
    new-array v11, v6, [Lkotlin/Pair;

    const-string v12, "EntityId"

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->entityId(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 398
    const-string v12, "RequestType"

    iget-object v13, v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-static {v12, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    aput-object v12, v11, v9

    xor-int/lit8 v12, v5, 0x1

    .line 399
    invoke-static {v12}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    const-string v13, "NotifyIntegration"

    invoke-static {v13, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    aput-object v12, v11, v7

    .line 395
    const-string v12, "Finished forwarding!"

    invoke-interface {v10, v12, v11}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    if-nez v5, :cond_5

    .line 406
    instance-of v5, v1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;

    if-eqz v5, :cond_4

    .line 407
    iget-object v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    .line 408
    move-object v10, v1

    check-cast v10, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;

    invoke-virtual {v10}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;->getPaymentIntent()Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v11

    .line 409
    iget-object v12, v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    .line 410
    iget-wide v13, v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    const/16 v18, 0x18

    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 408
    invoke-static/range {v11 .. v19}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->withOfflineDetails$default(Lcom/stripe/proto/model/rest/PaymentIntent;Ljava/lang/String;JZLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;Lcom/stripe/stripeterminal/external/models/AmountDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v10

    .line 407
    invoke-interface {v5, v10, v8}, Lcom/stripe/stripeterminal/external/callable/OfflineListener;->onPaymentIntentForwarded(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    goto :goto_1

    .line 416
    :cond_4
    instance-of v5, v1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;

    if-eqz v5, :cond_5

    .line 417
    iget-object v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->listener:Lcom/stripe/stripeterminal/external/callable/OfflineListener;

    .line 418
    move-object v10, v1

    check-cast v10, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;

    invoke-virtual {v10}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;->getSetupIntent()Lcom/stripe/proto/model/rest/SetupIntent;

    move-result-object v11

    .line 419
    iget-object v12, v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    .line 420
    iget-wide v13, v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 418
    invoke-static/range {v11 .. v18}, Lcom/stripe/stripeterminal/internal/common/adapter/OfflineAdapterKt;->withOfflineDetails$default(Lcom/stripe/proto/model/rest/SetupIntent;Ljava/lang/String;JZLcom/stripe/stripeterminal/external/models/OfflineCardPresentDetails;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v10

    .line 417
    invoke-interface {v5, v10, v8}, Lcom/stripe/stripeterminal/external/callable/OfflineListener;->onSetupIntentForwarded(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 430
    :cond_5
    :goto_1
    iget-object v5, v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    sget-object v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result v5

    aget v5, v10, v5

    if-eq v5, v9, :cond_7

    if-eq v5, v6, :cond_7

    .line 448
    iget-object v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    iput-object v0, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;->L$0:Ljava/lang/Object;

    iput v7, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;->label:I

    invoke-interface {v1, v2, v3}, Lcom/stripe/offlinemode/storage/OfflineRepository;->delete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v0

    goto :goto_3

    .line 443
    :cond_7
    iget-object v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    iput-object v0, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;->L$0:Ljava/lang/Object;

    iput v9, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$onFinishedForwarding$1;->label:I

    invoke-interface {v5, v1, v2, v3}, Lcom/stripe/offlinemode/storage/OfflineRepository;->updateOfflineConfirmRequestWithOnlineEntity(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_6

    :goto_2
    return-object v4

    .line 451
    :goto_3
    iget-object v1, v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    invoke-static {v1, v8, v8, v6, v8}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->endOperation$default(Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 452
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final tags(Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 657
    const-string v0, "ErrorReason"

    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->logErrorReason(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private final toTerminalException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 7

    .line 636
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 637
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p1

    move-object v2, p2

    .line 636
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method static synthetic toTerminalException$default(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 634
    const-string p2, "Failed to forward offline payment."

    .line 632
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->toTerminalException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p0

    return-object p0
.end method

.method private final validateOfflineData(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 567
    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component1()Lcom/stripe/proto/model/offline_mode/OfflineReader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component2()Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component3()Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v2

    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component4()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object p1

    .line 569
    iget-object v3, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    iget-object v4, v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 570
    iget-object v3, v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    iget-object v4, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->account_id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 573
    :cond_0
    iget-wide v3, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->id:J

    iget-wide v5, v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    cmp-long v0, v3, v5

    const-string v3, "Attempting to forward mismatched offline records!"

    if-nez v0, :cond_3

    .line 574
    iget-wide v4, v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    iget-wide v6, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->connection_id:J

    cmp-long p1, v4, v6

    if-eqz p1, :cond_1

    goto :goto_0

    .line 577
    :cond_1
    iget-wide v4, v2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->id:J

    iget-wide v0, v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    cmp-long p1, v4, v0

    if-eqz p1, :cond_2

    .line 578
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    .line 575
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 571
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The offline records for this payment belong to different accounts!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_2
    if-nez p1, :cond_5

    return-void

    .line 584
    :cond_5
    check-cast p1, Ljava/lang/Throwable;

    .line 583
    const-string v0, "Couldn\'t validate offline records for forwarding."

    .line 582
    invoke-direct {p0, p1, v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->toTerminalException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public final isForwardJobRunning$offlinemode_release()Z
    .locals 3

    .line 662
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forwardingJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public startForwarding()V
    .locals 11

    .line 99
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    const/4 v1, 0x1

    .line 101
    new-array v2, v1, [Lkotlin/Pair;

    iget-object v3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forwardingJob:Lkotlinx/coroutines/Job;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    const-string v5, "isAlreadyForwarding"

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    .line 99
    const-string v3, "Start forwarding"

    invoke-interface {v0, v3, v2}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 104
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forwardingJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-ne v0, v1, :cond_1

    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->offlineRepository:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    .line 113
    invoke-direct {p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->isFirstInitialization()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$1;

    invoke-direct {v1, p0, v4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlin/coroutines/Continuation;)V

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->traceLogger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    invoke-interface {v1}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->startSession()V

    .line 129
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v1, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v5

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->exceptionHandler:Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-object v6, v1

    check-cast v6, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2;

    invoke-direct {v1, p0, v0, v4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;Lkotlinx/coroutines/flow/StateFlow;Lkotlin/coroutines/Continuation;)V

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forwardingJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public stopForwarding(Ljava/lang/String;)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->forwardingJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    return-void
.end method
