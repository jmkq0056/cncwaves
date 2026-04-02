.class final Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager$init$1$2;
.super Ljava/lang/Object;
.source "DefaultMposReaderDebugLogManager.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "enabled",
        "",
        "emit",
        "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;"
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager$init$1$2;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 27
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager$init$1$2;->emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emit(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 28
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager$init$1$2;->this$0:Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;

    invoke-static {p2}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;->access$getReaderConnectionController$p(Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderDebugLogManager;)Lcom/stripe/core/hardware/ReaderConnectionController;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/stripe/core/hardware/ReaderConnectionController;->setDebugLogEnabled(Z)V

    .line 29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
