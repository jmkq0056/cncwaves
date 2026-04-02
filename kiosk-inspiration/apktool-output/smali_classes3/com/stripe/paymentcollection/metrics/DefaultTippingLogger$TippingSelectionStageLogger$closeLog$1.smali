.class final Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger$closeLog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultTippingLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;->closeLog(Lcom/stripe/paymentcollection/PaymentCollectionData;)V
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

.field final synthetic this$0:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;


# direct methods
.method constructor <init>(Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;Lcom/stripe/paymentcollection/PaymentCollectionData;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger$closeLog$1;->this$0:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;

    iput-object p2, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 99
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger$closeLog$1;->invoke(Ljava/util/Map;)Lkotlin/Pair;

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

    .line 100
    iget-object v0, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger$closeLog$1;->this$0:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;

    invoke-static {v0}, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;->access$getMapper$p(Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;)Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v0, v1}, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;->generateTippingTags(Lcom/stripe/paymentcollection/PaymentCollectionData;)Ljava/util/Map;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger$closeLog$1;->this$0:Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;

    invoke-static {v1}, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;->access$getMapper$p(Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger;)Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/paymentcollection/metrics/DefaultTippingLogger$TippingSelectionStageLogger$closeLog$1;->$data:Lcom/stripe/paymentcollection/PaymentCollectionData;

    invoke-virtual {v1, v2}, Lcom/stripe/paymentcollection/metrics/TippingLoggerMapper;->generateTippingResult(Lcom/stripe/paymentcollection/PaymentCollectionData;)Lcom/stripe/paymentcollection/metrics/Result;

    move-result-object v1

    .line 104
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 107
    new-instance v0, Lkotlin/Pair;

    invoke-static {v1}, Lcom/stripe/paymentcollection/metrics/ResultKt;->toOutcome(Lcom/stripe/paymentcollection/metrics/Result;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
