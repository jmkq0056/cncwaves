.class final Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ProgressFlowUpdater.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/ProgressFlowUpdater;-><init>(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
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
        "-TStatus;>;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u0003\"\u0004\u0008\u0002\u0010\u0004*\u0008\u0012\u0004\u0012\u0002H\u00040\u0005H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Coordinates",
        "Image",
        "Status",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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
    c = "com.stripe.core.readerupdate.ProgressFlowUpdater$updateFlow$1"
    f = "ProgressFlowUpdater.kt"
    i = {
        0x0,
        0x1
    }
    l = {
        0x29,
        0x37,
        0x3d,
        0x3d
    }
    m = "invokeSuspend"
    n = {
        "$this$invokeSuspend_u24lambda_u240",
        "$this$invokeSuspend_u24lambda_u240"
    }
    s = {
        "L$1",
        "L$1"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/stripe/core/readerupdate/ProgressFlowUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/readerupdate/ProgressFlowUpdater<",
            "TCoordinates;TImage;TStatus;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/ProgressFlowUpdater<",
            "TCoordinates;TImage;TStatus;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->this$0:Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

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

    new-instance v0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->this$0:Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    invoke-direct {v0, v1, p2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;-><init>(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TStatus;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v4, p0

    const-string v7, "Updates available: "

    const-string v8, "Finished ingesting updates: "

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 35
    iget v0, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->label:I

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v1, 0x1

    const/4 v12, 0x3

    const-string v13, "update_package_operation"

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v11, :cond_2

    if-eq v0, v12, :cond_1

    if-ne v0, v10, :cond_0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, p1

    goto/16 :goto_2

    :cond_2
    iget-object v0, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, p1

    goto/16 :goto_1

    :cond_3
    iget-object v0, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v1

    move-object v1, v0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/FlowCollector;

    .line 36
    iget-object v2, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->this$0:Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    :try_start_4
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 37
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    sget-object v5, Lcom/stripe/core/readerupdate/UpdateRequest;->Companion:Lcom/stripe/core/readerupdate/UpdateRequest$Companion;

    invoke-virtual {v5}, Lcom/stripe/core/readerupdate/UpdateRequest$Companion;->updatePackage()Lcom/stripe/core/readerupdate/UpdateRequest;

    move-result-object v5

    check-cast v5, Lcom/stripe/loggingmodels/ApplicationTrace;

    invoke-interface {v3, v5, v13}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 39
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    const-string v5, "Checking for updates..."

    new-array v6, v15, [Lkotlin/Pair;

    invoke-interface {v3, v5, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 41
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getStepHealthReporter$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    move-result-object v3

    sget-object v5, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->MONITOR:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    new-instance v6, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1$1$coordinates$1;

    invoke-direct {v6, v2, v14}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1$1$coordinates$1;-><init>(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iput-object v2, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$0:Ljava/lang/Object;

    iput-object v0, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$1:Ljava/lang/Object;

    iput v1, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->label:I

    const/4 v1, 0x0

    move-object/from16 v16, v2

    move-object v2, v5

    const/4 v5, 0x1

    move-object/from16 v17, v0

    move-object v0, v3

    move-object v3, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;->reportExecution$default(Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_5

    goto/16 :goto_3

    :cond_5
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    .line 44
    :goto_0
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    const-string v5, "Finished checking for updates."

    new-array v6, v15, [Lkotlin/Pair;

    invoke-interface {v3, v5, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    if-nez v0, :cond_6

    .line 47
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const-string v1, "No updates available. Exiting."

    new-array v3, v15, [Lkotlin/Pair;

    invoke-interface {v0, v1, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 48
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-static {v1, v14, v14, v12, v14}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->canceled$default(Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v1

    invoke-interface {v0, v1, v13}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 52
    :cond_6
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Lkotlin/Pair;

    invoke-interface {v3, v5, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 53
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    const-string v5, "Ingesting updates..."

    new-array v6, v15, [Lkotlin/Pair;

    invoke-interface {v3, v5, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 55
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getStepHealthReporter$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    move-result-object v3

    sget-object v5, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->DOWNLOAD:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;

    new-instance v6, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1$1$image$1;

    invoke-direct {v6, v2, v0, v14}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1$1$image$1;-><init>(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    iput-object v2, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$1:Ljava/lang/Object;

    iput v11, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->label:I

    move-object v0, v1

    const/4 v1, 0x0

    move-object/from16 v16, v2

    move-object v2, v5

    const/4 v5, 0x1

    move-object/from16 v17, v0

    move-object v0, v3

    move-object v3, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;->reportExecution$default(Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    .line 58
    :goto_1
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v15, [Lkotlin/Pair;

    invoke-interface {v3, v5, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 60
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v3

    const-string v5, "Applying updates..."

    new-array v6, v15, [Lkotlin/Pair;

    invoke-interface {v3, v5, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 61
    invoke-static {v2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getApplicator$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/core/updater/Applicator;

    move-result-object v3

    iput-object v2, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$0:Ljava/lang/Object;

    iput-object v1, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$1:Ljava/lang/Object;

    iput v12, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->label:I

    invoke-interface {v3, v0, v4}, Lcom/stripe/core/updater/Applicator;->apply(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1$1$1;

    invoke-direct {v3, v2, v14}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1$1$1;-><init>(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iput-object v14, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$0:Ljava/lang/Object;

    iput-object v14, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->L$1:Ljava/lang/Object;

    iput v10, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->label:I

    invoke-static {v1, v0, v4}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_9

    :goto_3
    return-object v9

    .line 62
    :cond_9
    :goto_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 36
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    :goto_5
    iget-object v1, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->this$0:Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v0

    check-cast v2, Lkotlin/Unit;

    .line 63
    invoke-static {v1}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v2

    const-string v3, "Finished applying updates."

    new-array v5, v15, [Lkotlin/Pair;

    invoke-interface {v2, v3, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 64
    invoke-static {v1}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v1

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->success()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v2

    invoke-interface {v1, v2, v13}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 65
    :cond_a
    iget-object v1, v4, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;->this$0:Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_b

    .line 69
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 66
    :cond_b
    invoke-static {v1}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const-string v3, "Failed to apply updates"

    new-array v5, v15, [Lkotlin/Pair;

    invoke-interface {v0, v3, v2, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 67
    invoke-static {v1}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    invoke-virtual {v1, v2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v1

    invoke-interface {v0, v1, v13}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 68
    throw v2
.end method
