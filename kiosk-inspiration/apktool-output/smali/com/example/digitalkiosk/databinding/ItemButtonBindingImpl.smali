.class public Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;
.super Lcom/example/digitalkiosk/databinding/ItemButtonBinding;
.source "ItemButtonBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroid/widget/TextView;

.field private final mboundView3:Landroid/widget/TextView;

.field private final mboundView6:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 33
    sget-object v0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x7

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x0

    .line 36
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    const-wide/16 p1, -0x1

    .line 397
    iput-wide p1, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    .line 41
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->button:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 42
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->categoryName:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 43
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->itemImage:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    .line 45
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView2:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 48
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x6

    .line 50
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView6:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, v3}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 54
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 44

    move-object/from16 v1, p0

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 163
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mItem:Lcom/example/digitalkiosk/models/Item;

    .line 170
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mAmount:Ljava/lang/String;

    .line 178
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mCount:Ljava/lang/Integer;

    .line 184
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDarkshade:Ljava/lang/Boolean;

    .line 185
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mSelected:Ljava/lang/Boolean;

    .line 188
    iget-object v10, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mSoldOutTranslation:Lcom/example/digitalkiosk/models/Translation;

    const-wide/16 v11, 0x41

    and-long v13, v2, v11

    cmp-long v13, v13, v4

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    if-eqz v13, :cond_5

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Item;->getSold_out()Z

    move-result v17

    .line 198
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Item;->getImage()Ljava/lang/String;

    move-result-object v18

    .line 200
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Item;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v15

    move-object/from16 v18, v0

    move/from16 v17, v16

    :goto_0
    if-eqz v13, :cond_2

    if-eqz v17, :cond_1

    const-wide/32 v19, 0x10400

    goto :goto_1

    :cond_1
    const-wide/32 v19, 0x8200

    :goto_1
    or-long v2, v2, v19

    :cond_2
    if-eqz v17, :cond_3

    move/from16 v13, v16

    goto :goto_2

    :cond_3
    move v13, v14

    :goto_2
    xor-int/lit8 v19, v17, 0x1

    if-eqz v17, :cond_4

    const v17, 0x3f19999a    # 0.6f

    goto :goto_3

    :cond_4
    const/high16 v17, 0x3f800000    # 1.0f

    :goto_3
    move-wide/from16 v42, v11

    move/from16 v11, v19

    move-wide/from16 v19, v42

    move-wide/from16 v42, v4

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-wide/from16 v17, v42

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    move-wide/from16 v19, v4

    move/from16 v4, v17

    move-wide/from16 v17, v19

    move-wide/from16 v19, v11

    move-object v0, v15

    move-object v5, v0

    move/from16 v11, v16

    move v13, v11

    :goto_4
    const-wide/16 v21, 0x54

    and-long v23, v2, v21

    cmp-long v12, v23, v17

    const-wide/16 v23, 0x44

    const-wide/16 v25, 0x100

    const/16 v27, 0x1

    if-eqz v12, :cond_a

    .line 228
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v28

    if-lez v28, :cond_6

    move/from16 v28, v27

    goto :goto_5

    :cond_6
    move/from16 v28, v16

    :goto_5
    if-eqz v12, :cond_8

    if-eqz v28, :cond_7

    or-long v2, v2, v25

    goto :goto_6

    :cond_7
    const-wide/16 v29, 0x80

    or-long v2, v2, v29

    :cond_8
    :goto_6
    and-long v29, v2, v23

    cmp-long v12, v29, v17

    if-eqz v12, :cond_9

    if-eqz v7, :cond_9

    .line 245
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_9
    move-object v7, v15

    goto :goto_7

    :cond_a
    move-object v7, v15

    move/from16 v28, v16

    :goto_7
    const-wide/16 v29, 0x58

    and-long v31, v2, v29

    cmp-long v12, v31, v17

    const-wide/16 v31, 0x4000

    const-wide/16 v33, 0x2000

    if-eqz v12, :cond_c

    .line 254
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v35

    if-eqz v12, :cond_d

    if-eqz v35, :cond_b

    or-long v2, v2, v31

    goto :goto_8

    :cond_b
    or-long v2, v2, v33

    goto :goto_8

    :cond_c
    move/from16 v35, v16

    :cond_d
    :goto_8
    const-wide/16 v36, 0x60

    and-long v38, v2, v36

    cmp-long v12, v38, v17

    const-wide/16 v38, 0x1000

    if-eqz v12, :cond_10

    if-eqz v10, :cond_e

    goto :goto_9

    :cond_e
    move/from16 v27, v16

    :goto_9
    if-eqz v12, :cond_11

    if-eqz v27, :cond_f

    or-long v2, v2, v38

    goto :goto_a

    :cond_f
    const-wide/16 v40, 0x800

    or-long v2, v2, v40

    goto :goto_a

    :cond_10
    move/from16 v27, v16

    :cond_11
    :goto_a
    and-long v38, v2, v38

    cmp-long v12, v38, v17

    if-eqz v12, :cond_12

    if-eqz v10, :cond_12

    .line 285
    invoke-virtual {v10}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v10

    goto :goto_b

    :cond_12
    move-object v10, v15

    :goto_b
    and-long v25, v2, v25

    cmp-long v12, v25, v17

    if-eqz v12, :cond_14

    .line 293
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v35

    and-long v25, v2, v29

    cmp-long v9, v25, v17

    if-eqz v9, :cond_14

    if-eqz v35, :cond_13

    or-long v2, v2, v31

    goto :goto_c

    :cond_13
    or-long v2, v2, v33

    :cond_14
    :goto_c
    and-long v25, v2, v21

    cmp-long v9, v25, v17

    if-eqz v9, :cond_18

    if-eqz v28, :cond_15

    move/from16 v12, v35

    goto :goto_d

    :cond_15
    move/from16 v12, v16

    :goto_d
    if-eqz v9, :cond_17

    if-eqz v12, :cond_16

    const-wide/32 v25, 0x100000

    goto :goto_e

    :cond_16
    const-wide/32 v25, 0x80000

    :goto_e
    or-long v2, v2, v25

    :cond_17
    if-eqz v12, :cond_19

    :cond_18
    move/from16 v14, v16

    :cond_19
    and-long v25, v2, v36

    cmp-long v9, v25, v17

    if-eqz v9, :cond_1b

    if-eqz v27, :cond_1a

    goto :goto_f

    .line 324
    :cond_1a
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView6:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/example/digitalkiosk/R$string;->sold_out:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_f

    :cond_1b
    move-object v10, v15

    :goto_f
    and-long v25, v2, v33

    cmp-long v9, v25, v17

    if-eqz v9, :cond_1f

    .line 333
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v9, :cond_1d

    if-eqz v8, :cond_1c

    const-wide/32 v25, 0x40000

    goto :goto_10

    :cond_1c
    const-wide/32 v25, 0x20000

    :goto_10
    or-long v2, v2, v25

    :cond_1d
    if-eqz v8, :cond_1e

    .line 345
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->button:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/example/digitalkiosk/R$drawable;->item_button:I

    goto :goto_11

    :cond_1e
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->button:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/example/digitalkiosk/R$drawable;->item_button_light:I

    :goto_11
    invoke-static {v8, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_12

    :cond_1f
    move-object v8, v15

    :goto_12
    and-long v25, v2, v29

    cmp-long v9, v25, v17

    if-eqz v9, :cond_21

    if-eqz v35, :cond_20

    .line 351
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->button:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v12, Lcom/example/digitalkiosk/R$drawable;->item_button_selected:I

    invoke-static {v8, v12}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    :cond_20
    move-object v15, v8

    :cond_21
    and-long v19, v2, v19

    cmp-long v8, v19, v17

    if-eqz v8, :cond_22

    .line 357
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->button:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 358
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->button:Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v11}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 359
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->categoryName:Landroid/widget/TextView;

    invoke-static {v8, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 360
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->itemImage:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 361
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView6:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    invoke-static {}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->getBuildSdkInt()I

    move-result v0

    const/16 v5, 0xb

    if-lt v0, v5, :cond_22

    .line 365
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_22
    if-eqz v9, :cond_23

    .line 371
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->button:Landroid/widget/RelativeLayout;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_23
    and-long v4, v2, v21

    cmp-long v0, v4, v17

    if-eqz v0, :cond_24

    .line 376
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_24
    and-long v4, v2, v23

    cmp-long v0, v4, v17

    if-eqz v0, :cond_25

    .line 381
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_25
    const-wide/16 v4, 0x42

    and-long/2addr v4, v2

    cmp-long v0, v4, v17

    if-eqz v0, :cond_26

    .line 386
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_26
    and-long v2, v2, v36

    cmp-long v0, v2, v17

    if-eqz v0, :cond_27

    .line 391
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mboundView6:Landroid/widget/TextView;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_27
    return-void

    :catchall_0
    move-exception v0

    .line 164
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 69
    monitor-exit p0

    return v0

    .line 71
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

    .line 59
    monitor-enter p0

    const-wide/16 v0, 0x40

    .line 60
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 61
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

.method public setAmount(Ljava/lang/String;)V
    .locals 4

    .line 111
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mAmount:Ljava/lang/String;

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 115
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 116
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 114
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 4

    .line 119
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mCount:Ljava/lang/Integer;

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xb

    .line 123
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 124
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 122
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDarkshade(Ljava/lang/Boolean;)V
    .locals 4

    .line 127
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDarkshade:Ljava/lang/Boolean;

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    .line 130
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xc

    .line 131
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 132
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 130
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setItem(Lcom/example/digitalkiosk/models/Item;)V
    .locals 4

    .line 103
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mItem:Lcom/example/digitalkiosk/models/Item;

    .line 104
    monitor-enter p0

    .line 105
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1b

    .line 107
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 108
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->requestRebind()V

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

.method public setSelected(Ljava/lang/Boolean;)V
    .locals 4

    .line 135
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mSelected:Ljava/lang/Boolean;

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x29

    .line 139
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 140
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 138
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSoldOutTranslation(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 143
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mSoldOutTranslation:Lcom/example/digitalkiosk/models/Translation;

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->mDirtyFlags:J

    .line 146
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2f

    .line 147
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 148
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 146
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

    .line 79
    check-cast p2, Lcom/example/digitalkiosk/models/Item;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->setItem(Lcom/example/digitalkiosk/models/Item;)V

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 82
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->setAmount(Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0xb

    if-ne v0, p1, :cond_2

    .line 85
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->setCount(Ljava/lang/Integer;)V

    return v1

    :cond_2
    const/16 v0, 0xc

    if-ne v0, p1, :cond_3

    .line 88
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->setDarkshade(Ljava/lang/Boolean;)V

    return v1

    :cond_3
    const/16 v0, 0x29

    if-ne v0, p1, :cond_4

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->setSelected(Ljava/lang/Boolean;)V

    return v1

    :cond_4
    const/16 v0, 0x2f

    if-ne v0, p1, :cond_5

    .line 94
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemButtonBindingImpl;->setSoldOutTranslation(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
