.class public final Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "SidesFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/SidesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/util/ArrayList<",
        "Lcom/example/digitalkiosk/models/Item;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u0001JD\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00082\u001c\u0010\t\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\nH\u0016J.\u0010\u000b\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/SidesFragment$onCreateView$2",
        "Lretrofit2/Callback;",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Item;",
        "Lkotlin/collections/ArrayList;",
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
.field final synthetic $items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shakeAnimationListener:Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$shakeAnimationListener$1;

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/example/digitalkiosk/fragments/SidesFragment;Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$shakeAnimationListener$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;",
            "Lcom/example/digitalkiosk/fragments/SidesFragment;",
            "Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$shakeAnimationListener$1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->$items:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->$shakeAnimationListener:Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$shakeAnimationListener$1;

    .line 98
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
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;>;",
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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->$items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 104
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->$items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 105
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    new-instance p2, Lcom/example/digitalkiosk/adapters/ConfigAdapter;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->$items:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getShopActivity()Lcom/example/digitalkiosk/ShopActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p2, v0, v1}, Lcom/example/digitalkiosk/adapters/ConfigAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/fragments/SidesFragment;->setItemsAdapter(Lcom/example/digitalkiosk/adapters/ConfigAdapter;)V

    .line 106
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getItemsAdapter()Lcom/example/digitalkiosk/adapters/ConfigAdapter;

    move-result-object p1

    new-instance p2, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$1;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-direct {p2, v0}, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$1;-><init>(Lcom/example/digitalkiosk/fragments/SidesFragment;)V

    check-cast p2, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->setOnClickListener(Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;)V

    .line 117
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getItemsView()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getItemsAdapter()Lcom/example/digitalkiosk/adapters/ConfigAdapter;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 118
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->$items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x4

    if-le p1, p2, :cond_0

    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->$items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x10

    if-le p1, p2, :cond_3

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getSideIndicatorWrap()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getCircleIndicator()Lme/relex/circleindicator/CircleIndicator3;

    move-result-object p1

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getItemsView()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lme/relex/circleindicator/CircleIndicator3;->setViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 121
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/SidesFragment;->access$getShakeAnimation$p(Lcom/example/digitalkiosk/fragments/SidesFragment;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "shakeAnimation"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->$shakeAnimationListener:Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$shakeAnimationListener$1;

    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    new-instance p1, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$2;

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-direct {p1, p2}, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$2;-><init>(Lcom/example/digitalkiosk/fragments/SidesFragment;)V

    .line 129
    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$2;->start()Landroid/os/CountDownTimer;

    .line 130
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/example/digitalkiosk/fragments/SidesFragment;->access$setDisplayNav$p(Lcom/example/digitalkiosk/fragments/SidesFragment;Z)V

    return-void

    .line 132
    :cond_3
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getSideIndicatorWrap()Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
