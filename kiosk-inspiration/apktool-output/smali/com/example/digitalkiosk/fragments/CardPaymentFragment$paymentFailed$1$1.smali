.class public final Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;
.super Landroid/os/CountDownTimer;
.source "CardPaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->paymentFailed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1",
        "Landroid/os/CountDownTimer;",
        "onTick",
        "",
        "p0",
        "",
        "onFinish",
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
    .locals 4

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x3e8

    .line 402
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 408
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object v0

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retry:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backHome:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->counterTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v3, "payment_failed_unknown"

    invoke-virtual {v0, v3}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 414
    iget-object v3, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v3}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_3
    iget-object v3, v3, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 416
    :cond_4
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->errorMessage:Landroid/widget/TextView;

    const-string v3, "Payment FAILD DUE TO UNKNOWN Reason"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    :goto_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->paymentFailedLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_7
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retryNo:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retryYes:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;->this$0:Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/16 v1, 0x3e8

    int-to-long v1, v1

    div-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->setTimerCount(Ljava/lang/Integer;)V

    return-void
.end method
