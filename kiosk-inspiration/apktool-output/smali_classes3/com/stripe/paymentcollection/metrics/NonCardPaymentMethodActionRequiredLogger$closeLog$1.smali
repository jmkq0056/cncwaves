.class final Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NonCardPaymentMethodActionRequiredLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/PaymentCollectionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1$WhenMappings;
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
    value = "SMAP\nNonCardPaymentMethodActionRequiredLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NonCardPaymentMethodActionRequiredLogger.kt\ncom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,64:1\n543#2,8:65\n543#2,8:73\n1#3:81\n*S KotlinDebug\n*F\n+ 1 NonCardPaymentMethodActionRequiredLogger.kt\ncom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1\n*L\n54#1:65,8\n55#1:73,8\n*E\n"
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

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1;->$nextState:Lcom/stripe/paymentcollection/PaymentCollectionState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

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

    .line 26
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getChargeAttempt()Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v0

    instance-of v1, v0, Lcom/stripe/transaction/NonCardPaymentMethodCompletedAttempt;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/stripe/transaction/NonCardPaymentMethodCompletedAttempt;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/stripe/transaction/NonCardPaymentMethodCompletedAttempt;->getCompletionMethod()Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 30
    :goto_1
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1;->$nextState:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v3, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne v1, v3, :cond_2

    new-instance v1, Lkotlin/Pair;

    .line 31
    sget-object v3, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    .line 30
    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 34
    :cond_2
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isTimedOut()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lkotlin/Pair;

    .line 35
    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 36
    sget-object v3, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;

    .line 34
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 38
    :cond_3
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1;->$nextState:Lcom/stripe/paymentcollection/PaymentCollectionState;

    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->CANCEL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    if-ne v1, v2, :cond_9

    new-instance v1, Lkotlin/Pair;

    .line 39
    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 40
    iget-object v3, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object v3

    const/4 v4, -0x1

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/CancelReason;->ordinal()I

    move-result v3

    aget v3, v5, v3

    :goto_2
    if-eq v3, v4, :cond_8

    const/4 v4, 0x1

    if-eq v3, v4, :cond_7

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 46
    sget-object v3, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;

    goto :goto_3

    .line 47
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 44
    :cond_6
    sget-object v3, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;

    goto :goto_3

    .line 42
    :cond_7
    sget-object v3, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;

    goto :goto_3

    .line 47
    :cond_8
    sget-object v3, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;

    .line 38
    :goto_3
    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    .line 50
    :cond_9
    new-instance v1, Lkotlin/Pair;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v3, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    :goto_4
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/metrics/Result;

    .line 28
    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;

    .line 53
    iget-object v3, p0, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    .line 54
    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getSelectedNonCardPaymentMethod()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 65
    const-string v4, "MagStripeAllowReason"

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    const-class v5, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 68
    const-class v6, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v5, v4

    goto :goto_5

    :cond_b
    const-class v5, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    .line 69
    invoke-interface {v5}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    :goto_5
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_6
    check-cast v1, Ljava/lang/Enum;

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    const-class v3, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 76
    const-class v5, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_d
    const-class v3, Lcom/stripe/paymentcollection/metrics/NonCardPaymentMethodActionRequiredFailureReason;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    .line 77
    invoke-interface {v3}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    :goto_7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    if-eqz v0, :cond_e

    .line 56
    const-string v1, "CompletionMethod"

    invoke-virtual {v0}, Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_e
    new-instance v0, Lkotlin/Pair;

    invoke-static {v2}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
