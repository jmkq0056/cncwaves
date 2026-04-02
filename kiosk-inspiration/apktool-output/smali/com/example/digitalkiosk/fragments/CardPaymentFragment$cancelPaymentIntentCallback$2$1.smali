.class public final Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;
.super Ljava/lang/Object;
.source "CardPaymentFragment.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/CardPaymentFragment;-><init>(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "onFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onSuccess",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 289
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setPaymentCancelable(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    .line 290
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getOnDismissListener$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;->onDismiss()V

    .line 291
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->dismiss()V

    .line 292
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrentPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1$onSuccess$1;

    invoke-direct {v2}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1$onSuccess$1;-><init>()V

    check-cast v2, Lretrofit2/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/example/digitalkiosk/network/ApiClient;->cancel_payment_intent$app_release(Ljava/lang/String;Lretrofit2/Callback;)V

    return-void
.end method
