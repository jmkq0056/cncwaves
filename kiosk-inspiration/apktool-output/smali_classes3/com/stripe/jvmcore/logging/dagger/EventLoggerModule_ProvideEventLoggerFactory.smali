.class public final Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;
.super Ljava/lang/Object;
.source "EventLoggerModule_ProvideEventLoggerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/EventLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final batchDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
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

.field private final filesDirProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final ioProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
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

.field private final module:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;

.field private final protoFlattenerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/proto/ProtoFlattener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;",
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/proto/ProtoFlattener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->module:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;

    .line 59
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->filesDirProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->batchDispatcherProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->clockProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->protoFlattenerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p6, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->ioProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p7, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;",
            "Ljavax/inject/Provider<",
            "Ljava/io/File;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/time/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/proto/ProtoFlattener;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;-><init>(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideEventLogger(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ldagger/Lazy;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/proto/ProtoFlattener;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/logging/EventLogger;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;",
            "Ldagger/Lazy<",
            "Ljava/io/File;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/LogEvent;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/proto/ProtoFlattener;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/logging/EventLogger;"
        }
    .end annotation

    .line 82
    invoke-virtual/range {p0 .. p6}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;->provideEventLogger(Ldagger/Lazy;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/proto/ProtoFlattener;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/logging/EventLogger;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/EventLogger;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/EventLogger;
    .locals 7

    .line 69
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->module:Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->filesDirProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->batchDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->clockProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/time/Clock;

    iget-object v4, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->protoFlattenerProvider:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/jvmcore/proto/ProtoFlattener;

    iget-object v5, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->ioProvider:Ljavax/inject/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/coroutines/CoroutineDispatcher;

    iget-object v6, p0, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/stripe/logwriter/LogWriter;

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->provideEventLogger(Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule;Ldagger/Lazy;Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/proto/ProtoFlattener;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/logging/EventLogger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/dagger/EventLoggerModule_ProvideEventLoggerFactory;->get()Lcom/stripe/jvmcore/logging/EventLogger;

    move-result-object v0

    return-object v0
.end method
