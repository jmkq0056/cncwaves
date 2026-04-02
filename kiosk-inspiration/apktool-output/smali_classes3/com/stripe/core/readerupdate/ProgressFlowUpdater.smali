.class public final Lcom/stripe/core/readerupdate/ProgressFlowUpdater;
.super Ljava/lang/Object;
.source "ProgressFlowUpdater.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/ProgressFlowUpdater$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Coordinates:",
        "Ljava/lang/Object;",
        "Image:",
        "Ljava/lang/Object;",
        "Status:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressFlowUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressFlowUpdater.kt\ncom/stripe/core/readerupdate/ProgressFlowUpdater\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,80:1\n16#2:81\n*S KotlinDebug\n*F\n+ 1 ProgressFlowUpdater.kt\ncom/stripe/core/readerupdate/ProgressFlowUpdater\n*L\n33#1:81\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u001c*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0004\u0008\u0002\u0010\u00032\u00020\u0004:\u0001\u001cBo\u0008\u0000\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\u0006\u0012\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\t\u0012\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u00070\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0002\u0010\u0014J\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0007R \u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00020\u00070\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u0016j\u0002`\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/ProgressFlowUpdater;",
        "Coordinates",
        "Image",
        "Status",
        "",
        "monitor",
        "Lcom/stripe/core/updater/Monitor;",
        "Lkotlinx/coroutines/flow/Flow;",
        "ingester",
        "Lcom/stripe/core/updater/Ingester;",
        "applicator",
        "Lcom/stripe/core/updater/Applicator;",
        "endToEndHealthReporter",
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
        "stepHealthReporter",
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
        "installHealthReporter",
        "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "updateFlow",
        "start",
        "Companion",
        "readerupdate_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/core/readerupdate/ProgressFlowUpdater$Companion;

.field private static final IDENTIFIER:Ljava/lang/String; = "update_package_operation"


# instance fields
.field private final applicator:Lcom/stripe/core/updater/Applicator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/updater/Applicator<",
            "TImage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "TStatus;>;>;"
        }
    .end annotation
.end field

.field private final endToEndHealthReporter:Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;

.field private final ingester:Lcom/stripe/core/updater/Ingester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/updater/Ingester<",
            "TCoordinates;TImage;>;"
        }
    .end annotation
.end field

.field private final installHealthReporter:Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter<",
            "TStatus;>;"
        }
    .end annotation
.end field

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final monitor:Lcom/stripe/core/updater/Monitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "TCoordinates;>;>;"
        }
    .end annotation
.end field

.field private final stepHealthReporter:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

.field private final updateFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "TStatus;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->Companion:Lcom/stripe/core/readerupdate/ProgressFlowUpdater$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "TCoordinates;>;>;",
            "Lcom/stripe/core/updater/Ingester<",
            "TCoordinates;TImage;>;",
            "Lcom/stripe/core/updater/Applicator<",
            "TImage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "TStatus;>;>;",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
            "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter<",
            "TStatus;>;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")V"
        }
    .end annotation

    const-string v0, "monitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ingester"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applicator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endToEndHealthReporter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stepHealthReporter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "installHealthReporter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->monitor:Lcom/stripe/core/updater/Monitor;

    .line 26
    iput-object p2, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->ingester:Lcom/stripe/core/updater/Ingester;

    .line 27
    iput-object p3, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->applicator:Lcom/stripe/core/updater/Applicator;

    .line 28
    iput-object p4, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->endToEndHealthReporter:Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;

    .line 29
    iput-object p5, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->stepHealthReporter:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    .line 30
    iput-object p6, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->installHealthReporter:Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;

    .line 81
    const-class p1, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p7, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 35
    new-instance p1, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater$updateFlow$1;-><init>(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->updateFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method

.method public static final synthetic access$getApplicator$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/core/updater/Applicator;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->applicator:Lcom/stripe/core/updater/Applicator;

    return-object p0
.end method

.method public static final synthetic access$getIngester$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/core/updater/Ingester;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->ingester:Lcom/stripe/core/updater/Ingester;

    return-object p0
.end method

.method public static final synthetic access$getInstallHealthReporter$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->installHealthReporter:Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method

.method public static final synthetic access$getMonitor$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/core/updater/Monitor;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->monitor:Lcom/stripe/core/updater/Monitor;

    return-object p0
.end method

.method public static final synthetic access$getStepHealthReporter$p(Lcom/stripe/core/readerupdate/ProgressFlowUpdater;)Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->stepHealthReporter:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;

    return-object p0
.end method


# virtual methods
.method public final start()Lkotlinx/coroutines/flow/Flow;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "TStatus;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->endToEndHealthReporter:Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;

    .line 73
    iget-object v1, p0, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;->updateFlow:Lkotlinx/coroutines/flow/Flow;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, v2}, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;->reportFlowExecution$default(Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method
