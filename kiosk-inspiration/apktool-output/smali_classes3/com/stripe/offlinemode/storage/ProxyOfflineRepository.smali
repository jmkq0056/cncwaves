.class public final Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;
.super Ljava/lang/Object;
.source "ProxyOfflineRepository.kt"

# interfaces
.implements Lcom/stripe/offlinemode/storage/OfflineRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0007\u00a2\u0006\u0002\u0010\u0008B\u000f\u0008\u0002\u0012\u0006\u0010\t\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\nJ\u000f\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\u001e0*H\u0096\u0001J\t\u0010+\u001a\u00020,H\u0096\u0001J\u0016\u0010-\u001a\u00020,2\u0006\u0010.\u001a\u00020/H\u0096A\u00a2\u0006\u0002\u00100J\u0018\u00101\u001a\u00020,2\u0008\u0008\u0002\u00102\u001a\u00020\u0012H\u0096A\u00a2\u0006\u0002\u00103J\u0019\u00104\u001a\u0008\u0012\u0004\u0012\u000206052\u0008\u0008\u0002\u00102\u001a\u00020\u0012H\u0096\u0001J\u001c\u00107\u001a\u0008\u0012\u0004\u0012\u0002080%2\u0006\u00102\u001a\u00020\u0012H\u0096A\u00a2\u0006\u0002\u00103J\u000b\u00109\u001a\u0004\u0018\u00010&H\u0096\u0001J\u0011\u0010:\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120*H\u0096\u0001J\u0011\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u0012H\u0096\u0001J\u0011\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020\u0018H\u0096\u0001J/\u0010A\u001a\u0016\u0012\u0004\u0012\u00020C\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020<\u0018\u00010B2\u0006\u0010D\u001a\u0002062\u0008\u0008\u0002\u00102\u001a\u00020\u0012H\u0096\u0001J\u0013\u0010E\u001a\u0004\u0018\u00010<2\u0006\u0010F\u001a\u00020\u0012H\u0096\u0001J\u0013\u0010G\u001a\u0004\u0018\u00010<2\u0006\u0010H\u001a\u00020?H\u0096\u0001J-\u0010I\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020K0J2\u0008\u0008\u0002\u00102\u001a\u00020\u00122\u000c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020\u001205H\u0096\u0001J%\u0010M\u001a\u00020\u001e2\u0008\u0010N\u001a\u0004\u0018\u00010\u00122\u0006\u0010O\u001a\u00020\u00122\u0008\u0008\u0002\u00102\u001a\u00020\u0012H\u0096\u0001J\t\u0010P\u001a\u00020\u001eH\u0096\u0001J\u001d\u0010Q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020?050%2\u0006\u00102\u001a\u00020\u0012H\u0096\u0001J\u001d\u0010R\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020<050%2\u0006\u00102\u001a\u00020\u0012H\u0096\u0001J\u0017\u0010S\u001a\u0008\u0012\u0004\u0012\u00020T0%2\u0006\u00102\u001a\u00020\u0012H\u0096\u0001J\u001d\u0010U\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020C050%2\u0006\u00102\u001a\u00020\u0012H\u0096\u0001J\u0013\u0010V\u001a\u00020,2\u0008\u0008\u0002\u00102\u001a\u00020\u0012H\u0096\u0001J\u0011\u0010W\u001a\u00020,2\u0006\u0010X\u001a\u00020/H\u0096\u0001J!\u0010Y\u001a\u00020\u00182\u0006\u0010Z\u001a\u00020C2\u0006\u0010H\u001a\u00020?2\u0006\u0010[\u001a\u00020<H\u0096\u0001J\u0016\u0010\\\u001a\u00020]2\u0006\u0010^\u001a\u00020/H\u0096A\u00a2\u0006\u0002\u00100J\u001e\u0010_\u001a\u00020,2\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020/H\u0096A\u00a2\u0006\u0002\u0010cJ\u001e\u0010d\u001a\u00020,2\u0006\u0010F\u001a\u00020\u00122\u0006\u0010e\u001a\u00020fH\u0096A\u00a2\u0006\u0002\u0010gR\u0018\u0010\u000b\u001a\u00020\u000cX\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0011\u001a\u00020\u0012X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0017\u001a\u00020\u0018X\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0018\u0010\u001d\u001a\u00020\u001eX\u0096\u000f\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R\u0012\u0010#\u001a\u00020\u001eX\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010 R\u0018\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006h"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "unsupportedOfflineRepository",
        "Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;",
        "defaultOfflineRepositoryFactory",
        "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "(Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)V",
        "proxy",
        "(Lcom/stripe/offlinemode/storage/OfflineRepository;)V",
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


# instance fields
.field private final proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;


# direct methods
.method private constructor <init>(Lcom/stripe/offlinemode/storage/OfflineRepository;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/UnsupportedOfflineRepository;",
            "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "unsupportedOfflineRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultOfflineRepositoryFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    :try_start_0
    invoke-interface {p2, p3}, Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;->create(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    move-result-object p2

    check-cast p2, Lcom/stripe/offlinemode/storage/OfflineRepository;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const/4 v0, 0x0

    .line 33
    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "Failed to initialize offline repository, falling back to unsupported version."

    invoke-interface {p3, p2, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 35
    move-object p2, p1

    check-cast p2, Lcom/stripe/offlinemode/storage/OfflineRepository;

    .line 28
    :goto_0
    invoke-direct {p0, p2}, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;-><init>(Lcom/stripe/offlinemode/storage/OfflineRepository;)V

    return-void
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->activeReaderOfflineEnabledFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->clearCache()V

    return-void
.end method

.method public delete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->delete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deleteExpiredEntities(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->deleteExpiredEntities(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public discoverOfflineReaderList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->discoverOfflineReaderList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fetchNextToForward(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->fetchNextToForward(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public forceBlockingUpdateOfflinePaymentStats()Lcom/stripe/offlinemode/storage/OfflineEntityStats;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->forceBlockingUpdateOfflinePaymentStats()Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    move-result-object v0

    return-object v0
.end method

.method public getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    return-object v0
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getActiveAccountId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentConnectionId()J
    .locals 2

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getCurrentConnectionId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentConnectionSupportsOfflineSetupIntents()Z
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getCurrentConnectionSupportsOfflineSetupIntents()Z

    move-result v0

    return v0
.end method

.method public getLatestOfflineLocationForReader(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 1

    const-string v0, "serialNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getLatestOfflineLocationForReader(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object p1

    return-object p1
.end method

.method public getOfflineConnection(J)Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineConnection(J)Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    move-result-object p1

    return-object p1
.end method

.method public getOfflineConnectionEntitiesIfSaved(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;)Lkotlin/Triple;
    .locals 1
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

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineConnectionEntitiesIfSaved(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;)Lkotlin/Triple;

    move-result-object p1

    return-object p1
.end method

.method public getOfflineLocationByStripeId(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 1

    const-string v0, "stripeLocationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineLocationByStripeId(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object p1

    return-object p1
.end method

.method public getOfflineLocationForConnection(Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 1

    const-string v0, "offlineConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineLocationForConnection(Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object p1

    return-object p1
.end method

.method public getOfflineRequestStatsFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getOfflineRequestStatsFlow()Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public getSavedLocationsMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 1
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

    const-string v0, "serials"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getSavedLocationsMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "readerSerial"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/OfflineRepository;->isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isOfflineModeEnabledOnActiveReader()Z
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->isOfflineModeEnabledOnActiveReader()Z

    move-result v0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->isSupported()Z

    move-result v0

    return v0
.end method

.method public offlineConnections(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->offlineConnections(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public offlineLocations(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->offlineLocations(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public offlinePaymentRequestsToSync(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->offlinePaymentRequestsToSync(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public offlineReaders(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->offlineReaders(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method public restoreSoftDeletedPayments(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->restoreSoftDeletedPayments(Ljava/lang/String;)V

    return-void
.end method

.method public saveOfflineApiRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)V
    .locals 1

    const-string v0, "offlineApiRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->saveOfflineApiRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)V

    return-void
.end method

.method public saveOfflineConnectionEntities(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)J
    .locals 1

    const-string v0, "offlineReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConnection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLocation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/OfflineRepository;->saveOfflineConnectionEntities(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)J

    move-result-wide p1

    return-wide p1
.end method

.method public setAccountOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->setAccountOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V

    return-void
.end method

.method public setActiveAccountId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->setActiveAccountId(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentConnectionId(J)V
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->setCurrentConnectionId(J)V

    return-void
.end method

.method public setCurrentConnectionSupportsOfflineSetupIntents(Z)V
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->setCurrentConnectionSupportsOfflineSetupIntents(Z)V

    return-void
.end method

.method public softDelete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->softDelete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateOfflineConfirmRequestWithOnlineEntity(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/OfflineRepository;->updateOfflineConfirmRequestWithOnlineEntity(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public updateOfflineLocationWithConfig(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/ProxyOfflineRepository;->proxy:Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/OfflineRepository;->updateOfflineLocationWithConfig(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
