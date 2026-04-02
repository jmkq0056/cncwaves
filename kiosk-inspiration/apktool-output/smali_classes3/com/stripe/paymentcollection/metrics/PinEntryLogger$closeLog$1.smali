.class final Lcom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PinEntryLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/PinEntryLogger;->closeLog(Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;)V
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
    value = "SMAP\nPinEntryLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PinEntryLogger.kt\ncom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1\n+ 2 Tags.kt\ncom/stripe/paymentcollection/metrics/TagsKt\n*L\n1#1,43:1\n543#2,8:44\n*S KotlinDebug\n*F\n+ 1 PinEntryLogger.kt\ncom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1\n*L\n35#1:44,8\n*E\n"
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

.field final synthetic $knownFailureReason:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

.field final synthetic $result:Lcom/stripe/paymentcollection/metrics/Result;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;Lcom/stripe/paymentcollection/metrics/Result;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1;->$knownFailureReason:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1;->$result:Lcom/stripe/paymentcollection/metrics/Result;

    iput-object p3, p0, Lcom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/Map;)Lkotlin/Pair;
    .locals 3
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
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1;->$knownFailureReason:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1;->$result:Lcom/stripe/paymentcollection/metrics/Result;

    sget-object v1, Lcom/stripe/paymentcollection/metrics/Result;->FAILURE:Lcom/stripe/paymentcollection/metrics/Result;

    if-ne v0, v1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0}, Lcom/stripe/paymentcollection/PaymentCollectionData;->getPinEntryStatus()Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/paymentcollection/UtilsKt;->toFailureReason(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;)Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 44
    :cond_1
    :goto_0
    check-cast v0, Ljava/lang/Enum;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-class v1, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 47
    const-class v2, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MagStripeAllowReason"

    goto :goto_1

    :cond_3
    const-class v1, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :goto_2
    new-instance v0, Lkotlin/Pair;

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/PinEntryLogger$closeLog$1;->$result:Lcom/stripe/paymentcollection/metrics/Result;

    invoke-static {v1}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
