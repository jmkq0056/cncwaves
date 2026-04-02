.class final Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "KernelProcessingEventLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Pair<",
        "+",
        "Lcom/stripe/loggingmodels/Outcome;",
        "+",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKernelProcessingEventLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KernelProcessingEventLogger.kt\ncom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,220:1\n543#2,8:221\n*S KotlinDebug\n*F\n+ 1 KernelProcessingEventLogger.kt\ncom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1\n*L\n132#1:221,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u00030\u00012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "Lcom/stripe/loggingmodels/Outcome;",
        "",
        "",
        "tagMap",
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
.field final synthetic $data:Lcom/stripe/paymentcollection/PaymentCollectionData;

.field final synthetic $eventName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionData;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1;->$eventName:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 115
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Pair<",
            "Lcom/stripe/loggingmodels/Outcome;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "tagMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 120
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/CancelReason;->ordinal()I

    move-result v2

    aget v2, v4, v2

    :goto_0
    if-eq v2, v3, :cond_4

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 123
    sget-object v2, Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;

    goto :goto_1

    .line 124
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 122
    :cond_2
    sget-object v2, Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;

    goto :goto_1

    .line 121
    :cond_3
    sget-object v2, Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;

    goto :goto_1

    .line 124
    :cond_4
    sget-object v2, Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;

    .line 119
    :goto_1
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isTimedOut()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 128
    :cond_6
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :goto_2
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/Result;

    .line 117
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;

    .line 131
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/KernelProcessingEventLogger$closeLog$1;->$eventName:Ljava/lang/String;

    .line 221
    check-cast v0, Ljava/lang/Enum;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    const-class v3, Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 224
    const-class v4, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "MagStripeAllowReason"

    goto :goto_3

    :cond_8
    const-class v3, Lcom/stripe/paymentcollection/metrics/KernelProcessingFailureReason;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 225
    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 227
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_4
    const-string v0, "KernelProcessingResult"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
