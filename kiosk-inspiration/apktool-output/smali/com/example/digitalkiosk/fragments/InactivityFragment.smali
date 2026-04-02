.class public final Lcom/example/digitalkiosk/fragments/InactivityFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "InactivityFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J&\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0006\u0010\u0015\u001a\u00020\u000cJ\u0006\u0010\u0016\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/example/digitalkiosk/fragments/InactivityFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "timer",
        "Landroid/os/CountDownTimer;",
        "paymentFrag",
        "",
        "<init>",
        "(Landroid/os/CountDownTimer;Z)V",
        "canceltimer",
        "yesButton",
        "Landroid/widget/Button;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "processKioskInactivity",
        "processCancelOrder",
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
.field private canceltimer:Landroid/os/CountDownTimer;

.field private final paymentFrag:Z

.field private final timer:Landroid/os/CountDownTimer;

.field private yesButton:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$3ThEHPgmL8rHc3eWNBBpEP9CbmU(Lcom/example/digitalkiosk/fragments/InactivityFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/InactivityFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UpfItKRrPh6IwlHLYiJDz0cE7V0(Lcom/example/digitalkiosk/fragments/InactivityFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->onCreateView$lambda$2(Lcom/example/digitalkiosk/fragments/InactivityFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/CountDownTimer;Z)V
    .locals 1

    const-string v0, "timer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->timer:Landroid/os/CountDownTimer;

    .line 29
    iput-boolean p2, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->paymentFrag:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/CountDownTimer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/example/digitalkiosk/fragments/InactivityFragment;-><init>(Landroid/os/CountDownTimer;Z)V

    return-void
.end method

.method public static final synthetic access$getCanceltimer$p(Lcom/example/digitalkiosk/fragments/InactivityFragment;)Landroid/os/CountDownTimer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->canceltimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static final synthetic access$getTimer$p(Lcom/example/digitalkiosk/fragments/InactivityFragment;)Landroid/os/CountDownTimer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->timer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static final synthetic access$getYesButton$p(Lcom/example/digitalkiosk/fragments/InactivityFragment;)Landroid/widget/Button;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->yesButton:Landroid/widget/Button;

    return-object p0
.end method

.method private static final onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/InactivityFragment;Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->processKioskInactivity()V

    return-void
.end method

.method private static final onCreateView$lambda$2(Lcom/example/digitalkiosk/fragments/InactivityFragment;Landroid/view/View;)V
    .locals 0

    .line 64
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->canceltimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 65
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 66
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 37
    sget v0, Lcom/example/digitalkiosk/R$style;->cancelOrderPopupStyle:I

    invoke-virtual {p0, p1, v0}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    const/16 v0, 0x1706

    .line 46
    invoke-virtual {p3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 48
    :cond_0
    sget p3, Lcom/example/digitalkiosk/R$layout;->inactivity_warning:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 49
    sget p2, Lcom/example/digitalkiosk/R$id;->still_there_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 50
    sget p3, Lcom/example/digitalkiosk/R$id;->yes_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->yesButton:Landroid/widget/Button;

    .line 51
    sget p3, Lcom/example/digitalkiosk/R$id;->no_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 52
    new-instance v0, Lcom/example/digitalkiosk/fragments/InactivityFragment$onCreateView$2;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment$onCreateView$2;-><init>(Lcom/example/digitalkiosk/fragments/InactivityFragment;)V

    check-cast v0, Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->canceltimer:Landroid/os/CountDownTimer;

    .line 58
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 60
    new-instance v0, Lcom/example/digitalkiosk/fragments/InactivityFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/fragments/InactivityFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->yesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    const-string v2, "yesButton"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    new-instance v3, Lcom/example/digitalkiosk/fragments/InactivityFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/fragments/InactivityFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v3, "still_there"

    invoke-virtual {v0, v3}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_2
    sget-object p2, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "inactivity_yes"

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 73
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->yesButton:Landroid/widget/Button;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_4
    sget-object p2, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "inactivity_no"

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 76
    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-object p1
.end method

.method public final processCancelOrder()V
    .locals 3

    .line 118
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object v1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/example/digitalkiosk/fragments/InactivityFragment$processCancelOrder$1;

    invoke-direct {v2, p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment$processCancelOrder$1;-><init>(Lcom/example/digitalkiosk/fragments/InactivityFragment;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/example/digitalkiosk/network/ApiClient;->empty_cart$app_release(Ljava/lang/Integer;Lretrofit2/Callback;)V

    return-void
.end method

.method public final processKioskInactivity()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->yesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "yesButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-boolean v0, p0, Lcom/example/digitalkiosk/fragments/InactivityFragment;->paymentFrag:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getPaymentCancelable()Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrentPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getPaymentCancelable()Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1;

    invoke-direct {v1, p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment$processKioskInactivity$1;-><init>(Lcom/example/digitalkiosk/fragments/InactivityFragment;)V

    check-cast v1, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-interface {v0, v1}, Lcom/stripe/stripeterminal/external/callable/Cancelable;->cancel(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/InactivityFragment;->processCancelOrder()V

    return-void
.end method
