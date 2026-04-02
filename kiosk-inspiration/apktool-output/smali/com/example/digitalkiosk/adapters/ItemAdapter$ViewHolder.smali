.class public final Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/ItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0016\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mybinding",
        "Lcom/example/digitalkiosk/databinding/ItemButtonBinding;",
        "context",
        "Landroid/content/Context;",
        "fm",
        "Landroidx/fragment/app/FragmentManager;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;",
        "<init>",
        "(Lcom/example/digitalkiosk/databinding/ItemButtonBinding;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;)V",
        "bind",
        "",
        "item",
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
.field private final context:Landroid/content/Context;

.field private final fm:Landroidx/fragment/app/FragmentManager;

.field private final mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

.field private final onClickListener:Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$ChyH-QKDn9CfNDtAC7duSyFcRV8(Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Item;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->bind$lambda$0(Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Item;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/databinding/ItemButtonBinding;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "mybinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 45
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    .line 46
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->context:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->fm:Landroidx/fragment/app/FragmentManager;

    .line 48
    iput-object p4, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Item;Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    iget-object p0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->itemImage:Landroid/widget/ImageView;

    const-string v0, "itemImage"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/View;

    invoke-interface {p2, p1, p0}, Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;->onClick(Lcom/example/digitalkiosk/models/Item;Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/example/digitalkiosk/models/Item;I)V
    .locals 7

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setItem(Lcom/example/digitalkiosk/models/Item;)V

    .line 52
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    rem-int/lit8 p2, p2, 0x2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setDarkshade(Ljava/lang/Boolean;)V

    .line 53
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getPrice()F

    move-result p2

    .line 54
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v0, "%.2f"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string p2, "format(...)"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 57
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getCurrency()Lcom/example/digitalkiosk/models/Currency;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Currency;->getFormat()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    const-string v3, "comma"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 59
    const-string v2, "."

    const-string v3, ","

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz p2, :cond_3

    .line 60
    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Currency;->getPosition()Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0x20

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v3, "right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    .line 63
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 60
    :sswitch_1
    const-string v3, "left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 61
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 60
    :sswitch_2
    const-string v3, "right_space"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 64
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 60
    :sswitch_3
    const-string v3, "left_space"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 62
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Currency;->getSymbol()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    :cond_8
    :goto_3
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    invoke-virtual {p2, v1}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setAmount(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v1, "sold_out"

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->setSoldOutTranslation(Lcom/example/digitalkiosk/models/Translation;)V

    .line 69
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->button:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Item;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d546d32 -> :sswitch_3
        -0x40deedd -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch
.end method
