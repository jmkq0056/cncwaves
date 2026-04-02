.class public final Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;
.super Ljava/lang/Object;
.source "FlowUpdaterModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0096\u0001\u0010\u0003\u001a\u0018\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004j\u0002`\u00082\u0016\u0010\t\u001a\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u000b0\nj\u0002`\u000c2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u000ej\u0002`\u000f2\u001c\u0010\u0010\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u000b0\u0011j\u0002`\u00122\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0007J\u0096\u0001\u0010\u001b\u001a\u0018\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004j\u0002`\u001d2\u0016\u0010\t\u001a\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u000b0\nj\u0002`\u001e2\u0016\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00060\u000ej\u0002`\u001f2\u001c\u0010\u0010\u001a\u0018\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u000b0\u0011j\u0002`\u00122\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u00142\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0007\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;",
        "",
        "()V",
        "provideArmadaFlowUpdater",
        "Lcom/stripe/core/readerupdate/ProgressFlowUpdater;",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "Lcom/stripe/core/readerupdate/UpdatePackage;",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "Lcom/stripe/core/readerupdate/BbposArmadaUpdater;",
        "monitor",
        "Lcom/stripe/core/updater/Monitor;",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/core/readerupdate/ArmadaMonitor;",
        "ingester",
        "Lcom/stripe/core/updater/Ingester;",
        "Lcom/stripe/core/readerupdate/ArmadaIngester;",
        "applicator",
        "Lcom/stripe/core/updater/Applicator;",
        "Lcom/stripe/core/readerupdate/BbposApplicator;",
        "endToEndHealthReporter",
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
        "stepHealthReporter",
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
        "installHealthReporter",
        "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "provideTmsFlowUpdater",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        "Lcom/stripe/core/readerupdate/BbposTmsUpdater;",
        "Lcom/stripe/core/readerupdate/TmsMonitor;",
        "Lcom/stripe/core/readerupdate/TmsIngester;",
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
.field public static final INSTANCE:Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;

    invoke-direct {v0}, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;-><init>()V

    sput-object v0, Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;->INSTANCE:Lcom/stripe/core/readerupdate/dagger/FlowUpdaterModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideArmadaFlowUpdater(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/ProgressFlowUpdater;
    .locals 9
    .param p4    # Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Armada;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            ">;>;",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
            "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/core/readerupdate/ProgressFlowUpdater<",
            "Lcom/stripe/core/readerupdate/UpdateSummary;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;"
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

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    new-instance v1, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;-><init>(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v1
.end method

.method public final provideTmsFlowUpdater(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/core/readerupdate/ProgressFlowUpdater;
    .locals 9
    .param p4    # Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;
        .annotation runtime Lcom/stripe/jvmcore/dagger/TMS;
        .end annotation
    .end param
    .param p5    # Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;
        .annotation runtime Lcom/stripe/jvmcore/dagger/TMS;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/updater/Monitor<",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            ">;>;",
            "Lcom/stripe/core/updater/Ingester<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            ">;",
            "Lcom/stripe/core/updater/Applicator<",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
            "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter<",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")",
            "Lcom/stripe/core/readerupdate/ProgressFlowUpdater<",
            "Lcom/stripe/core/hardware/updates/ReaderVersion;",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;"
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

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v1, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/stripe/core/readerupdate/ProgressFlowUpdater;-><init>(Lcom/stripe/core/updater/Monitor;Lcom/stripe/core/updater/Ingester;Lcom/stripe/core/updater/Applicator;Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v1
.end method
