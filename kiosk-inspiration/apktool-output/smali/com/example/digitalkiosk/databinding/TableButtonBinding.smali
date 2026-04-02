.class public abstract Lcom/example/digitalkiosk/databinding/TableButtonBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "TableButtonBinding.java"


# instance fields
.field public final button:Landroid/widget/LinearLayout;

.field protected mSelected:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final tableNumber:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 31
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->button:Landroid/widget/LinearLayout;

    .line 32
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->tableNumber:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/TableButtonBinding;
    .locals 1

    .line 82
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/TableButtonBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    sget v0, Lcom/example/digitalkiosk/R$layout;->table_button:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/TableButtonBinding;
    .locals 1

    .line 64
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/TableButtonBinding;
    .locals 1

    .line 45
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/TableButtonBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    sget v0, Lcom/example/digitalkiosk/R$layout;->table_button:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/TableButtonBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    sget v0, Lcom/example/digitalkiosk/R$layout;->table_button:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/TableButtonBinding;

    return-object p0
.end method


# virtual methods
.method public getSelected()Ljava/lang/Boolean;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/TableButtonBinding;->mSelected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public abstract setSelected(Ljava/lang/Boolean;)V
.end method
