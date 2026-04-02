.class final Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NonCardPaymentMethodSelectionLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1$WhenMappings;
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
    value = "SMAP\nNonCardPaymentMethodSelectionLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NonCardPaymentMethodSelectionLogger.kt\ncom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,61:1\n543#2,8:62\n543#2,8:70\n543#2,8:78\n*S KotlinDebug\n*F\n+ 1 NonCardPaymentMethodSelectionLogger.kt\ncom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1\n*L\n51#1:62,8\n52#1:70,8\n53#1:78,8\n*E\n"
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

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1;->$nextState:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;)Lkotlin/Pair;
    .locals 8
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

    .line 25
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getNonCardPaymentMethodTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedNonCardPaymentMethod()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 26
    sget-object v0, Lcom/stripe/paymentcollection/metrics/ActionType;->AUTOMATIC:Lcom/stripe/paymentcollection/metrics/ActionType;

    goto :goto_0

    .line 28
    :cond_0
    sget-object v0, Lcom/stripe/paymentcollection/metrics/ActionType;->CUSTOMER_INPUT:Lcom/stripe/paymentcollection/metrics/ActionType;

    .line 31
    :goto_0
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1;->$nextState:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 47
    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v3, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 36
    :cond_1
    new-instance v1, Lkotlin/Pair;

    .line 37
    sget-object v4, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 38
    iget-object v5, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v5}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object v5

    const/4 v6, -0x1

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/stripe/paymentcollection/CancelReason;->ordinal()I

    move-result v5

    aget v5, v7, v5

    :goto_1
    if-eq v5, v6, :cond_6

    if-eq v5, v2, :cond_5

    if-eq v5, v3, :cond_4

    const/4 v2, 0x3

    if-ne v5, v2, :cond_3

    .line 43
    sget-object v2, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;

    goto :goto_2

    .line 44
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 42
    :cond_4
    sget-object v2, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;

    goto :goto_2

    .line 40
    :cond_5
    sget-object v2, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;

    goto :goto_2

    .line 44
    :cond_6
    sget-object v2, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;

    .line 36
    :goto_2
    invoke-direct {v1, v4, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 32
    :cond_7
    new-instance v1, Lkotlin/Pair;

    .line 33
    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    const/4 v3, 0x0

    .line 32
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    :goto_3
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/metrics/Result;

    .line 30
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;

    .line 50
    iget-object v3, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    .line 62
    check-cast v1, Ljava/lang/Enum;

    const-string v4, "MagStripeAllowReason"

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    const-class v5, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 65
    const-class v6, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v4

    goto :goto_4

    :cond_9
    const-class v5, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodSelectionFailureReason;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 66
    invoke-interface {v5}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_5
    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedNonCardPaymentMethod()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    if-nez v1, :cond_a

    goto :goto_7

    .line 70
    :cond_a
    const-class v3, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 73
    const-class v5, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v4

    goto :goto_6

    :cond_b
    const-class v3, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 74
    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :goto_7
    check-cast v0, Ljava/lang/Enum;

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    const-class v1, Lcom/stripe/paymentcollection/metrics/ActionType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 81
    const-class v3, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_8

    :cond_d
    const-class v1, Lcom/stripe/paymentcollection/metrics/ActionType;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 82
    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_9
    new-instance v0, Lkotlin/Pair;

    invoke-static {v2}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
