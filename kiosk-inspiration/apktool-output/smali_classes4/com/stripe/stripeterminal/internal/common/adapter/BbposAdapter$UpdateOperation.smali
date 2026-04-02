.class abstract Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;
.super Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
.source "BbposAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UpdateOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1324:1\n1#2:1325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00a2\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000c\u0012\u0004\u0012\u0002H\u00010\u0002R\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019J\"\u0010\u001a\u001a\u00020\u0017*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0004R\'\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00068DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;",
        "T",
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V",
        "healthMetricTags",
        "",
        "",
        "getHealthMetricTags",
        "()Ljava/util/Map;",
        "healthMetricTags$delegate",
        "Lkotlin/Lazy;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "getReader",
        "()Lcom/stripe/stripeterminal/external/models/Reader;",
        "updateStageTimer",
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
        "getUpdateStageTimer",
        "()Lcom/stripe/jvmcore/logging/PendingTimer;",
        "setUpdateStageTimer",
        "(Lcom/stripe/jvmcore/logging/PendingTimer;)V",
        "onUpdateException",
        "",
        "e",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
        "addEnumTag",
        "connectionType",
        "Lcom/stripe/proto/api/rest/ConnectionType;",
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
.field private final healthMetricTags$delegate:Lkotlin/Lazy;

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

.field private updateStageTimer:Lcom/stripe/jvmcore/logging/PendingTimer;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 720
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    move-object v0, p1

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    .line 721
    invoke-static {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 722
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation$healthMetricTags$2;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation$healthMetricTags$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->healthMetricTags$delegate:Lkotlin/Lazy;

    .line 733
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->getDeferred()Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation$1;

    invoke-direct {v1, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->invokeOnCompletion(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method


# virtual methods
.method protected final addEnumTag(Ljava/util/Map;Lcom/stripe/proto/api/rest/ConnectionType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/proto/api/rest/ConnectionType;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 747
    const-string v0, "connection_type"

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/ConnectionType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected final getHealthMetricTags()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->healthMetricTags$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method protected getReader()Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    return-object v0
.end method

.method protected final getUpdateStageTimer()Lcom/stripe/jvmcore/logging/PendingTimer;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->updateStageTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-object v0
.end method

.method public final onUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker;->Companion:Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker$Companion;

    invoke-virtual {v1, p1}, Lcom/stripe/stripeterminal/internal/common/makers/TerminalExceptionMaker$Companion;->fromReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method protected final setUpdateStageTimer(Lcom/stripe/jvmcore/logging/PendingTimer;)V
    .locals 0

    .line 727
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;->updateStageTimer:Lcom/stripe/jvmcore/logging/PendingTimer;

    return-void
.end method
