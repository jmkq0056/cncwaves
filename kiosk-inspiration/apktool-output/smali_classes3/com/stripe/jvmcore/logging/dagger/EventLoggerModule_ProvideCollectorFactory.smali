.class public final Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;
.super Ljava/lang/Object;
.source "EventLoggerModule_ProvideCollectorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
        "Lcom/stripe/proto/api/gator/LogEvent;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final filesDirProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
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

.field private final loggerExceptionListenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;->module:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;

    .line 49
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;->logWriterProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;->filesDirProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;->loggerExceptionListenerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;-><init>(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideCollector(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Lcom/stripe/logwriter/LogWriter;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;)Lcom/stripe/jvmcore/batchdispatcher/Collector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;",
            "Lcom/stripe/logwriter/LogWriter;",
            "Ldagger/Lazy<",
            "Ljava/io/File;",
            ">;",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->provideCollector(Lcom/stripe/logwriter/LogWriter;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;)Lcom/stripe/jvmcore/batchdispatcher/Collector;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/batchdispatcher/Collector;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/batchdispatcher/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;->module:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/logwriter/LogWriter;

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;->filesDirProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;->loggerExceptionListenerProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/loggingmodels/LoggerExceptionListener;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;->provideCollector(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Lcom/stripe/logwriter/LogWriter;Ldagger/Lazy;Lcom/stripe/loggingmodels/LoggerExceptionListener;)Lcom/stripe/jvmcore/batchdispatcher/Collector;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideCollectorFactory;->get()Lcom/stripe/jvmcore/batchdispatcher/Collector;

    move-result-object v0

    return-object v0
.end method
