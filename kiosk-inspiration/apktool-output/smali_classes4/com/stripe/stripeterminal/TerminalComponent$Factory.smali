.class public interface abstract Lcom/stripe/stripeterminal/TerminalComponent$Factory;
.super Ljava/lang/Object;
.source "TerminalComponent.kt"


# annotations
.annotation runtime Ldagger/Component$Factory;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/TerminalComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001JH\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0014\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/TerminalComponent$Factory;",
        "",
        "create",
        "Lcom/stripe/stripeterminal/TerminalComponent;",
        "dependencies",
        "Lcom/stripe/stripeterminal/dagger/Dependencies;",
        "terminalModule",
        "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
        "offlineModule",
        "Lcom/stripe/stripeterminal/dagger/OfflineModule;",
        "contextModule",
        "Lcom/stripe/stripeterminal/dagger/ContextModule;",
        "logLevelModule",
        "Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;",
        "metricLoggerCollectorModule",
        "Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;",
        "traceLoggerCollectorModule",
        "Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;",
        "clientLoggerDispatcherModule",
        "Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;",
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
.method public abstract create(Lcom/stripe/stripeterminal/dagger/Dependencies;Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/stripeterminal/dagger/OfflineModule;Lcom/stripe/stripeterminal/dagger/ContextModule;Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;Lcom/stripe/jvmcore/logging/dagger/MetricLoggerCollectorModule;Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;Lcom/stripe/jvmcore/clientlogger/dagger/ClientLoggerDispatcherModule;)Lcom/stripe/stripeterminal/TerminalComponent;
.end method
