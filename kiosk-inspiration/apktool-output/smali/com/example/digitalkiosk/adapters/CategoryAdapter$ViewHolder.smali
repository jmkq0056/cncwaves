.class public final Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CategoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/CategoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mybinding",
        "Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;",
        "<init>",
        "(Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;)V",
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
.field private final mybinding:Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

.field private final onClickListener:Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$4Iz3SK8D0ue6fojS5wjjNUfUees(Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Category;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->bind$lambda$0(Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Category;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "mybinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Category;Landroid/view/View;)V
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;

    if-eqz p0, :cond_0

    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;->onClick(Lcom/example/digitalkiosk/models/Category;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/example/digitalkiosk/models/Category;)V
    .locals 2

    const-string v0, "category"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->setCategory(Lcom/example/digitalkiosk/models/Category;)V

    .line 26
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getSelectedCategory()Lcom/example/digitalkiosk/models/Category;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->setSelectedCategory(Ljava/lang/Boolean;)V

    .line 27
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    sget-object v1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->setHandicapOn(Ljava/lang/Boolean;)V

    .line 28
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->button:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Category;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
