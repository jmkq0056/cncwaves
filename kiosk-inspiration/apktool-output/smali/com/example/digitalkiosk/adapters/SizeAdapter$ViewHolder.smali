.class public final Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SizeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/SizeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mybinding",
        "Lcom/example/digitalkiosk/databinding/SizeButtonBinding;",
        "item",
        "Lcom/example/digitalkiosk/models/ItemDetails;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;",
        "<init>",
        "(Lcom/example/digitalkiosk/databinding/SizeButtonBinding;Lcom/example/digitalkiosk/models/ItemDetails;Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;)V",
        "bind",
        "",
        "size",
        "Lcom/example/digitalkiosk/models/Size;",
        "count",
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
.field private final item:Lcom/example/digitalkiosk/models/ItemDetails;

.field private final mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

.field private final onClickListener:Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$iMTK2NA_GgEvaLqhOfoVJVi8Od4(Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Size;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->bind$lambda$0(Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Size;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/databinding/SizeButtonBinding;Lcom/example/digitalkiosk/models/ItemDetails;Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "mybinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 20
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    .line 21
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->item:Lcom/example/digitalkiosk/models/ItemDetails;

    .line 22
    iput-object p3, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Size;Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Size;->getSlug()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;->onClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/example/digitalkiosk/models/Size;I)V
    .locals 4

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->item:Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->setItem(Lcom/example/digitalkiosk/models/ItemDetails;)V

    .line 26
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->setSize(Lcom/example/digitalkiosk/models/Size;)V

    .line 27
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    sget-object v1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->setHandicapOn(Ljava/lang/Boolean;)V

    .line 28
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->sizeName:Landroid/widget/TextView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 30
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->itemName:Landroid/widget/TextView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 31
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->sizePrice:Landroid/widget/TextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->button:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Size;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->setDoubleSize(Ljava/lang/Boolean;)V

    .line 37
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    if-ne p2, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->setTrippleSize(Ljava/lang/Boolean;)V

    .line 38
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Size;->getSlug()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->setIsXl(Ljava/lang/Boolean;)V

    .line 39
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Size;->getSlug()Ljava/lang/String;

    move-result-object v0

    const-string v1, "large"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->setIsLarge(Ljava/lang/Boolean;)V

    .line 40
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Size;->getSlug()Ljava/lang/String;

    move-result-object p1

    const-string v0, "medium"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->setIsMedium(Ljava/lang/Boolean;)V

    return-void
.end method
