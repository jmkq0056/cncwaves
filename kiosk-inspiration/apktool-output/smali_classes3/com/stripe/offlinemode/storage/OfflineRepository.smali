.class public interface abstract Lcom/stripe/offlinemode/storage/OfflineRepository;
.super Ljava/lang/Object;
.source "OfflineRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u000e\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00150!H&J\u0008\u0010\"\u001a\u00020#H&J\u0016\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020&H\u00a6@\u00a2\u0006\u0002\u0010\'J\u0018\u0010(\u001a\u00020#2\u0008\u0008\u0002\u0010)\u001a\u00020\tH\u00a6@\u00a2\u0006\u0002\u0010*J\u0018\u0010+\u001a\u0008\u0012\u0004\u0012\u00020-0,2\u0008\u0008\u0002\u0010)\u001a\u00020\tH&J\u001c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020/0\u001c2\u0006\u0010)\u001a\u00020\tH\u00a6@\u00a2\u0006\u0002\u0010*J\n\u00100\u001a\u0004\u0018\u00010\u001dH&J\u0010\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0!H&J\u0010\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\tH&J\u0010\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u000fH&J.\u00108\u001a\u0016\u0012\u0004\u0012\u00020:\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u000203\u0018\u0001092\u0006\u0010;\u001a\u00020-2\u0008\u0008\u0002\u0010)\u001a\u00020\tH&J\u0012\u0010<\u001a\u0004\u0018\u0001032\u0006\u0010=\u001a\u00020\tH&J\u0012\u0010>\u001a\u0004\u0018\u0001032\u0006\u0010?\u001a\u000206H&J,\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020B0A2\u0008\u0008\u0002\u0010)\u001a\u00020\t2\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020\t0,H&J$\u0010D\u001a\u00020\u00152\u0008\u0010E\u001a\u0004\u0018\u00010\t2\u0006\u0010F\u001a\u00020\t2\u0008\u0008\u0002\u0010)\u001a\u00020\tH&J\u0008\u0010G\u001a\u00020\u0015H\u0016J\u001c\u0010H\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002060,0\u001c2\u0006\u0010)\u001a\u00020\tH&J\u001c\u0010I\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002030,0\u001c2\u0006\u0010)\u001a\u00020\tH&J\u0016\u0010J\u001a\u0008\u0012\u0004\u0012\u00020K0\u001c2\u0006\u0010)\u001a\u00020\tH&J\u001c\u0010L\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020:0,0\u001c2\u0006\u0010)\u001a\u00020\tH&J\u0012\u0010M\u001a\u00020#2\u0008\u0008\u0002\u0010)\u001a\u00020\tH&J\u0010\u0010N\u001a\u00020#2\u0006\u0010O\u001a\u00020&H&J \u0010P\u001a\u00020\u000f2\u0006\u0010Q\u001a\u00020:2\u0006\u0010?\u001a\u0002062\u0006\u0010R\u001a\u000203H&J\u0016\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020&H\u00a6@\u00a2\u0006\u0002\u0010\'J\u001e\u0010V\u001a\u00020#2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020&H\u00a6@\u00a2\u0006\u0002\u0010ZJ\u001e\u0010[\u001a\u00020#2\u0006\u0010=\u001a\u00020\t2\u0006\u0010\\\u001a\u00020]H\u00a6@\u00a2\u0006\u0002\u0010^R\u0018\u0010\u0002\u001a\u00020\u0003X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u0018\u0010\u0008\u001a\u00020\tX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0018\u0010\u000e\u001a\u00020\u000fX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\u0015X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0017R\u0018\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001f\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006_\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "",
        "accountOfflineConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "getAccountOfflineConfig",
        "()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "setAccountOfflineConfig",
        "(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V",
        "activeAccountId",
        "",
        "getActiveAccountId",
        "()Ljava/lang/String;",
        "setActiveAccountId",
        "(Ljava/lang/String;)V",
        "currentConnectionId",
        "",
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
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
        "getOfflineRequestStatsFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "activeReaderOfflineEnabledFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
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
        "fetchNextToForward",
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
        "isOfflineModeEnabledOnActiveReader",
        "offlineConnections",
        "offlineLocations",
        "offlinePaymentRequestsToSync",
        "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;",
        "offlineReaders",
        "restoreSoftDeletedPayments",
        "saveOfflineApiRequest",
        "offlineApiRequest",
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


# direct methods
.method public static synthetic deleteExpiredEntities$default(Lcom/stripe/offlinemode/storage/OfflineRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 268
    invoke-interface {p0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->deleteExpiredEntities(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: deleteExpiredEntities"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic discoverOfflineReaderList$default(Lcom/stripe/offlinemode/storage/OfflineRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 280
    invoke-interface {p0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->discoverOfflineReaderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: discoverOfflineReaderList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getOfflineConnectionEntitiesIfSaved$default(Lcom/stripe/offlinemode/storage/OfflineRepository;Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;ILjava/lang/Object;)Lkotlin/Triple;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 219
    invoke-interface {p0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object p2

    .line 217
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineConnectionEntitiesIfSaved(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;)Lkotlin/Triple;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getOfflineConnectionEntitiesIfSaved"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic getSavedLocationsMap$default(Lcom/stripe/offlinemode/storage/OfflineRepository;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 232
    invoke-interface {p0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getSavedLocationsMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: getSavedLocationsMap"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic isOfflineEnabledForLocationAndReader$default(Lcom/stripe/offlinemode/storage/OfflineRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 242
    invoke-interface {p0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object p3

    .line 239
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/OfflineRepository;->isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: isOfflineEnabledForLocationAndReader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic restoreSoftDeletedPayments$default(Lcom/stripe/offlinemode/storage/OfflineRepository;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 252
    invoke-interface {p0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-interface {p0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->restoreSoftDeletedPayments(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: restoreSoftDeletedPayments"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract activeReaderOfflineEnabledFlow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract clearCache()V
.end method

.method public abstract delete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract deleteExpiredEntities(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract discoverOfflineReaderList(Ljava/lang/String;)Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract fetchNextToForward(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract forceBlockingUpdateOfflinePaymentStats()Lcom/stripe/offlinemode/storage/OfflineEntityStats;
.end method

.method public abstract getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;
.end method

.method public abstract getActiveAccountFlow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActiveAccountId()Ljava/lang/String;
.end method

.method public abstract getCurrentConnectionId()J
.end method

.method public abstract getCurrentConnectionSupportsOfflineSetupIntents()Z
.end method

.method public abstract getLatestOfflineLocationForReader(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract getOfflineConnection(J)Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract getOfflineConnectionEntitiesIfSaved(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;)Lkotlin/Triple;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract getOfflineLocationByStripeId(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract getOfflineLocationForConnection(Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract getOfflineRequestStatsFlow()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSavedLocationsMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public isOfflineModeEnabledOnActiveReader()Z
    .locals 1

    .line 206
    invoke-interface {p0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->activeReaderOfflineEnabledFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public abstract isSupported()Z
.end method

.method public abstract offlineConnections(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract offlineLocations(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract offlinePaymentRequestsToSync(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract offlineReaders(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract restoreSoftDeletedPayments(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract saveOfflineApiRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract saveOfflineConnectionEntities(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract setAccountOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V
.end method

.method public abstract setActiveAccountId(Ljava/lang/String;)V
.end method

.method public abstract setCurrentConnectionId(J)V
.end method

.method public abstract setCurrentConnectionSupportsOfflineSetupIntents(Z)V
.end method

.method public abstract softDelete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract updateOfflineConfirmRequestWithOnlineEntity(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract updateOfflineLocationWithConfig(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method
