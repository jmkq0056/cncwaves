.class public final Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/CartAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\u0013\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemView",
        "Landroid/view/View;",
        "<init>",
        "(Landroid/view/View;)V",
        "quantity",
        "Landroid/widget/TextView;",
        "getQuantity",
        "()Landroid/widget/TextView;",
        "name",
        "getName",
        "price",
        "getPrice",
        "attributes",
        "Landroid/widget/LinearLayout;",
        "getAttributes",
        "()Landroid/widget/LinearLayout;",
        "remove",
        "Landroid/widget/Button;",
        "getRemove",
        "()Landroid/widget/Button;",
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
.field private final attributes:Landroid/widget/LinearLayout;

.field private final itemView:Landroid/view/View;

.field private final name:Landroid/widget/TextView;

.field private final price:Landroid/widget/TextView;

.field private final quantity:Landroid/widget/TextView;

.field private final remove:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->itemView:Landroid/view/View;

    .line 39
    sget v0, Lcom/example/digitalkiosk/R$id;->quantity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->quantity:Landroid/widget/TextView;

    .line 40
    sget v0, Lcom/example/digitalkiosk/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/example/digitalkiosk/R$id;->price:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->price:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/example/digitalkiosk/R$id;->attributes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->attributes:Landroid/widget/LinearLayout;

    .line 43
    sget v0, Lcom/example/digitalkiosk/R$id;->remove_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->remove:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final getAttributes()Landroid/widget/LinearLayout;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->attributes:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final getName()Landroid/widget/TextView;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getPrice()Landroid/widget/TextView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->price:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getQuantity()Landroid/widget/TextView;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->quantity:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getRemove()Landroid/widget/Button;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/CartAdapter$ViewHolder;->remove:Landroid/widget/Button;

    return-object v0
.end method
