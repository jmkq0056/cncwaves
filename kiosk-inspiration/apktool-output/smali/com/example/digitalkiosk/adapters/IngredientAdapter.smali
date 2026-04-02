.class public final Lcom/example/digitalkiosk/adapters/IngredientAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "IngredientAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B3\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0013H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/IngredientAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;",
        "extras",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Extra;",
        "Lkotlin/collections/ArrayList;",
        "context",
        "Landroid/content/Context;",
        "shoptimer",
        "Landroid/os/CountDownTimer;",
        "<init>",
        "(Ljava/util/ArrayList;Landroid/content/Context;Landroid/os/CountDownTimer;)V",
        "binding",
        "Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;",
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
        "ViewHolder",
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
.field private binding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

.field private final context:Landroid/content/Context;

.field private final extras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Extra;",
            ">;"
        }
    .end annotation
.end field

.field private final shoptimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Landroid/os/CountDownTimer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Extra;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/os/CountDownTimer;",
            ")V"
        }
    .end annotation

    const-string v0, "extras"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->extras:Ljava/util/ArrayList;

    .line 24
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->context:Landroid/content/Context;

    .line 25
    iput-object p3, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->shoptimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 22
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/example/digitalkiosk/adapters/IngredientAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Landroid/os/CountDownTimer;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->extras:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->onBindViewHolder(Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->extras:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/example/digitalkiosk/models/Extra;

    .line 73
    invoke-virtual {p1, v0, p2}, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;->bind(Lcom/example/digitalkiosk/models/Extra;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->binding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

    .line 64
    new-instance p1, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;

    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->binding:Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;

    if-nez p2, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/IngredientAdapter;->shoptimer:Landroid/os/CountDownTimer;

    invoke-direct {p1, p2, v0, v1}, Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;-><init>(Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;Landroid/content/Context;Landroid/os/CountDownTimer;)V

    return-object p1
.end method
