.class public final Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;
.super Ljava/lang/Object;
.source "UpdateStepHealthReporter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;,
        Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u001fB1\u0012\"\u0010\u0002\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0003j\u0002`\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ7\u0010\u000e\u001a)\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00110\u000fj\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0010`\u0012\u00a2\u0006\u0002\u0008\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002JP\u0010\u0016\u001a\u0002H\u0017\"\u0004\u0008\u0000\u0010\u00172\u0014\u0008\u0002\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0014\u001a\u00020\u00152\u001c\u0010\u001b\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00170\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001cH\u0086@\u00a2\u0006\u0002\u0010\u001eR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R&\u0010\u000c\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;",
        "",
        "healthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
        "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;",
        "endpoint",
        "Lcom/stripe/core/readerupdate/healthreporter/Endpoint;",
        "(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)V",
        "logHelper",
        "Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;",
        "getEventSetter",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "",
        "Lcom/stripe/jvmcore/logging/EventSetter;",
        "Lkotlin/ExtensionFunctionType;",
        "stage",
        "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;",
        "reportExecution",
        "R",
        "tags",
        "",
        "",
        "runnable",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "(Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Event",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
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
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;",
            "Lcom/stripe/core/readerupdate/healthreporter/Endpoint;",
            ")V"
        }
    .end annotation

    const-string v0, "healthLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p2, p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;->endpoint:Lcom/stripe/core/readerupdate/healthreporter/Endpoint;

    .line 16
    new-instance p2, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    invoke-direct {p2, p1}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;-><init>(Lcom/stripe/jvmcore/logging/HealthLogger;)V

    iput-object p2, p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;->logHelper:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    return-void
.end method

.method private final getEventSetter(Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;)Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;",
            ")",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 32
    sget-object p1, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$getEventSetter$3;->INSTANCE:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$getEventSetter$3;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 31
    :cond_1
    sget-object p1, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$getEventSetter$2;->INSTANCE:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$getEventSetter$2;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1

    .line 30
    :cond_2
    sget-object p1, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$getEventSetter$1;->INSTANCE:Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$getEventSetter$1;

    check-cast p1, Lkotlin/jvm/functions/Function2;

    return-object p1
.end method

.method public static synthetic reportExecution$default(Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x1

    if-eqz p5, :cond_0

    .line 19
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;->reportExecution(Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final reportExecution(Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;->logHelper:Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;

    .line 23
    iget-object v1, p0, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;->endpoint:Lcom/stripe/core/readerupdate/healthreporter/Endpoint;

    invoke-static {p1, v1}, Lcom/stripe/core/readerupdate/healthreporter/TagsKt;->getComprehensiveTags(Ljava/util/Map;Lcom/stripe/core/readerupdate/healthreporter/Endpoint;)Ljava/util/Map;

    move-result-object p1

    .line 24
    invoke-direct {p0, p2}, Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter;->getEventSetter(Lcom/stripe/core/readerupdate/healthreporter/UpdateStepHealthReporter$Event;)Lkotlin/jvm/functions/Function2;

    move-result-object p2

    .line 22
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/ExecutionTimeLogger;->reportExecutionWithException(Ljava/util/Map;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
