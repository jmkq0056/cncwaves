.class public final Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;
.super Ljava/lang/Object;
.source "CardPaymentFragment.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;


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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1",
        "Lcom/stripe/stripeterminal/external/callable/PaymentIntentCallback;",
        "onFailure",
        "",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onSuccess",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
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

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    const-string v0, "Failed to Process the Payment"

    invoke-static {p1, v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$paymentFailed(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 4

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/KioskSetting;->getStripe_reader()Ljava/lang/String;

    .line 329
    :cond_0
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 330
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Voucher;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getOrder_id()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 357
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getOrder_id()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1$onSuccess$1;

    iget-object v3, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-direct {v2, v3}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1$onSuccess$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-virtual {v0, p1, v1, v2}, Lcom/example/digitalkiosk/network/ApiClient;->capture_order_payment_intent$app_release(Ljava/lang/String;ILretrofit2/Callback;)V

    :cond_3
    return-void
.end method
