.class final Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BluetoothBondStateReceiverManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->startListening(Landroid/bluetooth/BluetoothDevice;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
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
.field final synthetic $onBonded:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;


# direct methods
.method public static synthetic $r8$lambda$wyr56P38NYCTgc5etWyeUtQ4w0A(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1;->this$0:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1;->$onBonded:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1;->this$0:Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;->access$getContext$p(Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-string v1, "getMainLooper(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/stripe/wrappers/HandlerWrapperKt;->executor(Landroid/os/Looper;)Lcom/stripe/wrappers/MessageQueueExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1;->$onBonded:Lkotlin/jvm/functions/Function0;

    new-instance v2, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/stripe/stripeterminal/internal/common/bluetooth/BluetoothBondStateReceiverManager$startListening$delayedOnBonded$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-wide/16 v3, 0x3e8

    invoke-interface {v0, v2, v3, v4}, Lcom/stripe/wrappers/MessageQueueExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
