.class final Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DisplayCartLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/DisplayCartLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/DisplayCartResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1$WhenMappings;
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
    value = "SMAP\nDisplayCartLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayCartLogger.kt\ncom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,39:1\n543#2,8:40\n*S KotlinDebug\n*F\n+ 1 DisplayCartLogger.kt\ncom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1\n*L\n31#1:40,8\n*E\n"
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
.field final synthetic $displayCartResult:Lcom/stripe/paymentcollection/metrics/DisplayCartResult;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/metrics/DisplayCartResult;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1;->$displayCartResult:Lcom/stripe/paymentcollection/metrics/DisplayCartResult;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;)Lkotlin/Pair;
    .locals 4
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

    .line 24
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1;->$displayCartResult:Lcom/stripe/paymentcollection/metrics/DisplayCartResult;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/metrics/DisplayCartResult;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    goto :goto_1

    .line 25
    :cond_2
    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    .line 30
    :goto_1
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/DisplayCartLogger$closeLog$1;->$displayCartResult:Lcom/stripe/paymentcollection/metrics/DisplayCartResult;

    .line 40
    check-cast v1, Ljava/lang/Enum;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const-class v2, Lcom/stripe/paymentcollection/metrics/DisplayCartResult;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 43
    const-class v3, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "MagStripeAllowReason"

    goto :goto_2

    :cond_4
    const-class v2, Lcom/stripe/paymentcollection/metrics/DisplayCartResult;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 44
    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 46
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :goto_3
    new-instance v1, Lkotlin/Pair;

    invoke-static {v0}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
