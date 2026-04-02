.class public final Lcom/example/digitalkiosk/adapters/CartAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;,
        Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B\'\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0016J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u000b\u001a\u00020\u000cR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/CartAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;",
        "cartItems",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/CartItem;",
        "Lkotlin/collections/ArrayList;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Ljava/util/ArrayList;Landroid/content/Context;)V",
        "onRemoveListener",
        "Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "getItemCount",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "setOnRemoveListener",
        "ViewHolder",
        "OnRemoveListener",
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
.field private final cartItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItem;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private onRemoveListener:Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;


# direct methods
.method public static synthetic $r8$lambda$bkBHS225XLU2H7x-ECDR1YD01Xc(Lcom/example/digitalkiosk/adapters/CartAdapter;Lcom/example/digitalkiosk/models/CartItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/CartAdapter;->onBindViewHolder$lambda$0(Lcom/example/digitalkiosk/adapters/CartAdapter;Lcom/example/digitalkiosk/models/CartItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "cartItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/CartAdapter;->cartItems:Ljava/util/ArrayList;

    .line 24
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/CartAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private static final onBindViewHolder$lambda$0(Lcom/example/digitalkiosk/adapters/CartAdapter;Lcom/example/digitalkiosk/models/CartItem;Landroid/view/View;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter;->onRemoveListener:Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;->onRemove(Lcom/example/digitalkiosk/models/CartItem;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter;->cartItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/CartAdapter;->onBindViewHolder(Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;I)V
    .locals 29

    move-object/from16 v0, p0

    const-string v1, "holder"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v1, v0, Lcom/example/digitalkiosk/adapters/CartAdapter;->context:Landroid/content/Context;

    const-string v3, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/example/digitalkiosk/ShopActivity;

    .line 64
    iget-object v3, v0, Lcom/example/digitalkiosk/adapters/CartAdapter;->cartItems:Ljava/util/ArrayList;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/example/digitalkiosk/models/CartItem;

    .line 65
    invoke-virtual {v2}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getQuantity()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getQuantity()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v2}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getName()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getName()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getAmount()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%.2f"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "format(...)"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v8, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v8}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object v8

    const-string v13, "right"

    const-string v14, "left"

    const-string v15, "right_space"

    const-string v9, "left_space"

    const-string v10, "comma"

    const/16 v11, 0x20

    const/4 v12, 0x0

    if-eqz v8, :cond_7

    .line 70
    sget-object v8, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v8}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object v16

    if-eqz v16, :cond_0

    .line 71
    invoke-virtual/range {v16 .. v16}, Lcom/example/digitalkiosk/models/Currency;->getFormat()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v12

    :goto_0
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v11

    const/4 v11, 0x4

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move/from16 v18, v8

    .line 72
    const-string v8, "."

    move-object/from16 v19, v9

    const-string v9, ","

    move-object/from16 v20, v10

    const/4 v10, 0x0

    move/from16 v2, v18

    move-object/from16 v5, v19

    move-object/from16 v18, v1

    move-object/from16 v1, v20

    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object/from16 v18, v1

    move-object v5, v9

    move-object v1, v10

    move v2, v11

    move-object v8, v7

    :goto_1
    if-eqz v16, :cond_2

    .line 73
    invoke-virtual/range {v16 .. v16}, Lcom/example/digitalkiosk/models/Currency;->getPosition()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto/16 :goto_3

    .line 76
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 73
    :sswitch_1
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    .line 74
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 73
    :sswitch_2
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    .line 77
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 73
    :sswitch_3
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_3

    .line 75
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_7
    move-object/from16 v18, v1

    move-object v5, v9

    move-object v1, v10

    move v2, v11

    .line 80
    :cond_8
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getPrice()Landroid/widget/TextView;

    move-result-object v8

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getAttributes()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 82
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getAttributes()Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "next(...)"

    const-string v9, "iterator(...)"

    const/4 v10, 0x0

    if-eqz v7, :cond_16

    .line 83
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getAttributes()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 84
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getAttributes()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    :cond_9
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getAttributes()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lcom/example/digitalkiosk/models/CartItemAttribute;

    .line 86
    invoke-virtual {v11}, Lcom/example/digitalkiosk/models/CartItemAttribute;->getItems()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_a

    .line 88
    move-object/from16 v12, v18

    check-cast v12, Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object/from16 v19, v7

    .line 89
    sget v7, Lcom/example/digitalkiosk/R$layout;->cart_attribute:I

    move-object/from16 v20, v11

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 90
    sget v7, Lcom/example/digitalkiosk/R$id;->attribute:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 91
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/example/digitalkiosk/models/CartItemAttribute;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getAttributes()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    invoke-virtual/range {v20 .. v20}, Lcom/example/digitalkiosk/models/CartItemAttribute;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/example/digitalkiosk/models/CartItemAttributeItem;

    .line 95
    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 96
    sget v11, Lcom/example/digitalkiosk/R$layout;->cart_extra:I

    move-object/from16 v20, v2

    move-object/from16 v21, v7

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual {v10, v11, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 97
    sget v2, Lcom/example/digitalkiosk/R$id;->extra:I

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->getQuantity()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "x "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getAttributes()Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 100
    sget v7, Lcom/example/digitalkiosk/R$id;->extra_price:I

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 101
    sget-object v10, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual/range {v21 .. v21}, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->getPrice()F

    move-result v10

    invoke-virtual/range {v21 .. v21}, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->getQuantity()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v11, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v11}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 103
    sget-object v11, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v11}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 104
    invoke-virtual {v11}, Lcom/example/digitalkiosk/models/Currency;->getFormat()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v28, v22

    move-object/from16 v22, v10

    move-object/from16 v10, v28

    goto :goto_6

    :cond_b
    move-object/from16 v22, v10

    const/4 v10, 0x0

    :goto_6
    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const/16 v26, 0x4

    const/16 v27, 0x0

    .line 105
    const-string v23, "."

    const-string v24, ","

    const/16 v25, 0x0

    invoke-static/range {v22 .. v27}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_c
    move-object/from16 v10, v22

    :goto_7
    if-eqz v11, :cond_d

    .line 106
    invoke-virtual {v11}, Lcom/example/digitalkiosk/models/Currency;->getPosition()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v11

    move-object/from16 v11, v22

    goto :goto_8

    :cond_d
    move-object/from16 v23, v11

    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v22

    sparse-switch v22, :sswitch_data_1

    goto/16 :goto_9

    :sswitch_4
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto/16 :goto_9

    .line 109
    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_9

    .line 106
    :sswitch_5
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_9

    .line 107
    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v12

    invoke-virtual/range {v23 .. v23}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :sswitch_6
    move-object/from16 v24, v12

    .line 106
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    goto :goto_a

    .line 110
    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v23 .. v23}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :sswitch_7
    move-object/from16 v24, v12

    .line 106
    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    goto :goto_a

    .line 108
    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v23 .. v23}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :cond_12
    move-object/from16 v22, v10

    :cond_13
    :goto_9
    move-object/from16 v24, v12

    .line 113
    :goto_a
    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual/range {v21 .. v21}, Lcom/example/digitalkiosk/models/CartItemAttributeItem;->getPrice()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_14

    const/4 v10, 0x0

    .line 115
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 117
    :cond_14
    const-string v7, "#6E6E6E"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_b
    move-object/from16 v2, v20

    move-object/from16 v12, v24

    goto/16 :goto_5

    :cond_15
    move-object/from16 v7, v19

    const/16 v2, 0x20

    const/4 v10, 0x0

    goto/16 :goto_4

    .line 124
    :cond_16
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getRemove_ingredients()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 125
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getRemove_ingredients()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getAttributes()Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    :cond_17
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getRemove_ingredients()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/example/digitalkiosk/models/CartItemExtra;

    .line 129
    move-object/from16 v9, v18

    check-cast v9, Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 130
    sget v11, Lcom/example/digitalkiosk/R$layout;->cart_attribute:I

    move-object/from16 v19, v2

    const/4 v2, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 131
    sget v2, Lcom/example/digitalkiosk/R$id;->attribute:I

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 132
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Remove "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/CartItemExtra;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    sget v7, Lcom/example/digitalkiosk/R$color;->red:I

    invoke-static {v9, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    .line 134
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getAttributes()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v2, v19

    goto :goto_c

    .line 139
    :cond_18
    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getSize()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 140
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getAttributes()Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    move-object/from16 v2, v18

    check-cast v2, Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v7, Lcom/example/digitalkiosk/R$layout;->cart_attribute:I

    const/4 v11, 0x0

    invoke-virtual {v2, v7, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 142
    sget v7, Lcom/example/digitalkiosk/R$id;->attribute:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 143
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getSize()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const-string v8, "#438D02"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    sget v7, Lcom/example/digitalkiosk/R$id;->attribute_price:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 146
    sget-object v9, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/CartItem;->getSize_price()Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v9

    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    sget-object v4, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 148
    sget-object v4, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object v4

    if-eqz v4, :cond_19

    .line 149
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Currency;->getFormat()Ljava/lang/String;

    move-result-object v12

    goto :goto_d

    :cond_19
    move-object v12, v11

    :goto_d
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v25, 0x4

    const/16 v26, 0x0

    .line 150
    const-string v22, "."

    const-string v23, ","

    const/16 v24, 0x0

    move-object/from16 v21, v6

    invoke-static/range {v21 .. v26}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :cond_1a
    move-object/from16 v21, v6

    :goto_e
    if-eqz v4, :cond_1b

    .line 151
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Currency;->getPosition()Ljava/lang/String;

    move-result-object v12

    goto :goto_f

    :cond_1b
    move-object v12, v11

    :goto_f
    if-eqz v12, :cond_21

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    goto/16 :goto_10

    :sswitch_8
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_10

    .line 154
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    .line 151
    :sswitch_9
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_10

    .line 152
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    .line 151
    :sswitch_a
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_10

    .line 155
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v11, 0x20

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    .line 151
    :sswitch_b
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_10

    .line 153
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v11, 0x20

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_10

    :cond_20
    move-object/from16 v21, v6

    .line 158
    :cond_21
    :goto_10
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    .line 159
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getAttributes()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    :cond_22
    invoke-virtual/range {p1 .. p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->getRemove()Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/example/digitalkiosk/adapters/CartAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, v3}, Lcom/example/digitalkiosk/adapters/CartAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/CartAdapter;Lcom/example/digitalkiosk/models/CartItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d546d32 -> :sswitch_3
        -0x40deedd -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x6d546d32 -> :sswitch_7
        -0x40deedd -> :sswitch_6
        0x32a007 -> :sswitch_5
        0x677c21c -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6d546d32 -> :sswitch_b
        -0x40deedd -> :sswitch_a
        0x32a007 -> :sswitch_9
        0x677c21c -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/CartAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/example/digitalkiosk/R$layout;->cart_item_tax:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/example/digitalkiosk/R$layout;->cart_item:I

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 54
    new-instance p2, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public final setOnRemoveListener(Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;)V
    .locals 1

    const-string v0, "onRemoveListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/CartAdapter;->onRemoveListener:Lcom/example/digitalkiosk/adapters/CartAdapter$OnRemoveListener;

    return-void
.end method
