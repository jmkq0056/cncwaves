.class public final Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ConfigItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConfigItemAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConfigItemAdapter.kt\ncom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000eR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mybinding",
        "Lcom/example/digitalkiosk/databinding/ItemButtonBinding;",
        "context",
        "Landroid/content/Context;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;",
        "sidePosition",
        "",
        "itemAdapter",
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;",
        "<init>",
        "(Lcom/example/digitalkiosk/databinding/ItemButtonBinding;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;Ljava/lang/Integer;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;)V",
        "Ljava/lang/Integer;",
        "bind",
        "",
        "item",
        "Lcom/example/digitalkiosk/models/Item;",
        "position",
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

.field private final itemAdapter:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;

.field private final mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

.field private final onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

.field private final sidePosition:Ljava/lang/Integer;


# direct methods
.method public static synthetic $r8$lambda$LXVV-2w7QNqiULoEv-astKPzv1c(Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Item;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->bind$lambda$1(Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Item;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/databinding/ItemButtonBinding;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;Ljava/lang/Integer;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;)V
    .locals 1

    const-string v0, "mybinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemAdapter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    .line 30
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->context:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

    .line 32
    iput-object p4, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->sidePosition:Ljava/lang/Integer;

    .line 33
    iput-object p5, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->itemAdapter:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;

    return-void
.end method

.method private static final bind$lambda$1(Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Item;ILandroid/view/View;)V
    .locals 0

    .line 51
    iget-object p3, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

    if-eqz p3, :cond_0

    .line 52
    invoke-interface {p3, p1, p2}, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;->onClick(Lcom/example/digitalkiosk/models/Item;I)V

    .line 53
    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->itemAdapter:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/example/digitalkiosk/models/Item;I)V
    .locals 8

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->context:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/example/digitalkiosk/ShopActivity;

    .line 37
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    invoke-virtual {v1, p1}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setItem(Lcom/example/digitalkiosk/models/Item;)V

    .line 38
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    rem-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 38
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setDarkshade(Ljava/lang/Boolean;)V

    .line 39
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    invoke-virtual {v1, v5}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setSelected(Ljava/lang/Boolean;)V

    .line 40
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->sidePosition:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 41
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getSelected_sides()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->sidePosition:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/example/digitalkiosk/models/CartItemSide;

    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/CartItemSide;->getId()I

    move-result v6

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result v7

    if-ne v6, v7, :cond_1

    move-object v2, v5

    :cond_2
    check-cast v2, Lcom/example/digitalkiosk/models/CartItemSide;

    .line 42
    :cond_3
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setSelected(Ljava/lang/Boolean;)V

    .line 43
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/example/digitalkiosk/models/CartItemSide;->getQuantity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setCount(Ljava/lang/Integer;)V

    goto :goto_3

    .line 45
    :cond_6
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    invoke-virtual {v1, v5}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setSelected(Ljava/lang/Boolean;)V

    .line 47
    :goto_3
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getPrice()F

    move-result v1

    .line 48
    iget-object v2, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/ShopActivity;->convertAmountToFormat(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setAmount(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    sget-object v1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v2, "sold_out"

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setSoldOutTranslation(Lcom/example/digitalkiosk/models/Translation;)V

    .line 50
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->button:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Item;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
