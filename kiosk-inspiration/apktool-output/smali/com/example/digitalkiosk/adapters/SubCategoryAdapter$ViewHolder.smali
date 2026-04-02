.class public final Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SubCategoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/SubCategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mybinding",
        "Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;Landroid/content/Context;)V",
        "bind",
        "",
        "category",
        "Lcom/example/digitalkiosk/models/Category;",
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

.field private final mybinding:Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;

.field private final onClickListener:Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$AIfxaBImFk4XbATW9a39JS13IUk(Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Category;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;->bind$lambda$0(Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Category;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;Landroid/content/Context;)V
    .locals 1

    const-string v0, "mybinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;

    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;

    iput-object p3, p0, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;->context:Landroid/content/Context;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Category;Landroid/view/View;)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$OnClickListener;->onClick(Lcom/example/digitalkiosk/models/Category;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/example/digitalkiosk/models/Category;)V
    .locals 5

    .line 26
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v1, "show_all_categories"

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;

    const/4 v2, 0x0

    if-nez p1, :cond_2

    new-instance v3, Lcom/example/digitalkiosk/models/Category;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Show All"

    :cond_1
    const-string v4, ""

    invoke-direct {v3, v2, v4, v0}, Lcom/example/digitalkiosk/models/Category;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, p1

    :goto_0
    invoke-virtual {v1, v3}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;->setCategory(Lcom/example/digitalkiosk/models/Category;)V

    .line 28
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;

    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getSelectedSubCategory()Lcom/example/digitalkiosk/models/Category;

    move-result-object v1

    if-ne p1, v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;->setSelectedCategory(Ljava/lang/Boolean;)V

    .line 29
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/SubCategoryAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Category;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
