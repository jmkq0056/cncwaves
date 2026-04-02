.class public final Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "ItemExtrasFragment.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$2",
        "Landroid/view/animation/Animation$AnimationListener;",
        "onAnimationStart",
        "",
        "animation",
        "Landroid/view/animation/Animation;",
        "onAnimationEnd",
        "onAnimationRepeat",
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
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$2;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$2;->$shakeAnimation:Landroid/view/animation/Animation;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 88
    const-string p1, "TimerTesting"

    const-string v0, "Your way Animation Run"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$2;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->yourwayHandicap:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$2;->$shakeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$2;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->yourway:Landroidx/appcompat/widget/AppCompatButton;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$onCreateView$2;->$shakeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
