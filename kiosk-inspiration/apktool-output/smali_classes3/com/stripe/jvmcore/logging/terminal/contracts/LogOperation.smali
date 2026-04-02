.class public interface abstract Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;
.super Ljava/lang/Object;
.source "LogOperation.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogOperation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LogOperation.kt\ncom/stripe/jvmcore/logging/terminal/contracts/LogOperation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n1549#2:49\n1620#2,3:50\n1747#2,3:53\n*S KotlinDebug\n*F\n+ 1 LogOperation.kt\ncom/stripe/jvmcore/logging/terminal/contracts/LogOperation\n*L\n39#1:49\n39#1:50,3\n39#1:53,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002J\u001a\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\tH\u0016J,\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\tH&J\u0015\u0010\u0018\u001a\u00028\u00002\u0006\u0010\u0008\u001a\u00020\tH&\u00a2\u0006\u0002\u0010\u0019R\u0018\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001a\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
        "T",
        "",
        "logPoints",
        "",
        "Lcom/stripe/loggingmodels/LogPoint;",
        "getLogPoints",
        "()Ljava/util/List;",
        "startTimeMs",
        "",
        "getStartTimeMs",
        "()J",
        "isLongRunning",
        "",
        "currentTimeMillis",
        "maxRunningTimeMs",
        "log",
        "",
        "message",
        "",
        "throwable",
        "",
        "level",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "new",
        "(J)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic isLongRunning$default(Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;JJILjava/lang/Object;)Z
    .locals 0

    if-nez p6, :cond_1

    const/4 p6, 0x2

    and-int/2addr p5, p6

    if-eqz p5, :cond_0

    .line 37
    sget-object p3, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    sget-object p3, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {p6, p3}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide p3

    invoke-static {p3, p4}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    move-result-wide p3

    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;->isLongRunning(JJ)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: isLongRunning"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getLogPoints()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/loggingmodels/LogPoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartTimeMs()J
.end method

.method public isLongRunning(JJ)Z
    .locals 2

    .line 38
    invoke-interface {p0}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;->getStartTimeMs()J

    move-result-wide v0

    sub-long/2addr p1, v0

    cmp-long p1, p1, p3

    if-lez p1, :cond_3

    .line 39
    invoke-interface {p0}, Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;->getLogPoints()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 51
    check-cast p3, Lcom/stripe/loggingmodels/LogPoint;

    .line 39
    invoke-virtual {p3}, Lcom/stripe/loggingmodels/LogPoint;->getLogLevel()Lcom/stripe/loggingmodels/LogLevel;

    move-result-object p3

    .line 51
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    check-cast p2, Ljava/util/List;

    .line 49
    check-cast p2, Ljava/lang/Iterable;

    .line 53
    instance-of p1, p2, Ljava/util/Collection;

    if-eqz p1, :cond_1

    move-object p1, p2

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/stripe/loggingmodels/LogLevel;

    .line 39
    sget-object p3, Lcom/stripe/loggingmodels/LogLevel;->NONE:Lcom/stripe/loggingmodels/LogLevel;

    if-eq p2, p3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract log(Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/loggingmodels/LogLevel;J)V
.end method

.method public abstract new(J)Lcom/stripe/jvmcore/logging/terminal/contracts/LogOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation
.end method
