.class final Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;
.super Ljava/lang/Object;
.source "BatchDispatcher.kt"

# interfaces
.implements Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SchedulerCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u0004H\u0096@\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;",
        "Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;",
        "(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;)V",
        "flush",
        "",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.field final synthetic this$0:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;->this$0:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public flush(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
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

    .line 91
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$SchedulerCallback;->this$0:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-static {v0, p1}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->access$flushScheduled(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
