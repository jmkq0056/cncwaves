.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "IpReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->maintainConnectivity(Lcom/stripe/stripeterminal/external/models/Reader;)Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.stripeterminal.internal.common.remotereadercontrollers.IpReaderController$maintainConnectivity$1"
    f = "IpReaderController.kt"
    i = {
        0x0,
        0x0,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x4,
        0x4,
        0x5,
        0x5,
        0x6,
        0x6
    }
    l = {
        0x2d7,
        0x2e4,
        0x2e4,
        0x2e4,
        0x2e4,
        0x2e4,
        0x2e4,
        0x2e4,
        0x2e4
    }
    m = "invokeSuspend"
    n = {
        "consecutiveFailures",
        "connectionActive",
        "consecutiveFailures",
        "connectionActive",
        "consecutiveFailures",
        "connectionActive",
        "consecutiveFailures",
        "connectionActive",
        "consecutiveFailures",
        "connectionActive",
        "consecutiveFailures",
        "connectionActive",
        "consecutiveFailures",
        "connectionActive"
    }
    s = {
        "I$0",
        "I$1",
        "I$0",
        "I$1",
        "I$0",
        "I$1",
        "I$0",
        "I$1",
        "I$0",
        "I$1",
        "I$0",
        "I$1",
        "I$0",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-direct {p1, v0, v1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 700
    iget v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->label:I

    const-wide/16 v3, 0x3a98

    const-string v5, "Lost connectivity to reader"

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 740
    :pswitch_1
    iget v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$1:I

    iget v9, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$0:I

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 738
    :pswitch_2
    iget v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$1:I

    iget v9, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$0:I

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 700
    :pswitch_3
    iget v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$1:I

    iget v9, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$0:I

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$1:I

    iget v9, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$0:I

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v0, v7

    move v9, v8

    :cond_0
    :goto_0
    if-eqz v0, :cond_10

    .line 707
    :try_start_1
    sget-object v10, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;

    .line 706
    iget-object v11, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v11}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getJackrabbitApiClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/proto/api/sdk/JackRabbitApi;

    move-result-object v11

    const/4 v12, 0x0

    if-eqz v11, :cond_1

    new-instance v13, Lcom/stripe/proto/api/sdk/TerminalHeartbeatRequest;

    invoke-direct {v13, v12, v7, v12}, Lcom/stripe/proto/api/sdk/TerminalHeartbeatRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v13}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->terminalHeartbeat(Lcom/stripe/proto/api/sdk/TerminalHeartbeatRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v11

    goto :goto_1

    :cond_1
    move-object v11, v12

    .line 707
    :goto_1
    invoke-virtual {v10, v11}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->withJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;
    :try_end_1
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    :try_start_2
    iget-object v9, v10, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    iget-object v11, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v11}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getLastReaderConfigHash$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 712
    sget-object v9, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;

    .line 711
    iget-object v11, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v11}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getJackrabbitApiClient$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/proto/api/sdk/JackRabbitApi;

    move-result-object v11

    if-eqz v11, :cond_2

    new-instance v13, Lcom/stripe/proto/api/sdk/FetchReaderConfigRequest;

    invoke-direct {v13, v12, v7, v12}, Lcom/stripe/proto/api/sdk/FetchReaderConfigRequest;-><init>(Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v13}, Lcom/stripe/proto/api/sdk/JackRabbitApi;->fetchReaderConfig(Lcom/stripe/proto/api/sdk/FetchReaderConfigRequest;)Lcom/stripe/jvmcore/crpcclient/CrpcResponse;

    move-result-object v11

    goto :goto_2

    :cond_2
    move-object v11, v12

    .line 712
    :goto_2
    invoke-virtual {v9, v11}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/CrpcResponseExtensions;->withJackrabbitResponse(Lcom/stripe/jvmcore/crpcclient/CrpcResponse;)Lcom/squareup/wire/Message;

    move-result-object v9

    check-cast v9, Lcom/stripe/proto/api/sdk/FetchReaderConfigResponse;

    iget-object v9, v9, Lcom/stripe/proto/api/sdk/FetchReaderConfigResponse;->reader_feature_flags:Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    if-eqz v9, :cond_3

    .line 713
    iget-object v11, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    .line 714
    invoke-static {v11}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getFeatureFlagsRepository$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->putFeatureFlags(Lcom/stripe/proto/model/config/ReaderFeatureFlags;)V

    .line 716
    iget-object v9, v10, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_config_hash:Ljava/lang/String;

    invoke-static {v11, v9}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$setLastReaderConfigHash$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Ljava/lang/String;)V

    .line 719
    :cond_3
    iget-object v9, v10, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->connection_token_status:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    sget-object v11, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;->REQUIRED:Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse$ConnectionTokenStatus;

    if-ne v9, v11, :cond_5

    .line 720
    iget-object v9, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v9}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getActivateJob$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlinx/coroutines/Job;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-interface {v9}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v9

    if-ne v9, v7, :cond_4

    goto :goto_3

    .line 722
    :cond_4
    iget-object v9, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v9}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getCoroutineScope$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v13

    new-instance v11, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1$2;

    iget-object v14, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iget-object v15, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->$reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-direct {v11, v14, v15, v12}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1$2;-><init>(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v11

    check-cast v16, Lkotlin/jvm/functions/Function2;

    const/16 v17, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v13 .. v18}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$setActivateJob$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;Lkotlinx/coroutines/Job;)V

    .line 725
    :cond_5
    :goto_3
    iget-object v9, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v9}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getOfflineStatsListener$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;

    move-result-object v9

    iget-object v11, v10, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->offline_stats:Lcom/stripe/proto/api/sdk/OfflineStats;

    iget-object v12, v10, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->network_status:Lcom/stripe/proto/api/sdk/NetworkStatus;

    invoke-interface {v9, v11, v12}, Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;->saveStats(Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;)V

    .line 727
    iget-object v9, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    iget v10, v10, Lcom/stripe/proto/api/sdk/TerminalHeartbeatResponse;->reader_events_count:I

    move-object v11, v1

    check-cast v11, Lkotlin/coroutines/Continuation;

    iput v8, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$0:I

    iput v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$1:I

    iput v7, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->label:I

    invoke-static {v9, v10, v11}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$handleUnAckedReaderEvents(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_2
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v9, v2, :cond_6

    goto/16 :goto_9

    :cond_6
    move v9, v8

    :goto_4
    if-ne v9, v6, :cond_7

    .line 735
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    new-array v10, v8, [Lkotlin/Pair;

    invoke-interface {v0, v5, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 737
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getOnUnexpectedDisconnect$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_a

    :goto_5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_6

    .line 740
    :cond_7
    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput v9, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$0:I

    iput v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$1:I

    if-nez v9, :cond_8

    iput v6, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->label:I

    invoke-static {v3, v4, v10}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_0

    goto/16 :goto_9

    :cond_8
    const/4 v11, 0x3

    iput v11, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->label:I

    invoke-static {v10}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_0

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move v9, v8

    goto :goto_8

    :catch_0
    move v9, v8

    goto :goto_7

    .line 735
    :catch_1
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    new-array v9, v8, [Lkotlin/Pair;

    invoke-interface {v0, v5, v9}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 737
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getOnUnexpectedDisconnect$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_9
    move v9, v6

    :cond_a
    :goto_6
    move v0, v8

    goto/16 :goto_0

    .line 729
    :catch_2
    :goto_7
    :try_start_3
    iget-object v10, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-virtual {v10}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v10

    const-string v11, "Heartbeat failure, attempting to contact reader"

    new-array v12, v8, [Lkotlin/Pair;

    invoke-interface {v10, v11, v12}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v9, v9, 0x1

    if-ne v9, v6, :cond_b

    .line 735
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    new-array v10, v8, [Lkotlin/Pair;

    invoke-interface {v0, v5, v10}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 737
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getOnUnexpectedDisconnect$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_a

    goto :goto_5

    .line 740
    :cond_b
    move-object v10, v1

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput v9, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$0:I

    iput v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->I$1:I

    if-nez v9, :cond_c

    const/4 v11, 0x4

    iput v11, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->label:I

    invoke-static {v3, v4, v10}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_0

    goto :goto_9

    :cond_c
    const/4 v11, 0x5

    iput v11, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->label:I

    invoke-static {v10}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v2, :cond_0

    goto :goto_9

    :goto_8
    if-ne v9, v6, :cond_d

    .line 735
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v2

    new-array v3, v8, [Lkotlin/Pair;

    invoke-interface {v2, v5, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 737
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->this$0:Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;->access$getOnUnexpectedDisconnect$p(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController;)Lkotlin/jvm/functions/Function0;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_a

    :cond_d
    if-nez v9, :cond_e

    .line 740
    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->L$0:Ljava/lang/Object;

    const/16 v6, 0x8

    iput v6, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->label:I

    invoke-static {v3, v4, v5}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_f

    goto :goto_9

    :cond_e
    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    iput-object v0, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->L$0:Ljava/lang/Object;

    const/16 v4, 0x9

    iput v4, v1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/IpReaderController$maintainConnectivity$1;->label:I

    invoke-static {v3}, Lkotlinx/coroutines/YieldKt;->yield(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_f

    :goto_9
    return-object v2

    :cond_f
    :goto_a
    throw v0

    .line 744
    :cond_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
