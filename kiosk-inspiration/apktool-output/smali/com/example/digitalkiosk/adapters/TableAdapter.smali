.class public final Lcom/example/digitalkiosk/adapters/TableAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TableAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;,
        Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B)\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/TableAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;",
        "tables",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Table;",
        "Lkotlin/collections/ArrayList;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;",
        "<init>",
        "(Ljava/util/ArrayList;Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V",
        "binding",
        "Lcom/example/digitalkiosk/databinding/TableButtonBinding;",
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
.field private binding:Lcom/example/digitalkiosk/databinding/TableButtonBinding;

.field private final onClickListener:Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;

.field private final tables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;",
            "Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;",
            ")V"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/TableAdapter;->tables:Ljava/util/ArrayList;

    .line 14
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/TableAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/TableAdapter;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 12
    check-cast p1, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/TableAdapter;->onBindViewHolder(Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/TableAdapter;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/example/digitalkiosk/models/Table;

    .line 47
    invoke-virtual {p1, v0, p2}, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;->bind(Lcom/example/digitalkiosk/models/Table;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/TableAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/TableAdapter;->binding:Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    .line 38
    new-instance p1, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;

    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/TableAdapter;->binding:Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    if-nez p2, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/TableAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;

    invoke-direct {p1, p2, v0}, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;-><init>(Lcom/example/digitalkiosk/databinding/TableButtonBinding;Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V

    return-object p1
.end method
