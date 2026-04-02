.class final Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WaitForCardPresentLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1$WhenMappings;
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
    value = "SMAP\nWaitForCardPresentLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaitForCardPresentLogger.kt\ncom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,65:1\n543#2,8:66\n543#2,8:74\n*S KotlinDebug\n*F\n+ 1 WaitForCardPresentLogger.kt\ncom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1\n*L\n56#1:66,8\n57#1:74,8\n*E\n"
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


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

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

    .line 32
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    new-instance v0, Lkotlin/Triple;

    sget-object v4, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 33
    iget-object v5, p0, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v5}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object v5

    const/4 v6, -0x1

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v5}, Lcom/stripe/paymentcollection/CancelReason;->ordinal()I

    move-result v5

    aget v5, v7, v5

    :goto_0
    if-eq v5, v6, :cond_4

    if-eq v5, v2, :cond_3

    if-eq v5, v1, :cond_2

    const/4 v1, 0x3

    if-ne v5, v1, :cond_1

    .line 36
    sget-object v1, Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;

    goto :goto_1

    .line 37
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 35
    :cond_2
    sget-object v1, Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;

    goto :goto_1

    .line 34
    :cond_3
    sget-object v1, Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;

    goto :goto_1

    .line 37
    :cond_4
    sget-object v1, Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;

    .line 32
    :goto_1
    invoke-direct {v0, v4, v1, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 41
    :cond_5
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isTimedOut()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lkotlin/Triple;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;

    invoke-direct {v0, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 42
    :cond_6
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getShouldStartManualEntry()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lkotlin/Triple;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->MANUAL_ENTRY:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    invoke-direct {v0, v1, v3, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 43
    :cond_7
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getMagStripeReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadResult;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Lkotlin/Triple;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->MAGSTRIPE:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    invoke-direct {v0, v1, v3, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 44
    :cond_8
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCardSlotState()Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    move-result-object v0

    sget-object v4, Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;->EMPTY:Lcom/stripe/hardware/paymentcollection/ContactCardSlotState;

    if-eq v0, v4, :cond_b

    .line 45
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v0

    sget-object v4, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Lcom/stripe/hardware/emv/EmvTransactionType;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_a

    if-ne v0, v1, :cond_9

    .line 47
    sget-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->EMV_INSERT_FULL:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    goto :goto_2

    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 46
    :cond_a
    sget-object v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->EMV_INSERT_QUICK:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    .line 49
    :goto_2
    new-instance v1, Lkotlin/Triple;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    invoke-direct {v1, v2, v3, v0}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_3

    .line 51
    :cond_b
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/WaitForCardPresentLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getOnlineAuthorizationData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v0, Lkotlin/Triple;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;->EMV_TAP:Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    invoke-direct {v0, v1, v3, v2}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 52
    :cond_c
    new-instance v0, Lkotlin/Triple;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v2, Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;

    invoke-direct {v0, v1, v2, v3}, Lkotlin/Triple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    :goto_3
    invoke-virtual {v0}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/Result;

    .line 30
    invoke-virtual {v0}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;

    invoke-virtual {v0}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    .line 66
    check-cast v2, Ljava/lang/Enum;

    const-string v3, "MagStripeAllowReason"

    if-nez v2, :cond_d

    goto :goto_5

    :cond_d
    const-class v4, Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 69
    const-class v5, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object v4, v3

    goto :goto_4

    :cond_e
    const-class v4, Lcom/stripe/paymentcollection/metrics/CardPresentFailureReason;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 70
    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_5
    check-cast v0, Ljava/lang/Enum;

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    const-class v2, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 77
    const-class v4, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_6

    :cond_10
    const-class v2, Lcom/stripe/paymentcollection/metrics/PaymentMethodType;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 78
    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :goto_7
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
