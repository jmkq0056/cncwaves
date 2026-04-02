.class public final Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;
.super Ljava/lang/Object;
.source "ItemConfigFragment.kt"

# interfaces
.implements Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nItemConfigFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ItemConfigFragment.kt\ncom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,575:1\n1869#2,2:576\n1563#2:579\n1634#2,3:580\n774#2:583\n865#2,2:584\n1#3:578\n*S KotlinDebug\n*F\n+ 1 ItemConfigFragment.kt\ncom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3\n*L\n117#1:576,2\n138#1:579\n138#1:580,3\n149#1:583\n149#1:584,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3",
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;",
        "onClick",
        "",
        "model",
        "Lcom/example/digitalkiosk/models/Item;",
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
.field final synthetic $binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

.field final synthetic $configAdapter:Lcom/example/digitalkiosk/adapters/ConfigAdapter;

.field final synthetic $sidePosition:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;


# direct methods
.method public static synthetic $r8$lambda$0pEJUdul4HcYLU0sGi_iWs_yCqQ(Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V
    .locals 0

    invoke-static {p0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->onClick$lambda$8(Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V

    return-void
.end method

.method public static synthetic $r8$lambda$43RVmzVWw0aVcHf9NTjyjL0l-CY(Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V
    .locals 0

    invoke-static {p0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->onClick$lambda$2(Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V

    return-void
.end method

.method constructor <init>(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Lkotlin/jvm/internal/Ref$IntRef;Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/example/digitalkiosk/adapters/ConfigAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$sidePosition:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iput-object p4, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$configAdapter:Lcom/example/digitalkiosk/adapters/ConfigAdapter;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onClick$lambda$2(Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V
    .locals 1

    .line 128
    iget-object p0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mandatoryWarning:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private static final onClick$lambda$8(Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mandatoryWarning:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public onClick(Lcom/example/digitalkiosk/models/Item;I)V
    .locals 11

    const-string p2, "model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/os/CountDownTimer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/os/CountDownTimer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 115
    :cond_1
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$sidePosition:Lkotlin/jvm/internal/Ref$IntRef;

    iget p2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 117
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    .line 576
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/example/digitalkiosk/models/CartItemSide;

    .line 118
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItemSide;->getQuantity()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 120
    :cond_3
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/example/digitalkiosk/models/CartItemSide;

    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/CartItemSide;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result v6

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_5
    move-object v4, v3

    :goto_1
    check-cast v4, Lcom/example/digitalkiosk/models/CartItemSide;

    goto :goto_2

    :cond_6
    move-object v4, v3

    :goto_2
    const-wide/16 v5, 0xbb8

    const-string v0, "multiple_qty"

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-eqz v4, :cond_15

    .line 121
    iget-object v4, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v4}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemSide;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 122
    iget-object v4, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v4}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemSide;->getMax()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v4}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemSide;->getMax()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v2, v4, :cond_8

    .line 123
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->warningMax:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->warningSelect:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->warningMin:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getWarningTimer$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Ljava/util/TimerTask;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 127
    :cond_7
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getMainHandler$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object v4, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    new-instance v7, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    iget-object v7, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iget-object v9, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    new-instance v10, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$$inlined$schedule$1;

    invoke-direct {v10, v7, v9}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$$inlined$schedule$1;-><init>(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V

    check-cast v10, Ljava/util/TimerTask;

    invoke-virtual {v4, v10, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {p1, v10}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$setWarningTimer$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Ljava/util/TimerTask;)V

    goto/16 :goto_7

    .line 136
    :cond_8
    sget-object v4, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 137
    sget-object v5, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v5}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    check-cast v5, Ljava/lang/Iterable;

    .line 579
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v6, Ljava/util/Collection;

    .line 580
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 581
    check-cast v7, Lcom/example/digitalkiosk/models/CartItemSide;

    .line 139
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/CartItemSide;->getId()I

    move-result v9

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result v10

    if-ne v9, v10, :cond_9

    .line 140
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/CartItemSide;->getQuantity()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v7, v9}, Lcom/example/digitalkiosk/models/CartItemSide;->setQuantity(I)V

    .line 581
    :cond_9
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 582
    :cond_a
    check-cast v6, Ljava/util/List;

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    check-cast v6, Ljava/util/Collection;

    invoke-direct {p1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_4

    :cond_b
    move-object p1, v3

    .line 136
    :goto_4
    invoke-virtual {v4, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 147
    :cond_d
    sget-object v4, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 148
    sget-object v5, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v5}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_10

    check-cast v5, Ljava/lang/Iterable;

    .line 583
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 584
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/example/digitalkiosk/models/CartItemSide;

    .line 149
    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/CartItemSide;->getId()I

    move-result v9

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result v10

    if-eq v9, v10, :cond_e

    .line 584
    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 585
    :cond_f
    check-cast v6, Ljava/util/List;

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    check-cast v6, Ljava/util/Collection;

    invoke-direct {p1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_6

    :cond_10
    move-object p1, v3

    .line 147
    :goto_6
    invoke-virtual {v4, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 152
    :cond_11
    :goto_7
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemSide;->getRequired()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 153
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_13

    .line 154
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 155
    :cond_13
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemSide;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemSide;->getMin()I

    move-result p1

    if-ge v2, p1, :cond_14

    .line 156
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 158
    :cond_14
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v8, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 161
    :cond_15
    iget-object v4, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v4}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemSide;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v9, "one"

    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 163
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    :cond_16
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz p2, :cond_17

    new-instance v0, Lcom/example/digitalkiosk/models/CartItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result p1

    invoke-direct {v0, p1, v8}, Lcom/example/digitalkiosk/models/CartItemSide;-><init>(II)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_17
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$configAdapter:Lcom/example/digitalkiosk/adapters/ConfigAdapter;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->notifyDataSetChanged()V

    .line 166
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v8, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 167
    :cond_18
    iget-object v4, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v4}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object v4

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/ItemSide;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemSide;->getMax()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemSide;->getMax()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemSide;->getMax()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v2, v0, :cond_1b

    :cond_19
    add-int/2addr v2, v8

    .line 169
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1a

    new-instance v1, Lcom/example/digitalkiosk/models/CartItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result p1

    invoke-direct {v1, p1, v8}, Lcom/example/digitalkiosk/models/CartItemSide;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1a
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemSide;->getMin()I

    move-result p1

    if-lt v2, p1, :cond_1e

    .line 171
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v8, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void

    .line 172
    :cond_1b
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getItem$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Lcom/example/digitalkiosk/models/ItemDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/digitalkiosk/models/ItemSide;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemSide;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "multiple"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 174
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    new-instance v1, Lcom/example/digitalkiosk/models/CartItemSide;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result p1

    invoke-direct {v1, p1, v8}, Lcom/example/digitalkiosk/models/CartItemSide;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_1c
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_1e

    .line 176
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$sideRequirementsFulfilled:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v8, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_1e
    return-void

    .line 178
    :cond_1f
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->warningMax:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->warningSelect:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->warningMin:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getWarningTimer$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Ljava/util/TimerTask;

    move-result-object p1

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 182
    :cond_20
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$getMainHandler$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    new-instance v0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    new-instance p2, Ljava/util/Timer;

    invoke-direct {p2}, Ljava/util/Timer;-><init>()V

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->this$0:Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3;->$binding:Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    new-instance v2, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$$inlined$schedule$2;

    invoke-direct {v2, v0, v1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$onCreateView$3$onClick$$inlined$schedule$2;-><init>(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;)V

    check-cast v2, Ljava/util/TimerTask;

    invoke-virtual {p2, v2, v5, v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {p1, v2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->access$setWarningTimer$p(Lcom/example/digitalkiosk/fragments/ItemConfigFragment;Ljava/util/TimerTask;)V

    return-void
.end method
