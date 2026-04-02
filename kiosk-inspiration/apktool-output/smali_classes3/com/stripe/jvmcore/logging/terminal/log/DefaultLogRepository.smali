.class public final Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;
.super Ljava/lang/Object;
.source "DefaultLogRepository.kt"

# interfaces
.implements Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultLogRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultLogRepository.kt\ncom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,103:1\n1#2:104\n1#2:117\n1855#3,2:105\n1855#3,2:107\n494#4,7:109\n563#5:116\n*S KotlinDebug\n*F\n+ 1 DefaultLogRepository.kt\ncom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository\n*L\n79#1:117\n48#1:105,2\n70#1:107,2\n78#1:109,7\n79#1:116\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u000f\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u001d\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0011J,\u0010\u0012\u001a\u00020\u000e2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0016\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001b2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\u0008\u0010\u001e\u001a\u00020\u001dH\u0016J\u0010\u0010\u001f\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\tH\u0016J\u0017\u0010 \u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000f\u001a\u00020\tH\u0016\u00a2\u0006\u0002\u0010!J\u000e\u0010\"\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00028\u00000\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;",
        "T",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogRepository;",
        "idGenerator",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;",
        "(Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;)V",
        "logOperations",
        "",
        "",
        "pendingLogPoints",
        "",
        "Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;",
        "add",
        "",
        "id",
        "data",
        "(Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;)V",
        "addLog",
        "message",
        "throwable",
        "",
        "level",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "currentTimeMillis",
        "",
        "getLongRunningOperations",
        "",
        "hasPendingLogs",
        "",
        "hasSavedOperations",
        "operationExists",
        "remove",
        "(Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
        "removeAll",
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
.field private final idGenerator:Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;

.field private final logOperations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pendingLogPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;-><init>(Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;)V
    .locals 1

    const-string v0, "idGenerator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->idGenerator:Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;

    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->logOperations:Ljava/util/Map;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->pendingLogPoints:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 16
    new-instance p1, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogReferenceGenerator;

    invoke-direct {p1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogReferenceGenerator;-><init>()V

    check-cast p1, Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;

    .line 15
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;-><init>(Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->logOperations:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->hasPendingLogs()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->pendingLogPoints:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    .line 107
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;

    .line 70
    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->getLogLevel()Lcom/stripe/loggingmodels/LogLevel;

    move-result-object v4

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;->getCurrentTimeMillis()J

    move-result-wide v5

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;->log(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V

    move-object p2, v1

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->pendingLogPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
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

.method public declared-synchronized addLog(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string v0, "level"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->logOperations:Ljava/util/Map;

    .line 46
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    .line 105
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    .line 48
    invoke-interface/range {v2 .. v7}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;->log(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V

    move-object p1, v3

    move-object p2, v4

    move-object p3, v5

    move-wide p4, v6

    goto :goto_1

    :cond_1
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    .line 50
    iget-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->pendingLogPoints:Ljava/util/List;

    move-wide v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    new-instance v3, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;

    invoke-direct/range {v3 .. v8}, Lcom/stripe/jvmcore/logging/terminal/models/PendingLogPoint;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_2
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

.method public declared-synchronized getLongRunningOperations(J)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->logOperations:Ljava/util/Map;

    .line 109
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 110
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 111
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-wide/16 v7, 0x0

    move-wide v5, p1

    .line 78
    invoke-static/range {v4 .. v10}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;->isLongRunning$default(Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;JJILjava/lang/Object;)Z

    move-result p1

    move-wide v7, v5

    if-eqz p1, :cond_0

    .line 112
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    move-wide p1, v7

    goto :goto_0

    :cond_1
    move-wide v7, p1

    .line 115
    check-cast v1, Ljava/util/Map;

    .line 116
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    .line 81
    iget-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->idGenerator:Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;

    invoke-interface {p2}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogReferenceIdGenerator;->uniqueId()Ljava/lang/String;

    move-result-object p2

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuing in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    sget-object v6, Lcom/stripe/loggingmodels/LogLevel;->NONE:Lcom/stripe/loggingmodels/LogLevel;

    const/4 v5, 0x0

    .line 83
    invoke-interface/range {v3 .. v8}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;->log(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V

    .line 90
    iget-object v2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->logOperations:Ljava/util/Map;

    invoke-interface {v3, v7, v8}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;->new(J)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;

    move-result-object v3

    .line 92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Continuing from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    sget-object v6, Lcom/stripe/loggingmodels/LogLevel;->NONE:Lcom/stripe/loggingmodels/LogLevel;

    const/4 v5, 0x0

    .line 91
    invoke-interface/range {v3 .. v8}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;->log(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V

    .line 90
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 99
    :cond_2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 100
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized hasPendingLogs()Z
    .locals 1

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->pendingLogPoints:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized hasSavedOperations()Z
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->logOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized operationExists(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->logOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->logOperations:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->hasSavedOperations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->logOperations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogRepository;->logOperations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :goto_0
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
