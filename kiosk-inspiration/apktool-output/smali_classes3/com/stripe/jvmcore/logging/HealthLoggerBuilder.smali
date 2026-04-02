.class public final Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;
.super Ljava/lang/Object;
.source "HealthLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0017B+\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJw\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\u000cR\u00020\u0000\"\u0016\u0008\u0000\u0010\r\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\u000f\"\u0016\u0008\u0001\u0010\u000e\u0018\u0001*\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u0002H\u000e0\u00102)\u0008\u0008\u0010\u0011\u001a#\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\u00140\u0012j\u0008\u0012\u0004\u0012\u0002H\r`\u0015\u00a2\u0006\u0002\u0008\u0016H\u0086\u0008\u00f8\u0001\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;",
        "",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "isDebug",
        "",
        "listeners",
        "Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lcom/stripe/loggingmodels/MetricLogger;ZLcom/stripe/jvmcore/logging/HealthMetricListenersProvider;Lcom/stripe/logwriter/LogWriter;)V",
        "withDomain",
        "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;",
        "D",
        "DB",
        "Lcom/squareup/wire/Message;",
        "Lcom/squareup/wire/Message$Builder;",
        "domainSetter",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
        "",
        "Lcom/stripe/jvmcore/logging/DomainSetter;",
        "Lkotlin/ExtensionFunctionType;",
        "DomainedBuilder",
        "logging"
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
.field private final isDebug:Z

.field private final listeners:Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final metricLogger:Lcom/stripe/loggingmodels/MetricLogger;


# direct methods
.method public static synthetic $r8$lambda$YxpfIzhujDxS2P_B8-Qg5RYvAV4()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->_init_$lambda$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/stripe/loggingmodels/MetricLogger;ZLcom/stripe/jvmcore/logging/HealthMetricListenersProvider;Lcom/stripe/logwriter/LogWriter;)V
    .locals 1
    .param p2    # Z
        .annotation runtime Lcom/stripe/jvmcore/dagger/Debug;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "metricLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listeners"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 423
    iput-boolean p2, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->isDebug:Z

    .line 424
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->listeners:Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    .line 425
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/loggingmodels/MetricLogger;ZLcom/stripe/jvmcore/logging/HealthMetricListenersProvider;Lcom/stripe/logwriter/LogWriter;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 424
    new-instance p3, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 421
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;-><init>(Lcom/stripe/loggingmodels/MetricLogger;ZLcom/stripe/jvmcore/logging/HealthMetricListenersProvider;Lcom/stripe/logwriter/LogWriter;)V

    return-void
.end method

.method private static final _init_$lambda$0()Ljava/util/List;
    .locals 1

    .line 424
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getListeners$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->listeners:Lcom/stripe/jvmcore/logging/HealthMetricListenersProvider;

    return-object p0
.end method

.method public static final synthetic access$getLogWriter$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/logwriter/LogWriter;
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-object p0
.end method

.method public static final synthetic access$getMetricLogger$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Lcom/stripe/loggingmodels/MetricLogger;
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    return-object p0
.end method

.method public static final synthetic access$isDebug$p(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;)Z
    .locals 0

    .line 421
    iget-boolean p0, p0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;->isDebug:Z

    return p0
.end method


# virtual methods
.method public final synthetic withDomain(Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lcom/squareup/wire/Message<",
            "TD;TDB;>;DB:",
            "Lcom/squareup/wire/Message$Builder<",
            "TD;TDB;>;>(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/HealthMetric$Builder;",
            "-TD;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder<",
            "TD;TDB;>;"
        }
    .end annotation

    const-string v0, "domainSetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    new-instance v0, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;

    const-string v1, "D"

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Lcom/squareup/wire/Message;

    move-object v3, v1

    check-cast v3, Ljava/lang/Class;

    const-string v3, "DB"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v2, Lcom/squareup/wire/Message$Builder;

    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/stripe/jvmcore/logging/HealthLoggerBuilder$DomainedBuilder;-><init>(Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;Ljava/lang/Class;Ljava/lang/Class;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method
