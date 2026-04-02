.class public final Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;
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
        "com/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2",
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

.field final synthetic $pos:I

.field final synthetic $shakeAnimationListener:Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;

.field final synthetic $sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/example/digitalkiosk/adapters/ConfigAdapter;ILcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;",
            "Lcom/example/digitalkiosk/adapters/ConfigAdapter;",
            "I",
            "Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;",
            "Lcom/example/digitalkiosk/fragments/ItemConfigFragment;",
            "Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$itemlist:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$configAdapter:Lcom/example/digitalkiosk/adapters/ConfigAdapter;

    iput p3, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    iput-object p4, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iput-object p5, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iput-object p6, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$shakeAnimationListener:Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;

    iput-object p7, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 357
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
    .locals 4
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

    .line 362
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$itemlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 363
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$itemlist:Ljava/util/ArrayList;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 364
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$configAdapter:Lcom/example/digitalkiosk/adapters/ConfigAdapter;

    iget p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->setSidePosition(I)V

    .line 365
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$configAdapter:Lcom/example/digitalkiosk/adapters/ConfigAdapter;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->notifyDataSetChanged()V

    .line 366
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$itemlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x4

    const-string v0, "shakeAnimation"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le p1, p2, :cond_0

    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$itemlist:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0x10

    if-le p1, p2, :cond_3

    .line 367
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicatorsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicators:Lme/relex/circleindicator/CircleIndicator3;

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideItems:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, p2}, Lme/relex/circleindicator/CircleIndicator3;->setViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 369
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getShakeAnimation$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_2
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$shakeAnimationListener:Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$shakeAnimationListener$1;

    check-cast p2, Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 370
    new-instance p1, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2$onResponse$1;

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    invoke-direct {p1, p2, v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2$onResponse$1;-><init>(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V

    .line 377
    invoke-virtual {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2$onResponse$1;->start()Landroid/os/CountDownTimer;

    .line 378
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1, v2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$setDisplayNav$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Z)V

    goto :goto_0

    .line 380
    :cond_3
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicatorsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 381
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getShakeAnimation$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/view/animation/Animation;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 382
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicatorsWrap:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 383
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1, v1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$setDisplayNav$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Z)V

    .line 385
    :goto_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemSide;->getRequired()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    iget p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v3

    :goto_1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_a

    .line 386
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemSide;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "one"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 387
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 388
    :cond_6
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemSide;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "multiple_qty"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 389
    iget p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    .line 388
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 390
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_7
    move-object p1, v3

    .line 388
    :goto_2
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 390
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object p2

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p2

    iget v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemSide;->getMax()Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-gt p1, p2, :cond_9

    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 391
    iget p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    .line 390
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    .line 392
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 390
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 392
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object p2

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p2

    iget v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemSide;->getMin()I

    move-result p2

    if-lt p1, p2, :cond_9

    .line 394
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 395
    :cond_9
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$pos:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemSide;->getType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "multiple"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 396
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$8$2;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v2, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_a
    return-void
.end method
