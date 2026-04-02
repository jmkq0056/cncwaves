.class public interface abstract Lcom/stripe/stripeterminal/dagger/TerminalCommonComponent;
.super Ljava/lang/Object;
.source "TerminalCommonComponent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008`\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0004\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011R\u0012\u0010\u0012\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0012\u0010\u0016\u001a\u00020\u0017X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00020\u001bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\u001fX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0012\u0010\"\u001a\u00020#X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010%R\u0012\u0010&\u001a\u00020\'X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010)R\u0012\u0010*\u001a\u00020+X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u0012\u0010.\u001a\u00020/X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00080\u00101R\u0014\u00102\u001a\u00020\u00078gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\t\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u00064\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/dagger/TerminalCommonComponent;",
        "",
        "apiLevelValidator",
        "Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;",
        "getApiLevelValidator",
        "()Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;",
        "connectionExecutorService",
        "Ljava/util/concurrent/ExecutorService;",
        "getConnectionExecutorService",
        "()Ljava/util/concurrent/ExecutorService;",
        "cotsAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
        "getCotsAdapter",
        "()Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
        "locationHandler",
        "Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
        "getLocationHandler",
        "()Lcom/stripe/stripeterminal/internal/common/LocationHandler;",
        "locationValidator",
        "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
        "getLocationValidator",
        "()Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;",
        "logInitializer",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;",
        "getLogInitializer",
        "()Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "getMetricLogger",
        "()Lcom/stripe/loggingmodels/MetricLogger;",
        "okHttpClientProvider",
        "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "getOkHttpClientProvider",
        "()Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
        "rootAccessDetector",
        "Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;",
        "getRootAccessDetector",
        "()Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;",
        "terminalSession",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "getTerminalSession",
        "()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "traceFlusher",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;",
        "getTraceFlusher",
        "()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "getTraceLogger",
        "()Lcom/stripe/loggingmodels/TraceLogger;",
        "transactionExecutorService",
        "getTransactionExecutorService",
        "sdkmanager_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getApiLevelValidator()Lcom/stripe/stripeterminal/internal/common/introspection/ApiLevelValidator;
.end method

.method public abstract getConnectionExecutorService()Ljava/util/concurrent/ExecutorService;
    .annotation runtime Lcom/stripe/jvmcore/dagger/ConnectionTokenManagement;
    .end annotation
.end method

.method public abstract getCotsAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
.end method

.method public abstract getLocationHandler()Lcom/stripe/stripeterminal/internal/common/LocationHandler;
.end method

.method public abstract getLocationValidator()Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;
.end method

.method public abstract getLogInitializer()Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;
.end method

.method public abstract getMetricLogger()Lcom/stripe/loggingmodels/MetricLogger;
.end method

.method public abstract getOkHttpClientProvider()Lcom/stripe/jvmcore/client/OkHttpClientProvider;
.end method

.method public abstract getRootAccessDetector()Lcom/stripe/stripeterminal/internal/common/introspection/RootAccessDetector;
.end method

.method public abstract getTerminalSession()Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end method

.method public abstract getTraceFlusher()Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;
.end method

.method public abstract getTraceLogger()Lcom/stripe/loggingmodels/TraceLogger;
.end method

.method public abstract getTransactionExecutorService()Ljava/util/concurrent/ExecutorService;
    .annotation runtime Lcom/stripe/jvmcore/dagger/Transaction;
    .end annotation
.end method
