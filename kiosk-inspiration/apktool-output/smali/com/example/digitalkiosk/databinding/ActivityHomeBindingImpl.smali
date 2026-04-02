.class public Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;
.super Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;
.source "ActivityHomeBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;

.field private final mboundView2:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->video:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/example/digitalkiosk/R$id;->bannerSlider:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/example/digitalkiosk/R$id;->indicators:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 32
    sget-object v0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x4

    .line 35
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lme/relex/circleindicator/CircleIndicator3;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/VideoView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/viewpager2/widget/ViewPager2;Lme/relex/circleindicator/CircleIndicator3;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/VideoView;)V

    const-wide/16 p1, -0x1

    .line 206
    iput-wide p1, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 41
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    .line 42
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 43
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mboundView2:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->selectItems:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, v3}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 19

    move-object/from16 v1, p0

    .line 122
    monitor-enter p0

    .line 123
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 124
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mTapText:Lcom/example/digitalkiosk/models/Translation;

    .line 128
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mLogoUrl:Ljava/lang/String;

    .line 132
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mLanguageLoaded:Ljava/lang/Boolean;

    const-wide/16 v8, 0x9

    and-long v10, v2, v8

    cmp-long v10, v10, v4

    const-wide/16 v11, 0x80

    const/4 v13, 0x0

    if-eqz v10, :cond_2

    if-eqz v0, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    if-eqz v10, :cond_3

    if-eqz v14, :cond_1

    or-long/2addr v2, v11

    goto :goto_1

    :cond_1
    const-wide/16 v15, 0x40

    or-long/2addr v2, v15

    goto :goto_1

    :cond_2
    move v14, v13

    :cond_3
    :goto_1
    const-wide/16 v15, 0xc

    and-long v17, v2, v15

    cmp-long v10, v17, v4

    if-eqz v10, :cond_7

    .line 157
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v10, :cond_5

    if-eqz v7, :cond_4

    const-wide/16 v17, 0x20

    goto :goto_2

    :cond_4
    const-wide/16 v17, 0x10

    :goto_2
    or-long v2, v2, v17

    :cond_5
    if-eqz v7, :cond_6

    goto :goto_3

    :cond_6
    const/16 v7, 0x8

    move v13, v7

    :cond_7
    :goto_3
    and-long v10, v2, v11

    cmp-long v7, v10, v4

    const/4 v10, 0x0

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    .line 177
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v10

    :goto_4
    and-long v7, v2, v8

    cmp-long v7, v7, v4

    if-eqz v7, :cond_a

    if-eqz v14, :cond_9

    goto :goto_5

    .line 184
    :cond_9
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->selectItems:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/example/digitalkiosk/R$string;->main_button:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    move-object v10, v0

    :cond_a
    const-wide/16 v8, 0xa

    and-long/2addr v8, v2

    cmp-long v0, v8, v4

    if-eqz v0, :cond_b

    .line 190
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mboundView2:Landroid/widget/ImageView;

    invoke-static {v0, v6}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_b
    and-long/2addr v2, v15

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    .line 195
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->selectItems:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    :cond_c
    if-eqz v7, :cond_d

    .line 200
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->selectItems:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_d
    return-void

    :catchall_0
    move-exception v0

    .line 125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    monitor-exit p0

    return v0

    .line 65
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

    .line 53
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 54
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 55
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

.method public setLanguageLoaded(Ljava/lang/Boolean;)V
    .locals 4

    .line 104
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mLanguageLoaded:Ljava/lang/Boolean;

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1f

    .line 108
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->notifyPropertyChanged(I)V

    .line 109
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 107
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLogoUrl(Ljava/lang/String;)V
    .locals 4

    .line 96
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mLogoUrl:Ljava/lang/String;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x21

    .line 100
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->notifyPropertyChanged(I)V

    .line 101
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 99
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTapText(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 88
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mTapText:Lcom/example/digitalkiosk/models/Translation;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x35

    .line 92
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x35

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 73
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->setTapText(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_0
    const/16 v0, 0x21

    if-ne v0, p1, :cond_1

    .line 76
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->setLogoUrl(Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0x1f

    if-ne v0, p1, :cond_2

    .line 79
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityHomeBindingImpl;->setLanguageLoaded(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
