.class public final Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ConfigItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;,
        Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001b\u001cB;\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000cH\u0016J\u0008\u0010\u0016\u001a\u00020\u000cH\u0016J\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u000cH\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;",
        "items",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Item;",
        "Lkotlin/collections/ArrayList;",
        "context",
        "Landroid/content/Context;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;",
        "sidePosition",
        "",
        "<init>",
        "(Ljava/util/ArrayList;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "binding",
        "Lcom/example/digitalkiosk/databinding/ItemButtonBinding;",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
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
.field private binding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

.field private final context:Landroid/content/Context;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;"
        }
    .end annotation
.end field

.field private final onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

.field private final sidePosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->items:Ljava/util/ArrayList;

    .line 22
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

    .line 24
    iput-object p4, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->sidePosition:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->onBindViewHolder(Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/example/digitalkiosk/models/Item;

    .line 70
    invoke-virtual {p1, v0, p2}, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;->bind(Lcom/example/digitalkiosk/models/Item;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;
    .locals 6

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->binding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    .line 61
    new-instance v0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;

    iget-object p1, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->binding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    if-nez p1, :cond_0

    const-string p1, "binding"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    move-object v1, p1

    iget-object v2, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

    iget-object v4, p0, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;->sidePosition:Ljava/lang/Integer;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$ViewHolder;-><init>(Lcom/example/digitalkiosk/databinding/ItemButtonBinding;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;Ljava/lang/Integer;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;)V

    return-object v0
.end method
