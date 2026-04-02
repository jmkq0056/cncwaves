.class public Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;
.super Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;
.source "CompleteOrderBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView11:Landroid/widget/Space;

.field private final mboundView3:Landroid/widget/TextView;

.field private final mboundView4:Landroid/widget/TextView;

.field private final mboundView5:Landroid/widget/LinearLayout;

.field private final mboundView8:Landroid/widget/Space;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->to_pay:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/example/digitalkiosk/R$id;->order_items:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/example/digitalkiosk/R$id;->bag:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/example/digitalkiosk/R$id;->need_bag:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/example/digitalkiosk/R$id;->bag_ordering:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/example/digitalkiosk/R$id;->bag_yes:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lcom/example/digitalkiosk/R$id;->bag_no:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/example/digitalkiosk/R$id;->cashpay:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/example/digitalkiosk/R$id;->back_button:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 48
    sget-object v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x16

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19

    const/4 v0, 0x2

    .line 51
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/16 v0, 0x15

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v0, 0x13

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/RadioButton;

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RadioGroup;

    const/16 v0, 0x12

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RadioButton;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    const/16 v0, 0x14

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object v15, v0

    check-cast v15, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/LinearLayout;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/LinearLayout;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v18}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 352
    iput-wide v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    .line 68
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->appLogo:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->cardPay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->cashWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 72
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 73
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 74
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    .line 75
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xb

    .line 76
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView11:Landroid/widget/Space;

    .line 77
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 78
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 79
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 80
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView4:Landroid/widget/TextView;

    .line 81
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 82
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView5:Landroid/widget/LinearLayout;

    .line 83
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x8

    .line 84
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/Space;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView8:Landroid/widget/Space;

    .line 85
    invoke-virtual {v1, v2}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->paymentsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->paypal:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    .line 88
    invoke-virtual {v0, v2}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 90
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 26

    move-object/from16 v1, p0

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 177
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mTab:Ljava/lang/Integer;

    .line 184
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mSubtitle:Ljava/lang/String;

    .line 189
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    .line 192
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mTitle:Ljava/lang/String;

    const-wide/16 v9, 0x11

    and-long v11, v2, v9

    cmp-long v11, v11, v4

    const/4 v13, 0x0

    if-eqz v11, :cond_c

    .line 205
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v0

    const/4 v14, 0x1

    if-ne v0, v14, :cond_0

    move v15, v14

    goto :goto_0

    :cond_0
    move v15, v13

    :goto_0
    move-wide/from16 v16, v4

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v4, v14

    goto :goto_1

    :cond_1
    move v4, v13

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v14, v13

    :goto_2
    if-eqz v11, :cond_4

    if-eqz v15, :cond_3

    const-wide/16 v18, 0x100

    goto :goto_3

    :cond_3
    const-wide/16 v18, 0x80

    :goto_3
    or-long v2, v2, v18

    :cond_4
    and-long v18, v2, v9

    cmp-long v0, v18, v16

    if-eqz v0, :cond_6

    if-eqz v4, :cond_5

    const-wide/16 v18, 0x400

    goto :goto_4

    :cond_5
    const-wide/16 v18, 0x200

    :goto_4
    or-long v2, v2, v18

    :cond_6
    and-long v18, v2, v9

    cmp-long v0, v18, v16

    if-eqz v0, :cond_8

    if-eqz v14, :cond_7

    const-wide/16 v18, 0x40

    goto :goto_5

    :cond_7
    const-wide/16 v18, 0x20

    :goto_5
    or-long v2, v2, v18

    :cond_8
    if-eqz v15, :cond_9

    move v0, v13

    goto :goto_6

    :cond_9
    const/16 v0, 0x8

    :goto_6
    if-eqz v4, :cond_a

    move v4, v13

    goto :goto_7

    :cond_a
    const/16 v4, 0x8

    :goto_7
    if-eqz v14, :cond_b

    const/16 v5, 0x8

    goto :goto_8

    :cond_b
    move v5, v13

    goto :goto_8

    :cond_c
    move-wide/from16 v16, v4

    move v0, v13

    move v4, v0

    move v5, v4

    :goto_8
    const-wide/16 v14, 0x14

    and-long v18, v2, v14

    cmp-long v11, v18, v16

    const/16 v18, 0x0

    if-eqz v11, :cond_17

    if-eqz v7, :cond_d

    .line 255
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/KioskSetting;->getCash_enabled()Z

    move-result v18

    .line 257
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/KioskSetting;->getApp_logo()Ljava/lang/String;

    move-result-object v19

    .line 259
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/KioskSetting;->getCard_enabled()Z

    move-result v20

    .line 261
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/KioskSetting;->getPaypal_enabled()Z

    move-result v7

    goto :goto_9

    :cond_d
    move v7, v13

    move/from16 v20, v7

    move-object/from16 v19, v18

    move/from16 v18, v20

    :goto_9
    if-eqz v11, :cond_f

    if-eqz v18, :cond_e

    const-wide/32 v21, 0x40000

    goto :goto_a

    :cond_e
    const-wide/32 v21, 0x20000

    :goto_a
    or-long v2, v2, v21

    :cond_f
    and-long v21, v2, v14

    cmp-long v11, v21, v16

    if-eqz v11, :cond_11

    if-eqz v20, :cond_10

    const-wide/16 v21, 0x1000

    goto :goto_b

    :cond_10
    const-wide/16 v21, 0x800

    :goto_b
    or-long v2, v2, v21

    :cond_11
    and-long v21, v2, v14

    cmp-long v11, v21, v16

    if-eqz v11, :cond_13

    if-eqz v7, :cond_12

    const-wide/32 v21, 0x14000

    goto :goto_c

    :cond_12
    const-wide/32 v21, 0xa000

    :goto_c
    or-long v2, v2, v21

    :cond_13
    if-eqz v18, :cond_14

    move v11, v13

    goto :goto_d

    :cond_14
    const/16 v11, 0x8

    :goto_d
    if-eqz v20, :cond_15

    move/from16 v18, v13

    goto :goto_e

    :cond_15
    const/16 v18, 0x8

    :goto_e
    if-eqz v7, :cond_16

    move/from16 v21, v13

    goto :goto_f

    :cond_16
    const/16 v21, 0x8

    :goto_f
    move/from16 v12, v21

    move-wide/from16 v24, v9

    move/from16 v10, v18

    move-object/from16 v9, v19

    move-wide/from16 v18, v24

    goto :goto_10

    :cond_17
    move-wide v11, v9

    move-object/from16 v9, v18

    move-wide/from16 v18, v11

    move v7, v13

    move v10, v7

    move v11, v10

    move v12, v11

    move/from16 v20, v12

    :goto_10
    and-long v22, v2, v14

    cmp-long v22, v22, v16

    if-eqz v22, :cond_1c

    if-eqz v7, :cond_18

    goto :goto_11

    :cond_18
    move/from16 v20, v13

    :goto_11
    if-eqz v22, :cond_1a

    if-eqz v20, :cond_19

    const-wide/32 v22, 0x100000

    goto :goto_12

    :cond_19
    const-wide/32 v22, 0x80000

    :goto_12
    or-long v2, v2, v22

    :cond_1a
    if-eqz v20, :cond_1b

    move/from16 v21, v13

    goto :goto_13

    :cond_1b
    const/16 v21, 0x8

    :goto_13
    move/from16 v13, v21

    :cond_1c
    and-long/2addr v14, v2

    cmp-long v7, v14, v16

    if-eqz v7, :cond_1d

    .line 323
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->appLogo:Landroid/widget/ImageView;

    invoke-static {v7, v9}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 324
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->cardPay:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 325
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->cashWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 326
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView8:Landroid/widget/Space;

    invoke-virtual {v7, v13}, Landroid/widget/Space;->setVisibility(I)V

    .line 327
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->paypal:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1d
    and-long v9, v2, v18

    cmp-long v7, v9, v16

    if-eqz v7, :cond_1e

    .line 332
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 333
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 334
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView11:Landroid/widget/Space;

    invoke-virtual {v5, v0}, Landroid/widget/Space;->setVisibility(I)V

    .line 335
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView5:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->paymentsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1e
    const-wide/16 v4, 0x18

    and-long/2addr v4, v2

    cmp-long v0, v4, v16

    if-eqz v0, :cond_1f

    .line 341
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1f
    const-wide/16 v4, 0x12

    and-long/2addr v2, v4

    cmp-long v0, v2, v16

    if-eqz v0, :cond_20

    .line 346
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mboundView4:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_20
    return-void

    :catchall_0
    move-exception v0

    .line 178
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 105
    monitor-exit p0

    return v0

    .line 107
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

    .line 95
    monitor-enter p0

    const-wide/16 v0, 0x10

    .line 96
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    .line 97
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 97
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

    .line 149
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1d

    .line 153
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->notifyPropertyChanged(I)V

    .line 154
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 152
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSubtitle(Ljava/lang/String;)V
    .locals 4

    .line 141
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mSubtitle:Ljava/lang/String;

    .line 142
    monitor-enter p0

    .line 143
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x30

    .line 145
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->notifyPropertyChanged(I)V

    .line 146
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 144
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTab(Ljava/lang/Integer;)V
    .locals 4

    .line 133
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mTab:Ljava/lang/Integer;

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x31

    .line 137
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->notifyPropertyChanged(I)V

    .line 138
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 136
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .line 157
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mTitle:Ljava/lang/String;

    .line 158
    monitor-enter p0

    .line 159
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->mDirtyFlags:J

    .line 160
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 161
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->notifyPropertyChanged(I)V

    .line 162
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 160
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x31

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 115
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->setTab(Ljava/lang/Integer;)V

    return v1

    :cond_0
    const/16 v0, 0x30

    if-ne v0, p1, :cond_1

    .line 118
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->setSubtitle(Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0x1d

    if-ne v0, p1, :cond_2

    .line 121
    check-cast p2, Lcom/example/digitalkiosk/models/KioskSetting;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V

    return v1

    :cond_2
    const/16 v0, 0x37

    if-ne v0, p1, :cond_3

    .line 124
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/CompleteOrderBindingImpl;->setTitle(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
