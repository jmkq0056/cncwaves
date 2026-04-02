.class public final Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;
.super Ljava/lang/Object;
.source "TraceLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J<\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u000e\u0008\u0001\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;",
        "",
        "()V",
        "provideBatchDispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
        "collector",
        "Lcom/stripe/jvmcore/batchdispatcher/Collector;",
        "dispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;",
        "scheduler",
        "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
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


# static fields
.field public static final INSTANCE:Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;->INSTANCE:Lcom/stripe/jvmcore/logging/dagger/ClientLoggerTraceLoggerBatchDispatcherModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 1
    .param p2    # Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/ClientLogger;
        .end annotation
    .end param
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    const-string v0, "collector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;-><init>(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method
