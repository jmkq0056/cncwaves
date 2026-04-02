.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;
.super Ljava/lang/Object;
.source "JvmCoreLogModule_ProvideLogOperationCollectorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final metricLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            ">;"
        }
    .end annotation
.end field

.field private final traceLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;->traceLoggerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;->metricLoggerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;->gsonProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;"
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideLogOperationCollector(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/google/gson/Gson;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;

    invoke-virtual {v0, p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->provideLogOperationCollector(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/google/gson/Gson;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;->traceLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/loggingmodels/TraceLogger;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;->metricLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/loggingmodels/MetricLogger;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;->provideLogOperationCollector(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/google/gson/Gson;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLogOperationCollectorFactory;->get()Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    move-result-object v0

    return-object v0
.end method
