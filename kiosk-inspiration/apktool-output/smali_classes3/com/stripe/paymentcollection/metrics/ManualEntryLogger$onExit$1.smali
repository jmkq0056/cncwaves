.class final Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ManualEntryLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->onExit(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;)V
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
    value = "SMAP\nManualEntryLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ManualEntryLogger.kt\ncom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,85:1\n543#2,8:86\n543#2,8:94\n*S KotlinDebug\n*F\n+ 1 ManualEntryLogger.kt\ncom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1\n*L\n49#1:86,8\n50#1:94,8\n*E\n"
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
.field final synthetic $data:Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

.field final synthetic this$0:Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/manualentry/ManualEntryData;Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1;->$data:Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1;->this$0:Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

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

    .line 42
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1;->$data:Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getFailureReason()Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    goto :goto_0

    .line 45
    :cond_0
    sget-object v0, Lcom/stripe/paymentcollection/metrics/Result;->SUCCESS:Lcom/stripe/paymentcollection/metrics/Result;

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1;->this$0:Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;

    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger$onExit$1;->$data:Lcom/stripe/paymentcollection/manualentry/ManualEntryData;

    .line 49
    invoke-static {v1}, Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;->access$getCurState$p(Lcom/stripe/paymentcollection/metrics/ManualEntryLogger;)Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    .line 86
    const-string v3, "MagStripeAllowReason"

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const-class v4, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 89
    const-class v5, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    const-class v4, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    .line 90
    invoke-interface {v4}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_2
    invoke-virtual {v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryData;->getFailureReason()Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    if-nez v1, :cond_3

    goto :goto_4

    .line 94
    :cond_3
    const-class v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 97
    const-class v4, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const-class v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryFailureReason;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :goto_4
    new-instance v1, Lkotlin/Pair;

    invoke-static {v0}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
