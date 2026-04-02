.class public final Lcom/example/digitalkiosk/adapters/SizeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SizeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;,
        Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001a\u001bB\'\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0013H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0013H\u0016J\u000e\u0010\u0019\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u000eR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/SizeAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;",
        "sizes",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Size;",
        "Lkotlin/collections/ArrayList;",
        "item",
        "Lcom/example/digitalkiosk/models/ItemDetails;",
        "<init>",
        "(Ljava/util/ArrayList;Lcom/example/digitalkiosk/models/ItemDetails;)V",
        "binding",
        "Lcom/example/digitalkiosk/databinding/SizeButtonBinding;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;",
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
        "setOnClickListener",
        "ViewHolder",
        "OnClickListener",
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
.field private binding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

.field private final item:Lcom/example/digitalkiosk/models/ItemDetails;

.field private onClickListener:Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;

.field private final sizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/example/digitalkiosk/models/ItemDetails;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Size;",
            ">;",
            "Lcom/example/digitalkiosk/models/ItemDetails;",
            ")V"
        }
    .end annotation

    const-string v0, "sizes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter;->sizes:Ljava/util/ArrayList;

    .line 15
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter;->item:Lcom/example/digitalkiosk/models/ItemDetails;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/SizeAdapter;->onBindViewHolder(Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "get(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/example/digitalkiosk/models/Size;

    .line 55
    invoke-virtual {p0}, Lcom/example/digitalkiosk/adapters/SizeAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;->bind(Lcom/example/digitalkiosk/models/Size;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/SizeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter;->binding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    .line 46
    new-instance p1, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;

    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter;->binding:Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    if-nez p2, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter;->item:Lcom/example/digitalkiosk/models/ItemDetails;

    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;

    invoke-direct {p1, p2, v0, v1}, Lcom/example/digitalkiosk/adapters/SizeAdapter$ViewHolder;-><init>(Lcom/example/digitalkiosk/databinding/SizeButtonBinding;Lcom/example/digitalkiosk/models/ItemDetails;Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;)V

    return-object p1
.end method

.method public final setOnClickListener(Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "onClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/SizeAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/SizeAdapter$OnClickListener;

    return-void
.end method
