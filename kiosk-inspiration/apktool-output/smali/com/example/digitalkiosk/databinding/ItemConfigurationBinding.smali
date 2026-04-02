.class public abstract Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemConfigurationBinding.java"


# instance fields
.field public final cancelButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final extras:Landroidx/recyclerview/widget/RecyclerView;

.field public final extrasHandicap:Landroidx/recyclerview/widget/RecyclerView;

.field public final extrasHandicapScroll:Landroidx/core/widget/NestedScrollView;

.field public final extrasScroll:Landroidx/core/widget/NestedScrollView;

.field public final handicapRemoveTitle:Landroid/widget/TextView;

.field public final ingredients:Landroidx/recyclerview/widget/RecyclerView;

.field public final ingredientsHandicap:Landroidx/recyclerview/widget/RecyclerView;

.field protected mAmount:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mCancelButtonText:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mHandicapOn:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mItem:Lcom/example/digitalkiosk/models/ItemDetails;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mNextButtonText:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final nextButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final removeItems:Landroid/widget/LinearLayout;

.field public final removeItemsIngredients:Landroid/widget/LinearLayout;

.field public final removeTitle:Landroid/widget/TextView;

.field public final yourway:Landroidx/appcompat/widget/AppCompatButton;

.field public final yourwayHand:Landroid/widget/ImageView;

.field public final yourwayHandicap:Landroidx/appcompat/widget/AppCompatButton;

.field public final yourwayHandicapHand:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatButton;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/ImageView;)V
    .locals 0

    .line 95
    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 96
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 97
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->extras:Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->extrasHandicap:Landroidx/recyclerview/widget/RecyclerView;

    .line 99
    iput-object p7, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->extrasHandicapScroll:Landroidx/core/widget/NestedScrollView;

    .line 100
    iput-object p8, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->extrasScroll:Landroidx/core/widget/NestedScrollView;

    .line 101
    iput-object p9, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->handicapRemoveTitle:Landroid/widget/TextView;

    .line 102
    iput-object p10, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->ingredients:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    iput-object p11, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->ingredientsHandicap:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    iput-object p12, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->nextButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 105
    iput-object p13, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->removeItems:Landroid/widget/LinearLayout;

    .line 106
    iput-object p14, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->removeItemsIngredients:Landroid/widget/LinearLayout;

    .line 107
    iput-object p15, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->removeTitle:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 108
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->yourway:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p17

    .line 109
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->yourwayHand:Landroid/widget/ImageView;

    move-object/from16 p1, p18

    .line 110
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->yourwayHandicap:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p19

    .line 111
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->yourwayHandicapHand:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;
    .locals 1

    .line 189
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_configuration:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;
    .locals 1

    .line 171
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;
    .locals 1

    .line 152
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_configuration:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_configuration:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;

    return-object p0
.end method


# virtual methods
.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->mAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getCancelButtonText()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->mCancelButtonText:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getHandicapOn()Ljava/lang/Boolean;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->mHandicapOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItem()Lcom/example/digitalkiosk/models/ItemDetails;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->mItem:Lcom/example/digitalkiosk/models/ItemDetails;

    return-object v0
.end method

.method public getNextButtonText()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->mNextButtonText:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public abstract setAmount(Ljava/lang/String;)V
.end method

.method public abstract setCancelButtonText(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setHandicapOn(Ljava/lang/Boolean;)V
.end method

.method public abstract setItem(Lcom/example/digitalkiosk/models/ItemDetails;)V
.end method

.method public abstract setNextButtonText(Lcom/example/digitalkiosk/models/Translation;)V
.end method
