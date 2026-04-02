.class final Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BbposApplicator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlinx/coroutines/flow/Flow<",
        "+",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "stepProgress",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.stripe.core.readerupdate.BbposApplicatorImpl$apply$2$1"
    f = "BbposApplicator.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $i:I

.field final synthetic $image:Lcom/stripe/core/readerupdate/UpdatePackage;

.field final synthetic $update:Lcom/stripe/core/readerupdate/Update;

.field synthetic F$0:F

.field label:I

.field final synthetic this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;


# direct methods
.method constructor <init>(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;Lcom/stripe/core/readerupdate/Update;ILcom/stripe/core/readerupdate/UpdatePackage;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/BbposApplicatorImpl;",
            "Lcom/stripe/core/readerupdate/Update;",
            "I",
            "Lcom/stripe/core/readerupdate/UpdatePackage;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    iput-object p2, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->$update:Lcom/stripe/core/readerupdate/Update;

    iput p3, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->$i:I

    iput-object p4, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->$image:Lcom/stripe/core/readerupdate/UpdatePackage;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    iget-object v2, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->$update:Lcom/stripe/core/readerupdate/Update;

    iget v3, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->$i:I

    iget-object v4, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->$image:Lcom/stripe/core/readerupdate/UpdatePackage;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;-><init>(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;Lcom/stripe/core/readerupdate/Update;ILcom/stripe/core/readerupdate/UpdatePackage;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->F$0:F

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final invoke(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->invoke(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 113
    iget v0, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget p1, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->F$0:F

    .line 114
    iget-object v0, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->this$0:Lcom/stripe/core/readerupdate/BbposApplicatorImpl;

    iget-object v1, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->$update:Lcom/stripe/core/readerupdate/Update;

    iget v2, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->$i:I

    iget-object v3, p0, Lcom/stripe/core/readerupdate/BbposApplicatorImpl$apply$2$1;->$image:Lcom/stripe/core/readerupdate/UpdatePackage;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/stripe/core/readerupdate/BbposApplicatorImpl;->access$emitProgessStatus(Lcom/stripe/core/readerupdate/BbposApplicatorImpl;FLcom/stripe/core/readerupdate/Update;ILcom/stripe/core/readerupdate/UpdatePackage;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
