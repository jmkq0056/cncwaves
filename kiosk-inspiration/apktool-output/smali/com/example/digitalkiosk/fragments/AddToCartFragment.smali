.class public final Lcom/example/digitalkiosk/fragments/AddToCartFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "AddToCartFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J&\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/example/digitalkiosk/fragments/AddToCartFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "itemname",
        "",
        "shoptimer",
        "Landroid/os/CountDownTimer;",
        "<init>",
        "(Ljava/lang/String;Landroid/os/CountDownTimer;)V",
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
.field private final itemname:Ljava/lang/String;

.field private final shoptimer:Landroid/os/CountDownTimer;


# direct methods
.method public static synthetic $r8$lambda$dzGK9f_4oSPazQQj-izuolijw4M(Lcom/example/digitalkiosk/fragments/AddToCartFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/AddToCartFragment;->onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/AddToCartFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/CountDownTimer;)V
    .locals 1

    const-string v0, "itemname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/AddToCartFragment;->itemname:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/AddToCartFragment;->shoptimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/example/digitalkiosk/fragments/AddToCartFragment;-><init>(Ljava/lang/String;Landroid/os/CountDownTimer;)V

    return-void
.end method

.method private static final onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/AddToCartFragment;Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/AddToCartFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/AddToCartFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/AddToCartFragment;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 21
    sget v0, Lcom/example/digitalkiosk/R$style;->notificationPopupStyle:I

    invoke-virtual {p0, p1, v0}, Lcom/example/digitalkiosk/fragments/AddToCartFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/AddToCartFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    const/16 v0, 0x1706

    .line 31
    invoke-virtual {p3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    :cond_0
    sget p3, Lcom/example/digitalkiosk/R$layout;->success_addtocart:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 34
    sget p2, Lcom/example/digitalkiosk/R$id;->message:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/AddToCartFragment;->itemname:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " to Cart"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    sget p2, Lcom/example/digitalkiosk/R$id;->ok_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance p3, Lcom/example/digitalkiosk/fragments/AddToCartFragment$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/example/digitalkiosk/fragments/AddToCartFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/fragments/AddToCartFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
