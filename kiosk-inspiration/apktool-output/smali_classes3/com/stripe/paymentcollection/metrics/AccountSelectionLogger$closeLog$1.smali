.class final Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AccountSelectionLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1$WhenMappings;
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
    value = "SMAP\nAccountSelectionLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountSelectionLogger.kt\ncom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,64:1\n543#2,8:65\n543#2,8:73\n*S KotlinDebug\n*F\n+ 1 AccountSelectionLogger.kt\ncom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1\n*L\n55#1:65,8\n56#1:73,8\n*E\n"
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

.field final synthetic $nextState:Lcom/stripe/paymentcollection/PaymentCollectionState;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1;->$nextState:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;)Lkotlin/Pair;
    .locals 9
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

    .line 27
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShouldAutoSelectAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/stripe/paymentcollection/metrics/ActionType;->AUTOMATIC:Lcom/stripe/paymentcollection/metrics/ActionType;

    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lcom/stripe/paymentcollection/metrics/ActionType;->CUSTOMER_INPUT:Lcom/stripe/paymentcollection/metrics/ActionType;

    .line 33
    :goto_0
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1;->$nextState:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_8

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    .line 51
    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v3, Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 47
    :cond_1
    new-instance v1, Lkotlin/Pair;

    .line 48
    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 49
    sget-object v3, Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;->COLLECTION_FAILURE:Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;

    .line 47
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 38
    :cond_2
    new-instance v1, Lkotlin/Pair;

    .line 39
    sget-object v5, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 40
    iget-object v6, p0, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v6}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object v6

    const/4 v7, -0x1

    if-nez v6, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    sget-object v8, Lcom/stripe/paymentcollection/metrics/AccountSelectionLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v6}, Lcom/stripe/paymentcollection/CancelReason;->ordinal()I

    move-result v6

    aget v6, v8, v6

    :goto_1
    if-eq v6, v7, :cond_7

    if-eq v6, v2, :cond_6

    if-eq v6, v4, :cond_5

    if-ne v6, v3, :cond_4

    .line 43
    sget-object v2, Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;

    goto :goto_2

    .line 44
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 42
    :cond_5
    sget-object v2, Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;

    goto :goto_2

    .line 41
    :cond_6
    sget-object v2, Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;

    goto :goto_2

    .line 44
    :cond_7
    sget-object v2, Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;

    .line 38
    :goto_2
    invoke-direct {v1, v5, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 34
    :cond_8
    new-instance v1, Lkotlin/Pair;

    .line 35
    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v3, 0x0

    .line 34
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    :goto_3
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/metrics/Result;

    .line 32
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;

    .line 65
    check-cast v0, Ljava/lang/Enum;

    const-string v3, "MagStripeAllowReason"

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    const-class v4, Lcom/stripe/paymentcollection/metrics/ActionType;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 68
    const-class v5, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v3

    goto :goto_4

    :cond_a
    const-class v4, Lcom/stripe/paymentcollection/metrics/ActionType;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 69
    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_5
    check-cast v1, Ljava/lang/Enum;

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    const-class v0, Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 76
    const-class v4, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    const-class v0, Lcom/stripe/paymentcollection/metrics/AccountSelectionFailureReason;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_7
    new-instance v0, Lkotlin/Pair;

    invoke-static {v2}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
