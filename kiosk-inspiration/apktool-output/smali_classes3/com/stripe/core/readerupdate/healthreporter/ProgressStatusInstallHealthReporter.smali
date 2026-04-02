.class public final Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;
.super Ljava/lang/Object;
.source "ProgressStatusInstallHealthReporter.kt"

# interfaces
.implements Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter<",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B)\u0012\"\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0004j\u0002`\t\u00a2\u0006\u0002\u0010\nJ.\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00132\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00160\u0015H\u0002J\u0010\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0002H\u0016R*\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0004j\u0002`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\r\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;",
        "Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "healthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
        "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger;)V",
        "timers",
        "",
        "Lcom/stripe/core/readerupdate/Update;",
        "Lcom/stripe/jvmcore/logging/PendingTimer;",
        "endTimer",
        "",
        "asset",
        "outcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "tags",
        "",
        "",
        "reportInstallProgress",
        "status",
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


# instance fields
.field private final healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private timers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/stripe/core/readerupdate/Update;",
            "Lcom/stripe/jvmcore/logging/PendingTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "healthLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 11
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->timers:Ljava/util/Map;

    return-void
.end method

.method private final endTimer(Lcom/stripe/core/readerupdate/Update;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/Update;",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->timers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/logging/PendingTimer;

    if-eqz v2, :cond_0

    .line 40
    iget-object v1, p0, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 46
    :cond_0
    iget-object p2, p0, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->timers:Ljava/util/Map;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic endTimer$default(Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;Lcom/stripe/core/readerupdate/Update;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 38
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->endTimer(Lcom/stripe/core/readerupdate/Update;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public reportInstallProgress(Lcom/stripe/core/readerupdate/ProgressStatus;)Lcom/stripe/core/readerupdate/ProgressStatus;
    .locals 7

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v0, p1, Lcom/stripe/core/readerupdate/ProgressStatus$Start;

    if-eqz v0, :cond_0

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/stripe/core/readerupdate/ProgressStatus$Start;

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/ProgressStatus$Start;->getAsset()Lcom/stripe/core/readerupdate/Update;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->timers:Ljava/util/Map;

    .line 18
    iget-object v2, p0, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->healthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    const-string v3, "asset"

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/Update;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    sget-object v4, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter$reportInstallProgress$1;->INSTANCE:Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter$reportInstallProgress$1;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v2, v3, v4}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer(Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 22
    :cond_0
    instance-of v0, p1, Lcom/stripe/core/readerupdate/ProgressStatus$Success;

    if-eqz v0, :cond_1

    .line 23
    move-object v0, p1

    check-cast v0, Lcom/stripe/core/readerupdate/ProgressStatus$Success;

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/ProgressStatus$Success;->getAsset()Lcom/stripe/core/readerupdate/Update;

    move-result-object v2

    sget-object v0, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    move-object v3, v0

    check-cast v3, Lcom/stripe/loggingmodels/Outcome;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->endTimer$default(Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;Lcom/stripe/core/readerupdate/Update;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;ILjava/lang/Object;)V

    return-object p1

    :cond_1
    move-object v1, p0

    .line 25
    instance-of v0, p1, Lcom/stripe/core/readerupdate/ProgressStatus$Error;

    if-eqz v0, :cond_2

    .line 27
    move-object v0, p1

    check-cast v0, Lcom/stripe/core/readerupdate/ProgressStatus$Error;

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/ProgressStatus$Error;->getAsset()Lcom/stripe/core/readerupdate/Update;

    move-result-object v2

    .line 28
    sget-object v3, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    check-cast v3, Lcom/stripe/loggingmodels/Outcome;

    .line 29
    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/ProgressStatus$Error;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "error"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 26
    invoke-direct {p0, v2, v3, v0}, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->endTimer(Lcom/stripe/core/readerupdate/Update;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;)V

    :cond_2
    return-object p1
.end method

.method public bridge synthetic reportInstallProgress(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8
    check-cast p1, Lcom/stripe/core/readerupdate/ProgressStatus;

    invoke-virtual {p0, p1}, Lcom/stripe/core/readerupdate/healthreporter/ProgressStatusInstallHealthReporter;->reportInstallProgress(Lcom/stripe/core/readerupdate/ProgressStatus;)Lcom/stripe/core/readerupdate/ProgressStatus;

    move-result-object p1

    return-object p1
.end method
