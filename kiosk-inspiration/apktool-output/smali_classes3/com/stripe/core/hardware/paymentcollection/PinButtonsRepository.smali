.class public final Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;
.super Ljava/lang/Object;
.source "PinButtonsRepository.kt"

# interfaces
.implements Lcom/stripe/core/hardware/paymentcollection/PinButtonsLayoutListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J$\u0010\r\u001a\u00020\u000e2\u001a\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005j\u0004\u0018\u0001`\u0008H\u0016R(\u0010\u0003\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005j\u0004\u0018\u0001`\u00080\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\t\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0005j\u0004\u0018\u0001`\u00080\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;",
        "Lcom/stripe/core/hardware/paymentcollection/PinButtonsLayoutListener;",
        "()V",
        "_pinButtonsFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "Lcom/stripe/core/hardware/paymentcollection/PinKey;",
        "Landroid/graphics/Rect;",
        "Lcom/stripe/core/hardware/paymentcollection/PinButtons;",
        "pinButtonsFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "getPinButtonsFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "onPinButtonLayout",
        "",
        "pinButtons",
        "hardware_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _pinButtonsFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/Map<",
            "Lcom/stripe/core/hardware/paymentcollection/PinKey;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pinButtonsFlow:Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/Map<",
            "Lcom/stripe/core/hardware/paymentcollection/PinKey;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    invoke-static {v0}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;->_pinButtonsFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    iput-object v0, p0, Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;->pinButtonsFlow:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method


# virtual methods
.method public final getPinButtonsFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/Map<",
            "Lcom/stripe/core/hardware/paymentcollection/PinKey;",
            "Landroid/graphics/Rect;",
            ">;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;->pinButtonsFlow:Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method

.method public onPinButtonLayout(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/stripe/core/hardware/paymentcollection/PinKey;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/stripe/core/hardware/paymentcollection/PinButtonsRepository;->_pinButtonsFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method
