.class public final Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;
.super Ljava/lang/Object;
.source "ItemConfigFragment.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "com/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1",
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
.field final synthetic $binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 239
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getDisplayNav$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicatorsWrap:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getShakeAnimation$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "shakeAnimation"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicatorsWrap:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

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
