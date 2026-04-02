.class public abstract Lcom/example/digitalkiosk/databinding/CardPaymentBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CardPaymentBinding.java"


# instance fields
.field public final appLogo:Landroid/widget/ImageView;

.field public final appLogo2:Landroid/widget/ImageView;

.field public final backButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final backHome:Landroid/widget/LinearLayout;

.field public final backHomeButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final counterTime:Landroid/widget/TextView;

.field public final errorMessage:Landroid/widget/TextView;

.field public final failedLayout:Landroid/widget/LinearLayout;

.field public final followInstructionsText:Landroid/widget/TextView;

.field protected mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mTimerCount:Ljava/lang/Integer;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final payAmountText:Landroid/widget/TextView;

.field public final paymentFailedLogo:Landroid/widget/ImageView;

.field public final paymentFailedText:Landroid/widget/TextView;

.field public final processingLayout:Landroid/widget/LinearLayout;

.field public final retry:Landroid/widget/LinearLayout;

.field public final retryNo:Landroidx/appcompat/widget/AppCompatButton;

.field public final retryYes:Landroidx/appcompat/widget/AppCompatButton;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;)V
    .locals 0

    .line 82
    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 83
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->appLogo:Landroid/widget/ImageView;

    .line 84
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->appLogo2:Landroid/widget/ImageView;

    .line 85
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 86
    iput-object p7, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backHome:Landroid/widget/LinearLayout;

    .line 87
    iput-object p8, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backHomeButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 88
    iput-object p9, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->counterTime:Landroid/widget/TextView;

    .line 89
    iput-object p10, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->errorMessage:Landroid/widget/TextView;

    .line 90
    iput-object p11, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->failedLayout:Landroid/widget/LinearLayout;

    .line 91
    iput-object p12, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->followInstructionsText:Landroid/widget/TextView;

    .line 92
    iput-object p13, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->payAmountText:Landroid/widget/TextView;

    .line 93
    iput-object p14, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->paymentFailedLogo:Landroid/widget/ImageView;

    .line 94
    iput-object p15, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->paymentFailedText:Landroid/widget/TextView;

    move-object/from16 p1, p16

    .line 95
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->processingLayout:Landroid/widget/LinearLayout;

    move-object/from16 p1, p17

    .line 96
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retry:Landroid/widget/LinearLayout;

    move-object/from16 p1, p18

    .line 97
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retryNo:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p19

    .line 98
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retryYes:Landroidx/appcompat/widget/AppCompatButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;
    .locals 1

    .line 155
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    sget v0, Lcom/example/digitalkiosk/R$layout;->card_payment:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;
    .locals 1

    .line 137
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;
    .locals 1

    .line 118
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    sget v0, Lcom/example/digitalkiosk/R$layout;->card_payment:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 151
    sget v0, Lcom/example/digitalkiosk/R$layout;->card_payment:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    return-object p0
.end method


# virtual methods
.method public getKiosksetting()Lcom/example/digitalkiosk/models/KioskSetting;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    return-object v0
.end method

.method public getTimerCount()Ljava/lang/Integer;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->mTimerCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public abstract setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V
.end method

.method public abstract setTimerCount(Ljava/lang/Integer;)V
.end method
