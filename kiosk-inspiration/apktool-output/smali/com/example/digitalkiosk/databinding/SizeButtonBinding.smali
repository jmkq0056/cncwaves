.class public abstract Lcom/example/digitalkiosk/databinding/SizeButtonBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SizeButtonBinding.java"


# instance fields
.field public final button:Landroid/widget/LinearLayout;

.field public final itemName:Landroid/widget/TextView;

.field protected mDoubleSize:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mHandicapOn:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mIsLarge:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mIsMedium:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mIsXl:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mItem:Lcom/example/digitalkiosk/models/ItemDetails;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSize:Lcom/example/digitalkiosk/models/Size;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mTrippleSize:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final sizeName:Landroid/widget/TextView;

.field public final sizePrice:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 60
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->button:Landroid/widget/LinearLayout;

    .line 61
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->itemName:Landroid/widget/TextView;

    .line 62
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->sizeName:Landroid/widget/TextView;

    .line 63
    iput-object p7, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->sizePrice:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/SizeButtonBinding;
    .locals 1

    .line 162
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/SizeButtonBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    sget v0, Lcom/example/digitalkiosk/R$layout;->size_button:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/SizeButtonBinding;
    .locals 1

    .line 144
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/SizeButtonBinding;
    .locals 1

    .line 125
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/SizeButtonBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    sget v0, Lcom/example/digitalkiosk/R$layout;->size_button:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/SizeButtonBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    sget v0, Lcom/example/digitalkiosk/R$layout;->size_button:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;

    return-object p0
.end method


# virtual methods
.method public getDoubleSize()Ljava/lang/Boolean;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->mDoubleSize:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getHandicapOn()Ljava/lang/Boolean;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->mHandicapOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsLarge()Ljava/lang/Boolean;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->mIsLarge:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsMedium()Ljava/lang/Boolean;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->mIsMedium:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsXl()Ljava/lang/Boolean;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->mIsXl:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItem()Lcom/example/digitalkiosk/models/ItemDetails;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->mItem:Lcom/example/digitalkiosk/models/ItemDetails;

    return-object v0
.end method

.method public getSize()Lcom/example/digitalkiosk/models/Size;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->mSize:Lcom/example/digitalkiosk/models/Size;

    return-object v0
.end method

.method public getTrippleSize()Ljava/lang/Boolean;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->mTrippleSize:Ljava/lang/Boolean;

    return-object v0
.end method

.method public abstract setDoubleSize(Ljava/lang/Boolean;)V
.end method

.method public abstract setHandicapOn(Ljava/lang/Boolean;)V
.end method

.method public abstract setIsLarge(Ljava/lang/Boolean;)V
.end method

.method public abstract setIsMedium(Ljava/lang/Boolean;)V
.end method

.method public abstract setIsXl(Ljava/lang/Boolean;)V
.end method

.method public abstract setItem(Lcom/example/digitalkiosk/models/ItemDetails;)V
.end method

.method public abstract setSize(Lcom/example/digitalkiosk/models/Size;)V
.end method

.method public abstract setTrippleSize(Ljava/lang/Boolean;)V
.end method
