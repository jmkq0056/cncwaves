.class public abstract Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "OptionLayoutNohandicapBinding.java"


# instance fields
.field public final dineInButton:Landroid/widget/LinearLayout;

.field public final handicapButton:Landroid/widget/LinearLayout;

.field public final languages:Landroid/widget/LinearLayout;

.field protected mChooseYourOption:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mDineIn:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mPickLater:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSelectYourOption:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mTakeAway:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final pickUpButton:Landroid/widget/LinearLayout;

.field public final takeAwayButton:Landroid/widget/LinearLayout;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 57
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->dineInButton:Landroid/widget/LinearLayout;

    .line 58
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->handicapButton:Landroid/widget/LinearLayout;

    .line 59
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->languages:Landroid/widget/LinearLayout;

    .line 60
    iput-object p7, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->pickUpButton:Landroid/widget/LinearLayout;

    .line 61
    iput-object p8, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->takeAwayButton:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;
    .locals 1

    .line 146
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    sget v0, Lcom/example/digitalkiosk/R$layout;->option_layout_nohandicap:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;
    .locals 1

    .line 128
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;
    .locals 1

    .line 109
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    sget v0, Lcom/example/digitalkiosk/R$layout;->option_layout_nohandicap:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    sget v0, Lcom/example/digitalkiosk/R$layout;->option_layout_nohandicap:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    return-object p0
.end method


# virtual methods
.method public getChooseYourOption()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->mChooseYourOption:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getDineIn()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->mDineIn:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getKiosksetting()Lcom/example/digitalkiosk/models/KioskSetting;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    return-object v0
.end method

.method public getPickLater()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->mPickLater:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getSelectYourOption()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->mSelectYourOption:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getTakeAway()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->mTakeAway:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public abstract setChooseYourOption(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setDineIn(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V
.end method

.method public abstract setPickLater(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setSelectYourOption(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setTakeAway(Lcom/example/digitalkiosk/models/Translation;)V
.end method
