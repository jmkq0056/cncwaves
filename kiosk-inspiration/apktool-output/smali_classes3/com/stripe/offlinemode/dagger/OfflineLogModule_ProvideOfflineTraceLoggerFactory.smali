.class public final Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;
.super Ljava/lang/Object;
.source "OfflineLogModule_ProvideOfflineTraceLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final gsonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final helperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineTraceHelper;",
            ">;"
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

.field private final repositoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
            ">;>;"
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

.field private final traceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "traceLoggerProvider",
            "clockProvider",
            "logWriterProvider",
            "traceManagerProvider",
            "helperProvider",
            "repositoryProvider",
            "gsonProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineTraceHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->traceLoggerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p2, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->clockProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p3, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->logWriterProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p4, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->traceManagerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p5, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->helperProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p6, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->repositoryProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p7, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->gsonProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "traceLoggerProvider",
            "clockProvider",
            "logWriterProvider",
            "traceManagerProvider",
            "helperProvider",
            "repositoryProvider",
            "gsonProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/offlinemode/log/OfflineTraceHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideOfflineTraceLogger(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/time/Clock;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/stripe/offlinemode/log/OfflineTraceHelper;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/google/gson/Gson;)Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "traceLogger",
            "clock",
            "logWriter",
            "traceManager",
            "helper",
            "repository",
            "gson"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;",
            "Lcom/stripe/offlinemode/log/OfflineTraceHelper;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "Lcom/stripe/offlinemode/log/OfflineForwardingLogOperation;",
            ">;",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;"
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->INSTANCE:Lcom/stripe/offlinemode/dagger/OfflineLogModule;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/stripe/offlinemode/dagger/OfflineLogModule;->provideOfflineTraceLogger(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/time/Clock;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/stripe/offlinemode/log/OfflineTraceHelper;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/google/gson/Gson;)Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;
    .locals 8

    .line 68
    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->traceLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/stripe/loggingmodels/TraceLogger;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/time/Clock;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/stripe/logwriter/LogWriter;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->traceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->helperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/stripe/offlinemode/log/OfflineTraceHelper;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->repositoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    iget-object v0, p0, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->gsonProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/gson/Gson;

    invoke-static/range {v1 .. v7}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->provideOfflineTraceLogger(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/time/Clock;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/offlinemode/log/OfflineForwardingTraceManager;Lcom/stripe/offlinemode/log/OfflineTraceHelper;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/google/gson/Gson;)Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/stripe/offlinemode/dagger/OfflineLogModule_ProvideOfflineTraceLoggerFactory;->get()Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    move-result-object v0

    return-object v0
.end method
