.class public abstract Lcom/example/digitalkiosk/databinding/ItemExtraBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemExtraBinding.java"


# instance fields
.field public final addExtra:Landroid/widget/ImageButton;

.field public final fullExtraButton:Landroid/widget/LinearLayout;

.field protected mAmount:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mExtra:Lcom/example/digitalkiosk/models/Extra;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mExtraTerm:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mQuantity:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSoldOutTranslation:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final subtractExtra:Landroid/widget/ImageButton;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->addExtra:Landroid/widget/ImageButton;

    .line 49
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->fullExtraButton:Landroid/widget/LinearLayout;

    .line 50
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->subtractExtra:Landroid/widget/ImageButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/ItemExtraBinding;
    .locals 1

    .line 128
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemExtraBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_extra:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/ItemExtraBinding;
    .locals 1

    .line 110
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/ItemExtraBinding;
    .locals 1

    .line 91
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemExtraBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_extra:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemExtraBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_extra:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;

    return-object p0
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->mAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra()Lcom/example/digitalkiosk/models/Extra;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->mExtra:Lcom/example/digitalkiosk/models/Extra;

    return-object v0
.end method

.method public getExtraTerm()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->mExtraTerm:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->mQuantity:Ljava/lang/String;

    return-object v0
.end method

.method public getSoldOutTranslation()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->mSoldOutTranslation:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public abstract setAmount(Ljava/lang/String;)V
.end method

.method public abstract setExtra(Lcom/example/digitalkiosk/models/Extra;)V
.end method

.method public abstract setExtraTerm(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setQuantity(Ljava/lang/String;)V
.end method

.method public abstract setSoldOutTranslation(Lcom/example/digitalkiosk/models/Translation;)V
.end method
