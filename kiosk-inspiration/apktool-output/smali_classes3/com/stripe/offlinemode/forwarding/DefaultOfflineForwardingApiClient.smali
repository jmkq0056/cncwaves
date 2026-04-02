.class public final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;
.super Ljava/lang/Object;
.source "DefaultOfflineForwardingApiClient.kt"

# interfaces
.implements Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;,
        Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$Companion;,
        Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineForwardingApiClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineForwardingApiClient.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,248:1\n1#2:249\n1549#3:250\n1620#3,3:251\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineForwardingApiClient.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient\n*L\n95#1:250\n95#1:251,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 82\u00020\u0001:\u000278B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010\u0018JN\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u0002H\u001b\u0012\u0004\u0012\u00020\u001c0\u001a\"\u001c\u0008\u0000\u0010\u001b*\u0016\u0012\u0004\u0012\u0002H\u001b\u0012\u0002\u0008\u00030\u001dj\u0008\u0012\u0004\u0012\u0002H\u001b`\u001e2\u0006\u0010\u0016\u001a\u00020\u00172\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u0002H\u001b0 H\u0082@\u00a2\u0006\u0002\u0010!J\u0016\u0010\"\u001a\u00020#2\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@\u00a2\u0006\u0002\u0010\u0018J\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)H\u0002J\u000e\u0010*\u001a\u0008\u0012\u0004\u0012\u00020,0+H\u0002J&\u0010-\u001a\u00020\u00132\u0006\u0010.\u001a\u00020\'2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u000201H\u0082@\u00a2\u0006\u0002\u00102J.\u00103\u001a\u00020#2\u0006\u00104\u001a\u0002052\u0006\u0010.\u001a\u00020\'2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u000201H\u0096@\u00a2\u0006\u0002\u00106R\"\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e@BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00069"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingApiClient;",
        "offlineForwardingService",
        "Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;",
        "locationHandler",
        "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
        "credentialsProvider",
        "Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;",
        "logger",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
        "traceManager",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
        "(Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;)V",
        "value",
        "Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;",
        "cachedSession",
        "setCachedSession",
        "(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;)V",
        "clearStoredCredentials",
        "",
        "forwardOfflinePayment",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "request",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forwardOfflineRequest",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Rsp",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "offlineEntityType",
        "Ljava/lang/Class;",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forwardOfflineSetupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "isTokenRefreshRequired",
        "",
        "reader",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "connection",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "offlineDetails",
        "",
        "Lcom/stripe/proto/model/offline_mode/NameValuePair;",
        "refreshCredentialsIfNeeded",
        "offlineReader",
        "offlineConnection",
        "offlineLocation",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "retrieveSetupIntent",
        "id",
        "",
        "(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "CachedSession",
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
.field public static final Companion:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$Companion;

.field private static final DEFERRED_PAYMENT_TYPE:Ljava/lang/String; = "deferred"

.field private static final OFFLINE_PAYMENT_LAT_KEY:Ljava/lang/String; = "payment_method_data[card_present][offline][latitude]"

.field private static final OFFLINE_PAYMENT_LONG_KEY:Ljava/lang/String; = "payment_method_data[card_present][offline][longitude]"

.field private static final OFFLINE_PAYMENT_TYPE_KEY:Ljava/lang/String; = "payment_method_data[card_present][offline][type]"


# instance fields
.field private cachedSession:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;

.field private final credentialsProvider:Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

.field private final locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

.field private final logger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

.field private final offlineForwardingService:Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;

.field private final traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->Companion:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;Lcom/stripe/stripeterminal/internal/common/LocationHandler;Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;)V
    .locals 1

    const-string v0, "offlineForwardingService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "locationHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentialsProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "traceManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->offlineForwardingService:Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;

    .line 29
    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    .line 30
    iput-object p3, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->credentialsProvider:Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

    .line 31
    iput-object p4, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->logger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    .line 32
    iput-object p5, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    return-void
.end method

.method public static final synthetic access$forwardOfflineRequest(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->forwardOfflineRequest(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$refreshCredentialsIfNeeded(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->refreshCredentialsIfNeeded(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final forwardOfflineRequest(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;>(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            "Ljava/lang/Class<",
            "TRsp;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;

    iget v3, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v1, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->label:I

    sub-int/2addr v1, v4

    iput v1, v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;

    invoke-direct {v2, v0, v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    move-object v10, v2

    iget-object v1, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 51
    iget v3, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v3, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$4:Ljava/lang/Object;

    check-cast v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-object v6, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    iget-object v7, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v8, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Class;

    iget-object v9, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component1()Lcom/stripe/proto/model/offline_mode/OfflineReader;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component2()Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component3()Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->component4()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v3

    .line 68
    iput-object v0, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$0:Ljava/lang/Object;

    move-object/from16 v8, p2

    iput-object v8, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$1:Ljava/lang/Object;

    iput-object v7, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$2:Ljava/lang/Object;

    iput-object v6, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$3:Ljava/lang/Object;

    iput-object v3, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$4:Ljava/lang/Object;

    iput v5, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->label:I

    invoke-direct {v0, v7, v1, v6, v10}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->refreshCredentialsIfNeeded(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    goto/16 :goto_9

    :cond_4
    move-object v9, v0

    .line 71
    :goto_1
    iget-object v1, v6, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->full_location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/stripe/proto/model/merchant/ApiLocationPb;->livemode:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_5
    move v1, v5

    .line 72
    :goto_2
    iget-object v6, v9, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->cachedSession:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;->getCredentials()Lcom/stripe/offlinemode/forwarding/OfflineCredentials;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/stripe/offlinemode/forwarding/OfflineCredentials;->getLivemode()Z

    move-result v6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    if-nez v1, :cond_8

    if-nez v6, :cond_7

    goto :goto_4

    .line 75
    :cond_7
    new-instance v11, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 76
    sget-object v12, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_TESTMODE_PAYMENT_IN_LIVEMODE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v16, 0xc

    const/16 v17, 0x0

    .line 75
    const-string v13, "Cannot forward testmode payment in livemode."

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v11 .. v17}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v11

    :cond_8
    :goto_4
    if-eqz v1, :cond_a

    if-eqz v6, :cond_9

    goto :goto_5

    .line 82
    :cond_9
    new-instance v1, Lcom/stripe/offlinemode/models/ForwardingLivemodePaymentInTestmodeException;

    invoke-direct {v1}, Lcom/stripe/offlinemode/models/ForwardingLivemodePaymentInTestmodeException;-><init>()V

    throw v1

    .line 88
    :cond_a
    :goto_5
    iget-object v1, v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    sget-object v6, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result v1

    aget v1, v6, v1

    if-eq v1, v5, :cond_d

    if-eq v1, v4, :cond_d

    const/4 v5, 0x3

    if-eq v1, v5, :cond_c

    const/4 v5, 0x4

    if-ne v1, v5, :cond_b

    goto :goto_6

    .line 93
    :cond_b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unsupported request type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_c
    :goto_6
    invoke-direct {v9}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->offlineDetails()Ljava/util/List;

    move-result-object v1

    goto :goto_7

    .line 90
    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 95
    :goto_7
    iget-object v5, v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->params:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v5, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 250
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 251
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 252
    check-cast v6, Lcom/stripe/proto/model/offline_mode/NameValuePair;

    .line 95
    iget-object v11, v6, Lcom/stripe/proto/model/offline_mode/NameValuePair;->name:Ljava/lang/String;

    iget-object v6, v6, Lcom/stripe/proto/model/offline_mode/NameValuePair;->value_:Ljava/lang/String;

    invoke-static {v11, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    .line 252
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 253
    :cond_e
    check-cast v5, Ljava/util/List;

    .line 98
    iget-object v1, v9, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->offlineForwardingService:Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;

    .line 99
    iget-object v6, v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->endpoint:Ljava/lang/String;

    move-object v11, v6

    .line 101
    iget-object v6, v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->headers:Ljava/util/Map;

    .line 102
    iget-object v3, v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 103
    iget-object v9, v9, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    iget-object v7, v7, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    invoke-interface {v9, v7}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;->getTraceContext(Ljava/lang/String;)Lcom/stripe/loggingmodels/Trace$Context;

    move-result-object v9

    const/4 v7, 0x0

    .line 98
    iput-object v7, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$0:Ljava/lang/Object;

    iput-object v7, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$1:Ljava/lang/Object;

    iput-object v7, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$2:Ljava/lang/Object;

    iput-object v7, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$3:Ljava/lang/Object;

    iput-object v7, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->L$4:Ljava/lang/Object;

    iput v4, v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineRequest$1;->label:I

    move-object v7, v3

    move-object v4, v11

    move-object v3, v1

    invoke-interface/range {v3 .. v10}, Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;->forward(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/Class;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_f

    :goto_9
    return-object v2

    :cond_f
    return-object v1
.end method

.method private final isTokenRefreshRequired(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Z
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->cachedSession:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;->component1()Lcom/stripe/proto/model/offline_mode/OfflineReader;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;->component2()Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object v0

    .line 226
    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    iget-object v4, v2, Lcom/stripe/proto/model/offline_mode/OfflineReader;->stripe_id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 227
    :cond_0
    iget-object v3, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    iget-object v4, v2, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    .line 228
    :cond_1
    iget-object p1, p1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    iget-object v2, v2, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 229
    :cond_2
    iget-object p1, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->device_type:Ljava/lang/String;

    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->device_type:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    .line 230
    :cond_3
    iget-object p1, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    .line 231
    :cond_4
    iget-object p1, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    .line 232
    :cond_5
    iget-object p1, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    .line 233
    :cond_6
    iget-object p1, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    .line 234
    :cond_7
    iget-object p1, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v1

    .line 235
    :cond_8
    iget-object p1, p2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    iget-object p2, v0, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eq p1, p2, :cond_9

    return v1

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_a
    return v1
.end method

.method private final offlineDetails()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Lcom/stripe/proto/model/offline_mode/NameValuePair;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "payment_method_data[card_present][offline][type]"

    const-string v2, "deferred"

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/model/offline_mode/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 205
    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->locationHandler:Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->getLocation()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 207
    new-array v2, v2, [Lcom/stripe/proto/model/offline_mode/NameValuePair;

    new-instance v3, Lcom/stripe/proto/model/offline_mode/NameValuePair;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "payment_method_data[card_present][offline][latitude]"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/stripe/proto/model/offline_mode/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 208
    new-instance v5, Lcom/stripe/proto/model/offline_mode/NameValuePair;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "payment_method_data[card_present][offline][longitude]"

    invoke-direct/range {v5 .. v10}, Lcom/stripe/proto/model/offline_mode/NameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x1

    aput-object v5, v2, v1

    .line 206
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 210
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_1
    check-cast v1, Ljava/lang/Iterable;

    .line 204
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final refreshCredentialsIfNeeded(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
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

    move-object/from16 v3, p4

    instance-of v4, v3, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;

    iget v5, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;

    invoke-direct {v4, v0, v3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 167
    iget v6, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->label:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_2

    if-ne v6, v8, :cond_1

    iget-object v1, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v2, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v4, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    move-object v2, v1

    move-object/from16 v1, v16

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 172
    invoke-direct/range {p0 .. p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->isTokenRefreshRequired(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 173
    iget-object v3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->logger:Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    const-string v6, "refreshing tokens"

    new-array v9, v7, [Lkotlin/Pair;

    invoke-interface {v3, v6, v9}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 174
    iget-object v3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->credentialsProvider:Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;

    iput-object v0, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->L$1:Ljava/lang/Object;

    iput-object v2, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->L$2:Ljava/lang/Object;

    iput v8, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$refreshCredentialsIfNeeded$1;->label:I

    move-object/from16 v6, p3

    invoke-interface {v3, v1, v2, v6, v4}, Lcom/stripe/offlinemode/forwarding/OfflineCredentialsProvider;->fetchOfflineCredentials(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_3

    return-object v5

    :cond_3
    move-object v4, v0

    .line 167
    :goto_1
    check-cast v3, Lcom/stripe/offlinemode/forwarding/OfflineCredentials;

    .line 177
    invoke-virtual {v3}, Lcom/stripe/offlinemode/forwarding/OfflineCredentials;->getAccountId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 190
    new-instance v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;

    invoke-direct {v5, v1, v2, v3}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;-><init>(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/offlinemode/forwarding/OfflineCredentials;)V

    invoke-direct {v4, v5}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->setCachedSession(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;)V

    goto :goto_2

    .line 182
    :cond_4
    new-instance v9, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 183
    sget-object v10, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ACCOUNT_ID_MISMATCH_WHILE_FORWARDING:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 185
    new-instance v1, Lcom/stripe/offlinemode/forwarding/AccountMismatchException;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v8, v2}, Lcom/stripe/offlinemode/forwarding/AccountMismatchException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v1

    check-cast v12, Ljava/lang/Throwable;

    const/16 v14, 0x8

    const/4 v15, 0x0

    .line 182
    const-string v11, "Invalid response for account"

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 178
    new-instance v1, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    invoke-direct {v1, v9, v7, v8, v7}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)V

    throw v1

    .line 196
    :cond_5
    :goto_2
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method private final setCachedSession(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;)V
    .locals 1

    .line 47
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->cachedSession:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;->getCredentials()Lcom/stripe/offlinemode/forwarding/OfflineCredentials;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/stripe/offlinemode/forwarding/OfflineCredentials;->getStripeSessionToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->offlineForwardingService:Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;->setAuthToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clearStoredCredentials()V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->setCachedSession(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$CachedSession;)V

    return-void
.end method

.method public forwardOfflinePayment(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;

    iget v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 108
    iget v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 112
    const-class p2, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 111
    iput-object p0, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->forwardOfflineRequest(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 108
    :goto_1
    check-cast p2, Lcom/stripe/jvmcore/restclient/RestResponse;

    .line 114
    new-instance v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v5}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$2;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflinePayment$1;->label:I

    invoke-static {p2, v4, v0}, Lcom/stripe/offlinemode/forwarding/RestResponseHandlerKt;->decodeResponseAndHandleAuthFailure(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method

.method public forwardOfflineSetupIntent(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;

    iget v1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 121
    iget v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    iget-object v2, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 125
    const-class p2, Lcom/stripe/proto/model/rest/SetupIntent;

    .line 124
    iput-object p0, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->forwardOfflineRequest(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Ljava/lang/Class;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, p0

    .line 121
    :goto_1
    check-cast p2, Lcom/stripe/jvmcore/restclient/RestResponse;

    .line 127
    new-instance v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$2;

    const/4 v5, 0x0

    invoke-direct {v4, v2, p1, v5}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$2;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$forwardOfflineSetupIntent$1;->label:I

    invoke-static {p2, v4, v0}, Lcom/stripe/offlinemode/forwarding/RestResponseHandlerKt;->decodeResponseAndHandleAuthFailure(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    return-object p1
.end method

.method public retrieveSetupIntent(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    instance-of v5, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;

    iget v6, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->label:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget v4, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->label:I

    sub-int/2addr v4, v7

    iput v4, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;

    invoke-direct {v5, v0, v4}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v4, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 134
    iget v7, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->label:I

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object v4

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    iget-object v2, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v3, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v7, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v9, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v18, v1

    move-object/from16 v16, v3

    move-object v15, v7

    move-object v14, v9

    :goto_1
    move-object/from16 v17, v2

    goto/16 :goto_3

    :cond_3
    iget-object v1, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    iget-object v2, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v3, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v7, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v10, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;

    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    move-object v12, v7

    move-object v4, v10

    goto :goto_2

    :cond_4
    invoke-static {v4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 140
    iput-object v0, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$2:Ljava/lang/Object;

    iput-object v2, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$3:Ljava/lang/Object;

    iput-object v3, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$4:Ljava/lang/Object;

    iput v10, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->label:I

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->refreshCredentialsIfNeeded(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_5

    goto :goto_4

    :cond_5
    move-object v12, v4

    move-object v4, v0

    .line 145
    :goto_2
    iget-object v7, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->offlineForwardingService:Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;

    .line 148
    const-string v10, "latest_attempt"

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 146
    new-instance v10, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 150
    iget-object v11, v4, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;->traceManager:Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    iget-object v13, v1, Lcom/stripe/proto/model/offline_mode/OfflineReader;->serial_number:Ljava/lang/String;

    invoke-interface {v11, v13}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;->getTraceContext(Ljava/lang/String;)Lcom/stripe/loggingmodels/Trace$Context;

    move-result-object v11

    .line 145
    iput-object v4, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$0:Ljava/lang/Object;

    iput-object v12, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$2:Ljava/lang/Object;

    iput-object v2, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$3:Ljava/lang/Object;

    iput-object v3, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$4:Ljava/lang/Object;

    iput v9, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->label:I

    invoke-interface {v7, v10, v11, v5}, Lcom/stripe/offlinemode/forwarding/OfflineForwardingService;->retrieveSetupIntent(Lcom/stripe/proto/api/rest/RetrieveSetupIntentRequest;Lcom/stripe/loggingmodels/Trace$Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v16, v1

    move-object/from16 v18, v3

    move-object v14, v4

    move-object v4, v7

    move-object v15, v12

    goto :goto_1

    .line 134
    :goto_3
    check-cast v4, Lcom/stripe/jvmcore/restclient/RestResponse;

    .line 151
    new-instance v13, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;

    const/16 v19, 0x0

    invoke-direct/range {v13 .. v19}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$2;-><init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lkotlin/coroutines/Continuation;)V

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x0

    iput-object v1, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$2:Ljava/lang/Object;

    iput-object v1, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$3:Ljava/lang/Object;

    iput-object v1, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->L$4:Ljava/lang/Object;

    iput v8, v5, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingApiClient$retrieveSetupIntent$1;->label:I

    invoke-static {v4, v13, v5}, Lcom/stripe/offlinemode/forwarding/RestResponseHandlerKt;->decodeResponseAndHandleAuthFailure(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_7

    :goto_4
    return-object v6

    :cond_7
    return-object v1
.end method
