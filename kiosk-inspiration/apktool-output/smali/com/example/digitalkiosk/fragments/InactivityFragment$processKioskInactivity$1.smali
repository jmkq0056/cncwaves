.class public final Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1;
.super Ljava/lang/Object;
.source "InactivityFragment.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/InactivityFragment;->processKioskInactivity()V
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
        "com/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/InactivityFragment;


# direct methods
.method public static synthetic $r8$lambda$uckdeXNkmRhkynCkjqjub-kA-_A(Lcom/example/digitalkiosk/fragments/InactivityFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1;->onFailure$lambda$0(Lcom/example/digitalkiosk/fragments/InactivityFragment;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/example/digitalkiosk/fragments/InactivityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1;->this$0:Lcom/example/digitalkiosk/fragments/InactivityFragment;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onFailure$lambda$0(Lcom/example/digitalkiosk/fragments/InactivityFragment;Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->access$getCanceltimer$p(Lcom/example/digitalkiosk/fragments/InactivityFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->access$getTimer$p(Lcom/example/digitalkiosk/fragments/InactivityFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 88
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1;->this$0:Lcom/example/digitalkiosk/fragments/InactivityFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->access$getYesButton$p(Lcom/example/digitalkiosk/fragments/InactivityFragment;)Landroid/widget/Button;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "yesButton"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1;->this$0:Lcom/example/digitalkiosk/fragments/InactivityFragment;

    new-instance v1, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/fragments/InactivityFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 93
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setPaymentCancelable(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    .line 94
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    .line 95
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrentPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 96
    new-instance v2, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1$onSuccess$1;

    iget-object v3, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1;->this$0:Lcom/example/digitalkiosk/fragments/InactivityFragment;

    invoke-direct {v2, v3}, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1$onSuccess$1;-><init>(Lcom/example/digitalkiosk/fragments/InactivityFragment;)V

    check-cast v2, Lretrofit2/Callback;

    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/example/digitalkiosk/network/ApiClient;->cancel_payment_intent$app_release(Ljava/lang/String;Lretrofit2/Callback;)V

    return-void
.end method
