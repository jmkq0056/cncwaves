.class public abstract Lcom/example/digitalkiosk/databinding/ItemButtonBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemButtonBinding.java"


# instance fields
.field public final button:Landroid/widget/RelativeLayout;

.field public final categoryName:Landroid/widget/TextView;

.field public final itemImage:Landroid/widget/ImageView;

.field protected mAmount:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mCount:Ljava/lang/Integer;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mDarkshade:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mItem:Lcom/example/digitalkiosk/models/Item;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSelected:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSoldOutTranslation:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 52
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->button:Landroid/widget/RelativeLayout;

    .line 53
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->categoryName:Landroid/widget/TextView;

    .line 54
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->itemImage:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;
    .locals 1

    .line 139
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_button:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;
    .locals 1

    .line 121
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;
    .locals 1

    .line 102
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 116
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_button:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemButtonBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 135
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_button:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;

    return-object p0
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->mAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->mCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDarkshade()Ljava/lang/Boolean;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->mDarkshade:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItem()Lcom/example/digitalkiosk/models/Item;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->mItem:Lcom/example/digitalkiosk/models/Item;

    return-object v0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->mSelected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSoldOutTranslation()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->mSoldOutTranslation:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public abstract setAmount(Ljava/lang/String;)V
.end method

.method public abstract setCount(Ljava/lang/Integer;)V
.end method

.method public abstract setDarkshade(Ljava/lang/Boolean;)V
.end method

.method public abstract setItem(Lcom/example/digitalkiosk/models/Item;)V
.end method

.method public abstract setSelected(Ljava/lang/Boolean;)V
.end method

.method public abstract setSoldOutTranslation(Lcom/example/digitalkiosk/models/Translation;)V
.end method
