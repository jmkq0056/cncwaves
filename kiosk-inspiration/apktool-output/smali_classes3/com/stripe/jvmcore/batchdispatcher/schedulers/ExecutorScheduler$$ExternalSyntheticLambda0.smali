.class public final synthetic Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;

.field public final synthetic f$1:Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;

    iput-object p2, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$$ExternalSyntheticLambda0;->f$1:Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;

    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler$$ExternalSyntheticLambda0;->f$1:Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;->$r8$lambda$ihVXBloEZRQGSDfDlZ5VBnJEcCE(Lcom/stripe/jvmcore/batchdispatcher/schedulers/ExecutorScheduler;Lcom/stripe/jvmcore/batchdispatcher/Scheduler$Callback;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
