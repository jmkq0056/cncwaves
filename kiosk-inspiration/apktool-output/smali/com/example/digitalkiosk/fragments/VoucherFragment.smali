.class public final Lcom/example/digitalkiosk/fragments/VoucherFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "VoucherFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001dB\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0012H\u0002J\u0012\u0010\u0019\u001a\u00020\u000e2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0012H\u0016J\u000e\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0008R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/example/digitalkiosk/fragments/VoucherFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "Landroid/view/View$OnClickListener;",
        "shoptimer",
        "Landroid/os/CountDownTimer;",
        "<init>",
        "(Landroid/os/CountDownTimer;)V",
        "onVoucherApplied",
        "Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;",
        "binding",
        "Lcom/example/digitalkiosk/databinding/VoucherBinding;",
        "errorTimer",
        "Ljava/util/TimerTask;",
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
        "clickButton",
        "view",
        "onClick",
        "v",
        "setOnVoucherApplied",
        "listener",
        "OnVoucherApplied",
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
.field private binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

.field private errorTimer:Ljava/util/TimerTask;

.field private onVoucherApplied:Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;

.field private final shoptimer:Landroid/os/CountDownTimer;


# direct methods
.method public static synthetic $r8$lambda$38AxcJVN1lHRobd44vjxyBXtLyU(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->onCreateView$lambda$3(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Vtshe8jyikI6C5NoyXVx_ziq5I(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->onCreateView$lambda$6(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H4IQw-b17E1AXXNtBHyXbaIGKrQ(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->onCreateView$lambda$5(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$J_8_GwLAnzSP0hBLEisZ07ZjZes(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->onCreateView$lambda$2(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M4Y1d38xfRT7m9cE6ME3kbwQuIk(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rwBa_x0HdQB444dLFbeF5DDiSuM(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->onCreateView$lambda$4(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/example/digitalkiosk/fragments/VoucherFragment;-><init>(Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/CountDownTimer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;-><init>(Landroid/os/CountDownTimer;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;)Lcom/example/digitalkiosk/databinding/VoucherBinding;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    return-object p0
.end method

.method public static final synthetic access$getErrorTimer$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;)Ljava/util/TimerTask;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->errorTimer:Ljava/util/TimerTask;

    return-object p0
.end method

.method public static final synthetic access$getOnVoucherApplied$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;)Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->onVoucherApplied:Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;

    return-object p0
.end method

.method public static final synthetic access$setErrorTimer$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;Ljava/util/TimerTask;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->errorTimer:Ljava/util/TimerTask;

    return-void
.end method

.method private final clickButton(Landroid/view/View;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 171
    :cond_1
    const-string v0, "null cannot be cast to non-null type androidx.appcompat.widget.AppCompatButton"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 172
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez v0, :cond_2

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setCode(Ljava/lang/String;)V

    return-void
.end method

.method private static final onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 2

    .line 54
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->getCapslock()Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setCapslock(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final onCreateView$lambda$2(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 2

    .line 95
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 97
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->getCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->dropLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setCode(Ljava/lang/String;)V

    return-void
.end method

.method private static final onCreateView$lambda$3(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 0

    .line 100
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 101
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->dismiss()V

    return-void
.end method

.method private static final onCreateView$lambda$4(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 0

    .line 105
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 107
    :cond_1
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->dismiss()V

    return-void
.end method

.method private static final onCreateView$lambda$5(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 2

    .line 110
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 112
    :cond_1
    sget-object p1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez v0, :cond_2

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;

    invoke-direct {v1, p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;-><init>(Lcom/example/digitalkiosk/fragments/VoucherFragment;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-virtual {p1, v0, v1}, Lcom/example/digitalkiosk/network/ApiClient;->verify_voucher$app_release(Ljava/lang/String;Lretrofit2/Callback;)V

    return-void
.end method

.method private static final onCreateView$lambda$6(Lcom/example/digitalkiosk/fragments/VoucherFragment;Landroid/view/View;)V
    .locals 3

    .line 137
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setVoucher(Lcom/example/digitalkiosk/models/Voucher;)V

    .line 138
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setCode(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setVoucherApplied(Ljava/lang/Boolean;)V

    .line 140
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->onVoucherApplied:Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;

    if-eqz p0, :cond_2

    .line 141
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;->onApply()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 176
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->clickButton(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x103000a

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0x1706

    .line 43
    invoke-virtual {p2, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 45
    :cond_0
    sget p2, Lcom/example/digitalkiosk/R$layout;->voucher:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    .line 46
    const-string p2, "binding"

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setCapslock(Ljava/lang/Boolean;)V

    .line 47
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setVoucherApplied(Ljava/lang/Boolean;)V

    .line 48
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_3

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setCode(Ljava/lang/String;)V

    .line 49
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 50
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_4
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setVoucherApplied(Ljava/lang/Boolean;)V

    .line 51
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_5

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_5
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Voucher;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, p3

    :goto_0
    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setCode(Ljava/lang/String;)V

    .line 53
    :cond_7
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_8
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->capslockButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/fragments/VoucherFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_9

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_9
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey1:Landroidx/appcompat/widget/AppCompatButton;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_a

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_a
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey2:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_b

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_b
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey3:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_c

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_c
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey4:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_d

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_d
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey5:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_e

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_e
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey6:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_f

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_f
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey7:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_10

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_10
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey8:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_11

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_11
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey9:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_12

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_12
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey0:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_13

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_13
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyQ:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_14

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_14
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyW:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_15

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_15
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyE:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_16

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_16
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyR:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_17

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_17
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyT:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_18

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_18
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyY:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_19

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_19
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyU:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_1a

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1a
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyI:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_1b

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1b
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyO:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_1c

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1c
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyP:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_1d

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1d
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyA:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_1e

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1e
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyS:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_1f

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1f
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyD:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_20

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_20
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyF:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_21

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_21
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyG:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_22

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_22
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyH:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_23

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_23
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyJ:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_24

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_24
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyK:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_25

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_25
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyL:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_26

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_26
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyZ:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_27

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_27
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyX:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_28

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_28
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyC:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_29

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_29
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyV:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_2a

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2a
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyB:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_2b

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2b
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyN:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_2c

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2c
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyM:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_2d

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2d
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->backspaceButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/fragments/VoucherFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_2e

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2e
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda2;-><init>(Lcom/example/digitalkiosk/fragments/VoucherFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_2f

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2f
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->continueButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda3;-><init>(Lcom/example/digitalkiosk/fragments/VoucherFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_30

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_30
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->applyButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda4;-><init>(Lcom/example/digitalkiosk/fragments/VoucherFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_31

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_31
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/VoucherBinding;->removeCoupon:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/VoucherFragment$$ExternalSyntheticLambda5;-><init>(Lcom/example/digitalkiosk/fragments/VoucherFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "enter_voucher_code"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 146
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez v0, :cond_32

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_32
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherCodeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_33
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "coupon_applied"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 149
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez v0, :cond_34

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_34
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->couponAppliedText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_35
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "remove_coupon"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 152
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez v0, :cond_36

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_36
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->removeCoupon:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_37
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "invalid_coupon"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 155
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez v0, :cond_38

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_38
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->warningSelect:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_39
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "voucher_close"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 158
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez v0, :cond_3a

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_3a
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_3b
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "voucher_apply"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_3d

    .line 161
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez v0, :cond_3c

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_3c
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->applyButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_3d
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "voucher_continue_shopping"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_3f

    .line 164
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez v0, :cond_3e

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_3e
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->continueButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 165
    :cond_3f
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->binding:Lcom/example/digitalkiosk/databinding/VoucherBinding;

    if-nez p1, :cond_40

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_40
    move-object p3, p1

    :goto_1
    invoke-virtual {p3}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final setOnVoucherApplied(Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment;->onVoucherApplied:Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;

    return-void
.end method
