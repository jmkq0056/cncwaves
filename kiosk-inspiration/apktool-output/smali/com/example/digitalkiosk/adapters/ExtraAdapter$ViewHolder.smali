.class public final Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ExtraAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/ExtraAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExtraAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExtraAdapter.kt\ncom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,95:1\n1#2:96\n774#3:97\n865#3,2:98\n*S KotlinDebug\n*F\n+ 1 ExtraAdapter.kt\ncom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder\n*L\n68#1:97\n68#1:98,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mybinding",
        "Lcom/example/digitalkiosk/databinding/ItemExtraBinding;",
        "context",
        "Landroid/content/Context;",
        "shoptimer",
        "Landroid/os/CountDownTimer;",
        "<init>",
        "(Lcom/example/digitalkiosk/databinding/ItemExtraBinding;Landroid/content/Context;Landroid/os/CountDownTimer;)V",
        "bind",
        "",
        "extra",
        "Lcom/example/digitalkiosk/models/Extra;",
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
.field private final context:Landroid/content/Context;

.field private final mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

.field private final shoptimer:Landroid/os/CountDownTimer;


# direct methods
.method public static synthetic $r8$lambda$BZM8bAKHXGdDmoUwe1pykaV3008(Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->bind$lambda$9(Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JnfkfBJ4NX06HeFOO4rKEbc5f2E(Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->bind$lambda$3(Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/databinding/ItemExtraBinding;Landroid/content/Context;Landroid/os/CountDownTimer;)V
    .locals 1

    const-string v0, "mybinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    .line 31
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->context:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->shoptimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/example/digitalkiosk/databinding/ItemExtraBinding;Landroid/content/Context;Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 29
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;-><init>(Lcom/example/digitalkiosk/databinding/ItemExtraBinding;Landroid/content/Context;Landroid/os/CountDownTimer;)V

    return-void
.end method

.method private static final bind$lambda$3(Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V
    .locals 6

    .line 43
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 44
    :cond_0
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    const/4 p2, 0x1

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getExtras()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/example/digitalkiosk/models/CartItemExtra;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/CartItemExtra;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    check-cast v3, Lcom/example/digitalkiosk/models/CartItemExtra;

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_b

    .line 47
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemToAdd;->getExtras()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/example/digitalkiosk/models/CartItemExtra;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItemExtra;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result v4

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_6
    move-object v1, v2

    :goto_2
    check-cast v1, Lcom/example/digitalkiosk/models/CartItemExtra;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/CartItemExtra;->getQuantity()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_8

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    move-object v0, p2

    .line 51
    :cond_8
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p2

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemToAdd;->getExtras()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_c

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/example/digitalkiosk/models/CartItemExtra;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItemExtra;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result v4

    if-ne v3, v4, :cond_9

    move-object v2, v1

    :cond_a
    check-cast v2, Lcom/example/digitalkiosk/models/CartItemExtra;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v0}, Lcom/example/digitalkiosk/models/CartItemExtra;->setQuantity(Ljava/lang/Integer;)V

    goto :goto_4

    .line 53
    :cond_b
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getExtras()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v2, Lcom/example/digitalkiosk/models/CartItemExtra;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v2, v3, p1, p2}, Lcom/example/digitalkiosk/models/CartItemExtra;-><init>(ILjava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_c
    :goto_4
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "API"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->setQuantity(Ljava/lang/String;)V

    return-void
.end method

.method private static final bind$lambda$9(Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;Landroid/view/View;)V
    .locals 6

    .line 61
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 62
    :cond_0
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    const/4 p2, 0x0

    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getExtras()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/example/digitalkiosk/models/CartItemExtra;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/CartItemExtra;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    check-cast v3, Lcom/example/digitalkiosk/models/CartItemExtra;

    goto :goto_1

    :cond_4
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_11

    .line 65
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemToAdd;->getExtras()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/example/digitalkiosk/models/CartItemExtra;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItemExtra;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result v4

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_6
    move-object v1, v2

    :goto_2
    check-cast v1, Lcom/example/digitalkiosk/models/CartItemExtra;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/CartItemExtra;->getQuantity()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    const/4 v1, 0x1

    if-nez v0, :cond_8

    goto :goto_5

    .line 66
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v1, :cond_d

    .line 67
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 68
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/ItemToAdd;->getExtras()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_b

    check-cast v1, Ljava/lang/Iterable;

    .line 97
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 98
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/example/digitalkiosk/models/CartItemExtra;

    .line 68
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/CartItemExtra;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result v5

    if-eq v4, v5, :cond_9

    .line 98
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 99
    :cond_a
    check-cast v2, Ljava/util/List;

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    check-cast v2, Ljava/util/Collection;

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, p1

    .line 67
    :cond_b
    invoke-virtual {v0, v2}, Lcom/example/digitalkiosk/models/ItemToAdd;->setExtras(Ljava/util/ArrayList;)V

    .line 70
    :cond_c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :cond_d
    :goto_5
    if-eqz v0, :cond_e

    .line 72
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    move-object v0, p2

    goto :goto_6

    :cond_e
    move-object v0, v2

    .line 73
    :goto_6
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/ItemToAdd;->getExtras()Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_11

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/example/digitalkiosk/models/CartItemExtra;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItemExtra;->getId()I

    move-result v3

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getId()I

    move-result v4

    if-ne v3, v4, :cond_f

    move-object v2, v1

    :cond_10
    check-cast v2, Lcom/example/digitalkiosk/models/CartItemExtra;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v0}, Lcom/example/digitalkiosk/models/CartItemExtra;->setQuantity(Ljava/lang/Integer;)V

    .line 76
    :cond_11
    :goto_7
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "API"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->setQuantity(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/example/digitalkiosk/models/Extra;I)V
    .locals 3

    const-string p2, "extra"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->context:Landroid/content/Context;

    const-string v1, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/example/digitalkiosk/ShopActivity;

    .line 36
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    invoke-virtual {v1, p1}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->setExtra(Lcom/example/digitalkiosk/models/Extra;)V

    .line 37
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    sget-object v2, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v2, p2}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->setExtraTerm(Lcom/example/digitalkiosk/models/Translation;)V

    .line 38
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Extra;->getPrice()F

    move-result p2

    .line 39
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    invoke-virtual {v0, p2}, Lcom/example/digitalkiosk/ShopActivity;->convertAmountToFormat(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->setAmount(Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v1, "sold_out"

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->setSoldOutTranslation(Lcom/example/digitalkiosk/models/Translation;)V

    .line 41
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    const-string v0, "0"

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->setQuantity(Ljava/lang/String;)V

    .line 42
    new-instance p2, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;)V

    .line 58
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->fullExtraButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->addExtra:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->subtractExtra:Landroid/widget/ImageButton;

    new-instance v0, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/adapters/ExtraAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Extra;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
