.class public Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;
.super Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;
.source "ItemConfiguration2BindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Landroid/widget/TextView;

.field private final mboundView2:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->steps:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/example/digitalkiosk/R$id;->sides_layout:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/example/digitalkiosk/R$id;->sizes_layout:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/example/digitalkiosk/R$id;->side_indicators_wrap:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/example/digitalkiosk/R$id;->side_previous:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/example/digitalkiosk/R$id;->side_indicators:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lcom/example/digitalkiosk/R$id;->side_next:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/example/digitalkiosk/R$id;->mandatory_warning:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/example/digitalkiosk/R$id;->warning_select:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lcom/example/digitalkiosk/R$id;->warning_max:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v1, Lcom/example/digitalkiosk/R$id;->warning_min:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 42
    sget-object v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19

    const/4 v0, 0x5

    .line 45
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lme/relex/circleindicator/CircleIndicator3;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/viewpager2/widget/ViewPager2;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/RelativeLayout;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Landroid/widget/RelativeLayout;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/TextView;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v18}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatButton;Landroid/widget/RelativeLayout;Landroidx/appcompat/widget/AppCompatButton;Lme/relex/circleindicator/CircleIndicator3;Landroid/widget/LinearLayout;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/RelativeLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 386
    iput-wide v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    .line 62
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 63
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 65
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mboundView1:Landroid/widget/TextView;

    .line 66
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 67
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mboundView2:Landroid/widget/TextView;

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->nextButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->sideItems:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->sizesDisplay:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    .line 72
    invoke-virtual {v0, v2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setRootTag(Landroid/view/View;)V

    .line 74
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 32

    move-object/from16 v1, p0

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 214
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    .line 215
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mConfigTitle:Ljava/lang/String;

    .line 226
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDescriptionText:Ljava/lang/String;

    .line 231
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mNextButtonText:Lcom/example/digitalkiosk/models/Translation;

    .line 232
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mCancelButtonText:Lcom/example/digitalkiosk/models/Translation;

    .line 233
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    const-wide/16 v10, 0x1008

    and-long v12, v2, v10

    cmp-long v12, v12, v4

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_2

    if-eqz v0, :cond_0

    move v15, v13

    goto :goto_0

    :cond_0
    move v15, v14

    :goto_0
    if-eqz v12, :cond_3

    if-eqz v15, :cond_1

    const-wide/32 v16, 0x100000

    goto :goto_1

    :cond_1
    const-wide/32 v16, 0x80000

    :goto_1
    or-long v2, v2, v16

    goto :goto_2

    :cond_2
    move v15, v14

    :cond_3
    :goto_2
    const-wide/16 v16, 0x1020

    and-long v18, v2, v16

    cmp-long v12, v18, v4

    if-eqz v12, :cond_6

    .line 255
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v12, :cond_5

    if-eqz v18, :cond_4

    const-wide/32 v19, 0x400000

    goto :goto_3

    :cond_4
    const-wide/32 v19, 0x200000

    :goto_3
    or-long v2, v2, v19

    :cond_5
    if-eqz v18, :cond_6

    const/16 v12, 0x8

    goto :goto_4

    :cond_6
    move v12, v14

    :goto_4
    const-wide/16 v18, 0x1100

    and-long v20, v2, v18

    cmp-long v20, v20, v4

    const-wide/32 v21, 0x1000000

    if-eqz v20, :cond_9

    if-eqz v7, :cond_7

    move/from16 v23, v13

    goto :goto_5

    :cond_7
    move/from16 v23, v14

    :goto_5
    if-eqz v20, :cond_a

    if-eqz v23, :cond_8

    or-long v2, v2, v21

    goto :goto_6

    :cond_8
    const-wide/32 v24, 0x800000

    or-long v2, v2, v24

    goto :goto_6

    :cond_9
    move/from16 v23, v14

    :cond_a
    :goto_6
    const-wide/16 v24, 0x1400

    and-long v26, v2, v24

    cmp-long v20, v26, v4

    const-wide/32 v26, 0x40000

    if-eqz v20, :cond_e

    if-eqz v8, :cond_b

    goto :goto_7

    :cond_b
    move v13, v14

    :goto_7
    if-eqz v20, :cond_d

    if-eqz v13, :cond_c

    or-long v2, v2, v26

    goto :goto_8

    :cond_c
    const-wide/32 v28, 0x20000

    or-long v2, v2, v28

    :cond_d
    :goto_8
    move v14, v13

    :cond_e
    const-wide/16 v28, 0x1800

    and-long v30, v2, v28

    cmp-long v13, v30, v4

    if-eqz v13, :cond_12

    .line 304
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v13, :cond_10

    if-eqz v9, :cond_f

    const-wide/32 v30, 0x14000

    goto :goto_9

    :cond_f
    const-wide/32 v30, 0xa000

    :goto_9
    or-long v2, v2, v30

    :cond_10
    const/high16 v13, 0x44af0000    # 1400.0f

    if-eqz v9, :cond_11

    const/high16 v20, 0x43fa0000    # 500.0f

    goto :goto_a

    :cond_11
    move/from16 v20, v13

    :goto_a
    if-eqz v9, :cond_13

    const/high16 v13, 0x43af0000    # 350.0f

    goto :goto_b

    :cond_12
    const/16 v20, 0x0

    move/from16 v13, v20

    :cond_13
    :goto_b
    and-long v9, v2, v10

    cmp-long v9, v9, v4

    const/4 v10, 0x0

    if-eqz v9, :cond_15

    if-eqz v15, :cond_14

    goto :goto_c

    .line 327
    :cond_14
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v11, Lcom/example/digitalkiosk/R$string;->sides_title:I

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_15
    move-object v0, v10

    :goto_c
    and-long v21, v2, v21

    cmp-long v11, v21, v4

    if-eqz v11, :cond_16

    if-eqz v7, :cond_16

    .line 333
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    :cond_16
    move-object v7, v10

    :goto_d
    and-long v21, v2, v26

    cmp-long v11, v21, v4

    if-eqz v11, :cond_17

    if-eqz v8, :cond_17

    .line 340
    invoke-virtual {v8}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v8

    goto :goto_e

    :cond_17
    move-object v8, v10

    :goto_e
    and-long v21, v2, v24

    cmp-long v11, v21, v4

    if-eqz v11, :cond_19

    if-eqz v14, :cond_18

    goto :goto_f

    .line 347
    :cond_18
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v14, Lcom/example/digitalkiosk/R$string;->first_popup_cancel:I

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_19
    move-object v8, v10

    :goto_f
    and-long v14, v2, v18

    cmp-long v14, v14, v4

    if-eqz v14, :cond_1b

    if-eqz v23, :cond_1a

    goto :goto_10

    .line 352
    :cond_1a
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->nextButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v10, Lcom/example/digitalkiosk/R$string;->first_popup_next:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_10
    move-object v10, v7

    :cond_1b
    if-eqz v11, :cond_1c

    .line 358
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v7, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1c
    if-eqz v9, :cond_1d

    .line 363
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-static {v7, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1d
    and-long v7, v2, v16

    cmp-long v0, v7, v4

    if-eqz v0, :cond_1e

    .line 368
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 369
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1e
    if-eqz v14, :cond_1f

    .line 374
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->nextButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1f
    and-long v2, v2, v28

    cmp-long v0, v2, v4

    if-eqz v0, :cond_20

    .line 379
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->sideItems:Landroidx/viewpager2/widget/ViewPager2;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/example/digitalkiosk/BindingAdaptersKt;->setViewPagerHeight(Landroid/view/View;Ljava/lang/Float;)V

    .line 380
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->sizesDisplay:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/example/digitalkiosk/BindingAdaptersKt;->setViewPagerHeight(Landroid/view/View;Ljava/lang/Float;)V

    :cond_20
    return-void

    :catchall_0
    move-exception v0

    .line 215
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 89
    monitor-exit p0

    return v0

    .line 91
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

    .line 79
    monitor-enter p0

    const-wide/16 v0, 0x1000

    .line 80
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    .line 81
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 81
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

.method public setCancelButtonText(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 186
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mCancelButtonText:Lcom/example/digitalkiosk/models/Translation;

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    .line 189
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 190
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->notifyPropertyChanged(I)V

    .line 191
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 189
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setConfigTitle(Ljava/lang/String;)V
    .locals 4

    .line 150
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mConfigTitle:Ljava/lang/String;

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    .line 153
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xa

    .line 154
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->notifyPropertyChanged(I)V

    .line 155
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 153
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDescriptionText(Ljava/lang/String;)V
    .locals 4

    .line 161
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDescriptionText:Ljava/lang/String;

    .line 162
    monitor-enter p0

    .line 163
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xd

    .line 165
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->notifyPropertyChanged(I)V

    .line 166
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 164
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDrinksAvailable(Ljava/lang/Boolean;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDrinksAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public setDrinksTabTitle(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDrinksTabTitle:Lcom/example/digitalkiosk/models/Translation;

    return-void
.end method

.method public setHandicapOn(Ljava/lang/Boolean;)V
    .locals 4

    .line 194
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x800

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    .line 197
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x16

    .line 198
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->notifyPropertyChanged(I)V

    .line 199
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 197
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setItem(Lcom/example/digitalkiosk/models/ItemDetails;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mItem:Lcom/example/digitalkiosk/models/ItemDetails;

    return-void
.end method

.method public setNextButtonText(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 175
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mNextButtonText:Lcom/example/digitalkiosk/models/Translation;

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mDirtyFlags:J

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x22

    .line 179
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->notifyPropertyChanged(I)V

    .line 180
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2Binding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSidesAvailable(Ljava/lang/Boolean;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mSidesAvailable:Ljava/lang/Boolean;

    return-void
.end method

.method public setSidesTabTitle(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mSidesTabTitle:Lcom/example/digitalkiosk/models/Translation;

    return-void
.end method

.method public setSizeTabTitle(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mSizeTabTitle:Lcom/example/digitalkiosk/models/Translation;

    return-void
.end method

.method public setTabPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->mTabPosition:Ljava/lang/Integer;

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 99
    check-cast p2, Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setItem(Lcom/example/digitalkiosk/models/ItemDetails;)V

    return v1

    :cond_0
    const/16 v0, 0x12

    if-ne v0, p1, :cond_1

    .line 102
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setDrinksTabTitle(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_1
    const/16 v0, 0x32

    if-ne v0, p1, :cond_2

    .line 105
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setTabPosition(Ljava/lang/Integer;)V

    return v1

    :cond_2
    const/16 v0, 0xa

    if-ne v0, p1, :cond_3

    .line 108
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setConfigTitle(Ljava/lang/String;)V

    return v1

    :cond_3
    const/16 v0, 0x2b

    if-ne v0, p1, :cond_4

    .line 111
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setSidesAvailable(Ljava/lang/Boolean;)V

    return v1

    :cond_4
    const/16 v0, 0xd

    if-ne v0, p1, :cond_5

    .line 114
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setDescriptionText(Ljava/lang/String;)V

    return v1

    :cond_5
    const/16 v0, 0x2c

    if-ne v0, p1, :cond_6

    .line 117
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setSidesTabTitle(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_6
    const/16 v0, 0x2e

    if-ne v0, p1, :cond_7

    .line 120
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setSizeTabTitle(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_7
    const/16 v0, 0x22

    if-ne v0, p1, :cond_8

    .line 123
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setNextButtonText(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_8
    const/16 v0, 0x11

    if-ne v0, p1, :cond_9

    .line 126
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setDrinksAvailable(Ljava/lang/Boolean;)V

    return v1

    :cond_9
    const/4 v0, 0x3

    if-ne v0, p1, :cond_a

    .line 129
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setCancelButtonText(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_a
    const/16 v0, 0x16

    if-ne v0, p1, :cond_b

    .line 132
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfiguration2BindingImpl;->setHandicapOn(Ljava/lang/Boolean;)V

    return v1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method
