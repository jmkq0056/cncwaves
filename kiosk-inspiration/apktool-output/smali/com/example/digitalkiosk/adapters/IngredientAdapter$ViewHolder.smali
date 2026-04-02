.class public final Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "IngredientAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/IngredientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIngredientAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IngredientAdapter.kt\ncom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,75:1\n1#2:76\n774#3:77\n865#3,2:78\n*S KotlinDebug\n*F\n+ 1 IngredientAdapter.kt\ncom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder\n*L\n54#1:77\n54#1:78,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mybinding",
        "Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;",
        "context",
        "Landroid/content/Context;",
        "shoptimer",
        "Landroid/os/CountDownTimer;",
        "<init>",
        "(Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;Landroid/content/Context;Landroid/os/CountDownTimer;)V",
        "bind",
        "",
        "extra",
        "Lcom/example/digitalkiosk/models/Extra;",
        "position",
        "",
        "ingredientCheck",
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
.field private final context:Landroid/content/Context;

.field private final mybinding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

.field private final shoptimer:Landroid/os/CountDownTimer;


# direct methods
.method public static synthetic $r8$lambda$3JEISEywoCmbAnb1zgHbsDI9f_s(Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->bind$lambda$1(Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Pp1niIyOfaCa96X3tWFVNcXZud4(Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->bind$lambda$0(Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;Landroid/content/Context;Landroid/os/CountDownTimer;)V
    .locals 1

    const-string v0, "mybinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

    .line 31
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->context:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->shoptimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;Landroid/content/Context;Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;-><init>(Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;Landroid/content/Context;Landroid/os/CountDownTimer;)V

    return-void
.end method

.method private static final bind$lambda$0(Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 40
    :cond_0
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 41
    :cond_1
    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->ingredientCheck(Lcom/example/digitalkiosk/models/Extra;)V

    .line 42
    sget-object p0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "API"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final bind$lambda$1(Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->ingredientCheck(Lcom/example/digitalkiosk/models/Extra;)V

    return-void
.end method

.method private final ingredientCheck(Lcom/example/digitalkiosk/models/Extra;)V
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;->getSelected()Ljava/lang/Boolean;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;->setSelected(Ljava/lang/Boolean;)V

    .line 52
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemToAdd;->getRemove_ingredients()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    check-cast v1, Ljava/lang/Integer;

    goto :goto_2

    :cond_3
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_7

    .line 53
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 54
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getRemove_ingredients()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    check-cast v1, Ljava/lang/Iterable;

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 78
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 54
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 78
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 79
    :cond_5
    check-cast v2, Ljava/util/List;

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, p1

    .line 53
    :cond_6
    invoke-virtual {v0, v2}, Lcom/example/digitalkiosk/models/ItemToAdd;->setRemove_ingredients(Ljava/util/ArrayList;)V

    return-void

    .line 57
    :cond_7
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemToAdd;->getRemove_ingredients()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method


# virtual methods
.method public final bind(Lcom/example/digitalkiosk/models/Extra;I)V
    .locals 1

    const-string p2, "extra"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->context:Landroid/content/Context;

    const-string v0, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/example/digitalkiosk/ShopActivity;

    .line 36
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;->setExtra(Lcom/example/digitalkiosk/models/Extra;)V

    .line 37
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;->setSelected(Ljava/lang/Boolean;)V

    .line 38
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;->ingredientButton:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;->remove:Landroid/widget/ImageButton;

    new-instance v0, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
