.class public abstract Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityOptionBinding.java"


# instance fields
.field public final exitbutton:Landroid/view/View;

.field public final handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

.field protected mChooseYourOption:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mDineIn:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mHandicapOn:Ljava/lang/Boolean;
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

.field public final noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 53
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->exitbutton:Landroid/view/View;

    .line 54
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    .line 55
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;
    .locals 1

    .line 147
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    sget v0, Lcom/example/digitalkiosk/R$layout;->activity_option:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;
    .locals 1

    .line 129
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;
    .locals 1

    .line 110
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    sget v0, Lcom/example/digitalkiosk/R$layout;->activity_option:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    sget v0, Lcom/example/digitalkiosk/R$layout;->activity_option:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;

    return-object p0
.end method


# virtual methods
.method public getChooseYourOption()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->mChooseYourOption:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getDineIn()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->mDineIn:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getHandicapOn()Ljava/lang/Boolean;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->mHandicapOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKiosksetting()Lcom/example/digitalkiosk/models/KioskSetting;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    return-object v0
.end method

.method public getPickLater()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->mPickLater:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getSelectYourOption()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->mSelectYourOption:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public getTakeAway()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->mTakeAway:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public abstract setChooseYourOption(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setDineIn(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setHandicapOn(Ljava/lang/Boolean;)V
.end method

.method public abstract setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V
.end method

.method public abstract setPickLater(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setSelectYourOption(Lcom/example/digitalkiosk/models/Translation;)V
.end method

.method public abstract setTakeAway(Lcom/example/digitalkiosk/models/Translation;)V
.end method
