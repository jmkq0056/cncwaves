.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$4;
.super Ljava/lang/Object;
.source "ShopActivity.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity;->onCreate(Landroid/os/Bundle;)V
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
        "com/example/digitalkiosk/ShopActivity$onCreate$4",
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
.field final synthetic $shakeAnimation:Landroid/view/animation/Animation;

.field final synthetic this$0:Lcom/example/digitalkiosk/ShopActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/ShopActivity;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$4;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    iput-object p2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$4;->$shakeAnimation:Landroid/view/animation/Animation;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 204
    const-string p1, "TimerTesting"

    const-string v0, "Your way Animation Run"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$4;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityShopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->subCatButtons:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$4;->$shakeAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

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
