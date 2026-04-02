.class public final Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$6;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SidesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/SidesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/SidesFragment$onCreateView$6",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageSelected",
        "",
        "position",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/SidesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$6;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    .line 168
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$6;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/SidesFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$6;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/SidesFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$6;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getItemsView()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e4ccccd    # 0.2f

    if-eqz v0, :cond_2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$6;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getNavNext()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$6;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getNavNext()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :goto_0
    if-nez p1, :cond_3

    .line 177
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$6;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getNavPrev()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_1

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$6;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getNavPrev()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 180
    :goto_1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    return-void
.end method
