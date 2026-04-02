.class public abstract Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;
.super Landroidx/databinding/ViewDataBinding;
.source "ItemConfiguration2Binding.java"


# instance fields
.field public final cancelButton:Landroidx/appcompat/widget/AppCompatButton;

.field protected mCancelButtonText:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mConfigTitle:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mDescriptionText:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mDrinksAvailable:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mDrinksTabTitle:Lcom/example/digitalkiosk/models/Translation;
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

.field protected mSidesAvailable:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSidesTabTitle:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSizeTabTitle:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mTabPosition:Ljava/lang/Integer;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final mandatoryWarning:Landroid/widget/RelativeLayout;

.field public final nextButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final sideIndicators:Lme/relex/circleindicator/CircleIndicator3;

.field public final sideIndicatorsWrap:Landroid/widget/LinearLayout;

.field public final sideItems:Landroidx/viewpager2/widget/ViewPager2;

.field public final sideNext:Landroid/widget/RelativeLayout;

.field public final sidePrevious:Landroid/widget/RelativeLayout;

.field public final sidesLayout:Landroid/widget/LinearLayout;

.field public final sizesDisplay:Landroidx/recyclerview/widget/RecyclerView;

.field public final sizesLayout:Landroid/widget/RelativeLayout;

.field public final steps:Landroid/widget/LinearLayout;

.field public final warningMax:Landroid/widget/TextView;

.field public final warningMin:Landroid/widget/TextView;

.field public final warningSelect:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatButton;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatButton;Lme/relex/circleindicator/CircleIndicator3;Landroid/widget/LinearLayout;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 113
    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 114
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 115
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mandatoryWarning:Landroid/widget/RelativeLayout;

    .line 116
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->nextButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 117
    iput-object p7, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicators:Lme/relex/circleindicator/CircleIndicator3;

    .line 118
    iput-object p8, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideIndicatorsWrap:Landroid/widget/LinearLayout;

    .line 119
    iput-object p9, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideItems:Landroidx/viewpager2/widget/ViewPager2;

    .line 120
    iput-object p10, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sideNext:Landroid/widget/RelativeLayout;

    .line 121
    iput-object p11, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sidePrevious:Landroid/widget/RelativeLayout;

    .line 122
    iput-object p12, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sidesLayout:Landroid/widget/LinearLayout;

    .line 123
    iput-object p13, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sizesDisplay:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    iput-object p14, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->sizesLayout:Landroid/widget/RelativeLayout;

    .line 125
    iput-object p15, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->steps:Landroid/widget/LinearLayout;

    move-object/from16 p1, p16

    .line 126
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->warningMax:Landroid/widget/TextView;

    move-object/from16 p1, p17

    .line 127
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->warningMin:Landroid/widget/TextView;

    move-object/from16 p1, p18

    .line 128
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->warningSelect:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;
    .locals 1

    .line 255
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_configuration_2:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;
    .locals 1

    .line 237
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;
    .locals 1

    .line 218
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_configuration_2:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    sget v0, Lcom/example/digitalkiosk/R$layout;->item_configuration_2:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;

    return-object p0
.end method


# virtual methods
.method public getCancelButtonText()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mCancelButtonText:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getConfigTitle()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mConfigTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionText()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mDescriptionText:Ljava/lang/String;

    return-object v0
.end method

.method public getDrinksAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mDrinksAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getDrinksTabTitle()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mDrinksTabTitle:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getHandicapOn()Ljava/lang/Boolean;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mHandicapOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getItem()Lcom/example/digitalkiosk/models/ItemDetails;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mItem:Lcom/example/digitalkiosk/models/ItemDetails;

    return-object v0
.end method

.method public getNextButtonText()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mNextButtonText:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getSidesAvailable()Ljava/lang/Boolean;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mSidesAvailable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSidesTabTitle()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mSidesTabTitle:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getSizeTabTitle()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mSizeTabTitle:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getTabPosition()Ljava/lang/Integer;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->mTabPosition:Ljava/lang/Integer;

    return-object v0
.end method

.method public abstract setCancelButtonText(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setConfigTitle(Ljava/lang/String;)V
.end method

.method public abstract setDescriptionText(Ljava/lang/String;)V
.end method

.method public abstract setDrinksAvailable(Ljava/lang/Boolean;)V
.end method

.method public abstract setDrinksTabTitle(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setHandicapOn(Ljava/lang/Boolean;)V
.end method

.method public abstract setItem(Lcom/example/digitalkiosk/models/ItemDetails;)V
.end method

.method public abstract setNextButtonText(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setSidesAvailable(Ljava/lang/Boolean;)V
.end method

.method public abstract setSidesTabTitle(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setSizeTabTitle(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setTabPosition(Ljava/lang/Integer;)V
.end method
