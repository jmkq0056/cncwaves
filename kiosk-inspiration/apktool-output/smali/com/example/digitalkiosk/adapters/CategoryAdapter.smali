.class public final Lcom/example/digitalkiosk/adapters/CategoryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CategoryAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;,
        Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB\'\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0010H\u0016J\u0008\u0010\u0015\u001a\u00020\u0010H\u0016J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u000e\u0010\u001a\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u000eJ\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u0010H\u0002R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/CategoryAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;",
        "categories",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Category;",
        "Lkotlin/collections/ArrayList;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Ljava/util/ArrayList;Landroid/content/Context;)V",
        "binding",
        "Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;",
        "lastPosition",
        "",
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
        "setAnimation",
        "viewToAnimate",
        "Landroid/view/View;",
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
.field private binding:Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

.field private final categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private lastPosition:I

.field private onClickListener:Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Category;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "categories"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->categories:Ljava/util/ArrayList;

    .line 17
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->context:Landroid/content/Context;

    const/4 p1, -0x1

    .line 22
    iput p1, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->lastPosition:I

    return-void
.end method

.method private final setAnimation(Landroid/view/View;I)V
    .locals 2

    .line 60
    iget v0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->lastPosition:I

    if-le p2, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->context:Landroid/content/Context;

    const v1, 0x10a0002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 63
    iput p2, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->lastPosition:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 15
    check-cast p1, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->onBindViewHolder(Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/example/digitalkiosk/models/Category;

    .line 47
    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->bind(Lcom/example/digitalkiosk/models/Category;)V

    .line 48
    iget-object p1, p1, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->setAnimation(Landroid/view/View;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;
    .locals 1

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->binding:Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    .line 38
    new-instance p1, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;

    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->binding:Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    if-nez p2, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;

    invoke-direct {p1, p2, v0}, Lcom/example/digitalkiosk/adapters/CategoryAdapter$ViewHolder;-><init>(Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;)V

    return-object p1
.end method

.method public final setOnClickListener(Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "onClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/CategoryAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/CategoryAdapter$OnClickListener;

    return-void
.end method
