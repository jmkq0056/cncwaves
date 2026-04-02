.class final Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1;
.super Ljava/lang/Object;
.source "DefaultMposReaderEventLogger.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
        "emit",
        "(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 141
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;

    invoke-static {p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;->access$getStructuredEventLogger$p(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger;)Lcom/stripe/loggingmodels/StructuredEventLogger;

    move-result-object v0

    .line 142
    invoke-interface {p1}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;->getEventData()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;

    move-result-object v1

    .line 141
    new-instance p2, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1$1;

    invoke-direct {p2, p1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1$1;-><init>(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;)V

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "MposReaderEventLogger"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/loggingmodels/StructuredEventLogger;->log$default(Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 151
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1;->emit(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
