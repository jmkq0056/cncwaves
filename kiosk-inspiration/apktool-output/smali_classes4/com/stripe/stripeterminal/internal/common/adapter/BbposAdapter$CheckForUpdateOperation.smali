.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;
.source "BbposAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForUpdateOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation<",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u000c2\u0006\u0010\u0004\u001a\u00020\u0005H\u0082@\u00a2\u0006\u0002\u0010\rJ\n\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "failSilently",
        "",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/Reader;Z)V",
        "getReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "checkTmsTargetVersion",
        "Lkotlinx/coroutines/flow/Flow;",
        "(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "execute",
        "onReturnCurrentVersion",
        "",
        "data",
        "Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;",
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
.field private final failSilently:Z

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/Reader;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Z)V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    .line 754
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    .line 752
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 753
    iput-boolean p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->failSilently:Z

    return-void
.end method

.method public static final synthetic access$checkTmsTargetVersion(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 751
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->checkTmsTargetVersion(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getFailSilently$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;)Z
    .locals 0

    .line 751
    iget-boolean p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->failSilently:Z

    return p0
.end method

.method private final checkTmsTargetVersion(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 816
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2;

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p1, p0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$checkTmsTargetVersion$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public execute()Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getSingleUpdateHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$execute$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$execute$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->setUpdateStageTimer(Lcom/stripe/jvmcore/logging/PendingTimer;)V

    .line 759
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->getHealthMetricTags()Ljava/util/Map;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->failSilently:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail_silently"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getUpdateManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/readerupdate/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/UpdateManager;->startCheckForUpdates()V

    .line 761
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->update()V

    .line 763
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 751
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->execute()Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    move-result-object v0

    return-object v0
.end method

.method protected getReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method public final onReturnCurrentVersion(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;)V
    .locals 7

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 768
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getScope$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation$onReturnCurrentVersion$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
