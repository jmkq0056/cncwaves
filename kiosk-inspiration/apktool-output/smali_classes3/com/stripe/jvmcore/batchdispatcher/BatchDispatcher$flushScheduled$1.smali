.class final Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "BatchDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->flushScheduled(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.jvmcore.batchdispatcher.BatchDispatcher"
    f = "BatchDispatcher.kt"
    i = {
        0x0,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x3,
        0x3,
        0x4,
        0x5
    }
    l = {
        0x37,
        0x39,
        0x3c,
        0x43,
        0x48,
        0x4b
    }
    m = "flushScheduled"
    n = {
        "this",
        "this",
        "batch",
        "$this$flushScheduled_u24lambda_u242_u24lambda_u240",
        "this",
        "batch",
        "this",
        "batch",
        "this",
        "this"
    }
    s = {
        "L$0",
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$0",
        "L$1",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->this$0:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->label:I

    iget-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher$flushScheduled$1;->this$0:Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;

    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    invoke-static {p1, v0}, Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;->access$flushScheduled(Lcom/stripe/jvmcore/batchdispatcher/BatchDispatcher;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
