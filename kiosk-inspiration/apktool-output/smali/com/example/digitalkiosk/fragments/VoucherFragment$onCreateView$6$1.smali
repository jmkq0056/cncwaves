.class public final Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;
.super Ljava/lang/Object;
.source "VoucherFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/VoucherFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/example/digitalkiosk/models/VoucherResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1",
        "Lretrofit2/Callback;",
        "Lcom/example/digitalkiosk/models/VoucherResponse;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "t",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/VoucherFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;->this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/VoucherResponse;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/VoucherResponse;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/example/digitalkiosk/models/VoucherResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/example/digitalkiosk/models/VoucherResponse;

    .line 118
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/VoucherResponse;->getStatus()Ljava/lang/String;

    move-result-object p2

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "binding"

    if-eqz p2, :cond_1

    .line 119
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/VoucherResponse;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setVoucher(Lcom/example/digitalkiosk/models/Voucher;)V

    .line 120
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;->this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;)Lcom/example/digitalkiosk/databinding/VoucherBinding;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->setVoucherApplied(Ljava/lang/Boolean;)V

    .line 121
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;->this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->access$getOnVoucherApplied$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;)Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 122
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;->this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->access$getOnVoucherApplied$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;)Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment$OnVoucherApplied;->onApply()V

    return-void

    .line 124
    :cond_1
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/VoucherResponse;->getStatus()Ljava/lang/String;

    move-result-object p1

    const-string p2, "error"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 125
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;->this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->access$getErrorTimer$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;)Ljava/util/TimerTask;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;->this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->access$getBinding$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;)Lcom/example/digitalkiosk/databinding/VoucherBinding;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    iget-object p1, v0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherWarning:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, -0x3e100000    # -30.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 127
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;->this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1;->this$0:Lcom/example/digitalkiosk/fragments/VoucherFragment;

    new-instance v1, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1$onResponse$$inlined$schedule$1;

    invoke-direct {v1, v0}, Lcom/example/digitalkiosk/fragments/VoucherFragment$onCreateView$6$1$onResponse$$inlined$schedule$1;-><init>(Lcom/example/digitalkiosk/fragments/VoucherFragment;)V

    check-cast v1, Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p2, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {p1, v1}, Lcom/example/digitalkiosk/fragments/VoucherFragment;->access$setErrorTimer$p(Lcom/example/digitalkiosk/fragments/VoucherFragment;Ljava/util/TimerTask;)V

    :cond_4
    return-void
.end method
