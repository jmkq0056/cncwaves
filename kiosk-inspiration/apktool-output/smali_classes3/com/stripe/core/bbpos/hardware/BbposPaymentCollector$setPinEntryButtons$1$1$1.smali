.class final Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$setPinEntryButtons$1$1$1;
.super Ljava/lang/Object;
.source "BbposPaymentCollector.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$setPinEntryButtons$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006H\u008a@\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "pinButtons",
        "",
        "Lcom/stripe/core/hardware/paymentcollection/PinKey;",
        "Landroid/graphics/Rect;",
        "Lcom/stripe/core/hardware/paymentcollection/PinButtons;",
        "emit",
        "(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"
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
.field final synthetic this$0:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;


# direct methods
.method constructor <init>(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$setPinEntryButtons$1$1$1;->this$0:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 108
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$setPinEntryButtons$1$1$1;->emit(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final emit(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/stripe/core/hardware/paymentcollection/PinKey;",
            "Landroid/graphics/Rect;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 109
    iget-object v2, v1, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$setPinEntryButtons$1$1$1;->this$0:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;

    invoke-static {v2}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->access$getController(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;)Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;

    move-result-object v3

    .line 110
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->ZERO:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/graphics/Rect;

    .line 111
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->ONE:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/graphics/Rect;

    .line 112
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->TWO:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/graphics/Rect;

    .line 113
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->THREE:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/graphics/Rect;

    .line 114
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->FOUR:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/graphics/Rect;

    .line 115
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->FIVE:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/graphics/Rect;

    .line 116
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->SIX:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/graphics/Rect;

    .line 117
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->SEVEN:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/graphics/Rect;

    .line 118
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->EIGHT:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/graphics/Rect;

    .line 119
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->NINE:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/graphics/Rect;

    .line 120
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->BACKSPACE:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/graphics/Rect;

    .line 121
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->CANCEL:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/graphics/Rect;

    .line 122
    sget-object v2, Lcom/stripe/core/hardware/paymentcollection/PinKey;->ENTER:Lcom/stripe/core/hardware/paymentcollection/PinKey;

    invoke-static {v0, v2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/graphics/Rect;

    .line 109
    invoke-interface/range {v3 .. v16}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->setPinPadButtons(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 124
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
