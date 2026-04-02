.class public final Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;
.super Ljava/lang/Object;
.source "TraceLoggerModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JT\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u000e\u0008\u0001\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u000e\u0008\u0001\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;",
        "",
        "()V",
        "providesBatchDispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
        "collector",
        "Lcom/stripe/jvmcore/batchdispatcher/Collector;",
        "gator",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;",
        "clientLogger",
        "scheduler",
        "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
        "observabilityFeatureFlags",
        "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
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
.field public static final INSTANCE:Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;->INSTANCE:Lcom/stripe/jvmcore/logging/dagger/CompositeTraceLoggerBatchDispatcherModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final providesBatchDispatcher(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .locals 2
    .param p2    # Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/Gator;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
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
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "Lcom/stripe/proto/api/gator/ProxySpanPb;",
            ">;",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;",
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

    const-string v0, "gator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientLogger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observabilityFeatureFlags"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 89
    new-instance v1, Lcom/stripe/jvmcore/logging/CompositeDispatcher;

    invoke-direct {v1, p3, p2, p5}, Lcom/stripe/jvmcore/logging/CompositeDispatcher;-><init>(Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;)V

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    .line 87
    invoke-direct {v0, p1, v1, p4, p6}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;-><init>(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)V

    return-object v0
.end method
