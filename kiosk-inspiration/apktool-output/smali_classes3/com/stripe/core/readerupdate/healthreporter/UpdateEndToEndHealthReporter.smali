.class public final Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;
.super Ljava/lang/Object;
.source "UpdateEndToEndHealthReporter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B1\u0012\"\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ2\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00100\u000f\"\u0004\u0008\u0000\u0010\u0010*\u0008\u0012\u0004\u0012\u0002H\u00100\u000f2\u0014\u0008\u0002\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;",
        "",
        "healthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
        "Lcom/stripe/core/readerupdate/healthreporter/EndToEndUpdateHealthLogger;",
        "endpoint",
        "Lcom/stripe/core/readerupdate/healthreporter/Endpoint;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V",
        "logHelper",
        "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;",
        "reportFlowExecution",
        "Lkotlinx/coroutines/flow/Flow;",
        "R",
        "tags",
        "",
        "",
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
.field private final endpoint:Lcom/stripe/core/readerupdate/healthreporter/Endpoint;

.field private final logHelper:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/EndToEndScope$Builder;",
            ">;",
            "Lcom/stripe/core/readerupdate/healthreporter/Endpoint;",
            ")V"
        }
    .end annotation

    const-string v0, "healthLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p2, p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;->endpoint:Lcom/stripe/core/readerupdate/healthreporter/Endpoint;

    .line 10
    new-instance p2, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    invoke-direct {p2, p1}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;)V

    iput-object p2, p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;->logHelper:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    return-void
.end method

.method public static synthetic reportFlowExecution$default(Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;ILjava/lang/Object;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 13
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;->reportFlowExecution(Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final reportFlowExecution(Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TR;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TR;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;->logHelper:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    .line 16
    iget-object v1, p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter;->endpoint:Lcom/stripe/core/readerupdate/healthreporter/Endpoint;

    invoke-static {p2, v1}, Lcom/stripe/core/readerupdate/healthreporter/TagsKt;->getComprehensiveTags(Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)Ljava/util/Map;

    move-result-object p2

    .line 15
    sget-object v1, Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter$reportFlowExecution$1$1;->INSTANCE:Lcom/stripe/core/readerupdate/healthreporter/UpdateEndToEndHealthReporter$reportFlowExecution$1$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, p1, p2, v1}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->reportFlowExecutionWithException(Lkotlinx/coroutines/flow/Flow;Ljava/util/Map;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method
