.class public final Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "TableSelectionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "com/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    .line 149
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 6

    .line 151
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getOptionsTimer$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getOptionsTimer$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 153
    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 154
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTablesview$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const-string v0, "tablesview"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    const v2, 0x3e4ccccd    # 0.2f

    const-string v3, "tablesNext"

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ne v5, v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTablesNext$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_0

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTablesNext$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 158
    :goto_0
    const-string v0, "tablesPrev"

    if-nez p1, :cond_7

    .line 159
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTablesPrev$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-nez p1, :cond_6

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v1, p1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void

    .line 161
    :cond_7
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTablesPrev$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-nez p1, :cond_8

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    move-object v1, p1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method
