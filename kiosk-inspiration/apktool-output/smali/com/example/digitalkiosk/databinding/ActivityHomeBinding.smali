.class public abstract Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityHomeBinding.java"


# instance fields
.field public final bannerSlider:Landroidx/viewpager2/widget/ViewPager2;

.field public final indicators:Lme/relex/circleindicator/CircleIndicator3;

.field protected mLanguageLoaded:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mLogoUrl:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mTapText:Lcom/example/digitalkiosk/models/Translation;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final selectItems:Landroidx/appcompat/widget/AppCompatButton;

.field public final video:Landroid/widget/VideoView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/viewpager2/widget/ViewPager2;Lme/relex/circleindicator/CircleIndicator3;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/VideoView;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 47
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->bannerSlider:Landroidx/viewpager2/widget/ViewPager2;

    .line 48
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->indicators:Lme/relex/circleindicator/CircleIndicator3;

    .line 49
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->selectItems:Landroidx/appcompat/widget/AppCompatButton;

    .line 50
    iput-object p7, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->video:Landroid/widget/VideoView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;
    .locals 1

    .line 114
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    sget v0, Lcom/example/digitalkiosk/R$layout;->activity_home:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;
    .locals 1

    .line 96
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;
    .locals 1

    .line 77
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    sget v0, Lcom/example/digitalkiosk/R$layout;->activity_home:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    sget v0, Lcom/example/digitalkiosk/R$layout;->activity_home:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    return-object p0
.end method


# virtual methods
.method public getLanguageLoaded()Ljava/lang/Boolean;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->mLanguageLoaded:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLogoUrl()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->mLogoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTapText()Lcom/example/digitalkiosk/models/Translation;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->mTapText:Lcom/example/digitalkiosk/models/Translation;

    return-object v0
.end method

.method public abstract setLanguageLoaded(Ljava/lang/Boolean;)V
.end method

.method public abstract setLogoUrl(Ljava/lang/String;)V
.end method

.method public abstract setTapText(Lcom/example/digitalkiosk/models/Translation;)V
.end method
