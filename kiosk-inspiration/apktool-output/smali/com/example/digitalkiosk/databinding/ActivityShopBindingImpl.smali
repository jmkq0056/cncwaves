.class public Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;
.super Lcom/example/digitalkiosk/databinding/ActivityShopBinding;
.source "ActivityShopBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView2:Landroid/widget/ImageView;

.field private final mboundView3:Landroid/widget/FrameLayout;

.field private final mboundView4:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->test_mode:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/example/digitalkiosk/R$id;->inner_banner:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/example/digitalkiosk/R$id;->inner_indicators:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/example/digitalkiosk/R$id;->handicap_banner:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/example/digitalkiosk/R$id;->handicap_indicators:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/example/digitalkiosk/R$id;->categoriesButtons:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lcom/example/digitalkiosk/R$id;->subCatButtons:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/example/digitalkiosk/R$id;->itemsButtons:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/example/digitalkiosk/R$id;->nav_space:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lcom/example/digitalkiosk/R$id;->bottom_nav:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v1, Lcom/example/digitalkiosk/R$id;->expand_cart_icon:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget v1, Lcom/example/digitalkiosk/R$id;->arrow_up:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget v1, Lcom/example/digitalkiosk/R$id;->arrow_down:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget v1, Lcom/example/digitalkiosk/R$id;->expand_cart:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget v1, Lcom/example/digitalkiosk/R$id;->cart_your_order:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget v1, Lcom/example/digitalkiosk/R$id;->order_total:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget v1, Lcom/example/digitalkiosk/R$id;->cart:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget v1, Lcom/example/digitalkiosk/R$id;->back_button:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget v1, Lcom/example/digitalkiosk/R$id;->handicap_button:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_button:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 37
    sget v1, Lcom/example/digitalkiosk/R$id;->cancel_order:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    sget v1, Lcom/example/digitalkiosk/R$id;->accept_order:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget v1, Lcom/example/digitalkiosk/R$id;->cart_icon:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 54
    sget-object v0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x1c

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 29

    const/16 v0, 0x1a

    .line 57
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    const/16 v0, 0x16

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v0, 0x19

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x15

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x1b

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    const/16 v0, 0x13

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x12

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object v15, v0

    check-cast v15, Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroidx/viewpager2/widget/ViewPager2;

    const/16 v0, 0x17

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageButton;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Lme/relex/circleindicator/CircleIndicator3;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/LinearLayout;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object/from16 v20, v0

    check-cast v20, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v21, v0

    check-cast v21, Lme/relex/circleindicator/CircleIndicator3;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object/from16 v22, v0

    check-cast v22, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/widget/Space;

    const/16 v0, 0x14

    aget-object v0, p3, v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/widget/TextView;

    const/4 v0, 0x0

    aget-object v0, p3, v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/widget/RelativeLayout;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object/from16 v26, v0

    check-cast v26, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object/from16 v27, v0

    check-cast v27, Landroid/widget/LinearLayout;

    const/16 v0, 0x18

    aget-object v0, p3, v0

    move-object/from16 v28, v0

    check-cast v28, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v28}, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatButton;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatButton;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroidx/viewpager2/widget/ViewPager2;Landroid/widget/ImageButton;Lme/relex/circleindicator/CircleIndicator3;Landroid/widget/LinearLayout;Landroidx/viewpager2/widget/ViewPager2;Lme/relex/circleindicator/CircleIndicator3;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/Space;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatButton;)V

    const-wide/16 v1, -0x1

    .line 266
    iput-wide v1, v0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    .line 84
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->header:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 85
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mboundView2:Landroid/widget/ImageView;

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 87
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mboundView3:Landroid/widget/FrameLayout;

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 89
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mboundView4:Landroid/widget/TextView;

    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->shopRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    .line 92
    invoke-virtual {v0, v2}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 94
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 22

    move-object/from16 v1, p0

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 170
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    .line 171
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mItemsTitle:Lcom/example/digitalkiosk/models/Translation;

    .line 178
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    .line 181
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    const-wide/16 v8, 0x9

    and-long v10, v2, v8

    cmp-long v10, v10, v4

    const-wide/16 v11, 0x200

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
    const-wide/16 v15, 0x100

    or-long/2addr v2, v15

    goto :goto_1

    :cond_2
    move v14, v13

    :cond_3
    :goto_1
    const-wide/16 v15, 0xa

    and-long v17, v2, v15

    cmp-long v10, v17, v4

    const/16 v17, 0x0

    if-eqz v10, :cond_4

    if-eqz v6, :cond_4

    .line 204
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/KioskSetting;->getApp_logo()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object/from16 v6, v17

    :goto_2
    const-wide/16 v18, 0xc

    and-long v20, v2, v18

    cmp-long v10, v20, v4

    if-eqz v10, :cond_9

    .line 212
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v10, :cond_6

    if-eqz v7, :cond_5

    const-wide/16 v20, 0xa0

    goto :goto_3

    :cond_5
    const-wide/16 v20, 0x50

    :goto_3
    or-long v2, v2, v20

    :cond_6
    const/16 v10, 0x8

    if-eqz v7, :cond_7

    move/from16 v20, v13

    goto :goto_4

    :cond_7
    move/from16 v20, v10

    :goto_4
    if-eqz v7, :cond_8

    move v13, v10

    :cond_8
    move v7, v13

    move/from16 v13, v20

    goto :goto_5

    :cond_9
    move v7, v13

    :goto_5
    and-long v10, v2, v11

    cmp-long v10, v10, v4

    if-eqz v10, :cond_a

    if-eqz v0, :cond_a

    .line 236
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_a
    move-object/from16 v0, v17

    :goto_6
    and-long/2addr v8, v2

    cmp-long v8, v8, v4

    if-eqz v8, :cond_c

    if-eqz v14, :cond_b

    goto :goto_7

    .line 243
    :cond_b
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mboundView4:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v9, Lcom/example/digitalkiosk/R$string;->most_selling:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    move-object/from16 v17, v0

    :cond_c
    move-object/from16 v0, v17

    and-long v9, v2, v18

    cmp-long v9, v9, v4

    if-eqz v9, :cond_d

    .line 249
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->header:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mboundView3:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_d
    and-long/2addr v2, v15

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    .line 255
    iget-object v2, v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mboundView2:Landroid/widget/ImageView;

    invoke-static {v2, v6}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_e
    if-eqz v8, :cond_f

    .line 260
    iget-object v2, v1, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mboundView4:Landroid/widget/TextView;

    invoke-static {v2, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_f
    return-void

    :catchall_0
    move-exception v0

    .line 171
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 109
    monitor-exit p0

    return v0

    .line 111
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

    .line 99
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 100
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 101
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

.method public setHandicapOn(Ljava/lang/Boolean;)V
    .locals 4

    .line 150
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    .line 151
    monitor-enter p0

    .line 152
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    .line 153
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x16

    .line 154
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->notifyPropertyChanged(I)V

    .line 155
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->requestRebind()V

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

.method public setItemsTitle(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 134
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mItemsTitle:Lcom/example/digitalkiosk/models/Translation;

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1c

    .line 138
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->notifyPropertyChanged(I)V

    .line 139
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 137
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V
    .locals 4

    .line 142
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->mDirtyFlags:J

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1d

    .line 146
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->notifyPropertyChanged(I)V

    .line 147
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 145
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x1c

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 119
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->setItemsTitle(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_0
    const/16 v0, 0x1d

    if-ne v0, p1, :cond_1

    .line 122
    check-cast p2, Lcom/example/digitalkiosk/models/KioskSetting;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V

    return v1

    :cond_1
    const/16 v0, 0x16

    if-ne v0, p1, :cond_2

    .line 125
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityShopBindingImpl;->setHandicapOn(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
