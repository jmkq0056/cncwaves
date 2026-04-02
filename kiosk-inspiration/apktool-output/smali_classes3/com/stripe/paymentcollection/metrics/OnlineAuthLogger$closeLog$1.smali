.class final Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OnlineAuthLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/OnlineAuthState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1$WhenMappings;
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
    value = "SMAP\nOnlineAuthLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineAuthLogger.kt\ncom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,86:1\n543#2,8:87\n543#2,8:95\n*S KotlinDebug\n*F\n+ 1 OnlineAuthLogger.kt\ncom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1\n*L\n48#1:87,8\n49#1:95,8\n*E\n"
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
.field final synthetic $authState:Lcom/stripe/paymentcollection/OnlineAuthState;

.field final synthetic $authType:Lcom/stripe/paymentcollection/OnlineAuthType;

.field final synthetic $data:Lcom/stripe/paymentcollection/PaymentCollectionData;

.field final synthetic this$0:Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;Lcom/stripe/paymentcollection/OnlineAuthState;Lcom/stripe/paymentcollection/OnlineAuthType;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->this$0:Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;

    iput-object p3, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->$authState:Lcom/stripe/paymentcollection/OnlineAuthState;

    iput-object p4, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->$authType:Lcom/stripe/paymentcollection/OnlineAuthType;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;)Lkotlin/Pair;
    .locals 6
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

    .line 31
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isTimedOut()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlin/Pair;

    .line 32
    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 33
    sget-object v2, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    .line 31
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lkotlin/Pair;

    .line 36
    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 37
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getCancelReason()Lcom/stripe/paymentcollection/CancelReason;

    move-result-object v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/CancelReason;->ordinal()I

    move-result v2

    aget v2, v4, v2

    :goto_0
    if-eq v2, v3, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 40
    sget-object v2, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    goto :goto_1

    .line 41
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 39
    :cond_3
    sget-object v2, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;->HARDWARE_CANCELLED:Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    goto :goto_1

    .line 38
    :cond_4
    sget-object v2, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;->MERCHANT_CANCELLED:Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    goto :goto_1

    .line 41
    :cond_5
    sget-object v2, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;->UNKNOWN:Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    .line 35
    :goto_1
    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 44
    :cond_6
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->this$0:Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->$authState:Lcom/stripe/paymentcollection/OnlineAuthState;

    invoke-static {v0, v1}, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;->access$getResult(Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger;Lcom/stripe/paymentcollection/OnlineAuthState;)Lkotlin/Pair;

    move-result-object v0

    .line 30
    :goto_2
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/metrics/Result;

    .line 29
    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    .line 47
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/OnlineAuthLogger$closeLog$1;->$authType:Lcom/stripe/paymentcollection/OnlineAuthType;

    .line 87
    check-cast v0, Ljava/lang/Enum;

    const-string v3, "MagStripeAllowReason"

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    const-class v4, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 90
    const-class v5, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v3

    goto :goto_3

    :cond_8
    const-class v4, Lcom/stripe/paymentcollection/metrics/OnlineAuthFailureReason;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 91
    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_4
    check-cast v2, Ljava/lang/Enum;

    if-nez v2, :cond_9

    goto :goto_6

    :cond_9
    const-class v0, Lcom/stripe/paymentcollection/OnlineAuthType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 98
    const-class v4, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    const-class v0, Lcom/stripe/paymentcollection/OnlineAuthType;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 99
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 101
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :goto_6
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
