.class public final Lcom/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1;
.super Ljava/lang/Object;
.source "CancelOrderFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1",
        "Lretrofit2/Callback;",
        "Ljava/lang/Void;",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/CancelOrderFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1;->this$0:Lcom/example/digitalkiosk/fragments/CancelOrderFragment;

    .line 48
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
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1;->this$0:Lcom/example/digitalkiosk/fragments/CancelOrderFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1;->this$0:Lcom/example/digitalkiosk/fragments/CancelOrderFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1;->this$0:Lcom/example/digitalkiosk/fragments/CancelOrderFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/CancelOrderFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1;->this$0:Lcom/example/digitalkiosk/fragments/CancelOrderFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->dismiss()V

    .line 52
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->setSelected_table(Ljava/lang/Integer;)V

    .line 53
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->setSelected_time(Ljava/lang/String;)V

    .line 54
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->setPhone_number(Ljava/lang/String;)V

    .line 55
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->setOrder_type(Ljava/lang/String;)V

    .line 56
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->setHandicap_on(Z)V

    .line 57
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1;->this$0:Lcom/example/digitalkiosk/fragments/CancelOrderFragment;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcom/example/digitalkiosk/HomeActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p2, 0x10008000

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CancelOrderFragment$onCreateView$3$1;->this$0:Lcom/example/digitalkiosk/fragments/CancelOrderFragment;

    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/fragments/CancelOrderFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
