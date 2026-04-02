.class public Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;
.super Lcom/example/digitalkiosk/databinding/CardPaymentBinding;
.source "CardPaymentBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->processing_layout:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/example/digitalkiosk/R$id;->pay_amount_text:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/example/digitalkiosk/R$id;->follow_instructions_text:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/example/digitalkiosk/R$id;->back_button:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/example/digitalkiosk/R$id;->failed_layout:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/example/digitalkiosk/R$id;->payment_failed_text:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lcom/example/digitalkiosk/R$id;->payment_failed_logo:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/example/digitalkiosk/R$id;->error_message:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/example/digitalkiosk/R$id;->retry:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lcom/example/digitalkiosk/R$id;->retry_no:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v1, Lcom/example/digitalkiosk/R$id;->retry_yes:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget v1, Lcom/example/digitalkiosk/R$id;->back_home:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget v1, Lcom/example/digitalkiosk/R$id;->back_home_button:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 40
    sget-object v0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x11

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 20

    const/4 v0, 0x1

    .line 43
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Landroid/widget/ImageView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/LinearLayout;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object/from16 v19, v0

    check-cast v19, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v19}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;)V

    const-wide/16 v1, -0x1

    .line 174
    iput-wide v1, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mDirtyFlags:J

    .line 61
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->appLogo:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 62
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->appLogo2:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->counterTime:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 64
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 65
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    .line 66
    invoke-virtual {v0, v2}, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 68
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 10

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 133
    iput-wide v2, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mDirtyFlags:J

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    iget-object v4, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mTimerCount:Ljava/lang/Integer;

    .line 136
    iget-object v5, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 146
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v7

    :goto_0
    const-wide/16 v8, 0x6

    and-long/2addr v0, v8

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    .line 155
    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/KioskSetting;->getApp_logo()Ljava/lang/String;

    move-result-object v7

    :cond_1
    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->appLogo:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->appLogo2:Landroid/widget/ImageView;

    invoke-static {v0, v7}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_2
    if-eqz v6, :cond_3

    .line 168
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->counterTime:Landroid/widget/TextView;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 134
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 83
    monitor-exit p0

    return v0

    .line 85
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 73
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 74
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mDirtyFlags:J

    .line 75
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 75
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V
    .locals 4

    .line 113
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mDirtyFlags:J

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1d

    .line 117
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->notifyPropertyChanged(I)V

    .line 118
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 116
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTimerCount(Ljava/lang/Integer;)V
    .locals 4

    .line 105
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mTimerCount:Ljava/lang/Integer;

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->mDirtyFlags:J

    .line 108
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x36

    .line 109
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->notifyPropertyChanged(I)V

    .line 110
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 108
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x36

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 93
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->setTimerCount(Ljava/lang/Integer;)V

    return v1

    :cond_0
    const/16 v0, 0x1d

    if-ne v0, p1, :cond_1

    .line 96
    check-cast p2, Lcom/example/digitalkiosk/models/KioskSetting;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/CardPaymentBindingImpl;->setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
