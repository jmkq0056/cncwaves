.class public final Lcom/example/digitalkiosk/adapters/TablePagesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TablePagesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0016B\u001f\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0018\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000fH\u0016J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\nR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/TablePagesAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;",
        "tables",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Table;",
        "Lkotlin/collections/ArrayList;",
        "<init>",
        "(Ljava/util/ArrayList;)V",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;",
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
.field private onClickListener:Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;

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
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->tables:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    const/16 v2, 0xc

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 13
    check-cast p1, Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->onBindViewHolder(Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    mul-int/lit8 p2, p2, 0xc

    add-int/lit8 v0, p2, 0xb

    .line 43
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->tables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->tables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->tables:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    new-instance v2, Lkotlin/ranges/IntRange;

    invoke-direct {v2, p2, v0}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;->bind(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance p2, Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/example/digitalkiosk/R$layout;->tables_screen:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "getContext(...)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;

    invoke-direct {p2, v0, p1, v1}, Lcom/example/digitalkiosk/adapters/TablePagesAdapter$ViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V

    return-object p2
.end method

.method public final setOnClickListener(Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "onClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;

    return-void
.end method
