.class final Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WaitForPosCommandEventLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
    value = "SMAP\nWaitForPosCommandEventLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WaitForPosCommandEventLogger.kt\ncom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,76:1\n543#2,8:77\n543#2,8:85\n*S KotlinDebug\n*F\n+ 1 WaitForPosCommandEventLogger.kt\ncom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1\n*L\n47#1:77,8\n48#1:85,8\n*E\n"
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
.field final synthetic $curCommand:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

.field final synthetic $data:Lcom/stripe/paymentcollection/PaymentCollectionData;

.field final synthetic this$0:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PendingPosCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1;->this$0:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;

    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    iput-object p3, p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1;->$curCommand:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

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

    .line 43
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1;->this$0:Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-static {v0, v1}, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;->access$getFailureReason(Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger;Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    .line 46
    :goto_0
    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandEventLogger$closeLog$1;->$curCommand:Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    .line 77
    check-cast v0, Ljava/lang/Enum;

    const-string v3, "MagStripeAllowReason"

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const-class v4, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 80
    const-class v5, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    const-class v4, Lcom/stripe/paymentcollection/metrics/WaitForPosCommandFailureReason;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 81
    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :goto_2
    check-cast v2, Ljava/lang/Enum;

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    const-class v0, Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 88
    const-class v4, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    const-class v0, Lcom/stripe/paymentcollection/metrics/PendingPosCommand;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_4
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
