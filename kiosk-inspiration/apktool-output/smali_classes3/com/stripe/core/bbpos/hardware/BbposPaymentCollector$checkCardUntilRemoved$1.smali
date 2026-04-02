.class final Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$checkCardUntilRemoved$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BbposPaymentCollector.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->checkCardUntilRemoved(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $readerType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;


# direct methods
.method constructor <init>(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$checkCardUntilRemoved$1;->this$0:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;

    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$checkCardUntilRemoved$1;->$readerType:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$checkCardUntilRemoved$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$checkCardUntilRemoved$1;->this$0:Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;->INSTANCE:Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;

    iget-object v2, p0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector$checkCardUntilRemoved$1;->$readerType:Ljava/util/Set;

    invoke-virtual {v1, v2}, Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;->toCheckCardMode(Ljava/util/Set;)Lcom/stripe/bbpos/sdk/CheckCardMode;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;->access$checkCard(Lcom/stripe/core/bbpos/hardware/BbposPaymentCollector;Lcom/stripe/bbpos/sdk/CheckCardMode;)V

    return-void
.end method
