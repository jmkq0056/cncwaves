.class public final Lcom/example/digitalkiosk/adapters/ItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;,
        Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d\u001eB/\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0010H\u0016J\u0008\u0010\u0017\u001a\u00020\u0010H\u0016J\u0018\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0010H\u0016J\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u0012R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/ItemAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;",
        "items",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Item;",
        "Lkotlin/collections/ArrayList;",
        "context",
        "Landroid/content/Context;",
        "fm",
        "Landroidx/fragment/app/FragmentManager;",
        "<init>",
        "(Ljava/util/ArrayList;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V",
        "binding",
        "Lcom/example/digitalkiosk/databinding/ItemButtonBinding;",
        "lastPosition",
        "",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;",
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

.field private final fm:Landroidx/fragment/app/FragmentManager;

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;"
        }
    .end annotation
.end field

.field private lastPosition:I

.field private onClickListener:Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;",
            "Landroid/content/Context;",
            "Landroidx/fragment/app/FragmentManager;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fm"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->items:Ljava/util/ArrayList;

    .line 36
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->context:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->fm:Landroidx/fragment/app/FragmentManager;

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->lastPosition:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 34
    check-cast p1, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/ItemAdapter;->onBindViewHolder(Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/example/digitalkiosk/models/Item;

    .line 86
    invoke-virtual {p1, v0, p2}, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;->bind(Lcom/example/digitalkiosk/models/Item;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/ItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->binding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    .line 77
    new-instance p1, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;

    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->binding:Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    if-nez p2, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->fm:Landroidx/fragment/app/FragmentManager;

    iget-object v2, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/example/digitalkiosk/adapters/ItemAdapter$ViewHolder;-><init>(Lcom/example/digitalkiosk/databinding/ItemButtonBinding;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;)V

    return-object p1
.end method

.method public final setOnClickListener(Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "onClickListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/ItemAdapter;->onClickListener:Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;

    return-void
.end method
