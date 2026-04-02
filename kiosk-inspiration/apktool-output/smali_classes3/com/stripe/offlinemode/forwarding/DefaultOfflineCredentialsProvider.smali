.class public final Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;
.super Ljava/lang/Object;
.source "DefaultOfflineCredentialsProvider.kt"

# interfaces
.implements Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineCredentialsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineCredentialsProvider.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,161:1\n1#2:162\n318#3,11:163\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineCredentialsProvider.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider\n*L\n126#1:163,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 02\u00020\u0001:\u00010BQ\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\"\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\rj\u0002`\u0012\u00a2\u0006\u0002\u0010\u0013J \u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u000e\u0010\u001c\u001a\u00020\u001dH\u0082@\u00a2\u0006\u0002\u0010\u001eJ\u0018\u0010\u001f\u001a\u00020\u001d2\u0008\u0008\u0002\u0010 \u001a\u00020!H\u0082@\u00a2\u0006\u0002\u0010\"J&\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u00192\u0006\u0010\'\u001a\u00020\u001bH\u0096@\u00a2\u0006\u0002\u0010(J\u001e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u0015H\u0082@\u00a2\u0006\u0002\u0010-J\u000e\u0010.\u001a\u00020/H\u0096@\u00a2\u0006\u0002\u0010\u001eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u000c\u001a\u001e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\rj\u0002`\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00061"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;",
        "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
        "offlineConnectionService",
        "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;",
        "connectionTokenProvider",
        "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
        "offlineForwardingDelayCalculator",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;",
        "traceManager",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
        "logger",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
        "discreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "(Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/jvmcore/logging/HealthLogger;)V",
        "buildRedemptionRequest",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
        "offlineReader",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "offlineConnection",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "offlineLocation",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "fetchConnectionToken",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchConnectionTokenAndRetryErrors",
        "attempts",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fetchOfflineCredentials",
        "Lcom/stripe/offlinemode/forwarding/OfflineCredentials;",
        "reader",
        "connection",
        "location",
        "(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "redeemForOfflineStripeSessionToken",
        "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
        "accountId",
        "request",
        "(Ljava/lang/String;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrieveAccountId",
        "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;",
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
.field public static final Companion:Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$Companion;

.field private static final MAX_TOKEN_REDEMPTION_ATTEMPTS:I = 0x5


# instance fields
.field private final connectionTokenProvider:Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

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

.field private final logger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

.field private final offlineConnectionService:Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;

.field private final offlineForwardingDelayCalculator:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;

.field private final traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->Companion:Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/jvmcore/logging/HealthLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;",
            "Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;",
            "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offlineConnectionService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionTokenProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineForwardingDelayCalculator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteLogger"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->offlineConnectionService:Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;

    .line 28
    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->connectionTokenProvider:Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    .line 29
    iput-object p3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->offlineForwardingDelayCalculator:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;

    .line 30
    iput-object p4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    .line 31
    iput-object p5, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->logger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    .line 32
    iput-object p6, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-void
.end method

.method public static final synthetic access$fetchConnectionToken(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->fetchConnectionToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchConnectionTokenAndRetryErrors(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->fetchConnectionTokenAndRetryErrors(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConnectionTokenProvider$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;)Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->connectionTokenProvider:Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    return-object p0
.end method

.method public static final synthetic access$redeemForOfflineStripeSessionToken(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Ljava/lang/String;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->redeemForOfflineStripeSessionToken(Ljava/lang/String;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final buildRedemptionRequest(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;
    .locals 13

    .line 144
    iget-object v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    .line 145
    iget-object v2, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    .line 147
    iget-wide v0, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->last_activated_at:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/16 p1, 0x3e8

    int-to-long v6, p1

    div-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    move-object v4, p1

    move-object p1, v1

    goto :goto_0

    :cond_1
    move-object p1, v1

    move-object v4, p1

    .line 148
    :goto_0
    iget-object v1, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->device_type:Ljava/lang/String;

    move-object/from16 v0, p3

    .line 149
    iget-object v0, v0, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v0, :cond_2

    iget-object p1, v0, Lcom/stripe/proto/model/merchant/ApiLocationPb;->id:Ljava/lang/String;

    :cond_2
    move-object v3, p1

    .line 150
    iget-object v6, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    .line 151
    iget-object v7, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 152
    iget-object v8, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 153
    iget-object v9, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    .line 143
    new-instance v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    const/16 v11, 0x200

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/common/VersionInfoPb;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/rest/ConnectionType;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final fetchConnectionToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 164
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 170
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 171
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 127
    invoke-static {p0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->access$getConnectionTokenProvider$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;)Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    move-result-object v2

    new-instance v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionToken$2$1;

    invoke-direct {v3, v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionToken$2$1;-><init>(Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v3, Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;

    invoke-interface {v2, v3}, Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;->fetchConnectionToken(Lcom/stripe/stripeterminal/external/callable/ConnectionTokenCallback;)V

    .line 172
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object v0

    .line 163
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method private final fetchConnectionTokenAndRetryErrors(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;

    iget v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 101
    iget v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->I$0:I

    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->I$0:I

    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/ConnectionTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_2

    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    iget-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->logger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Fetch connection token attempt: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v7, v3, [Lkotlin/Pair;

    invoke-interface {p2, v2, v7}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 105
    :try_start_1
    iput-object p0, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->I$0:I

    iput v6, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->label:I

    invoke-direct {p0, v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->fetchConnectionToken(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Lcom/stripe/stripeterminal/external/models/ConnectionTokenException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p2, v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, p0

    :goto_1
    :try_start_2
    check-cast p2, Ljava/lang/String;
    :try_end_2
    .catch Lcom/stripe/stripeterminal/external/models/ConnectionTokenException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p2

    :catch_1
    move-exception p2

    move-object v2, p0

    .line 107
    :goto_2
    iget-object v7, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->logger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    move-object v8, p2

    check-cast v8, Ljava/lang/Throwable;

    new-array v3, v3, [Lkotlin/Pair;

    const-string v9, "Failed to fetch token"

    invoke-interface {v7, v9, v8, v3}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    add-int/2addr p1, v6

    const/4 v3, 0x5

    if-ge p1, v3, :cond_8

    .line 111
    iget-object p2, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->offlineForwardingDelayCalculator:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;

    invoke-virtual {p2, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingDelayCalculator;->calculateExponentialDelay(I)J

    move-result-wide v6

    iput-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->I$0:I

    iput v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->label:I

    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    const/4 p2, 0x0

    .line 112
    iput-object p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchConnectionTokenAndRetryErrors$1;->label:I

    invoke-direct {v2, p1, v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->fetchConnectionTokenAndRetryErrors(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    :goto_4
    return-object v1

    :cond_7
    :goto_5
    check-cast p2, Ljava/lang/String;

    return-object p2

    .line 115
    :cond_8
    throw p2
.end method

.method static synthetic fetchConnectionTokenAndRetryErrors$default(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;
        }
    .end annotation

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 101
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->fetchConnectionTokenAndRetryErrors(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final redeemForOfflineStripeSessionToken(Ljava/lang/String;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/offlinemode/forwarding/ForwardingApiException;
        }
    .end annotation

    instance-of v0, p3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;

    iget v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;

    invoke-direct {v0, p0, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 66
    iget v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    move-object p2, v0

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$2:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    iget-object p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$1:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    :try_start_1
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, p3

    move-object p3, p1

    move-object p1, v2

    move-object v2, v8

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object p2, v0

    move-object p1, v2

    goto/16 :goto_6

    :cond_3
    iget-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$2:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    iget-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    iget-object p3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->offlineConnectionService:Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;

    invoke-interface {p3}, Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;->getHasConnectionToken()Z

    move-result p3

    if-nez p3, :cond_6

    .line 72
    iput-object p0, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$2:Ljava/lang/Object;

    iput v6, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->label:I

    invoke-static {p0, v3, v0, v6, v7}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->fetchConnectionTokenAndRetryErrors$default(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, p0

    .line 66
    :goto_1
    check-cast p3, Ljava/lang/String;

    .line 73
    iget-object v6, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->offlineConnectionService:Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;

    invoke-interface {v6, p3}, Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;->setAuthToken(Ljava/lang/String;)V

    move-object p3, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_2

    :cond_6
    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .line 75
    :goto_2
    iget-object v2, p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->logger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    const-string v6, "redeeming for offline connection token."

    new-array v3, v3, [Lkotlin/Pair;

    invoke-interface {v2, v6, v3}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 79
    :try_start_2
    iget-object v2, p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->offlineConnectionService:Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;

    .line 81
    iget-object v3, p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    iget-object v6, p3, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    invoke-interface {v3, v6}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;->getTraceContext(Ljava/lang/String;)Lcom/stripe/loggingmodels/Trace$Context;

    move-result-object v3

    .line 79
    iput-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->label:I

    invoke-interface {v2, p3, v3, v0}, Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;->redeemOfflineConnection(Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_7

    goto :goto_4

    .line 66
    :cond_7
    :goto_3
    check-cast v2, Lcom/stripe/jvmcore/restclient/RestResponse;

    .line 82
    new-instance v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$2;

    invoke-direct {v3, p1, p2, p3, v7}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$2;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Ljava/lang/String;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$1;->label:I

    invoke-static {v2, v3, v0}, Lcom/stripe/offlinemode/forwarding/RestResponseHandlerKt;->decodeResponseAndHandleAuthFailure(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_8

    :goto_4
    return-object v1

    :cond_8
    :goto_5
    check-cast p3, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;
    :try_end_2
    .catch Lcom/stripe/offlinemode/forwarding/ForwardingApiException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p3

    .line 89
    :goto_6
    invoke-virtual {v0}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isMalformedRequestError()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 90
    iget-object p1, p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 91
    sget-object p2, Lcom/stripe/loggingmodels/Outcome$HttpError$BadRequest;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$HttpError$BadRequest;

    check-cast p2, Lcom/stripe/loggingmodels/Outcome;

    .line 92
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    .line 93
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    .line 90
    sget-object v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$3;->INSTANCE:Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$redeemForOfflineStripeSessionToken$3;

    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter(Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;)V

    :cond_9
    const/16 v5, 0xb

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-static/range {v0 .. v6}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->copy$default(Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZILjava/lang/Object;)Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public fetchOfflineCredentials(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/forwarding/OfflineCredentials;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1;

    iget v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1;

    invoke-direct {v0, p0, p4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 34
    iget v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->buildRedemptionRequest(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;

    move-result-object p1

    .line 40
    iget-object p2, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->account_id:Ljava/lang/String;

    iput v3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$fetchOfflineCredentials$1;->label:I

    invoke-direct {p0, p2, p1, v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->redeemForOfflineStripeSessionToken(Ljava/lang/String;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p4, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;

    .line 42
    new-instance p1, Lcom/stripe/offlinemode/forwarding/OfflineCredentials;

    .line 43
    iget-object p2, p4, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->livemode:Ljava/lang/Boolean;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    .line 44
    :goto_2
    iget-object p3, p4, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->account_id:Ljava/lang/String;

    .line 45
    iget-object p4, p4, Lcom/stripe/proto/model/rest/RedeemedForOfflineConnectionToken;->stripe_session_token:Ljava/lang/String;

    .line 42
    invoke-direct {p1, p2, p3, p4}, Lcom/stripe/offlinemode/forwarding/OfflineCredentials;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public retrieveAccountId(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/rest/ReceivedAccountIdFromConnectionToken;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;

    iget v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 50
    iget v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 52
    iput-object p0, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->label:I

    invoke-static {p0, v3, v0, v7, v6}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->fetchConnectionTokenAndRetryErrors$default(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;ILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, p0

    .line 50
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 53
    iget-object v7, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->offlineConnectionService:Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;

    invoke-interface {v7, p1}, Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;->setAuthToken(Ljava/lang/String;)V

    .line 54
    iget-object p1, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->logger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    const-string v7, "Retrieving account details."

    new-array v3, v3, [Lkotlin/Pair;

    invoke-interface {p1, v7, v3}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 56
    iget-object p1, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->offlineConnectionService:Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;

    .line 57
    iget-object v3, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;->traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    const-string v7, ""

    invoke-interface {v3, v7}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;->getTraceContext(Ljava/lang/String;)Lcom/stripe/loggingmodels/Trace$Context;

    move-result-object v3

    .line 56
    iput-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->label:I

    invoke-interface {p1, v3, v0}, Lcom/stripe/offlinemode/forwarding/OfflineConnectionService;->retrieveAccount(Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto :goto_3

    .line 50
    :cond_6
    :goto_2
    check-cast p1, Lcom/stripe/jvmcore/restclient/RestResponse;

    .line 57
    new-instance v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$2;

    invoke-direct {v3, v2, v6}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$2;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    iput-object v6, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineCredentialsProvider$retrieveAccountId$1;->label:I

    invoke-static {p1, v3, v0}, Lcom/stripe/offlinemode/forwarding/RestResponseHandlerKt;->decodeResponseAndHandleAuthFailure(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    :goto_3
    return-object v1

    :cond_7
    return-object p1
.end method
