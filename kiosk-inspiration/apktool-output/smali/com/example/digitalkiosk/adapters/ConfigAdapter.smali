.class public final Lcom/example/digitalkiosk/adapters/ConfigAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ConfigAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB\'\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u000eH\u0016J\u0008\u0010\u0015\u001a\u00020\u000eH\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000eH\u0016J\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u000eR\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/ConfigAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;",
        "items",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Item;",
        "Lkotlin/collections/ArrayList;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Ljava/util/ArrayList;Landroid/content/Context;)V",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;",
        "sidePosition",
        "",
        "Ljava/lang/Integer;",
        "totalItems",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "getItemCount",
        "onBindViewHolder",
        "",
        "holder",
        "position",
        "setOnClickListener",
        "setSidePosition",
        "pos",
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

.field private onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

.field private sidePosition:Ljava/lang/Integer;

.field private totalItems:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->items:Ljava/util/ArrayList;

    .line 18
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->context:Landroid/content/Context;

    const/16 p1, 0x10

    .line 23
    iput p1, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->totalItems:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    .line 43
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 44
    iput v0, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->totalItems:I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->totalItems:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->onBindViewHolder(Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 50
    iput v0, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->totalItems:I

    .line 51
    :cond_0
    iget v0, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->totalItems:I

    mul-int v1, p2, v0

    add-int/lit8 v2, v0, -0x1

    mul-int/2addr p2, v0

    add-int/2addr v2, p2

    .line 53
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt v2, p2, :cond_1

    .line 54
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 v2, p2, -0x1

    .line 55
    :cond_1
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->items:Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    new-instance v0, Lkotlin/ranges/IntRange;

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->slice(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object p2

    .line 56
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->sidePosition:Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0}, Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;->bind(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance p2, Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/example/digitalkiosk/R$layout;->dialog_items_screen:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

    invoke-direct {p2, p1, v0, v1}, Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;)V

    return-object p2
.end method

.method public final setOnClickListener(Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "onClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

    return-void
.end method

.method public final setSidePosition(I)V
    .locals 0

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter;->sidePosition:Ljava/lang/Integer;

    return-void
.end method
