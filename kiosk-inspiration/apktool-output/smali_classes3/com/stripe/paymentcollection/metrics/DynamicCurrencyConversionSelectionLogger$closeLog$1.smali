.class final Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DynamicCurrencyConversionSelectionLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1$WhenMappings;
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
    value = "SMAP\nDynamicCurrencyConversionSelectionLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicCurrencyConversionSelectionLogger.kt\ncom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,65:1\n543#2,8:66\n543#2,8:74\n*S KotlinDebug\n*F\n+ 1 DynamicCurrencyConversionSelectionLogger.kt\ncom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1\n*L\n51#1:66,8\n52#1:74,8\n*E\n"
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

.field final synthetic $selection:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionResult;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionState;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1;->$nextState:Lcom/stripe/paymentcollection/PaymentCollectionState;

    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    iput-object p3, p0, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1;->$selection:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionResult;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;)Lkotlin/Pair;
    .locals 7
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

    .line 30
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1;->$nextState:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 47
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 35
    :cond_0
    new-instance v0, Lkotlin/Pair;

    .line 36
    sget-object v3, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 37
    iget-object v4, p0, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object v4

    const/4 v5, -0x1

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/CancelReason;->ordinal()I

    move-result v4

    aget v4, v6, v4

    :goto_0
    if-eq v4, v5, :cond_5

    if-eq v4, v1, :cond_4

    if-eq v4, v2, :cond_3

    const/4 v1, 0x3

    if-ne v4, v1, :cond_2

    .line 43
    sget-object v1, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;

    goto :goto_1

    .line 44
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 41
    :cond_3
    sget-object v1, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;

    goto :goto_1

    .line 39
    :cond_4
    sget-object v1, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;

    goto :goto_1

    .line 44
    :cond_5
    sget-object v1, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;

    .line 35
    :goto_1
    invoke-direct {v0, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 31
    :cond_6
    new-instance v0, Lkotlin/Pair;

    .line 32
    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v2, 0x0

    .line 31
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    :goto_2
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/Result;

    .line 29
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;

    .line 50
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1;->$selection:Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionResult;

    iget-object v3, p0, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    .line 66
    check-cast v2, Ljava/lang/Enum;

    const-string v4, "MagStripeAllowReason"

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    const-class v5, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionResult;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 69
    const-class v6, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v4

    goto :goto_3

    :cond_8
    const-class v5, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionResult;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 70
    invoke-interface {v5}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_4
    check-cast v0, Ljava/lang/Enum;

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    const-class v2, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 77
    const-class v5, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    const-class v2, Lcom/stripe/paymentcollection/metrics/DynamicCurrencyConversionSelectionFailureReason;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 78
    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :goto_6
    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getDynamicCurrencyConversionData()Lcom/stripe/transaction/DynamicCurrencyConversionData;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 54
    invoke-virtual {v0}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getRequestExtendedAuth()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExtendedAuthEnabled"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v0}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getRequestIncrementalAuth()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IncrementalAuthEnabled"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v0}, Lcom/stripe/transaction/DynamicCurrencyConversionData;->getSetupFutureUsage()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SetupFutureUsageEnabled"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_b
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
