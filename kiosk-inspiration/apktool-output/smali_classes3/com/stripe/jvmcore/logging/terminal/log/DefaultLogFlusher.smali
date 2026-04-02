.class public final Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;
.super Ljava/lang/Object;
.source "LogFlusher.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$Companion;,
        Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportEventJob;,
        Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogFlusher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogFlusher.kt\ncom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,188:1\n1855#2,2:189\n*S KotlinDebug\n*F\n+ 1 LogFlusher.kt\ncom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher\n*L\n44#1:189,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\u0018\u0000 \u001d2\u00020\u0001:\u0003\u001d\u001e\u001fB\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u000e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0011H\u0002J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u000e\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\rJ\u0016\u0010\u0017\u001a\u00020\u00142\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\r0\u0011H\u0016J\u000e\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u000fJ\u0016\u0010\u001b\u001a\u00020\u00142\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;",
        "logUploader",
        "Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "executor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "delayMs",
        "",
        "(Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;J)V",
        "pendingEvents",
        "",
        "Lcom/stripe/jvmcore/logging/terminal/log/Event;",
        "pendingSpans",
        "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
        "clearPendingEvents",
        "",
        "clearPendingTraces",
        "stopExecutingJobs",
        "",
        "submitEvent",
        "event",
        "submitEvents",
        "events",
        "submitTrace",
        "span",
        "submitTraces",
        "spans",
        "Companion",
        "ReportEventJob",
        "ReportTraceJob",
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
.field public static final Companion:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$Companion;

.field private static final DEFAULT_FLUSH_DELAY_MS:J = 0xea60L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final logUploader:Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final pendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Event;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$Companion;

    .line 183
    const-class v0, Lcom/stripe/jvmcore/logging/terminal/log/LogFlusher;

    const-string v0, "getSimpleName(...)"

    const-string v1, "LogFlusher"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;J)V
    .locals 7

    const-string v0, "logUploader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->logUploader:Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;

    .line 33
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 34
    iput-object p3, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->pendingEvents:Ljava/util/List;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->pendingSpans:Ljava/util/List;

    const/4 p1, 0x2

    .line 42
    new-array p1, p1, [Ljava/lang/Runnable;

    new-instance p2, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;

    invoke-direct {p2, p0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 43
    new-instance p2, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportEventJob;

    invoke-direct {p2, p0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportEventJob;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)V

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 41
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 189
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/Runnable;

    .line 45
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, p4

    move-wide v2, p4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/32 p4, 0xea60

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;Lcom/stripe/logwriter/LogWriter;Ljava/util/concurrent/ScheduledExecutorService;J)V

    return-void
.end method

.method public static final synthetic access$clearPendingEvents(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->clearPendingEvents()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$clearPendingTraces(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)Ljava/util/List;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->clearPendingTraces()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLogUploader$p(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->logUploader:Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;

    return-object p0
.end method

.method public static final synthetic access$getLogWriter$p(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)Lcom/stripe/logwriter/LogWriter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->logWriter:Lcom/stripe/logwriter/LogWriter;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final declared-synchronized clearPendingEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Event;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->pendingEvents:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 97
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->pendingEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 98
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized clearPendingTraces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->pendingSpans:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->pendingSpans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 110
    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized stopExecutingJobs()V
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
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

.method public final declared-synchronized submitEvent(Lcom/stripe/jvmcore/logging/terminal/log/Event;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->pendingEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
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

.method public declared-synchronized submitEvents(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Event;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->pendingEvents:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
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

.method public final declared-synchronized submitTrace(Lcom/stripe/jvmcore/logging/terminal/log/Span;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "span"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->pendingSpans:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
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

.method public declared-synchronized submitTraces(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/log/Span;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "spans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->pendingSpans:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
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
