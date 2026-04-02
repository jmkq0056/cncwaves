.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;
.source "TerminalSession.kt"

# interfaces
.implements Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DiscoverReadersOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation<",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        ">;",
        "Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u00032\u00020\u0004B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016J\u0015\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0011J\r\u0010\u0012\u001a\u00020\u000cH\u0010\u00a2\u0006\u0002\u0008\u0013J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0015\u0010\u0016\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0002H\u0010\u00a2\u0006\u0002\u0008\u0017R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/stripeterminal/external/callable/Callback;)V",
        "cancelBecauseMultipleDiscoveryOperations",
        "",
        "executeIfNotCanceled",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
        "onSuccess",
        "onSuccess$terminalsession_release",
        "sdkRequest",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;",
        "startCancel",
        "startCancel$terminalsession_release",
        "terminalsession_release"
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

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
            "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
            "Lcom/stripe/stripeterminal/external/callable/Callback;",
            ")V"
        }
    .end annotation

    const-string v0, "config"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2438
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2442
    check-cast p4, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p4}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 2439
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    .line 2440
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    return-void
.end method


# virtual methods
.method public cancelBecauseMultipleDiscoveryOperations()V
    .locals 7

    .line 2511
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation$cancelBecauseMultipleDiscoveryOperations$dummyCancelCallback$1;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation$cancelBecauseMultipleDiscoveryOperations$dummyCancelCallback$1;-><init>()V

    .line 2516
    check-cast v0, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-super {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 2517
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getBackgroundScope$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation$cancelBecauseMultipleDiscoveryOperations$1;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation$cancelBecauseMultipleDiscoveryOperations$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public executeIfNotCanceled()V
    .locals 8

    .line 2445
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectionStatus()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    .line 2459
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->startDiscovery()V

    .line 2461
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    .line 2462
    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;

    if-eqz v2, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPermissionsValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;->validateBluetoothPermissions()V

    goto :goto_4

    .line 2466
    :cond_0
    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$EmbeddedDiscoveryConfiguration;

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    .line 2467
    :cond_1
    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$HandoffDiscoveryConfiguration;

    :goto_0
    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_1

    .line 2468
    :cond_2
    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    :goto_1
    if-eqz v2, :cond_3

    move v2, v1

    goto :goto_2

    .line 2469
    :cond_3
    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$TapToPayDiscoveryConfiguration;

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 2470
    :cond_4
    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;

    :goto_3
    if-eqz v1, :cond_5

    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2471
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2473
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getPermissionsValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;->validateLocationPermissions()V

    .line 2476
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLocationValidator$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;->validateLocationServices()V

    .line 2477
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getLocationHandler$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/LocationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/LocationHandler;->startListening()V

    .line 2478
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getProxyResourceRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ProxyResourceRepository;->setResourceRepository(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)V

    .line 2479
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->listener:Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/Adapter;->discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V

    .line 2480
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getChargeAttemptManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/transaction/ChargeAttemptManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v1

    check-cast v1, Lcom/stripe/transaction/ChargeAttemptChangeListener;

    invoke-virtual {v0, v1}, Lcom/stripe/transaction/ChargeAttemptManager;->setChargeAttemptListener(Lcom/stripe/transaction/ChargeAttemptChangeListener;)V

    .line 2481
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->onSuccess$terminalsession_release()V

    return-void

    .line 2470
    :cond_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 2448
    :cond_6
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 2449
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ALREADY_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 2448
    const-string v3, "You must disconnect from reader before discovering readers."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2505
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 2506
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getEnsureSingleDiscoverOperation$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;

    invoke-interface {p1, v0}, Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;->onCompleteDiscoverOperation(Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;)V

    .line 2507
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endDiscovery()V

    return-void
.end method

.method public onSuccess$terminalsession_release()V
    .locals 2

    .line 2498
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    .line 2499
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    .line 2500
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->endDiscovery()V

    .line 2501
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getEnsureSingleDiscoverOperation$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;

    invoke-interface {v0, v1}, Lcom/stripe/discoverreaders/EnsureSingleDiscoverOperation;->onCompleteDiscoverOperation(Lcom/stripe/discoverreaders/CancelableDiscoverReadersOperation;)V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 2

    .line 2485
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->config:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method

.method public startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 6

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2489
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$CancelableOperation;->startCancel$terminalsession_release(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    .line 2491
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getBackgroundScope$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation$startCancel$1;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    const/4 v2, 0x0

    invoke-direct {p1, v1, p0, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation$startCancel$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$DiscoverReadersOperation;Lkotlin/coroutines/Continuation;)V

    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
