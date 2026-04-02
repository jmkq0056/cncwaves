.class public final Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;
.super Ljava/lang/Object;
.source "UnsupportedOfflineRepository.kt"

# interfaces
.implements Lcom/stripe/offlinemode/storage/OfflineRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnsupportedOfflineRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnsupportedOfflineRepository.kt\ncom/stripe/offlinemode/storage/UnsupportedOfflineRepository\n*L\n1#1,144:1\n138#1,3:145\n138#1,3:148\n138#1,3:151\n138#1,3:154\n138#1,3:157\n138#1,3:160\n138#1,3:163\n138#1,3:166\n138#1,3:169\n138#1,3:172\n138#1,3:175\n138#1,3:178\n138#1,3:181\n138#1,3:184\n138#1,3:187\n138#1,3:190\n138#1,3:193\n138#1,3:196\n138#1,3:199\n138#1,3:202\n138#1,3:205\n138#1,3:208\n138#1,3:211\n138#1,3:214\n138#1,3:217\n138#1,3:220\n138#1,3:223\n138#1,3:226\n*S KotlinDebug\n*F\n+ 1 UnsupportedOfflineRepository.kt\ncom/stripe/offlinemode/storage/UnsupportedOfflineRepository\n*L\n32#1:145,3\n33#1:148,3\n36#1:151,3\n37#1:154,3\n47#1:157,3\n48#1:160,3\n58#1:163,3\n61#1:166,3\n64#1:169,3\n67#1:172,3\n70#1:175,3\n73#1:178,3\n76#1:181,3\n79#1:184,3\n82#1:187,3\n85#1:190,3\n88#1:193,3\n91#1:196,3\n96#1:199,3\n99#1:202,3\n108#1:205,3\n114#1:208,3\n120#1:211,3\n122#1:214,3\n124#1:217,3\n126#1:220,3\n129#1:223,3\n131#1:226,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b8\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u000bH\u0016J\u0008\u0010\'\u001a\u00020(H\u0016J\u0016\u0010)\u001a\u00020(2\u0006\u0010*\u001a\u00020+H\u0096@\u00a2\u0006\u0002\u0010,J\u0016\u0010-\u001a\u00020(2\u0006\u0010.\u001a\u00020\u000cH\u0096@\u00a2\u0006\u0002\u0010/J\u0016\u00100\u001a\u0008\u0012\u0004\u0012\u000202012\u0006\u0010.\u001a\u00020\u000cH\u0016J\u001a\u00103\u001a\u0002H4\"\n\u0008\u0000\u00104\u0018\u0001*\u000205H\u0082\u0008\u00a2\u0006\u0002\u00106J\u001c\u00107\u001a\u0008\u0012\u0004\u0012\u000209082\u0006\u0010.\u001a\u00020\u000cH\u0096@\u00a2\u0006\u0002\u0010/J\u0008\u0010:\u001a\u00020#H\u0016J\u0010\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bH\u0016J\u0010\u0010<\u001a\u00020=2\u0006\u0010>\u001a\u00020\u000cH\u0016J\u0010\u0010?\u001a\u00020@2\u0006\u0010A\u001a\u00020\u0015H\u0016J,\u0010B\u001a\u0016\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020@\u0012\u0004\u0012\u00020=\u0018\u00010C2\u0006\u0010E\u001a\u0002022\u0006\u0010.\u001a\u00020\u000cH\u0016J\u0012\u0010F\u001a\u0004\u0018\u00010=2\u0006\u0010G\u001a\u00020\u000cH\u0016J\u0012\u0010H\u001a\u0004\u0018\u00010=2\u0006\u0010I\u001a\u00020@H\u0016J*\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020L0K2\u0006\u0010.\u001a\u00020\u000c2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u000c01H\u0016J\"\u0010N\u001a\u00020\u001c2\u0008\u0010O\u001a\u0004\u0018\u00010\u000c2\u0006\u0010P\u001a\u00020\u000c2\u0006\u0010.\u001a\u00020\u000cH\u0016J\u001c\u0010Q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020@01082\u0006\u0010.\u001a\u00020\u000cH\u0016J\u001c\u0010R\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020=01082\u0006\u0010.\u001a\u00020\u000cH\u0016J\u0016\u0010S\u001a\u0008\u0012\u0004\u0012\u00020T082\u0006\u0010.\u001a\u00020\u000cH\u0016J\u001c\u0010U\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020D01082\u0006\u0010.\u001a\u00020\u000cH\u0016J\u0010\u0010V\u001a\u00020(2\u0006\u0010.\u001a\u00020\u000cH\u0016J\u0010\u0010W\u001a\u00020(2\u0006\u0010X\u001a\u00020+H\u0016J \u0010Y\u001a\u00020\u00152\u0006\u0010Z\u001a\u00020D2\u0006\u0010I\u001a\u00020@2\u0006\u0010[\u001a\u00020=H\u0016J\u0016\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020+H\u0096@\u00a2\u0006\u0002\u0010,J\u001e\u0010_\u001a\u00020(2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020+H\u0096@\u00a2\u0006\u0002\u0010cJ\u001e\u0010d\u001a\u00020(2\u0006\u0010G\u001a\u00020\u000c2\u0006\u0010e\u001a\u00020fH\u0096@\u00a2\u0006\u0002\u0010gR$\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00048V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u000c8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u00158V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u0014\u0010!\u001a\u00020\u001cX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u001eR\u001a\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%\u00a8\u0006h"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "()V",
        "value",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "accountOfflineConfig",
        "getAccountOfflineConfig",
        "()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "setAccountOfflineConfig",
        "(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V",
        "activeAccountFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "activeAccountId",
        "getActiveAccountId",
        "()Ljava/lang/String;",
        "setActiveAccountId",
        "(Ljava/lang/String;)V",
        "activeReaderFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;",
        "",
        "currentConnectionId",
        "getCurrentConnectionId",
        "()J",
        "setCurrentConnectionId",
        "(J)V",
        "currentConnectionSupportsOfflineSetupIntents",
        "",
        "getCurrentConnectionSupportsOfflineSetupIntents",
        "()Z",
        "setCurrentConnectionSupportsOfflineSetupIntents",
        "(Z)V",
        "isSupported",
        "offlineRequestStatsFlow",
        "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
        "getOfflineRequestStatsFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "activeReaderOfflineEnabledFlow",
        "clearCache",
        "",
        "delete",
        "toDelete",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteExpiredEntities",
        "accountId",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "discoverOfflineReaderList",
        "",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "failWithTerminalException",
        "T",
        "",
        "()Ljava/lang/Object;",
        "fetchNextToForward",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "forceBlockingUpdateOfflinePaymentStats",
        "getActiveAccountFlow",
        "getLatestOfflineLocationForReader",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "serialNumber",
        "getOfflineConnection",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "connectionId",
        "getOfflineConnectionEntitiesIfSaved",
        "Lkotlin/Triple;",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "reader",
        "getOfflineLocationByStripeId",
        "stripeLocationId",
        "getOfflineLocationForConnection",
        "offlineConnection",
        "getSavedLocationsMap",
        "",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "serials",
        "isOfflineEnabledForLocationAndReader",
        "locationId",
        "readerSerial",
        "offlineConnections",
        "offlineLocations",
        "offlinePaymentRequestsToSync",
        "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;",
        "offlineReaders",
        "restoreSoftDeletedPayments",
        "saveOfflineApiRequest",
        "offlinePaymentIntentRequest",
        "saveOfflineConnectionEntities",
        "offlineReader",
        "offlineLocation",
        "softDelete",
        "",
        "toSoftDelete",
        "updateOfflineConfirmRequestWithOnlineEntity",
        "forwardedEntity",
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;",
        "createRequest",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateOfflineLocationWithConfig",
        "config",
        "Lcom/stripe/device/OfflineLocationConfigs;",
        "(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# instance fields
.field private final activeAccountFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final activeReaderFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;",
            ">;"
        }
    .end annotation
.end field

.field private currentConnectionSupportsOfflineSetupIntents:Z

.field private final isSupported:Z

.field private final offlineRequestStatsFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;->activeAccountFlow:Lkotlinx/coroutines/flow/StateFlow;

    .line 29
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;-><init>(ZZZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;->activeReaderFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 40
    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    const/4 v1, 0x0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, v1, v1, v2}, Lcom/stripe/offlinemode/storage/OfflineEntityStats;-><init>(IILjava/util/Map;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    iput-object v0, p0, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;->offlineRequestStatsFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method private final synthetic failWithTerminalException()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 138
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 139
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 138
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method


# virtual methods
.method public activeReaderOfflineEnabledFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public clearCache()V
    .locals 0

    return-void
.end method

.method public delete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 193
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 194
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 193
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public deleteExpiredEntities(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 218
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 217
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public discoverOfflineReaderList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 224
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 223
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public fetchNextToForward(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 191
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 190
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public forceBlockingUpdateOfflinePaymentStats()Lcom/stripe/offlinemode/storage/OfflineEntityStats;
    .locals 7

    .line 226
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 227
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 226
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;
    .locals 7

    .line 157
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 158
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 157
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public getActiveAccountFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;->activeAccountFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getActiveAccountId()Ljava/lang/String;
    .locals 7

    .line 145
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 146
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 145
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public getCurrentConnectionId()J
    .locals 7

    .line 151
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 152
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 151
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public getCurrentConnectionSupportsOfflineSetupIntents()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;->currentConnectionSupportsOfflineSetupIntents:Z

    return v0
.end method

.method public getLatestOfflineLocationForReader(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 8

    const-string v0, "serialNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 221
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 220
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public getOfflineConnection(J)Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    .locals 7

    .line 178
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 179
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 178
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public getOfflineConnectionEntitiesIfSaved(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;)Lkotlin/Triple;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Triple<",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            ">;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "accountId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 206
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 205
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public getOfflineLocationByStripeId(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 8

    const-string v0, "stripeLocationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 188
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 187
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public getOfflineLocationForConnection(Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 8

    const-string v0, "offlineConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 185
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 184
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public bridge synthetic getOfflineRequestStatsFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;->getOfflineRequestStatsFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public getOfflineRequestStatsFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;->offlineRequestStatsFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public getSavedLocationsMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
            ">;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "serials"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 209
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 208
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const-string p1, "readerSerial"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "accountId"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 212
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 211
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public isSupported()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;->isSupported:Z

    return v0
.end method

.method public offlineConnections(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 176
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 175
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public offlineLocations(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 182
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 181
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public offlinePaymentRequestsToSync(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;",
            ">;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 170
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 169
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public offlineReaders(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 173
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 172
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public restoreSoftDeletedPayments(Ljava/lang/String;)V
    .locals 8

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 215
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 214
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public saveOfflineApiRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)V
    .locals 8

    const-string v0, "offlinePaymentIntentRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 167
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 166
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public saveOfflineConnectionEntities(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)J
    .locals 7

    const-string v0, "offlineReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "offlineConnection"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "offlineLocation"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 164
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 163
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public setAccountOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 161
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 160
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public setActiveAccountId(Ljava/lang/String;)V
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 149
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 148
    const-string v3, "Offline mode is not available on this device"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public setCurrentConnectionId(J)V
    .locals 7

    .line 154
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 155
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 154
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public setCurrentConnectionSupportsOfflineSetupIntents(Z)V
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;->currentConnectionSupportsOfflineSetupIntents:Z

    return-void
.end method

.method public softDelete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 196
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 197
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 196
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public updateOfflineConfirmRequestWithOnlineEntity(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 199
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 200
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 199
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public updateOfflineLocationWithConfig(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/device/OfflineLocationConfigs;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 202
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 203
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_MODE_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 202
    const-string v2, "Offline mode is not available on this device"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
