.class final Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposApplicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->apply(Lcom/stripe/core/readerupdate/UpdatePackage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposApplicator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposApplicator.kt\ncom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,190:1\n326#2:191\n*S KotlinDebug\n*F\n+ 1 BbposApplicator.kt\ncom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2\n*L\n136#1:191\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "Lcom/stripe/core/readerupdate/ProgressStatus;"
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
    c = "com.stripe.core.readerupdate.BbposApplicatorImpl$apply$2"
    f = "BbposApplicator.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x2,
        0x2,
        0x2
    }
    l = {
        0x2e,
        0x31,
        0x70,
        0x84
    }
    m = "invokeSuspend"
    n = {
        "$this$flow",
        "update",
        "i",
        "$this$flow",
        "update",
        "i"
    }
    s = {
        "L$0",
        "L$2",
        "I$1",
        "L$0",
        "L$2",
        "I$1"
    }
.end annotation


# instance fields
.field final synthetic $image:Lcom/stripe/core/readerupdate/UpdatePackage;

.field I$0:I

.field I$1:I

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;


# direct methods
.method constructor <init>(Lcom/stripe/core/readerupdate/UpdatePackage;Lcom/stripe/core/readerupdate/BbposApplicatorImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lcom/stripe/core/readerupdate/BbposApplicatorImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->$image:Lcom/stripe/core/readerupdate/UpdatePackage;

    iput-object p2, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->$image:Lcom/stripe/core/readerupdate/UpdatePackage;

    iget-object v2, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-direct {v0, v1, v2, p2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;-><init>(Lcom/stripe/core/readerupdate/UpdatePackage;Lcom/stripe/core/readerupdate/BbposApplicatorImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 44
    iget v0, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "update_operation"

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->I$1:I

    iget v10, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->I$0:I

    iget-object v11, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lcom/stripe/core/readerupdate/Update;

    iget-object v12, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/flow/FlowCollector;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedAfterCancellationReaderError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v0

    :cond_2
    move v0, v10

    move-object v10, v13

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget v0, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->I$1:I

    iget v10, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->I$0:I

    iget-object v11, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lcom/stripe/core/readerupdate/Update;

    iget-object v12, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/flow/FlowCollector;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    :goto_0
    move/from16 v18, v0

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 45
    iget-object v10, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->$image:Lcom/stripe/core/readerupdate/UpdatePackage;

    invoke-virtual {v10}, Lcom/stripe/core/readerupdate/UpdatePackage;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v11, v10

    move-object v10, v0

    move v0, v7

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    add-int/lit8 v12, v0, 0x1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/stripe/core/readerupdate/Update;

    .line 46
    new-instance v14, Lcom/stripe/core/readerupdate/ProgressStatus$Start;

    invoke-direct {v14, v13}, Lcom/stripe/core/readerupdate/ProgressStatus$Start;-><init>(Lcom/stripe/core/readerupdate/Update;)V

    move-object v15, v1

    check-cast v15, Lkotlin/coroutines/Continuation;

    iput-object v10, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$1:Ljava/lang/Object;

    iput-object v13, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$2:Ljava/lang/Object;

    iput v12, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->I$0:I

    iput v0, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->I$1:I

    iput v6, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->label:I

    invoke-interface {v10, v14, v15}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v2, :cond_6

    goto/16 :goto_8

    :cond_6
    move-object/from16 v18, v13

    move-object v13, v10

    move v10, v12

    move-object v12, v11

    move-object/from16 v11, v18

    goto :goto_0

    .line 47
    :goto_2
    iget-object v0, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v0}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getReaderProvider$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/hardware/Reader;

    if-nez v0, :cond_8

    .line 50
    new-instance v0, Lcom/stripe/core/readerupdate/ProgressStatus$Error;

    .line 52
    new-instance v3, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;

    const-string v4, "Not connected to reader"

    invoke-direct {v3, v4, v9, v5, v9}, Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v3, Ljava/lang/Throwable;

    .line 50
    invoke-direct {v0, v11, v3}, Lcom/stripe/core/readerupdate/ProgressStatus$Error;-><init>(Lcom/stripe/core/readerupdate/Update;Ljava/lang/Throwable;)V

    move-object v3, v1

    check-cast v3, Lkotlin/coroutines/Continuation;

    .line 49
    iput-object v9, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$2:Ljava/lang/Object;

    iput v5, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->label:I

    invoke-interface {v13, v0, v3}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_7

    goto/16 :goto_8

    .line 55
    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 59
    :cond_8
    :try_start_1
    iget-object v14, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v14}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Installing "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " ["

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v15, v18, 0x1

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " of "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v15, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->$image:Lcom/stripe/core/readerupdate/UpdatePackage;

    check-cast v15, Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "]..."

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v15, v7, [Lkotlin/Pair;

    invoke-interface {v14, v6, v15}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 60
    iget-object v6, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v6}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getDeviceInfoRepository$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/device/DeviceInfoRepository;

    move-result-object v6

    invoke-interface {v6}, Lcom/stripe/device/DeviceInfoRepository;->getPlatformDeviceInfo()Lcom/stripe/device/PlatformDeviceInfo;

    move-result-object v6

    .line 62
    instance-of v14, v11, Lcom/stripe/core/readerupdate/Update$Keys;

    if-eqz v14, :cond_9

    .line 63
    iget-object v14, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v14}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v14

    .line 64
    sget-object v15, Lcom/stripe/core/readerupdate/UpdateRequest;->Companion:Lcom/stripe/core/readerupdate/UpdateRequest$Companion;

    .line 65
    iget-object v5, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v5}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getEmbeddedSoftwareVersionProvider$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getPinKeysetId()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {v11}, Lcom/stripe/core/readerupdate/Update;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-interface {v6}, Lcom/stripe/device/PlatformDeviceInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v6

    .line 64
    invoke-virtual {v15, v5, v3, v6}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;->keys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;

    move-result-object v3

    check-cast v3, Lcom/stripe/loggingmodels/ApplicationTrace;

    .line 63
    invoke-interface {v14, v3, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 71
    iget-object v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getBbposAssetInstallProcessor$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    move-result-object v3

    move-object v5, v11

    check-cast v5, Lcom/stripe/core/readerupdate/Update$Keys;

    invoke-interface {v3, v5, v0}, Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;->install(Lcom/stripe/core/readerupdate/Update$Keys;Lcom/stripe/core/hardware/Reader;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    goto/16 :goto_4

    .line 73
    :cond_9
    instance-of v3, v11, Lcom/stripe/core/readerupdate/Update$Config;

    if-eqz v3, :cond_a

    .line 74
    iget-object v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    .line 75
    sget-object v5, Lcom/stripe/core/readerupdate/UpdateRequest;->Companion:Lcom/stripe/core/readerupdate/UpdateRequest$Companion;

    .line 76
    iget-object v14, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v14}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getEmbeddedSoftwareVersionProvider$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    move-result-object v14

    invoke-interface {v14}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getConfigVersion()Ljava/lang/String;

    move-result-object v14

    .line 77
    invoke-virtual {v11}, Lcom/stripe/core/readerupdate/Update;->getVersion()Ljava/lang/String;

    move-result-object v15

    .line 78
    invoke-interface {v6}, Lcom/stripe/device/PlatformDeviceInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v6

    .line 75
    invoke-virtual {v5, v14, v15, v6}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;->config(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;

    move-result-object v5

    check-cast v5, Lcom/stripe/loggingmodels/ApplicationTrace;

    .line 74
    invoke-interface {v3, v5, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 82
    iget-object v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getBbposAssetInstallProcessor$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    move-result-object v3

    move-object v5, v11

    check-cast v5, Lcom/stripe/core/readerupdate/Update$Config;

    invoke-interface {v3, v5, v0}, Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;->install(Lcom/stripe/core/readerupdate/Update$Config;Lcom/stripe/core/hardware/Reader;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    goto/16 :goto_4

    .line 84
    :cond_a
    instance-of v3, v11, Lcom/stripe/core/readerupdate/Update$Firmware;

    if-eqz v3, :cond_b

    .line 85
    iget-object v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    .line 86
    sget-object v5, Lcom/stripe/core/readerupdate/UpdateRequest;->Companion:Lcom/stripe/core/readerupdate/UpdateRequest$Companion;

    .line 87
    iget-object v14, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v14}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getEmbeddedSoftwareVersionProvider$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    move-result-object v14

    invoke-interface {v14}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v14

    .line 88
    invoke-virtual {v11}, Lcom/stripe/core/readerupdate/Update;->getVersion()Ljava/lang/String;

    move-result-object v15

    .line 89
    invoke-interface {v6}, Lcom/stripe/device/PlatformDeviceInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-virtual {v5, v14, v15, v6}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;->firmware(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;

    move-result-object v5

    check-cast v5, Lcom/stripe/loggingmodels/ApplicationTrace;

    .line 85
    invoke-interface {v3, v5, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 93
    iget-object v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getBbposAssetInstallProcessor$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    move-result-object v3

    move-object v5, v11

    check-cast v5, Lcom/stripe/core/readerupdate/Update$Firmware;

    invoke-interface {v3, v5, v0}, Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;->install(Lcom/stripe/core/readerupdate/Update$Firmware;Lcom/stripe/core/hardware/Reader;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    goto :goto_4

    .line 95
    :cond_b
    instance-of v0, v11, Lcom/stripe/core/readerupdate/Update$Settings;

    if-eqz v0, :cond_e

    .line 96
    iget-object v0, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v0}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    .line 97
    sget-object v3, Lcom/stripe/core/readerupdate/UpdateRequest;->Companion:Lcom/stripe/core/readerupdate/UpdateRequest$Companion;

    .line 98
    iget-object v5, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v5}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getEmbeddedSoftwareVersionProvider$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/stripe/core/readerupdate/EmbeddedSoftwareVersionProvider;->getSettingsVersion()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-virtual {v11}, Lcom/stripe/core/readerupdate/Update;->getVersion()Ljava/lang/String;

    move-result-object v14

    .line 100
    invoke-interface {v6}, Lcom/stripe/device/PlatformDeviceInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-virtual {v3, v5, v14, v6}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;->settings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/core/readerupdate/UpdateRequest;

    move-result-object v3

    check-cast v3, Lcom/stripe/loggingmodels/ApplicationTrace;

    .line 96
    invoke-interface {v0, v3, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 104
    iget-object v0, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v0}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getBbposAssetInstallProcessor$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;

    move-result-object v0

    move-object v3, v11

    check-cast v3, Lcom/stripe/core/readerupdate/Update$Settings;

    iget-object v5, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v5}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getConfigurationHandler$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Lcom/stripe/core/readerupdate/BbposAssetInstallProcessor;->install(Lcom/stripe/core/readerupdate/Update$Settings;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getIo$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, v3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    .line 113
    :goto_4
    new-instance v15, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;

    iget-object v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    iget-object v5, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->$image:Lcom/stripe/core/readerupdate/UpdatePackage;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedAfterCancellationReaderError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v20, 0x0

    move-object/from16 v16, v3

    move-object/from16 v19, v5

    move-object/from16 v17, v11

    :try_start_2
    invoke-direct/range {v15 .. v20}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;-><init>(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;Lcom/stripe/core/readerupdate/Update;ILcom/stripe/core/readerupdate/UpdatePackage;Lkotlin/coroutines/Continuation;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedAfterCancellationReaderError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v3, v18

    :try_start_3
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v15}, Lkotlinx/coroutines/flow/FlowKt;->flatMapConcat(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    move-object v5, v1

    check-cast v5, Lkotlin/coroutines/Continuation;

    .line 112
    iput-object v13, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$2:Ljava/lang/Object;

    iput v10, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->I$0:I

    iput v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->I$1:I

    iput v4, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->label:I

    invoke-static {v13, v0, v5}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedAfterCancellationReaderError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v0, v2, :cond_2

    goto/16 :goto_8

    .line 118
    :goto_5
    :try_start_4
    iget-object v5, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v5}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Finished installing "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v13, v7, [Lkotlin/Pair;

    invoke-interface {v5, v6, v13}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 119
    iget-object v5, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v5}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v5

    sget-object v6, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v6}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v6

    invoke-interface {v5, v6, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedAfterCancellationReaderError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 191
    invoke-interface {v1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v5

    .line 136
    invoke-static {v5}, Lkotlinx/coroutines/JobKt;->isActive(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 138
    iget-object v0, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    iget-object v2, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->$image:Lcom/stripe/core/readerupdate/UpdatePackage;

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v2

    if-ge v3, v2, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    move v6, v7

    :goto_6
    invoke-static {v0, v6}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getCancellationException(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;Z)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    :cond_d
    move-object v11, v12

    const/4 v3, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v13, v10

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v11, v17

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v11, v17

    goto :goto_b

    .line 104
    :cond_e
    :try_start_5
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedAfterCancellationReaderError; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 129
    :goto_7
    iget-object v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/Throwable;)V

    .line 130
    iget-object v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to install "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Lkotlin/Pair;

    invoke-interface {v3, v4, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 131
    iget-object v3, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    sget-object v4, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v4, v0}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v4

    invoke-interface {v3, v4, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 132
    new-instance v3, Lcom/stripe/core/readerupdate/ProgressStatus$Error;

    invoke-direct {v3, v11, v0}, Lcom/stripe/core/readerupdate/ProgressStatus$Error;-><init>(Lcom/stripe/core/readerupdate/Update;Ljava/lang/Throwable;)V

    move-object v0, v1

    check-cast v0, Lkotlin/coroutines/Continuation;

    iput-object v9, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$0:Ljava/lang/Object;

    iput-object v9, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->L$2:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->label:I

    invoke-interface {v13, v3, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_f

    :goto_8
    return-object v2

    .line 133
    :cond_f
    :goto_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 125
    :goto_a
    iget-object v2, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v2, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/Throwable;)V

    .line 126
    iget-object v2, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v2

    sget-object v4, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v4, v3}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 127
    throw v0

    .line 121
    :goto_b
    iget-object v2, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cancelled while installing "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Lkotlin/Pair;

    invoke-interface {v2, v3, v4, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Lkotlin/Pair;)V

    .line 122
    iget-object v2, v1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    invoke-static {v2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$getLogger$p(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v2

    sget-object v4, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    const/4 v5, 0x2

    invoke-static {v4, v3, v9, v5, v9}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->canceled$default(Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 123
    throw v0

    .line 141
    :cond_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
