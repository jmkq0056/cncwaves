.class public final Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;
.super Ljava/lang/Object;
.source "CompleteOrderFragment.kt"

# interfaces
.implements Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processCardPayment(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1",
        "Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;",
        "onDismiss",
        "",
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
.field final synthetic $singlePayment:Z

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;


# direct methods
.method public static synthetic $r8$lambda$HmoO3cEwdIOjEdFwX7lOXQxzzi0(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;->onDismiss$lambda$1(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iNzKZLLsdLmaBpPE0CQNuD7ADMU(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;->onDismiss$lambda$0(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(ZLcom/example/digitalkiosk/fragments/CompleteOrderFragment;)V
    .locals 0

    iput-boolean p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;->$singlePayment:Z

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onDismiss$lambda$0(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 0

    .line 281
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->confirmOrder()V

    return-void
.end method

.method private static final onDismiss$lambda$1(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 285
    invoke-static {p0, v1, p1, v0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processCardPayment$default(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;ZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 279
    iget-boolean v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;->$singlePayment:Z

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    new-instance v2, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)V

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->cardPay:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;->this$0:Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;

    new-instance v2, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
