.class public abstract Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "CompleteOrderBinding.java"


# instance fields
.field public final appLogo:Landroid/widget/ImageView;

.field public final backButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final bag:Landroid/widget/LinearLayout;

.field public final bagNo:Landroid/widget/RadioButton;

.field public final bagOrdering:Landroid/widget/RadioGroup;

.field public final bagYes:Landroid/widget/RadioButton;

.field public final cardPay:Landroid/widget/LinearLayout;

.field public final cashWrap:Landroid/widget/LinearLayout;

.field public final cashpay:Landroid/widget/LinearLayout;

.field public final confirmButton:Landroidx/appcompat/widget/AppCompatButton;

.field protected mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mSubtitle:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mTab:Ljava/lang/Integer;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mTitle:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final needBag:Landroid/widget/TextView;

.field public final orderItems:Landroidx/recyclerview/widget/RecyclerView;

.field public final paymentsWrap:Landroid/widget/LinearLayout;

.field public final paypal:Landroid/widget/LinearLayout;

.field public final toPay:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 87
    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 88
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->appLogo:Landroid/widget/ImageView;

    .line 89
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 90
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bag:Landroid/widget/LinearLayout;

    .line 91
    iput-object p7, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bagNo:Landroid/widget/RadioButton;

    .line 92
    iput-object p8, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bagOrdering:Landroid/widget/RadioGroup;

    .line 93
    iput-object p9, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bagYes:Landroid/widget/RadioButton;

    .line 94
    iput-object p10, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->cardPay:Landroid/widget/LinearLayout;

    .line 95
    iput-object p11, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->cashWrap:Landroid/widget/LinearLayout;

    .line 96
    iput-object p12, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->cashpay:Landroid/widget/LinearLayout;

    .line 97
    iput-object p13, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 98
    iput-object p14, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->needBag:Landroid/widget/TextView;

    .line 99
    iput-object p15, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->orderItems:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 p1, p16

    .line 100
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->paymentsWrap:Landroid/widget/LinearLayout;

    move-object/from16 p1, p17

    .line 101
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->paypal:Landroid/widget/LinearLayout;

    move-object/from16 p1, p18

    .line 102
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->toPay:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;
    .locals 1

    .line 173
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    sget v0, Lcom/example/digitalkiosk/R$layout;->complete_order:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;
    .locals 1

    .line 155
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;
    .locals 1

    .line 136
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    sget v0, Lcom/example/digitalkiosk/R$layout;->complete_order:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    sget v0, Lcom/example/digitalkiosk/R$layout;->complete_order:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    return-object p0
.end method


# virtual methods
.method public getKiosksetting()Lcom/example/digitalkiosk/models/KioskSetting;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->mSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTab()Ljava/lang/Integer;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->mTab:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public abstract setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V
.end method

.method public abstract setSubtitle(Ljava/lang/String;)V
.end method

.method public abstract setTab(Ljava/lang/Integer;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method
