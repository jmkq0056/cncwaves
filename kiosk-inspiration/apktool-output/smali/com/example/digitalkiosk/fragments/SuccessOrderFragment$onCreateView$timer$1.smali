.class public final Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$onCreateView$timer$1;
.super Landroid/os/CountDownTimer;
.source "SuccessOrderFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "com/example/digitalkiosk/fragments/SuccessOrderFragment$onCreateView$timer$1",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;J)V
    .locals 2

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$onCreateView$timer$1;->this$0:Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;

    const-wide/16 v0, 0x3e8

    .line 69
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$onCreateView$timer$1;->this$0:Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 76
    :cond_0
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->setSelected_table(Ljava/lang/Integer;)V

    .line 77
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->setOrder_type(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->setPhone_number(Ljava/lang/String;)V

    .line 79
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$onCreateView$timer$1;->this$0:Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/digitalkiosk/HomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10008000

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 81
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment$onCreateView$timer$1;->this$0:Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;

    invoke-virtual {v1, v0}, Lcom/example/digitalkiosk/fragments/SuccessOrderFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
