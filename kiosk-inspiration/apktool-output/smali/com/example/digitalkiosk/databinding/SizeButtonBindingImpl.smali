.class public Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;
.super Lcom/example/digitalkiosk/databinding/SizeButtonBinding;
.source "SizeButtonBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->button:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 30
    sget-object v0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x5

    .line 33
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 p1, -0x1

    .line 375
    iput-wide p1, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    .line 39
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->itemName:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 40
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mboundView1:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->sizeName:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 45
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->sizePrice:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, v3}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 38

    move-object/from16 v1, p0

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 174
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    .line 175
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mItem:Lcom/example/digitalkiosk/models/ItemDetails;

    .line 182
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDoubleSize:Ljava/lang/Boolean;

    .line 183
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mIsLarge:Ljava/lang/Boolean;

    .line 184
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mTrippleSize:Ljava/lang/Boolean;

    .line 188
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mIsXl:Ljava/lang/Boolean;

    .line 195
    iget-object v10, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    .line 196
    iget-object v11, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mSize:Lcom/example/digitalkiosk/models/Size;

    const-wide/16 v12, 0x101

    and-long v14, v2, v12

    cmp-long v14, v14, v4

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getImage()Ljava/lang/String;

    move-result-object v14

    .line 207
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v15

    move-object v14, v0

    :goto_0
    const-wide/16 v16, 0x128

    and-long v18, v2, v16

    cmp-long v18, v18, v4

    const-wide/16 v19, 0x200

    const/16 v21, 0x0

    if-eqz v18, :cond_2

    .line 215
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v18, :cond_3

    if-eqz v9, :cond_1

    const-wide/16 v22, 0x400

    or-long v2, v2, v22

    goto :goto_1

    :cond_1
    or-long v2, v2, v19

    goto :goto_1

    :cond_2
    move/from16 v9, v21

    :cond_3
    :goto_1
    const-wide/16 v22, 0x154

    and-long v24, v2, v22

    cmp-long v18, v24, v4

    const-wide/32 v24, 0x20000

    const-wide/16 v26, 0x140

    const/16 v28, 0x0

    if-eqz v18, :cond_a

    .line 230
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    and-long v29, v2, v26

    cmp-long v18, v29, v4

    if-eqz v18, :cond_5

    if-eqz v10, :cond_4

    const-wide/16 v29, 0x4000

    goto :goto_2

    :cond_4
    const-wide/16 v29, 0x2000

    :goto_2
    or-long v2, v2, v29

    :cond_5
    and-long v29, v2, v22

    cmp-long v18, v29, v4

    if-eqz v18, :cond_7

    if-eqz v10, :cond_6

    const-wide/32 v29, 0x40000

    or-long v2, v2, v29

    goto :goto_3

    :cond_6
    or-long v2, v2, v24

    :cond_7
    :goto_3
    and-long v29, v2, v26

    cmp-long v18, v29, v4

    if-eqz v18, :cond_9

    if-eqz v10, :cond_8

    const v18, 0x3f19999a    # 0.6f

    goto :goto_4

    :cond_8
    const/high16 v18, 0x3f800000    # 1.0f

    :goto_4
    move-wide/from16 v29, v4

    move/from16 v4, v18

    goto :goto_6

    :cond_9
    move-wide/from16 v29, v4

    goto :goto_5

    :cond_a
    move-wide/from16 v29, v4

    move/from16 v10, v21

    :goto_5
    move/from16 v4, v28

    :goto_6
    const-wide/16 v31, 0x180

    and-long v33, v2, v31

    cmp-long v5, v33, v29

    if-eqz v5, :cond_b

    if-eqz v11, :cond_b

    .line 260
    invoke-virtual {v11}, Lcom/example/digitalkiosk/models/Size;->getName()Ljava/lang/String;

    move-result-object v15

    .line 262
    invoke-virtual {v11}, Lcom/example/digitalkiosk/models/Size;->getPrice()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v37, v15

    move-object v15, v5

    move-object/from16 v5, v37

    goto :goto_7

    :cond_b
    move-object v5, v15

    :goto_7
    and-long v33, v2, v24

    cmp-long v11, v33, v29

    const-wide/16 v33, 0x800

    if-eqz v11, :cond_d

    .line 272
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v21

    if-eqz v11, :cond_d

    if-eqz v21, :cond_c

    const-wide/16 v35, 0x1000

    or-long v2, v2, v35

    goto :goto_8

    :cond_c
    or-long v2, v2, v33

    :cond_d
    :goto_8
    and-long v18, v2, v19

    cmp-long v6, v18, v29

    if-eqz v6, :cond_11

    .line 287
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v6, :cond_f

    if-eqz v7, :cond_e

    const-wide/32 v18, 0x10000

    goto :goto_9

    :cond_e
    const-wide/32 v18, 0x8000

    :goto_9
    or-long v2, v2, v18

    .line 299
    :cond_f
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v7, :cond_10

    sget v7, Lcom/example/digitalkiosk/R$dimen;->large_size_image:I

    goto :goto_a

    :cond_10
    sget v7, Lcom/example/digitalkiosk/R$dimen;->medium_size_image:I

    :goto_a
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    goto :goto_b

    :cond_11
    move/from16 v6, v28

    :goto_b
    and-long v18, v2, v16

    cmp-long v7, v18, v29

    if-eqz v7, :cond_12

    if-eqz v9, :cond_13

    .line 305
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/example/digitalkiosk/R$dimen;->xl_size_image:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    goto :goto_c

    :cond_12
    move/from16 v6, v28

    :cond_13
    :goto_c
    and-long v18, v2, v33

    cmp-long v7, v18, v29

    if-eqz v7, :cond_17

    .line 314
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v7, :cond_15

    if-eqz v8, :cond_14

    const-wide/32 v18, 0x100000

    goto :goto_d

    :cond_14
    const-wide/32 v18, 0x80000

    :goto_d
    or-long v2, v2, v18

    :cond_15
    if-eqz v8, :cond_16

    const/high16 v7, 0x44160000    # 600.0f

    goto :goto_e

    :cond_16
    const/high16 v7, 0x43c80000    # 400.0f

    goto :goto_e

    :cond_17
    move/from16 v7, v28

    :goto_e
    and-long v8, v2, v24

    cmp-long v8, v8, v29

    if-eqz v8, :cond_18

    if-eqz v21, :cond_19

    const/high16 v7, 0x43fa0000    # 500.0f

    goto :goto_f

    :cond_18
    move/from16 v7, v28

    :cond_19
    :goto_f
    and-long v8, v2, v22

    cmp-long v8, v8, v29

    if-eqz v8, :cond_1b

    if-eqz v10, :cond_1a

    const/high16 v7, 0x43960000    # 300.0f

    :cond_1a
    move/from16 v28, v7

    :cond_1b
    and-long v9, v2, v12

    cmp-long v7, v9, v29

    if-eqz v7, :cond_1c

    .line 344
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->itemName:Landroid/widget/TextView;

    invoke-static {v7, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 345
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-static {v0, v14}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_1c
    if-eqz v8, :cond_1d

    .line 350
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/example/digitalkiosk/BindingAdaptersKt;->setViewPagerWidth(Landroid/view/View;Ljava/lang/Float;)V

    :cond_1d
    and-long v7, v2, v16

    cmp-long v0, v7, v29

    if-eqz v0, :cond_1e

    .line 355
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/example/digitalkiosk/BindingAdaptersKt;->setViewPagerWidth(Landroid/view/View;Ljava/lang/Float;)V

    :cond_1e
    and-long v6, v2, v26

    cmp-long v0, v6, v29

    if-eqz v0, :cond_1f

    .line 359
    invoke-static {}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->getBuildSdkInt()I

    move-result v0

    const/16 v6, 0xb

    if-lt v0, v6, :cond_1f

    .line 361
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 362
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_1f
    and-long v2, v2, v31

    cmp-long v0, v2, v29

    if-eqz v0, :cond_20

    .line 368
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->sizeName:Landroid/widget/TextView;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->sizePrice:Landroid/widget/TextView;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_20
    return-void

    :catchall_0
    move-exception v0

    .line 175
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
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x100

    .line 54
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->requestRebind()V

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

.method public setDoubleSize(Ljava/lang/Boolean;)V
    .locals 4

    .line 114
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDoubleSize:Ljava/lang/Boolean;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x10

    .line 118
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 119
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 117
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandicapOn(Ljava/lang/Boolean;)V
    .locals 4

    .line 146
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    .line 149
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x16

    .line 150
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 151
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 149
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIsLarge(Ljava/lang/Boolean;)V
    .locals 4

    .line 122
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mIsLarge:Ljava/lang/Boolean;

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x18

    .line 126
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 127
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setIsMedium(Ljava/lang/Boolean;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mIsMedium:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsXl(Ljava/lang/Boolean;)V
    .locals 4

    .line 138
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mIsXl:Ljava/lang/Boolean;

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1a

    .line 142
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 143
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 141
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setItem(Lcom/example/digitalkiosk/models/ItemDetails;)V
    .locals 4

    .line 103
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mItem:Lcom/example/digitalkiosk/models/ItemDetails;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1b

    .line 107
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 106
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSize(Lcom/example/digitalkiosk/models/Size;)V
    .locals 4

    .line 154
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mSize:Lcom/example/digitalkiosk/models/Size;

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    .line 157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2d

    .line 158
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 159
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 157
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTrippleSize(Ljava/lang/Boolean;)V
    .locals 4

    .line 130
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mTrippleSize:Ljava/lang/Boolean;

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->mDirtyFlags:J

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x38

    .line 134
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 135
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/SizeButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 133
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x1b

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 73
    check-cast p2, Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->setItem(Lcom/example/digitalkiosk/models/ItemDetails;)V

    return v1

    :cond_0
    const/16 v0, 0x19

    if-ne v0, p1, :cond_1

    .line 76
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->setIsMedium(Ljava/lang/Boolean;)V

    return v1

    :cond_1
    const/16 v0, 0x10

    if-ne v0, p1, :cond_2

    .line 79
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->setDoubleSize(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/16 v0, 0x18

    if-ne v0, p1, :cond_3

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->setIsLarge(Ljava/lang/Boolean;)V

    return v1

    :cond_3
    const/16 v0, 0x38

    if-ne v0, p1, :cond_4

    .line 85
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->setTrippleSize(Ljava/lang/Boolean;)V

    return v1

    :cond_4
    const/16 v0, 0x1a

    if-ne v0, p1, :cond_5

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->setIsXl(Ljava/lang/Boolean;)V

    return v1

    :cond_5
    const/16 v0, 0x16

    if-ne v0, p1, :cond_6

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->setHandicapOn(Ljava/lang/Boolean;)V

    return v1

    :cond_6
    const/16 v0, 0x2d

    if-ne v0, p1, :cond_7

    .line 94
    check-cast p2, Lcom/example/digitalkiosk/models/Size;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SizeButtonBindingImpl;->setSize(Lcom/example/digitalkiosk/models/Size;)V

    return v1

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
