.class public final Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;
.super Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;
.source "DefaultLogger.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "R:",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "L::Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation<",
        "T",
        "L;",
        ">;>",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger<",
        "TT;TR;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultLogger.kt\ncom/stripe/jvmcore/logging/terminal/log/DefaultLogger\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,97:1\n1#2:98\n1855#3,2:99\n1855#3,2:101\n*S KotlinDebug\n*F\n+ 1 DefaultLogger.kt\ncom/stripe/jvmcore/logging/terminal/log/DefaultLogger\n*L\n57#1:99,2\n90#1:101,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0006\u0018\u0000 )*\u0008\u0008\u0000\u0010\u0001*\u00020\u0002*\u0008\u0008\u0001\u0010\u0003*\u00020\u0004*\u000e\u0008\u0002\u0010\u0005*\u0008\u0012\u0004\u0012\u0002H\u00050\u00062\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0007:\u0001)Bg\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0011\u0012\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0013\u0012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0015\u00a2\u0006\u0002\u0010\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0008\u0010\u0019\u001a\u00020\u0018H\u0016J\u001d\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00028\u00012\u0006\u0010\u001c\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010\u001dJ\u0008\u0010\u001e\u001a\u00020\u0018H\u0016J$\u0010\u001f\u001a\u00020\u00182\u0008\u0010 \u001a\u0004\u0018\u00010\t2\u0006\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010%\u001a\u00020\u0018H\u0016J\u001d\u0010&\u001a\u00020\u00182\u0006\u0010\'\u001a\u00028\u00002\u0006\u0010\u001c\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010(R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;",
        "T",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "R",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "L",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;",
        "className",
        "",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "repository",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "operationFactory",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;",
        "operationCollector",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;",
        "helper",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;",
        "(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;)V",
        "endAllOperations",
        "",
        "endLongRunningOperations",
        "endOperation",
        "applicationTraceResult",
        "identifier",
        "(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V",
        "flushPending",
        "log",
        "message",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "throwable",
        "",
        "onShutDown",
        "startOperation",
        "applicationTrace",
        "(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger$Companion;

.field private static final FLUSH_IDENTIFIER:Ljava/lang/String; = "flush_operation"


# instance fields
.field private final clock:Lcom/stripe/time/Clock;

.field private final helper:Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field private final operationCollector:Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "TR;T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final operationFactory:Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
            "TT;T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
            "T",
            "L;",
            ">;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory<",
            "-TT;T",
            "L;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector<",
            "-TR;T",
            "L;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper<",
            "+TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operationCollector"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "helper"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultSimpleLogger;-><init>(Ljava/lang/String;Lcom/stripe/logwriter/LogWriter;)V

    .line 26
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->repository:Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    .line 27
    iput-object p4, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->clock:Lcom/stripe/time/Clock;

    .line 28
    iput-object p5, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->operationFactory:Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;

    .line 29
    iput-object p6, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->operationCollector:Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    .line 30
    iput-object p7, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->helper:Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    return-void
.end method


# virtual methods
.method public declared-synchronized endAllOperations()V
    .locals 5

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->repository:Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;->removeAll()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 99
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    .line 58
    iget-object v2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->operationCollector:Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->helper:Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    invoke-interface {v3}, Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;->getInterruptedTraceResult()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v1, v4}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;->collect(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized endLongRunningOperations()V
    .locals 5

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->repository:Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;->getLongRunningOperations(J)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 101
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    .line 90
    iget-object v2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->operationCollector:Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    iget-object v3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->helper:Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    invoke-interface {v3}, Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;->getFlushTraceResult()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;->collect(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 91
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "applicationTraceResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->repository:Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    invoke-interface {v0, p2}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;->remove(Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->operationCollector:Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;

    const/4 v1, 0x1

    invoke-interface {v0, p1, p2, v1}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationCollector;->collect(Lcom/stripe/loggingmodels/ApplicationTraceResult;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized flushPending()V
    .locals 2

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->repository:Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;->hasPendingLogs()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->repository:Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;->hasSavedOperations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->helper:Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;->getFlushTrace()Lcom/stripe/loggingmodels/ApplicationTrace;

    move-result-object v0

    const-string v1, "flush_operation"

    invoke-virtual {p0, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->helper:Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    invoke-interface {v0}, Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;->getFlushTraceResult()Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v0

    const-string v1, "flush_operation"

    invoke-virtual {p0, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized log(Ljava/lang/String;Lcom/stripe/loggingmodels/LogLevel;Ljava/lang/Throwable;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v0, "logLevel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->repository:Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, p1

    move-object v4, p2

    move-object v3, p3

    invoke-interface/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;->addLog(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized onShutDown()V
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->flushPending()V

    .line 84
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->endAllOperations()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized startOperation(Lcom/stripe/loggingmodels/ApplicationTrace;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "applicationTrace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->repository:Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    invoke-interface {v0, p2}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;->operationExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->helper:Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;

    invoke-interface {v0, p2}, Lcom/stripe/jvmcore/logging/terminal/contracts/LoggerHelper;->duplicateTraceResult(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0, p2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->endOperation(Lcom/stripe/loggingmodels/ApplicationTraceResult;Ljava/lang/String;)V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->operationFactory:Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperationFactory;->create(Lcom/stripe/loggingmodels/ApplicationTrace;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogger;->repository:Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;

    invoke-interface {v0, p2, p1}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;->add(Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
