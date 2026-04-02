.class public Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;
.super Lcom/example/digitalkiosk/databinding/ItemExtraBinding;
.source "ItemExtraBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView2:Landroid/widget/TextView;

.field private final mboundView3:Landroid/widget/TextView;

.field private final mboundView5:Landroid/widget/ImageView;

.field private final mboundView6:Landroid/widget/TextView;

.field private final mboundView7:Landroid/widget/TextView;

.field private final mboundView9:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->subtract_extra:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 42
    sget-object v0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/16 v0, 0x8

    .line 45
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageButton;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageButton;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/LinearLayout;Landroid/widget/ImageButton;)V

    const-wide/16 p1, -0x1

    .line 321
    iput-wide p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    .line 50
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->addExtra:Landroid/widget/ImageButton;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->fullExtraButton:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 52
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 54
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    .line 55
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 56
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView2:Landroid/widget/TextView;

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 58
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 60
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView5:Landroid/widget/ImageView;

    .line 61
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x6

    .line 62
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView6:Landroid/widget/TextView;

    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x7

    .line 64
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView7:Landroid/widget/TextView;

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0x9

    .line 66
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView9:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 70
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 33

    move-object/from16 v1, p0

    .line 166
    monitor-enter p0

    .line 167
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 168
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    .line 169
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mExtraTerm:Lcom/example/digitalkiosk/models/Translation;

    .line 176
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mAmount:Ljava/lang/String;

    .line 179
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mExtra:Lcom/example/digitalkiosk/models/Extra;

    .line 183
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mQuantity:Ljava/lang/String;

    .line 186
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mSoldOutTranslation:Lcom/example/digitalkiosk/models/Translation;

    const-wide/16 v10, 0x21

    and-long v12, v2, v10

    cmp-long v12, v12, v4

    const-wide/16 v13, 0x800

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v12, :cond_2

    if-eqz v0, :cond_0

    move/from16 v17, v15

    goto :goto_0

    :cond_0
    move/from16 v17, v16

    :goto_0
    if-eqz v12, :cond_3

    if-eqz v17, :cond_1

    or-long/2addr v2, v13

    goto :goto_1

    :cond_1
    const-wide/16 v18, 0x400

    or-long v2, v2, v18

    goto :goto_1

    :cond_2
    move/from16 v17, v16

    :cond_3
    :goto_1
    const-wide/16 v18, 0x24

    and-long v20, v2, v18

    cmp-long v12, v20, v4

    const/16 v20, 0x0

    if-eqz v12, :cond_9

    if-eqz v7, :cond_4

    .line 211
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/Extra;->getSold_out()Z

    move-result v21

    .line 213
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/Extra;->getName()Ljava/lang/String;

    move-result-object v22

    .line 215
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/Extra;->getImage()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    move/from16 v21, v16

    move-object/from16 v7, v20

    move-object/from16 v22, v7

    :goto_2
    if-eqz v12, :cond_6

    if-eqz v21, :cond_5

    const-wide/16 v23, 0x2200

    goto :goto_3

    :cond_5
    const-wide/16 v23, 0x1100

    :goto_3
    or-long v2, v2, v23

    :cond_6
    xor-int/lit8 v12, v21, 0x1

    if-eqz v21, :cond_7

    move/from16 v23, v16

    goto :goto_4

    :cond_7
    const/16 v23, 0x8

    :goto_4
    if-eqz v21, :cond_8

    const v21, 0x3f19999a    # 0.6f

    goto :goto_5

    :cond_8
    const/high16 v21, 0x3f800000    # 1.0f

    :goto_5
    move-wide/from16 v31, v10

    move/from16 v10, v23

    move-wide/from16 v23, v31

    move-wide/from16 v31, v4

    move/from16 v4, v21

    move-object/from16 v5, v22

    move-wide/from16 v21, v31

    goto :goto_6

    :cond_9
    const/16 v21, 0x0

    move-wide/from16 v23, v4

    move/from16 v4, v21

    move-wide/from16 v21, v23

    move-wide/from16 v23, v10

    move/from16 v10, v16

    move v12, v10

    move-object/from16 v5, v20

    move-object v7, v5

    :goto_6
    const-wide/16 v25, 0x30

    and-long v27, v2, v25

    cmp-long v11, v27, v21

    const-wide/16 v27, 0x80

    if-eqz v11, :cond_d

    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v15, v16

    :goto_7
    if-eqz v11, :cond_c

    if-eqz v15, :cond_b

    or-long v2, v2, v27

    goto :goto_8

    :cond_b
    const-wide/16 v29, 0x40

    or-long v2, v2, v29

    :cond_c
    :goto_8
    move/from16 v16, v15

    :cond_d
    and-long v27, v2, v27

    cmp-long v11, v27, v21

    if-eqz v11, :cond_e

    if-eqz v9, :cond_e

    .line 259
    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_e
    move-object/from16 v9, v20

    :goto_9
    and-long/2addr v13, v2

    cmp-long v11, v13, v21

    if-eqz v11, :cond_f

    if-eqz v0, :cond_f

    .line 266
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_f
    move-object/from16 v0, v20

    :goto_a
    and-long v13, v2, v25

    cmp-long v11, v13, v21

    if-eqz v11, :cond_11

    if-eqz v16, :cond_10

    goto :goto_b

    .line 273
    :cond_10
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView9:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v13, Lcom/example/digitalkiosk/R$string;->sold_out:I

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_b

    :cond_11
    move-object/from16 v9, v20

    :goto_b
    and-long v13, v2, v23

    cmp-long v13, v13, v21

    if-eqz v13, :cond_13

    if-eqz v17, :cond_12

    goto :goto_c

    .line 278
    :cond_12
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v14, Lcom/example/digitalkiosk/R$string;->extra:I

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_c
    move-object/from16 v20, v0

    :cond_13
    move-object/from16 v0, v20

    and-long v14, v2, v18

    cmp-long v14, v14, v21

    if-eqz v14, :cond_14

    .line 284
    iget-object v14, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->addExtra:Landroid/widget/ImageButton;

    invoke-virtual {v14, v12}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 285
    iget-object v14, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->addExtra:Landroid/widget/ImageButton;

    invoke-virtual {v14, v12}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 286
    iget-object v14, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->fullExtraButton:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 287
    iget-object v14, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->fullExtraButton:Landroid/widget/LinearLayout;

    invoke-virtual {v14, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 288
    iget-object v12, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView5:Landroid/widget/ImageView;

    invoke-static {v12, v7}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 289
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView6:Landroid/widget/TextView;

    invoke-static {v7, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 290
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView9:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    invoke-static {}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->getBuildSdkInt()I

    move-result v5

    const/16 v7, 0xb

    if-lt v5, v7, :cond_14

    .line 294
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_14
    if-eqz v13, :cond_15

    .line 300
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_15
    const-wide/16 v4, 0x22

    and-long/2addr v4, v2

    cmp-long v0, v4, v21

    if-eqz v0, :cond_16

    .line 305
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_16
    const-wide/16 v4, 0x28

    and-long/2addr v2, v4

    cmp-long v0, v2, v21

    if-eqz v0, :cond_17

    .line 310
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView7:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_17
    if-eqz v11, :cond_18

    .line 315
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mboundView9:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_18
    return-void

    :catchall_0
    move-exception v0

    .line 169
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 85
    monitor-exit p0

    return v0

    .line 87
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

    .line 75
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 76
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    .line 77
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 77
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

    .line 124
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mAmount:Ljava/lang/String;

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 128
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->notifyPropertyChanged(I)V

    .line 129
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 127
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setExtra(Lcom/example/digitalkiosk/models/Extra;)V
    .locals 4

    .line 132
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mExtra:Lcom/example/digitalkiosk/models/Extra;

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x13

    .line 136
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->notifyPropertyChanged(I)V

    .line 137
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 135
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setExtraTerm(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 116
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mExtraTerm:Lcom/example/digitalkiosk/models/Translation;

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x14

    .line 120
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->notifyPropertyChanged(I)V

    .line 121
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 119
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setQuantity(Ljava/lang/String;)V
    .locals 4

    .line 140
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mQuantity:Ljava/lang/String;

    .line 141
    monitor-enter p0

    .line 142
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    .line 143
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x26

    .line 144
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->notifyPropertyChanged(I)V

    .line 145
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 143
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSoldOutTranslation(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 148
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mSoldOutTranslation:Lcom/example/digitalkiosk/models/Translation;

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->mDirtyFlags:J

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2f

    .line 152
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->notifyPropertyChanged(I)V

    .line 153
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemExtraBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 151
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 95
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->setExtraTerm(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 98
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->setAmount(Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0x13

    if-ne v0, p1, :cond_2

    .line 101
    check-cast p2, Lcom/example/digitalkiosk/models/Extra;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->setExtra(Lcom/example/digitalkiosk/models/Extra;)V

    return v1

    :cond_2
    const/16 v0, 0x26

    if-ne v0, p1, :cond_3

    .line 104
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->setQuantity(Ljava/lang/String;)V

    return v1

    :cond_3
    const/16 v0, 0x2f

    if-ne v0, p1, :cond_4

    .line 107
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemExtraBindingImpl;->setSoldOutTranslation(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
