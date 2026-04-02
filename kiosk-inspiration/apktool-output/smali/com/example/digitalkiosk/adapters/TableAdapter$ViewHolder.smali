.class public final Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "TableAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/TableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mybinding",
        "Lcom/example/digitalkiosk/databinding/TableButtonBinding;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;",
        "<init>",
        "(Lcom/example/digitalkiosk/databinding/TableButtonBinding;Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V",
        "bind",
        "",
        "table",
        "Lcom/example/digitalkiosk/models/Table;",
        "position",
        "",
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
.field private final mybinding:Lcom/example/digitalkiosk/databinding/TableButtonBinding;

.field private final onClickListener:Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$_J1PwghJy0NB9gOcHK6ylLRzjCU(Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Table;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;->bind$lambda$0(Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Table;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/databinding/TableButtonBinding;Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "mybinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 18
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    .line 19
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Table;Landroid/view/View;)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;

    if-eqz p0, :cond_0

    .line 26
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;->onClick(Lcom/example/digitalkiosk/models/Table;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/example/digitalkiosk/models/Table;I)V
    .locals 2

    const-string p2, "table"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->tableNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Table;->getTable_number()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Table;->getId()I

    move-result v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->setSelected(Ljava/lang/Boolean;)V

    .line 24
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->button:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;Lcom/example/digitalkiosk/models/Table;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
