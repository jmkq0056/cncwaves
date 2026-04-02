.class public final Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;
.super Ljava/lang/Object;
.source "DefaultMposReaderDebugLogManager.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "readerConnectionController",
        "Lcom/stripe/core/hardware/ReaderConnectionController;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/ReaderConnectionController;Lkotlinx/coroutines/CoroutineScope;)V",
        "updateDebugLoggingJob",
        "Lkotlinx/coroutines/Job;",
        "dispose",
        "",
        "init",
        "common_publish"
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
.field private final featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

.field private final readerConnectionController:Lcom/stripe/core/hardware/ReaderConnectionController;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private updateDebugLoggingJob:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/ReaderConnectionController;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 1

    const-string v0, "featureFlagsRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerConnectionController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    .line 16
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;->readerConnectionController:Lcom/stripe/core/hardware/ReaderConnectionController;

    .line 17
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method

.method public static final synthetic access$getFeatureFlagsRepository$p(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    return-object p0
.end method

.method public static final synthetic access$getReaderConnectionController$p(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;)Lcom/stripe/core/hardware/ReaderConnectionController;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;->readerConnectionController:Lcom/stripe/core/hardware/ReaderConnectionController;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;->updateDebugLoggingJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 35
    :cond_0
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;->updateDebugLoggingJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public init()V
    .locals 6

    .line 23
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;->scope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager$init$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager$init$1;-><init>(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;->updateDebugLoggingJob:Lkotlinx/coroutines/Job;

    return-void
.end method
