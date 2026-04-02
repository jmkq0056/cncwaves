.class public abstract Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CategoryButtonBinding.java"


# instance fields
.field public final button:Landroid/widget/LinearLayout;

.field public final categoryName:Landroid/widget/TextView;

.field protected mCategory:Lcom/example/digitalkiosk/models/Category;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mHandicapOn:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSelectedCategory:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 38
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->button:Landroid/widget/LinearLayout;

    .line 39
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->categoryName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;
    .locals 1

    .line 103
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    sget v0, Lcom/example/digitalkiosk/R$layout;->category_button:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;
    .locals 1

    .line 85
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;
    .locals 1

    .line 66
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    sget v0, Lcom/example/digitalkiosk/R$layout;->category_button:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    sget v0, Lcom/example/digitalkiosk/R$layout;->category_button:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;

    return-object p0
.end method


# virtual methods
.method public getCategory()Lcom/example/digitalkiosk/models/Category;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->mCategory:Lcom/example/digitalkiosk/models/Category;

    return-object v0
.end method

.method public getHandicapOn()Ljava/lang/Boolean;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->mHandicapOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSelectedCategory()Ljava/lang/Boolean;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->mSelectedCategory:Ljava/lang/Boolean;

    return-object v0
.end method

.method public abstract setCategory(Lcom/example/digitalkiosk/models/Category;)V
.end method

.method public abstract setHandicapOn(Ljava/lang/Boolean;)V
.end method

.method public abstract setSelectedCategory(Ljava/lang/Boolean;)V
.end method
