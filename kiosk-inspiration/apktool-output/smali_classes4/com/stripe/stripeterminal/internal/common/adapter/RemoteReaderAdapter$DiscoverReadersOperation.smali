.class final Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;
.super Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
.source "RemoteReaderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscoverReadersOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteReaderAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteReaderAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,419:1\n766#2:420\n857#2,2:421\n*S KotlinDebug\n*F\n+ 1 RemoteReaderAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation\n*L\n266#1:420\n266#1:421,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\n\u0010\r\u001a\u0004\u0018\u00010\u0002H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;",
        "Ljava/lang/Void;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V",
        "cancel",
        "",
        "cancelDiscoverReadersReason",
        "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;",
        "execute",
        "adapter_release"
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
.field private final config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

.field private final listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
            "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    .line 227
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    .line 225
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    .line 226
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    return-void
.end method


# virtual methods
.method public final cancel(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V
    .locals 8

    const-string v0, "cancelDiscoverReadersReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 289
    :cond_0
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$ConnectReaderInProgress;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$ConnectReaderInProgress;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 291
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->set(Ljava/lang/Object;)V

    return-void

    .line 294
    :cond_1
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$MerchantRequestedCancellation;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$MerchantRequestedCancellation;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 297
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 296
    const-string v3, "DiscoverReaders was canceled by the user"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 295
    invoke-virtual {p0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void

    .line 303
    :cond_2
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$NewDiscoverReadersQueued;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$NewDiscoverReadersQueued;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 305
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 306
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED_DUE_TO_INTEGRATION_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 305
    const-string v2, "DiscoverReaders was canceled because of a new discovery call. The SDK can process a single discovery operation at a time."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 304
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 224
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/Void;
    .locals 7

    .line 229
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->setReaderController(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v2

    .line 232
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v3}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getConnectionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 233
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    instance-of v5, v4, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;->getLocation()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 234
    :goto_1
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    instance-of v6, v5, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    if-eqz v6, :cond_2

    check-cast v5, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;->getTimeout()I

    move-result v5

    goto :goto_3

    :cond_3
    move v5, v0

    .line 231
    :goto_3
    invoke-virtual {v2, v3, v4, v5}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->discoverReaders(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 236
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    invoke-interface {v3, v2}, Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;->onUpdateDiscoveredReaders(Ljava/util/List;)V

    .line 238
    sget-object v2, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;

    check-cast v2, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;

    invoke-virtual {p0, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->cancel(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v2

    .line 240
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    .line 241
    instance-of v4, v3, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$HandoffDiscoveryConfiguration;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 242
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v3

    sget-object v4, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-ne v3, v5, :cond_4

    .line 245
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getProxyRemoteReaderController$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;

    move-result-object v2

    .line 246
    const-string v3, "psst_offline_token"

    .line 245
    invoke-virtual {v2, v3, v1, v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ProxyRemoteReaderController;->discoverReaders(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    invoke-interface {v1, v0}, Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;->onUpdateDiscoveredReaders(Ljava/util/List;)V

    .line 252
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;

    check-cast v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->cancel(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V

    goto/16 :goto_7

    .line 255
    :cond_4
    throw v2

    .line 259
    :cond_5
    instance-of v0, v3, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    if-eqz v0, :cond_c

    .line 260
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v5, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    goto :goto_4

    .line 275
    :cond_6
    throw v2

    .line 265
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;->access$getOfflineRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;)Lcom/stripe/offlinemode/storage/OfflineRepository;

    move-result-object v0

    invoke-static {v0, v1, v5, v1}, Lcom/stripe/offlinemode/storage/OfflineRepository;->discoverOfflineReaderList$default(Lcom/stripe/offlinemode/storage/OfflineRepository;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 420
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 421
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/stripe/stripeterminal/external/models/Reader;

    .line 267
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->isSmartDevice(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 268
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    check-cast v5, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;->getLocation()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    check-cast v5, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;->getLocation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/Reader;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/external/models/Location;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_9
    move-object v4, v1

    :goto_6
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 421
    :cond_a
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 422
    :cond_b
    check-cast v2, Ljava/util/List;

    .line 270
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    invoke-interface {v0, v2}, Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;->onUpdateDiscoveredReaders(Ljava/util/List;)V

    .line 272
    sget-object v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;->INSTANCE:Lcom/stripe/discoverreaders/CancelDiscoverReadersReason$DiscoveryCompleted;

    check-cast v0, Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->cancel(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V

    .line 283
    :goto_7
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter$DiscoverReadersOperation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 279
    :cond_c
    throw v2
.end method
