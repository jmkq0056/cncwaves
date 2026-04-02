.class public final Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;
.super Ljava/lang/Object;
.source "DefaultLogInitializer.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogInitializer;",
        "traceLogger",
        "Lcom/stripe/loggingmodels/TraceLogger;",
        "metricLogger",
        "Lcom/stripe/loggingmodels/MetricLogger;",
        "eventLoggerInitializer",
        "Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;",
        "terminalLogger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "terminalLogWriter",
        "Lcom/stripe/logwriter/LogLevelAwareWriter;",
        "(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/logwriter/LogLevelAwareWriter;)V",
        "initialize",
        "",
        "impl_release"
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
.field private final eventLoggerInitializer:Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;

.field private final metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

.field private final terminalLogWriter:Lcom/stripe/logwriter/LogLevelAwareWriter;

.field private final terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final traceLogger:Lcom/stripe/loggingmodels/TraceLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/loggingmodels/TraceLogger;Lcom/stripe/loggingmodels/MetricLogger;Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/logwriter/LogLevelAwareWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/loggingmodels/TraceLogger;",
            "Lcom/stripe/loggingmodels/MetricLogger;",
            "Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;",
            "Lcom/stripe/logwriter/LogLevelAwareWriter;",
            ")V"
        }
    .end annotation

    const-string v0, "traceLogger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricLogger"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventLoggerInitializer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalLogger"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "terminalLogWriter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    .line 17
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    .line 18
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;->eventLoggerInitializer:Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;

    .line 19
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 20
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;->terminalLogWriter:Lcom/stripe/logwriter/LogLevelAwareWriter;

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 2

    .line 23
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLegacyProxySimpleLogger()Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;->terminalLogger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/ProxySimpleLogger;->setLogger(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 24
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLegacyProxyLogWriter()Lcom/stripe/logwriter/ProxyLogWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;->terminalLogWriter:Lcom/stripe/logwriter/LogLevelAwareWriter;

    check-cast v1, Lcom/stripe/logwriter/LogWriter;

    invoke-interface {v0, v1}, Lcom/stripe/logwriter/ProxyLogWriter;->setWriter(Lcom/stripe/logwriter/LogWriter;)V

    .line 26
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;->traceLogger:Lcom/stripe/loggingmodels/TraceLogger;

    invoke-interface {v0}, Lcom/stripe/loggingmodels/TraceLogger;->init()V

    .line 27
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;->metricLogger:Lcom/stripe/loggingmodels/MetricLogger;

    invoke-interface {v0}, Lcom/stripe/loggingmodels/MetricLogger;->init()V

    .line 28
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogInitializer;->eventLoggerInitializer:Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;

    invoke-interface {v0}, Lcom/stripe/loggingmodels/StructuredEventLoggerInitializer;->init()V

    return-void
.end method
