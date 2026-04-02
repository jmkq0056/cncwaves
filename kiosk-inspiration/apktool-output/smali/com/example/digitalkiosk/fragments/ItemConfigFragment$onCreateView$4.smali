.class public final Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;
.super Ljava/lang/Object;
.source "ItemConfigFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "com/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4",
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
.field final synthetic $binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

.field final synthetic $configAdapter:Lcom/example/digitalkiosk/adapters/ConfigAdapter;

.field final synthetic $itemlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shakeAnimationListener:Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/example/digitalkiosk/adapters/ConfigAdapter;Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;",
            "Lcom/example/digitalkiosk/adapters/ConfigAdapter;",
            "Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;",
            "Lcom/example/digitalkiosk/fragments/ItemConfigFragment;",
            "Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$itemlist:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$configAdapter:Lcom/example/digitalkiosk/adapters/ConfigAdapter;

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iput-object p4, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iput-object p5, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$shakeAnimationListener:Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;

    .line 271
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
    .locals 1
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

    .line 276
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$itemlist:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 277
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$configAdapter:Lcom/example/digitalkiosk/adapters/ConfigAdapter;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->notifyDataSetChanged()V

    .line 278
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$itemlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x4

    if-le p1, p2, :cond_0

    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$itemlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x10

    if-le p1, p2, :cond_3

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicatorsWrap:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicators:Lme/relex/circleindicator/CircleIndicator3;

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideItems:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, p2}, Lme/relex/circleindicator/CircleIndicator3;->setViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 281
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getShakeAnimation$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "shakeAnimation"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_2
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$shakeAnimationListener:Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;

    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 282
    new-instance p1, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4$onResponse$1;

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    invoke-direct {p1, p2, v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4$onResponse$1;-><init>(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V

    .line 289
    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4$onResponse$1;->start()Landroid/os/CountDownTimer;

    .line 290
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$setDisplayNav$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Z)V

    return-void

    .line 292
    :cond_3
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$4;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicatorsWrap:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
