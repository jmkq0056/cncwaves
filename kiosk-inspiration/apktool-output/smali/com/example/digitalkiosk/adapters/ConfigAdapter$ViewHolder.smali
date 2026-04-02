.class public final Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ConfigAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/ConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ#\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "context",
        "Landroid/content/Context;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;",
        "<init>",
        "(Landroid/view/View;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;)V",
        "bind",
        "",
        "items",
        "",
        "Lcom/example/digitalkiosk/models/Item;",
        "sidePosition",
        "",
        "(Ljava/util/List;Ljava/lang/Integer;)V",
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

.field private final onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;->context:Landroid/content/Context;

    .line 28
    iput-object p3, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

    return-void
.end method


# virtual methods
.method public final bind(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/example/digitalkiosk/R$id;->items:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 32
    new-instance v1, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;

    new-instance v2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;

    invoke-direct {v1, v2, p1, v3, p2}, Lcom/example/digitalkiosk/adapters/ConfigItemAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;Ljava/lang/Integer;)V

    .line 33
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ConfigAdapter$ViewHolder;->context:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-direct {p1, p2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
