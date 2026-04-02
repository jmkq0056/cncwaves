.class public final Lcom/stripe/core/readerupdate/ProgressStatusKt;
.super Ljava/lang/Object;
.source "ProgressStatus.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProgressStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProgressStatus.kt\ncom/stripe/core/readerupdate/ProgressStatusKt\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,34:1\n35#2,6:35\n1603#3,9:41\n1855#3:50\n1856#3:52\n1612#3:53\n1#4:51\n*S KotlinDebug\n*F\n+ 1 ProgressStatus.kt\ncom/stripe/core/readerupdate/ProgressStatusKt\n*L\n15#1:35,6\n26#1:41,9\n26#1:50\n26#1:52\n26#1:53\n26#1:51\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u001a\u0016\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0001\u001a\u001e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0005*\u0008\u0012\u0004\u0012\u00020\u00030\u0001H\u0086@\u00a2\u0006\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "toFloatFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "",
        "Lcom/stripe/core/readerupdate/ProgressStatus;",
        "toFloatList",
        "",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "readerupdate_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toFloatFlow(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatFlow$$inlined$transform$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatFlow$$inlined$transform$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final toFloatList(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+",
            "Lcom/stripe/core/readerupdate/ProgressStatus;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatList$1;

    iget v1, v0, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatList$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatList$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatList$1;

    invoke-direct {v0, p1}, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatList$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 25
    iget v2, v0, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatList$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    iput v4, v0, Lcom/stripe/core/readerupdate/ProgressStatusKt$toFloatList$1;->label:I

    invoke-static {p0, v3, v0, v4, v3}, Lkotlinx/coroutines/flow/FlowKt;->toList$default(Lkotlinx/coroutines/flow/Flow;Ljava/util/List;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 25
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    .line 41
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/Collection;

    .line 50
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Lcom/stripe/core/readerupdate/ProgressStatus;

    .line 28
    instance-of v1, v0, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/ProgressStatus$Progress;->getValue()F

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_4

    .line 29
    :cond_5
    instance-of v1, v0, Lcom/stripe/core/readerupdate/ProgressStatus$Error;

    if-nez v1, :cond_8

    .line 30
    instance-of v1, v0, Lcom/stripe/core/readerupdate/ProgressStatus$Start;

    if-eqz v1, :cond_6

    move v0, v4

    goto :goto_3

    .line 31
    :cond_6
    instance-of v0, v0, Lcom/stripe/core/readerupdate/ProgressStatus$Success;

    :goto_3
    if-eqz v0, :cond_7

    move-object v0, v3

    :goto_4
    if-eqz v0, :cond_4

    .line 49
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 31
    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 29
    :cond_8
    check-cast v0, Lcom/stripe/core/readerupdate/ProgressStatus$Error;

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/ProgressStatus$Error;->getException()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 53
    :cond_9
    check-cast p0, Ljava/util/List;

    return-object p0
.end method
