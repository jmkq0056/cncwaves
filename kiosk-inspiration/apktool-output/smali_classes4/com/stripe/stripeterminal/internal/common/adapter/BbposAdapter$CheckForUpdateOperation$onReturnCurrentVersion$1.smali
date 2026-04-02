.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->onReturnCurrentVersion(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;)V
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
    c = "com.stripe.stripeterminal.internal.common.adapter.BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1"
    f = "BbposAdapter.kt"
    i = {}
    l = {
        0x30c,
        0x30c
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $data:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

.field label:I

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

.field final synthetic this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;",
            "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->$data:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->$data:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 768
    iget v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    move-object p1, v0

    goto/16 :goto_6

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 770
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p1

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->$data:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    invoke-virtual {v1}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->getConfigHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/stripe/stripeterminal/external/models/Reader;->setSettingsVersion(Ljava/lang/String;)V

    .line 774
    :try_start_2
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getUpdateClient$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/readerupdate/UpdateClient;

    move-result-object p1

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->$data:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    invoke-virtual {p1, v1}, Lcom/stripe/core/readerupdate/UpdateClient;->downloadMobilePosConfig(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;)Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v8

    .line 775
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    iget-object v1, v8, Lcom/stripe/proto/model/config/MobileClientConfig;->bluetooth_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    iget-object v5, v8, Lcom/stripe/proto/model/config/MobileClientConfig;->usb_auto_reconnect_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    invoke-virtual {p1, v1, v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setReconnectParams(Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;)V

    .line 778
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getFeatureFlagsRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getFeatureFlags()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object p1

    iget-boolean p1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z
    :try_end_2
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "endpoint"

    if-nez p1, :cond_4

    :try_start_3
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/adapter/BuildConfig;->BBPOS_VERSIONING:Ljava/lang/Boolean;

    const-string v5, "BBPOS_VERSIONING"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 782
    :cond_3
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->getHealthMetricTags()Ljava/util/Map;

    move-result-object p1

    const-string v0, "armada"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v5, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;

    .line 784
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v6

    .line 785
    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->$data:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    .line 787
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getFeatureFlagsRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-result-object v9

    .line 788
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getReaderInfoRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    move-result-object v10

    .line 789
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v11

    .line 783
    invoke-virtual/range {v5 .. v11}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderSoftwareUpdateMaker$Companion;->create(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    move-result-object p1

    goto :goto_4

    .line 779
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->getHealthMetricTags()Ljava/util/Map;

    move-result-object p1

    const-string v5, "tms"

    invoke-interface {p1, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    move-object v5, p0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->label:I

    invoke-static {p1, v1, v5}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->access$checkTmsTargetVersion(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    :goto_3
    check-cast p1, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    :try_end_3
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    move-object v2, p1

    goto :goto_7

    .line 800
    :goto_5
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->access$getFailSilently$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_7

    .line 803
    :cond_7
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->onUnexpectedFailure(Ljava/lang/Throwable;)V

    .line 804
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 793
    :goto_6
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->access$getFailSilently$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 808
    :goto_7
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getUpdateManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/readerupdate/UpdateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateManager;->endOperation()V

    .line 809
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->update()V

    .line 811
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-virtual {p1, v2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->set(Ljava/lang/Object;)V

    .line 812
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 796
    :cond_8
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;->this$1:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker$Companion;->fromReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    .line 797
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
