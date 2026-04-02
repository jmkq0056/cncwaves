.class public final Lcom/example/digitalkiosk/fragments/CancelOrderFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CancelOrderFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J&\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/example/digitalkiosk/fragments/CancelOrderFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "shoptimer",
        "Landroid/os/CountDownTimer;",
        "<init>",
        "(Landroid/os/CountDownTimer;)V",
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
.field private final shoptimer:Landroid/os/CountDownTimer;


# direct methods
.method public static synthetic $r8$lambda$Wa5sJgC8Ub0VWIiVOPKCYj_mzGc(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wWdRu1hLPuR5fdWEq8m9nMPbaAg(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->onCreateView$lambda$2(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;-><init>(Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/CountDownTimer;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;-><init>(Landroid/os/CountDownTimer;)V

    return-void
.end method

.method public static final synthetic access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;)Landroid/os/CountDownTimer;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method private static final onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;Landroid/view/View;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->dismiss()V

    return-void
.end method

.method private static final onCreateView$lambda$2(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;Landroid/view/View;)V
    .locals 2

    .line 48
    sget-object p1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1;

    invoke-direct {v1, p0}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1;-><init>(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-virtual {p1, v0, v1}, Lcom/example/digitalkiosk/network/ApiClient;->empty_cart$app_release(Ljava/lang/Integer;Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 28
    sget v0, Lcom/example/digitalkiosk/R$style;->cancelOrderPopupStyle:I

    invoke-virtual {p0, p1, v0}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    const/16 v0, 0x1706

    .line 37
    invoke-virtual {p3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 39
    :cond_0
    sget p3, Lcom/example/digitalkiosk/R$layout;->cancel_order:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 40
    sget p2, Lcom/example/digitalkiosk/R$id;->no_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 41
    new-instance p3, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget p3, Lcom/example/digitalkiosk/R$id;->yes_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 47
    new-instance v0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;)V

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    sget v0, Lcom/example/digitalkiosk/R$id;->cancel_order_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 69
    sget-object v1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v2, "want_cancel_order"

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v1, "cancel_no"

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_2
    sget-object p2, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "cancel_yes"

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 77
    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-object p1
.end method
