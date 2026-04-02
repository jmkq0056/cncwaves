.class public final Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$3;
.super Landroid/os/CountDownTimer;
.source "ItemExtrasFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/ItemExtrasFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "com/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$3",
        "Landroid/os/CountDownTimer;",
        "onTick",
        "",
        "millisUntilFinished",
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
.field final synthetic $binding:Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

.field final synthetic $shakeAnimation:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;Landroid/view/animation/Animation;)V
    .locals 2

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$3;->$shakeAnimation:Landroid/view/animation/Animation;

    const-wide/16 p1, 0xbb8

    const-wide/16 v0, 0x3e8

    .line 97
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 101
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->yourwayHandicap:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$3;->$shakeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->yourway:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$3;->$shakeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
