.class public final Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
.super Ljava/lang/Object;
.source "BatchDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBatchDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BatchDispatcher.kt\ncom/stripe/jvmcore/batchdispatcher/BatchDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,214:1\n1#2:215\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u001dB1\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\u0013\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0013J/\u0010\u0010\u001a\u00020\u00112\"\u0010\u0014\u001a\u001e\u0008\u0001\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00170\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0015\u00a2\u0006\u0002\u0010\u0018J\u000e\u0010\u0019\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010\u001aJ\u0006\u0010\u001b\u001a\u00020\u0011J\u0008\u0010\u001c\u001a\u00020\u0011H\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\u000c0\u000fR\u0008\u0012\u0004\u0012\u00028\u00000\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;",
        "T",
        "",
        "collector",
        "Lcom/stripe/jvmcore/batchdispatcher/Collector;",
        "dispatcher",
        "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;",
        "scheduler",
        "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)V",
        "isInitialized",
        "",
        "schedulerCallback",
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;",
        "add",
        "",
        "record",
        "(Ljava/lang/Object;)V",
        "recordSupplier",
        "Lkotlin/Function1;",
        "Lkotlin/coroutines/Continuation;",
        "Lkotlin/Result;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "flushScheduled",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "init",
        "scheduleNext",
        "SchedulerCallback",
        "batchdispatcher"
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
.field private final collector:Lcom/stripe/jvmcore/batchdispatcher/Collector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final dispatcher:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "TT;>;"
        }
    .end annotation
.end field

.field private isInitialized:Z

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final scheduler:Lcom/stripe/jvmcore/batchdispatcher/Scheduler;

.field private final schedulerCallback:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "TT;>.SchedulerCallback;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/Collector;Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;Lcom/stripe/jvmcore/batchdispatcher/Scheduler;Lcom/stripe/logwriter/LogWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/Collector<",
            "TT;>;",
            "Lcom/stripe/jvmcore/batchdispatcher/Dispatcher<",
            "TT;>;",
            "Lcom/stripe/jvmcore/batchdispatcher/Scheduler;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")V"
        }
    .end annotation

    const-string v0, "collector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->collector:Lcom/stripe/jvmcore/batchdispatcher/Collector;

    .line 9
    iput-object p2, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->dispatcher:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    .line 10
    iput-object p3, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->scheduler:Lcom/stripe/jvmcore/batchdispatcher/Scheduler;

    .line 11
    iput-object p4, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 15
    new-instance p1, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;

    invoke-direct {p1, p0}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;-><init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;)V

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->schedulerCallback:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;

    return-void
.end method

.method public static final synthetic access$flushScheduled(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->flushScheduled(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final flushScheduled(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;

    iget v1, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;-><init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 54
    iget v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    const-string v3, "access$getTAG$p(...)"

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    iget-object v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$1:Ljava/lang/Object;

    iget-object v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_2
    iget-object v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v5, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :pswitch_3
    iget-object v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    iget-object v5, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v2, v5

    move-object v5, v6

    goto/16 :goto_6

    :pswitch_4
    iget-object v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v5, v2

    goto :goto_1

    :pswitch_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->collector:Lcom/stripe/jvmcore/batchdispatcher/Collector;

    iput-object p0, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/batchdispatcher/Collector;->peek(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_1

    goto/16 :goto_9

    :cond_1
    move-object v5, p0

    .line 54
    :goto_1
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 55
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v4

    :goto_2
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_9

    .line 56
    :try_start_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object p1, v5

    check-cast p1, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    .line 57
    iget-object p1, v5, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->dispatcher:Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;

    iput-object v5, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    invoke-interface {p1, v2, v0}, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher;->dispatch(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_3

    goto/16 :goto_9

    :cond_3
    move-object v6, v5

    move-object v5, v2

    move-object v2, v6

    .line 54
    :goto_3
    :try_start_3
    check-cast p1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result;

    .line 58
    instance-of v7, p1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Success;

    if-eqz v7, :cond_4

    .line 59
    iget-object p1, v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "Flushed successfully."

    invoke-interface {p1, v7, v8}, Lcom/stripe/logwriter/LogWriter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p1, v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->collector:Lcom/stripe/jvmcore/batchdispatcher/Collector;

    iput-object v6, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    invoke-interface {p1, v5, v0}, Lcom/stripe/jvmcore/batchdispatcher/Collector;->remove(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    goto/16 :goto_9

    .line 62
    :cond_4
    instance-of v7, p1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Retry;

    if-eqz v7, :cond_5

    .line 63
    iget-object p1, v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "Flushed failed, will retry."

    invoke-interface {p1, v2, v7}, Lcom/stripe/logwriter/LogWriter;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 65
    :cond_5
    instance-of p1, p1, Lcom/stripe/jvmcore/batchdispatcher/Dispatcher$Result$Drop;

    if-eqz p1, :cond_6

    .line 66
    iget-object p1, v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "Flushed failed, dropping events."

    invoke-interface {p1, v7, v8}, Lcom/stripe/logwriter/LogWriter;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->collector:Lcom/stripe/jvmcore/batchdispatcher/Collector;

    iput-object v6, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$2:Ljava/lang/Object;

    const/4 v2, 0x4

    iput v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    invoke-interface {p1, v5, v0}, Lcom/stripe/jvmcore/batchdispatcher/Collector;->remove(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_6

    goto :goto_9

    :cond_6
    :goto_4
    move-object v2, v5

    move-object v5, v6

    .line 70
    :goto_5
    :try_start_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 56
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :goto_6
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_7
    move-object v9, v5

    move-object v5, v2

    move-object v2, v9

    .line 70
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 71
    iget-object v7, v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Encountered exception while flushing "

    invoke-interface {v7, v8, v3, v6}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    iget-object v3, v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->collector:Lcom/stripe/jvmcore/batchdispatcher/Collector;

    iput-object v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$2:Ljava/lang/Object;

    const/4 p1, 0x5

    iput p1, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    invoke-interface {v3, v6, v5, v0}, Lcom/stripe/jvmcore/batchdispatcher/Collector;->handleExceptionOnBatch(Ljava/lang/Throwable;Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    goto :goto_9

    .line 75
    :cond_7
    :goto_8
    iget-object p1, v2, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->collector:Lcom/stripe/jvmcore/batchdispatcher/Collector;

    iput-object v2, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->L$2:Ljava/lang/Object;

    const/4 v3, 0x6

    iput v3, v0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/batchdispatcher/Collector;->pruneIfNeeded(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    :goto_9
    return-object v1

    :cond_8
    move-object v0, v2

    :goto_a
    move-object v5, v0

    .line 77
    :cond_9
    invoke-direct {v5}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->scheduleNext()V

    .line 78
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final declared-synchronized scheduleNext()V
    .locals 3

    monitor-enter p0

    .line 82
    :try_start_0
    iget-boolean v0, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->isInitialized:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Not initialized, not scheduling next."

    invoke-interface {v0, v1, v2}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->scheduler:Lcom/stripe/jvmcore/batchdispatcher/Scheduler;

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->schedulerCallback:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;

    check-cast v1, Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;

    invoke-interface {v0, v1}, Lcom/stripe/jvmcore/batchdispatcher/Scheduler;->scheduleNext(Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->collector:Lcom/stripe/jvmcore/batchdispatcher/Collector;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/batchdispatcher/Collector;->collect(Ljava/lang/Object;)V

    return-void
.end method

.method public final add(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "+TT;>;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "recordSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->collector:Lcom/stripe/jvmcore/batchdispatcher/Collector;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/batchdispatcher/Collector;->collect(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final declared-synchronized init()V
    .locals 3

    monitor-enter p0

    .line 24
    :try_start_0
    iget-boolean v0, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcherKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access$getTAG$p(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Already initialized."

    invoke-interface {v0, v1, v2}, Lcom/stripe/logwriter/LogWriter;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 28
    :try_start_1
    iput-boolean v0, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->isInitialized:Z

    .line 30
    invoke-direct {p0}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->scheduleNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
