.class final Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$file$2;
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001\"\u0004\u0008\u0000\u0010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
        "kotlin.jvm.PlatformType",
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
.field final synthetic $fileProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$file$2;->$fileProvider:Ldagger/Lazy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$file$2;->$fileProvider:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/stripe/jvmcore/batchdispatcher/collectors/QueueFileCollector$file$2;->invoke()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
