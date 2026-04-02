.class final Lcom/stripe/core/readerupdate/UpdateInstaller$install$1$1;
.super Ljava/lang/Object;
.source "UpdateInstaller.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/UpdateInstaller$install$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "progressStatus",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "emit",
        "(Lcom/stripe/core/readerupdate/ProgressStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
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
.field final synthetic this$0:Lcom/stripe/core/readerupdate/UpdateInstaller;


# direct methods
.method constructor <init>(Lcom/stripe/core/readerupdate/UpdateInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/core/readerupdate/UpdateInstaller$install$1$1;->this$0:Lcom/stripe/core/readerupdate/UpdateInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/stripe/core/readerupdate/ProgressStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 71
    instance-of p2, p1, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;

    if-eqz p2, :cond_0

    .line 72
    iget-object p2, p0, Lcom/stripe/core/readerupdate/UpdateInstaller$install$1$1;->this$0:Lcom/stripe/core/readerupdate/UpdateInstaller;

    invoke-static {p2}, Lcom/stripe/core/readerupdate/UpdateInstaller;->access$getReaderUpdateProgressPublishable$p(Lcom/stripe/core/readerupdate/UpdateInstaller;)Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p2

    check-cast p1, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->getValue()F

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_0
    instance-of p2, p1, Lcom/stripe/core/readerupdate/ProgressStatus$Error;

    if-nez p2, :cond_2

    .line 77
    instance-of p2, p1, Lcom/stripe/core/readerupdate/ProgressStatus$Success;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    instance-of p1, p1, Lcom/stripe/core/readerupdate/ProgressStatus$Start;

    .line 82
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 75
    :cond_2
    check-cast p1, Lcom/stripe/core/readerupdate/ProgressStatus$Error;

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/ProgressStatus$Error;->getException()Ljava/lang/Throwable;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 69
    check-cast p1, Lcom/stripe/core/readerupdate/ProgressStatus;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/UpdateInstaller$install$1$1;->emit(Lcom/stripe/core/readerupdate/ProgressStatus;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
