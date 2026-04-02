.class final Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$usedBytesMethod$2;
.super Lkotlin/jvm/internal/Lambda;
.source "QueueFileCollector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;-><init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Serializer;Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$Configuration;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/loggingmodels/LoggerExceptionListener;Lcom/stripe/logwriter/LogWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Ljava/lang/reflect/Method;",
        "T",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$usedBytesMethod$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$usedBytesMethod$2;->invoke()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/reflect/Method;
    .locals 4

    .line 63
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const-class v0, Lcom/squareup/tape2/QueueFile;

    .line 64
    const-string v1, "usedBytes"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$usedBytesMethod$2;->this$0:Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;

    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    invoke-static {v1}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;->access$getLogWriter$p(Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v0

    invoke-static {}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollectorKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v3, "access$getTAG$p(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Failed to lookup private QueueFile#usedBytes() API."

    invoke-interface {v0, v1, v3, v2}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 67
    :goto_1
    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method
