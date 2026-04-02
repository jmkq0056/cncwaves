.class public abstract Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LanguageButtonBinding.java"


# instance fields
.field public final button:Landroid/widget/RelativeLayout;

.field public final image:Lcom/google/android/material/imageview/ShapeableImageView;

.field protected mLanguage:Lcom/example/digitalkiosk/models/Language;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mOpacity:Ljava/lang/Float;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Lcom/google/android/material/imageview/ShapeableImageView;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 35
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;->button:Landroid/widget/RelativeLayout;

    .line 36
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;->image:Lcom/google/android/material/imageview/ShapeableImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;
    .locals 1

    .line 93
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    sget v0, Lcom/example/digitalkiosk/R$layout;->language_button:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;
    .locals 1

    .line 75
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;
    .locals 1

    .line 56
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    sget v0, Lcom/example/digitalkiosk/R$layout;->language_button:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 89
    sget v0, Lcom/example/digitalkiosk/R$layout;->language_button:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;

    return-object p0
.end method


# virtual methods
.method public getLanguage()Lcom/example/digitalkiosk/models/Language;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;->mLanguage:Lcom/example/digitalkiosk/models/Language;

    return-object v0
.end method

.method public getOpacity()Ljava/lang/Float;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;->mOpacity:Ljava/lang/Float;

    return-object v0
.end method

.method public abstract setLanguage(Lcom/example/digitalkiosk/models/Language;)V
.end method

.method public abstract setOpacity(Ljava/lang/Float;)V
.end method
