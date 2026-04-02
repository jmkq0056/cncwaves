.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;
.super Ljava/lang/Object;
.source "JvmCoreLogModule_ProvideTerminalLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final applicationTraceHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final logRepositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final logWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final operationCollectorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final operationFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->logWriterProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->logRepositoryProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->clockProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->operationFactoryProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->operationCollectorProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p6, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->applicationTraceHelperProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;>;)",
            "Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTerminalLogger(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogOperation;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->provideTerminalLogger(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/logwriter/LogWriter;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->logRepositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/time/Clock;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->operationFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->operationCollectorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->applicationTraceHelperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    invoke-static/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->provideTerminalLogger(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideTerminalLoggerFactory;->get()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    return-object v0
.end method
