.class public final Lcom/stripe/cots/common/CotsClient;
.super Ljava/lang/Object;
.source "CotsClient.kt"

# interfaces
.implements Lcom/stripe/cots/common/CotsClientInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/cots/common/CotsClient$CoroutineRpcListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCotsClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CotsClient.kt\ncom/stripe/cots/common/CotsClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Log.kt\ncom/stripe/jvmcore/logging/terminal/log/Log$Companion\n*L\n1#1,288:1\n1549#2:289\n1620#2,3:290\n148#3:293\n*S KotlinDebug\n*F\n+ 1 CotsClient.kt\ncom/stripe/cots/common/CotsClient\n*L\n176#1:289\n176#1:290,3\n92#1:293\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b5\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u001a\u0018\u00002\u00020\u0001:\u0001PB5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000c\u00a2\u0006\u0002\u0010\rJ@\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020#2\u0006\u0010&\u001a\u00020#2\u0006\u0010\'\u001a\u00020#2\u0006\u0010(\u001a\u00020#H\u0096@\u00a2\u0006\u0002\u0010)J\u000e\u0010*\u001a\u00020+H\u0082@\u00a2\u0006\u0002\u0010,J\u000e\u0010-\u001a\u00020+H\u0096@\u00a2\u0006\u0002\u0010,J\u0008\u0010.\u001a\u00020/H\u0016J\u0018\u00100\u001a\u0004\u0018\u0001012\u0006\u00102\u001a\u000203H\u0096@\u00a2\u0006\u0002\u00104J\u0016\u00105\u001a\u0002062\u0006\u00107\u001a\u00020#H\u0096@\u00a2\u0006\u0002\u00108J\u000e\u00109\u001a\u00020+H\u0096@\u00a2\u0006\u0002\u0010,J\u0010\u0010:\u001a\u0004\u0018\u00010!H\u0096@\u00a2\u0006\u0002\u0010,J\u0008\u0010;\u001a\u00020+H\u0016J\u0016\u0010<\u001a\u00020+2\u0006\u0010=\u001a\u00020>H\u0096@\u00a2\u0006\u0002\u0010?JT\u0010@\u001a\u0002HA\"\u0012\u0008\u0000\u0010B*\u000c\u0012\u0004\u0012\u0002HB\u0012\u0002\u0008\u00030C\"\u0012\u0008\u0001\u0010A*\u000c\u0012\u0004\u0012\u0002HA\u0012\u0002\u0008\u00030C2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u0002HB2\u000c\u0010G\u001a\u0008\u0012\u0004\u0012\u0002HA0HH\u0082@\u00a2\u0006\u0002\u0010IJ\u0016\u0010J\u001a\u00020+2\u0006\u0010K\u001a\u00020LH\u0096@\u00a2\u0006\u0002\u0010MJ\u0010\u0010N\u001a\u0004\u0018\u00010OH\u0096@\u00a2\u0006\u0002\u0010,R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0016X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u001b\u0010\u001c\u001a\u00020\u00108BX\u0082\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001f*\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006Q"
    }
    d2 = {
        "Lcom/stripe/cots/common/CotsClient;",
        "Lcom/stripe/cots/common/CotsClientInterface;",
        "context",
        "Landroid/content/Context;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "preFlightChecks",
        "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "_disconnectFlow",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "",
        "aidlClient",
        "Lcom/stripe/core/aidlrpcclient/AidlRpcClient;",
        "aidlServiceConnection",
        "Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;",
        "disconnectFlow",
        "Lkotlinx/coroutines/flow/SharedFlow;",
        "getDisconnectFlow",
        "()Lkotlinx/coroutines/flow/SharedFlow;",
        "emptyRequestContextProvider",
        "com/stripe/cots/common/CotsClient$emptyRequestContextProvider$1",
        "Lcom/stripe/cots/common/CotsClient$emptyRequestContextProvider$1;",
        "isConnected",
        "isConnected$delegate",
        "(Lcom/stripe/cots/common/CotsClient;)Ljava/lang/Object;",
        "()Z",
        "activate",
        "Lcom/stripe/cots/aidlservice/CotsReader;",
        "sessionToken",
        "",
        "rpcSessionToken",
        "clientType",
        "clientVersion",
        "deviceUuid",
        "countryCode",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "bindIfNeeded",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cancelCollectPayment",
        "checkDeviceCompatibility",
        "Lcom/stripe/cots/common/CotsError;",
        "collectPayment",
        "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
        "parameters",
        "Lcom/stripe/cots/common/CotsCollectionParameters;",
        "(Lcom/stripe/cots/common/CotsCollectionParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectPin",
        "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;",
        "amount",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "disconnect",
        "discover",
        "initializeKeys",
        "killAidlServer",
        "delayMs",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "makeRequest",
        "Response",
        "Request",
        "Lcom/squareup/wire/Message;",
        "method",
        "Lcom/stripe/cots/common/CotsServiceRequestName;",
        "request",
        "responseAdapter",
        "Lcom/squareup/wire/ProtoAdapter;",
        "(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "setFakedContactlessOutcome",
        "fakedContactlessOutcomeType",
        "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
        "(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateReader",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "CoroutineRpcListener",
        "common_release"
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
.field private final _disconnectFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final aidlClient:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

.field private final aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

.field private final context:Landroid/content/Context;

.field private final disconnectFlow:Lkotlinx/coroutines/flow/SharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final emptyRequestContextProvider:Lcom/stripe/cots/common/CotsClient$emptyRequestContextProvider$1;

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

.field private final preFlightChecks:Lcom/stripe/cots/common/compatibility/PreFlightChecks;


# direct methods
.method public static synthetic $r8$lambda$zQleHxWukm7jgaeqx89TMstlETI(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    invoke-static {p0}, Lcom/stripe/cots/common/CotsClient;->aidlClient$lambda$0(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/cots/common/compatibility/PreFlightChecks;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/cots/common/compatibility/PreFlightChecks;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preFlightChecks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/stripe/cots/common/CotsClient;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/stripe/cots/common/CotsClient;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 62
    iput-object p3, p0, Lcom/stripe/cots/common/CotsClient;->preFlightChecks:Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    .line 63
    iput-object p4, p0, Lcom/stripe/cots/common/CotsClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 67
    new-instance p2, Lcom/stripe/cots/common/CotsClient$emptyRequestContextProvider$1;

    invoke-direct {p2}, Lcom/stripe/cots/common/CotsClient$emptyRequestContextProvider$1;-><init>()V

    iput-object p2, p0, Lcom/stripe/cots/common/CotsClient;->emptyRequestContextProvider:Lcom/stripe/cots/common/CotsClient$emptyRequestContextProvider$1;

    const/4 p3, 0x0

    const/4 p4, 0x7

    const/4 v0, 0x0

    .line 75
    invoke-static {v0, v0, p3, p4, p3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/cots/common/CotsClient;->_disconnectFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 76
    invoke-static {p3}, Lkotlinx/coroutines/flow/FlowKt;->asSharedFlow(Lkotlinx/coroutines/flow/MutableSharedFlow;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p3

    iput-object p3, p0, Lcom/stripe/cots/common/CotsClient;->disconnectFlow:Lkotlinx/coroutines/flow/SharedFlow;

    .line 78
    new-instance v0, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    .line 79
    new-instance p3, Lcom/stripe/cots/common/CotsClient$aidlServiceConnection$1;

    invoke-direct {p3, p0}, Lcom/stripe/cots/common/CotsClient$aidlServiceConnection$1;-><init>(Lcom/stripe/cots/common/CotsClient;)V

    move-object v1, p3

    check-cast v1, Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 78
    const-string v2, "CotsClient"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;-><init>(Lcom/stripe/core/aidlrpcclient/AidlConnectionListener;Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/stripe/cots/common/CotsClient;->aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    .line 88
    new-instance p3, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    .line 90
    check-cast p2, Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;

    .line 91
    new-instance p4, Lcom/stripe/cots/common/CotsClient$$ExternalSyntheticLambda0;

    invoke-direct {p4}, Lcom/stripe/cots/common/CotsClient$$ExternalSyntheticLambda0;-><init>()V

    .line 88
    invoke-direct {p3, p1, p2, v0, p4}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;-><init>(Landroid/content/Context;Lcom/stripe/jvmcore/crpcclient/CrpcClient$CrpcRequestContextProvider;Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    iput-object p3, p0, Lcom/stripe/cots/common/CotsClient;->aidlClient:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    return-void
.end method

.method public static final synthetic access$bindIfNeeded(Lcom/stripe/cots/common/CotsClient;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/stripe/cots/common/CotsClient;->bindIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAidlClient$p(Lcom/stripe/cots/common/CotsClient;)Lcom/stripe/core/aidlrpcclient/AidlRpcClient;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/stripe/cots/common/CotsClient;->aidlClient:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/stripe/cots/common/CotsClient;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/stripe/cots/common/CotsClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$get_disconnectFlow$p(Lcom/stripe/cots/common/CotsClient;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/stripe/cots/common/CotsClient;->_disconnectFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$makeRequest(Lcom/stripe/cots/common/CotsClient;Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/cots/common/CotsClient;->makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final aidlClient$lambda$0(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object p0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    .line 293
    const-class v0, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    invoke-virtual {p0, v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method private final bindIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Lcom/stripe/cots/common/CotsClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/stripe/cots/common/CotsClient;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/cots/common/CotsClient$bindIfNeeded$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/cots/common/CotsClient$bindIfNeeded$2;-><init>(Lcom/stripe/cots/common/CotsClient;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 107
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final isConnected()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/stripe/cots/common/CotsClient;->aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    invoke-virtual {v0}, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method private static isConnected$delegate(Lcom/stripe/cots/common/CotsClient;)Ljava/lang/Object;
    .locals 6

    .line 95
    new-instance v0, Lkotlin/jvm/internal/PropertyReference0Impl;

    iget-object v1, p0, Lcom/stripe/cots/common/CotsClient;->aidlServiceConnection:Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    const-class v2, Lcom/stripe/core/aidlrpcclient/AidlServiceConnection;

    const-string v4, "isServiceConnected()Z"

    const/4 v5, 0x0

    const-string v3, "isServiceConnected"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/PropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/PropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->property0(Lkotlin/jvm/internal/PropertyReference0;)Lkotlin/reflect/KProperty0;

    move-result-object p0

    return-object p0
.end method

.method private final makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Request:",
            "Lcom/squareup/wire/Message<",
            "TRequest;*>;Response:",
            "Lcom/squareup/wire/Message<",
            "TResponse;*>;>(",
            "Lcom/stripe/cots/common/CotsServiceRequestName;",
            "TRequest;",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TResponse;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TResponse;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/stripe/cots/common/CotsClient$makeRequest$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;

    iget v1, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;

    invoke-direct {v0, p0, p4}, Lcom/stripe/cots/common/CotsClient$makeRequest$1;-><init>(Lcom/stripe/cots/common/CotsClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 238
    iget v2, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$3:Ljava/lang/Object;

    check-cast p1, Lcom/squareup/wire/ProtoAdapter;

    iget-object p2, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$2:Ljava/lang/Object;

    check-cast p2, Lcom/squareup/wire/Message;

    iget-object p2, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$1:Ljava/lang/Object;

    check-cast p2, Lcom/stripe/cots/common/CotsServiceRequestName;

    iget-object p2, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lcom/stripe/cots/common/CotsClient;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$3:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Lcom/squareup/wire/ProtoAdapter;

    iget-object p1, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/squareup/wire/Message;

    iget-object p1, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/cots/common/CotsServiceRequestName;

    iget-object v2, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/cots/common/CotsClient;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 247
    iput-object p0, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->label:I

    invoke-direct {p0, v0}, Lcom/stripe/cots/common/CotsClient;->bindIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 248
    :goto_1
    invoke-direct {v2}, Lcom/stripe/cots/common/CotsClient;->isConnected()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 250
    iput-object v2, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->L$3:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/cots/common/CotsClient$makeRequest$1;->label:I

    check-cast v0, Lkotlin/coroutines/Continuation;

    new-instance p4, Lkotlin/coroutines/SafeContinuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v3

    invoke-direct {p4, v3}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    move-object v3, p4

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 251
    iget-object v2, v2, Lcom/stripe/cots/common/CotsClient;->aidlClient:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    .line 253
    invoke-virtual {p1}, Lcom/stripe/cots/common/CotsServiceRequestName;->name()Ljava/lang/String;

    move-result-object p1

    .line 255
    new-instance v5, Lcom/stripe/cots/common/CotsClient$CoroutineRpcListener;

    invoke-direct {v5, v3}, Lcom/stripe/cots/common/CotsClient$CoroutineRpcListener;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lcom/stripe/core/aidlrpc/AidlRpcListener;

    .line 251
    const-string v3, "COTS_SERVICE"

    invoke-virtual {v2, v3, p1, p2, v5}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->makeRequest(Ljava/lang/String;Ljava/lang/String;Lcom/squareup/wire/Message;Lcom/stripe/core/aidlrpc/AidlRpcListener;)V

    .line 250
    invoke-virtual {p4}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p4, p1, :cond_5

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_5
    if-ne p4, v1, :cond_6

    :goto_2
    return-object v1

    :cond_6
    move-object p1, p3

    :goto_3
    check-cast p4, Lcom/stripe/proto/net/rpc/base/RpcResponse;

    const/4 p2, 0x0

    .line 259
    invoke-static {p4, p1, p2, v4, p2}, Lcom/stripe/jvmcore/crpcclient/MappersKt;->toResponseType$default(Lcom/stripe/proto/net/rpc/base/RpcResponse;Lcom/squareup/wire/ProtoAdapter;Ljava/lang/Long;ILjava/lang/Object;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object p1

    .line 261
    instance-of p2, p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    const/16 p3, 0x27

    const-string p4, " \'"

    if-nez p2, :cond_9

    .line 265
    instance-of p2, p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    if-nez p2, :cond_8

    .line 269
    instance-of p2, p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    if-eqz p2, :cond_7

    .line 270
    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 266
    :cond_8
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RPC Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getCode()Lcom/stripe/proto/net/rpc/base/RpcEC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$RpcError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 262
    :cond_9
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getCode()Lcom/stripe/proto/net/rpc/base/ApplicationEC;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p1}, Lcom/stripe/jvmcore/crpcclient/CrpcResponse$ApplicationError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 248
    :cond_a
    new-instance p1, Lcom/stripe/cots/common/ReaderNotConnectedException;

    invoke-direct {p1}, Lcom/stripe/cots/common/ReaderNotConnectedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public activate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsReader;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/stripe/core/aidlrpc/AidlRpcException;,
            Lcom/stripe/cots/common/ReaderNotConnectedException;,
            Lcom/stripe/cots/common/DebuggableException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lcom/stripe/cots/common/CotsClient$activate$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/stripe/cots/common/CotsClient$activate$1;

    iget v3, v2, Lcom/stripe/cots/common/CotsClient$activate$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/stripe/cots/common/CotsClient$activate$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/stripe/cots/common/CotsClient$activate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/cots/common/CotsClient$activate$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/cots/common/CotsClient$activate$1;-><init>(Lcom/stripe/cots/common/CotsClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/stripe/cots/common/CotsClient$activate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 141
    iget v4, v2, Lcom/stripe/cots/common/CotsClient$activate$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 150
    sget-object v1, Lcom/stripe/cots/common/CotsServiceRequestName;->ACTIVATE:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 151
    new-instance v6, Lcom/stripe/cots/aidlservice/CotsActivateReaderRequest;

    const/16 v14, 0x40

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v15}, Lcom/stripe/cots/aidlservice/CotsActivateReaderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/squareup/wire/Message;

    .line 152
    sget-object v4, Lcom/stripe/cots/aidlservice/CotsActivateReaderResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 149
    iput v5, v2, Lcom/stripe/cots/common/CotsClient$activate$1;->label:I

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/stripe/cots/common/CotsClient;->makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_3

    return-object v3

    :cond_3
    :goto_1
    check-cast v1, Lcom/stripe/cots/aidlservice/CotsActivateReaderResponse;

    iget-object v1, v1, Lcom/stripe/cots/aidlservice/CotsActivateReaderResponse;->cotsReader:Lcom/stripe/cots/aidlservice/CotsReader;

    return-object v1
.end method

.method public cancelCollectPayment(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lcom/stripe/cots/common/CotsClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    sget-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->CANCEL_COLLECT_PAYMENT:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 213
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsCancelCollectPaymentMethodRequest;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/stripe/cots/aidlservice/CotsCancelCollectPaymentMethodRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/squareup/wire/Message;

    .line 214
    sget-object v2, Lcom/stripe/cots/aidlservice/CotsCancelCollectPaymentMethodResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 211
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/stripe/cots/common/CotsClient;->makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 217
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public checkDeviceCompatibility()Lcom/stripe/cots/common/CotsError;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/stripe/cots/common/CotsClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/stripe/cots/common/UtilsKt;->isApplicationUnsupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/stripe/cots/common/CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/common/CotsError;

    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/stripe/cots/common/CotsClient;->preFlightChecks:Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    invoke-virtual {v0}, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->getDeviceCompatibility()Lcom/stripe/cots/common/CotsError;

    move-result-object v0

    return-object v0
.end method

.method public collectPayment(Lcom/stripe/cots/common/CotsCollectionParameters;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/cots/common/CotsCollectionParameters;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsContactlessResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/stripe/core/aidlrpc/AidlRpcException;,
            Lcom/stripe/cots/common/ReaderNotConnectedException;,
            Lcom/stripe/cots/common/DebuggableException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/stripe/cots/common/CotsClient$collectPayment$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/stripe/cots/common/CotsClient$collectPayment$1;

    iget v3, v2, Lcom/stripe/cots/common/CotsClient$collectPayment$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/stripe/cots/common/CotsClient$collectPayment$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/stripe/cots/common/CotsClient$collectPayment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/cots/common/CotsClient$collectPayment$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/cots/common/CotsClient$collectPayment$1;-><init>(Lcom/stripe/cots/common/CotsClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/stripe/cots/common/CotsClient$collectPayment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 175
    iget v4, v2, Lcom/stripe/cots/common/CotsClient$collectPayment$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/cots/common/CotsCollectionParameters;->getTlvEntries()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 289
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 290
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 291
    check-cast v6, Lcom/stripe/cots/common/CotsTlvEntry;

    .line 177
    new-instance v7, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;

    invoke-virtual {v6}, Lcom/stripe/cots/common/CotsTlvEntry;->getTag()I

    move-result v8

    sget-object v9, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    invoke-virtual {v6}, Lcom/stripe/cots/common/CotsTlvEntry;->getValue()[B

    move-result-object v10

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lokio/ByteString$Companion;->of$default(Lokio/ByteString$Companion;[BIIILjava/lang/Object;)Lokio/ByteString;

    move-result-object v9

    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/stripe/cots/aidlservice/CotsTransactionDataObject;-><init>(ILokio/ByteString;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 291
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 292
    :cond_3
    move-object v13, v4

    check-cast v13, Ljava/util/List;

    .line 181
    sget-object v1, Lcom/stripe/cots/common/CotsServiceRequestName;->COLLECT_PAYMENT:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/cots/common/CotsCollectionParameters;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v9

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/cots/common/CotsCollectionParameters;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/stripe/currency/CurrencyCode;->name()Ljava/lang/String;

    move-result-object v11

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/cots/common/CotsCollectionParameters;->getReaderProfile()Ljava/lang/String;

    move-result-object v12

    .line 186
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/cots/common/CotsCollectionParameters;->getUxConfig()Lcom/stripe/cots/aidlservice/CotsUxConfig;

    move-result-object v14

    .line 182
    new-instance v8, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;

    const/16 v16, 0x20

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/stripe/cots/aidlservice/CotsUxConfig;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v8, Lcom/squareup/wire/Message;

    .line 189
    sget-object v4, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 180
    iput v5, v2, Lcom/stripe/cots/common/CotsClient$collectPayment$1;->label:I

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/stripe/cots/common/CotsClient;->makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    :goto_2
    check-cast v1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse;

    iget-object v1, v1, Lcom/stripe/cots/aidlservice/CotsCollectPaymentMethodResponse;->result:Lcom/stripe/cots/aidlservice/CotsContactlessResult;

    return-object v1
.end method

.method public collectPin(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->COLLECT_PIN:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 196
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsCollectPinRequest;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/stripe/cots/aidlservice/CotsCollectPinRequest;-><init>(Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/squareup/wire/Message;

    .line 197
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 194
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/stripe/cots/common/CotsClient;->makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public disconnect(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/cots/common/CotsClient$disconnect$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/cots/common/CotsClient$disconnect$1;

    iget v1, v0, Lcom/stripe/cots/common/CotsClient$disconnect$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/cots/common/CotsClient$disconnect$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/cots/common/CotsClient$disconnect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/cots/common/CotsClient$disconnect$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/cots/common/CotsClient$disconnect$1;-><init>(Lcom/stripe/cots/common/CotsClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/cots/common/CotsClient$disconnect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 157
    iget v2, v0, Lcom/stripe/cots/common/CotsClient$disconnect$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/stripe/cots/common/CotsClient$disconnect$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/cots/common/CotsClient;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lcom/stripe/cots/common/CotsClient;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlin/Pair;

    const-string v4, "disconnect"

    invoke-interface {p1, v4, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 159
    invoke-direct {p0}, Lcom/stripe/cots/common/CotsClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 161
    sget-object p1, Lcom/stripe/cots/common/CotsServiceRequestName;->DISCONNECT:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 162
    new-instance v2, Lcom/stripe/cots/aidlservice/CotsDisconnectReaderRequest;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcom/stripe/cots/aidlservice/CotsDisconnectReaderRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/squareup/wire/Message;

    .line 163
    sget-object v4, Lcom/stripe/cots/aidlservice/CotsDisconnectReaderResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 160
    iput-object p0, v0, Lcom/stripe/cots/common/CotsClient$disconnect$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/cots/common/CotsClient$disconnect$1;->label:I

    invoke-direct {p0, p1, v2, v4, v0}, Lcom/stripe/cots/common/CotsClient;->makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 165
    :goto_1
    iget-object p1, v0, Lcom/stripe/cots/common/CotsClient;->aidlClient:Lcom/stripe/core/aidlrpcclient/AidlRpcClient;

    invoke-virtual {p1}, Lcom/stripe/core/aidlrpcclient/AidlRpcClient;->unbindFromService()V

    .line 167
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public discover(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/cots/aidlservice/CotsReader;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/core/aidlrpc/AidlRpcException;,
            Lcom/stripe/cots/common/DebuggableException;,
            Lcom/stripe/cots/common/ReaderNotConnectedException;
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/cots/common/CotsClient$discover$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/cots/common/CotsClient$discover$1;

    iget v1, v0, Lcom/stripe/cots/common/CotsClient$discover$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/cots/common/CotsClient$discover$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/cots/common/CotsClient$discover$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/cots/common/CotsClient$discover$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/cots/common/CotsClient$discover$1;-><init>(Lcom/stripe/cots/common/CotsClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/cots/common/CotsClient$discover$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 110
    iget v2, v0, Lcom/stripe/cots/common/CotsClient$discover$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lcom/stripe/cots/common/CotsClient;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/stripe/cots/common/UtilsKt;->isApplicationUnsupported(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 116
    sget-object p1, Lcom/stripe/cots/common/CotsServiceRequestName;->DISCOVER:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 117
    new-instance v2, Lcom/stripe/cots/aidlservice/CotsDiscoverReaderRequest;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcom/stripe/cots/aidlservice/CotsDiscoverReaderRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/squareup/wire/Message;

    .line 118
    sget-object v4, Lcom/stripe/cots/aidlservice/CotsDiscoverReaderResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 115
    iput v3, v0, Lcom/stripe/cots/common/CotsClient$discover$1;->label:I

    invoke-direct {p0, p1, v2, v4, v0}, Lcom/stripe/cots/common/CotsClient;->makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/stripe/cots/aidlservice/CotsDiscoverReaderResponse;

    iget-object p1, p1, Lcom/stripe/cots/aidlservice/CotsDiscoverReaderResponse;->cotsReader:Lcom/stripe/cots/aidlservice/CotsReader;

    return-object p1

    .line 112
    :cond_4
    new-instance p1, Lcom/stripe/cots/common/DebuggableException;

    invoke-direct {p1}, Lcom/stripe/cots/common/DebuggableException;-><init>()V

    throw p1
.end method

.method public bridge synthetic getDisconnectFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/stripe/cots/common/CotsClient;->getDisconnectFlow()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getDisconnectFlow()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/SharedFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/stripe/cots/common/CotsClient;->disconnectFlow:Lkotlinx/coroutines/flow/SharedFlow;

    return-object v0
.end method

.method public initializeKeys()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/stripe/cots/common/CotsClient;->preFlightChecks:Lcom/stripe/cots/common/compatibility/PreFlightChecks;

    invoke-virtual {v0}, Lcom/stripe/cots/common/compatibility/PreFlightChecks;->initialize()V

    return-void
.end method

.method public killAidlServer(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->KILL_AIDL_SERVER:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 230
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/stripe/cots/aidlservice/CotsKillAidlServerRequest;-><init>(JLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/squareup/wire/Message;

    .line 231
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsKillAidlServerResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 228
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/stripe/cots/common/CotsClient;->makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public setFakedContactlessOutcome(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/stripe/cots/common/CotsServiceRequestName;->SET_FAKED_CONTACTLESS_OUTCOME:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 204
    new-instance v1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, p1, v2, v3, v2}, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest;-><init>(Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeRequest$FakedContactlessOutcomeType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/squareup/wire/Message;

    .line 205
    sget-object p1, Lcom/stripe/cots/aidlservice/CotsSetFakedContactlessOutcomeResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 202
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/stripe/cots/common/CotsClient;->makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public updateReader(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/cots/common/CotsClient$updateReader$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/cots/common/CotsClient$updateReader$1;

    iget v1, v0, Lcom/stripe/cots/common/CotsClient$updateReader$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/cots/common/CotsClient$updateReader$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/cots/common/CotsClient$updateReader$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/cots/common/CotsClient$updateReader$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/cots/common/CotsClient$updateReader$1;-><init>(Lcom/stripe/cots/common/CotsClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/cots/common/CotsClient$updateReader$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 219
    iget v2, v0, Lcom/stripe/cots/common/CotsClient$updateReader$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 221
    sget-object p1, Lcom/stripe/cots/common/CotsServiceRequestName;->UPDATE_READER:Lcom/stripe/cots/common/CotsServiceRequestName;

    .line 222
    new-instance v2, Lcom/stripe/cots/aidlservice/CotsUpdateReaderRequest;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Lcom/stripe/cots/aidlservice/CotsUpdateReaderRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lcom/squareup/wire/Message;

    .line 223
    sget-object v4, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    .line 220
    iput v3, v0, Lcom/stripe/cots/common/CotsClient$updateReader$1;->label:I

    invoke-direct {p0, p1, v2, v4, v0}, Lcom/stripe/cots/common/CotsClient;->makeRequest(Lcom/stripe/cots/common/CotsServiceRequestName;Lcom/squareup/wire/Message;Lcom/squareup/wire/ProtoAdapter;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;

    iget-object p1, p1, Lcom/stripe/cots/aidlservice/CotsUpdateReaderResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    return-object p1
.end method
