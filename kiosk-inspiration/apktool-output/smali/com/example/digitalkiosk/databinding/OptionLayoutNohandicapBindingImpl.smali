.class public Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;
.super Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;
.source "OptionLayoutNohandicapBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;

.field private final mboundView1:Landroid/widget/ImageView;

.field private final mboundView10:Landroid/widget/LinearLayout;

.field private final mboundView11:Landroid/widget/TextView;

.field private final mboundView12:Landroid/widget/TextView;

.field private final mboundView2:Landroid/widget/TextView;

.field private final mboundView3:Landroid/widget/LinearLayout;

.field private final mboundView4:Landroid/widget/TextView;

.field private final mboundView5:Landroid/widget/Space;

.field private final mboundView6:Landroid/widget/Space;

.field private final mboundView7:Landroid/widget/LinearLayout;

.field private final mboundView8:Landroid/widget/TextView;

.field private final mboundView9:Landroid/widget/Space;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->takeAwayButton:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/example/digitalkiosk/R$id;->dineInButton:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/example/digitalkiosk/R$id;->pickUpButton:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/example/digitalkiosk/R$id;->languages:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/example/digitalkiosk/R$id;->handicapButton:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 56
    sget-object v0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10

    const/16 v0, 0xe

    .line 59
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    const-wide/16 p1, -0x1

    .line 540
    iput-wide p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    const/4 p1, 0x0

    .line 66
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 68
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView1:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0xa

    .line 70
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView10:Landroid/widget/LinearLayout;

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0xb

    .line 72
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView11:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0xc

    .line 74
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView12:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 76
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView2:Landroid/widget/TextView;

    .line 77
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 78
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView3:Landroid/widget/LinearLayout;

    .line 79
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 80
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView4:Landroid/widget/TextView;

    .line 81
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x5

    .line 82
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/Space;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView5:Landroid/widget/Space;

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x6

    .line 84
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/Space;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView6:Landroid/widget/Space;

    .line 85
    invoke-virtual {p1, p2}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x7

    .line 86
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView7:Landroid/widget/LinearLayout;

    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0x8

    .line 88
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView8:Landroid/widget/TextView;

    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 p1, 0x9

    .line 90
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/Space;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView9:Landroid/widget/Space;

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/Space;->setTag(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 52

    move-object/from16 v1, p0

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 203
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    .line 204
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mSelectYourOption:Lcom/example/digitalkiosk/models/Translation;

    .line 209
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mChooseYourOption:Lcom/example/digitalkiosk/models/Translation;

    .line 213
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    .line 214
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mPickLater:Lcom/example/digitalkiosk/models/Translation;

    .line 233
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDineIn:Lcom/example/digitalkiosk/models/Translation;

    .line 240
    iget-object v10, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mTakeAway:Lcom/example/digitalkiosk/models/Translation;

    const-wide/16 v11, 0x41

    and-long v13, v2, v11

    cmp-long v13, v13, v4

    const-wide/32 v14, 0x4000000

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v13, :cond_2

    if-eqz v0, :cond_0

    move/from16 v18, v16

    goto :goto_0

    :cond_0
    move/from16 v18, v17

    :goto_0
    if-eqz v13, :cond_3

    if-eqz v18, :cond_1

    or-long/2addr v2, v14

    goto :goto_1

    :cond_1
    const-wide/32 v19, 0x2000000

    or-long v2, v2, v19

    goto :goto_1

    :cond_2
    move/from16 v18, v17

    :cond_3
    :goto_1
    const-wide/16 v19, 0x42

    and-long v21, v2, v19

    cmp-long v13, v21, v4

    const-wide/32 v21, 0x10000

    if-eqz v13, :cond_6

    if-eqz v6, :cond_4

    move/from16 v23, v16

    goto :goto_2

    :cond_4
    move/from16 v23, v17

    :goto_2
    if-eqz v13, :cond_7

    if-eqz v23, :cond_5

    or-long v2, v2, v21

    goto :goto_3

    :cond_5
    const-wide/32 v24, 0x8000

    or-long v2, v2, v24

    goto :goto_3

    :cond_6
    move/from16 v23, v17

    :cond_7
    :goto_3
    const-wide/16 v24, 0x44

    and-long v26, v2, v24

    cmp-long v13, v26, v4

    const/16 v26, 0x8

    const/16 v27, 0x0

    if-eqz v13, :cond_12

    if-eqz v7, :cond_8

    .line 278
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/KioskSetting;->getApp_logo()Ljava/lang/String;

    move-result-object v28

    .line 280
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/KioskSetting;->getTakeaway_enabled()Z

    move-result v29

    .line 282
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/KioskSetting;->getDinein_enabled()Z

    move-result v30

    .line 284
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/KioskSetting;->getPicklater_enabled()Z

    move-result v7

    goto :goto_4

    :cond_8
    move/from16 v7, v17

    move/from16 v29, v7

    move/from16 v30, v29

    move-object/from16 v28, v27

    :goto_4
    if-eqz v13, :cond_a

    if-eqz v29, :cond_9

    const-wide/32 v31, 0x1500000

    goto :goto_5

    :cond_9
    const-wide/32 v31, 0xa80000

    :goto_5
    or-long v2, v2, v31

    :cond_a
    and-long v31, v2, v24

    cmp-long v13, v31, v4

    if-eqz v13, :cond_c

    if-eqz v30, :cond_b

    const-wide/16 v31, 0x400

    goto :goto_6

    :cond_b
    const-wide/16 v31, 0x200

    :goto_6
    or-long v2, v2, v31

    :cond_c
    and-long v31, v2, v24

    cmp-long v13, v31, v4

    if-eqz v13, :cond_e

    if-eqz v7, :cond_d

    const-wide/32 v31, 0x10040000

    goto :goto_7

    :cond_d
    const-wide/32 v31, 0x8020000

    :goto_7
    or-long v2, v2, v31

    :cond_e
    if-eqz v29, :cond_f

    move/from16 v13, v17

    goto :goto_8

    :cond_f
    move/from16 v13, v26

    :goto_8
    if-eqz v30, :cond_10

    move/from16 v31, v17

    goto :goto_9

    :cond_10
    move/from16 v31, v26

    :goto_9
    if-eqz v7, :cond_11

    move/from16 v32, v17

    goto :goto_a

    :cond_11
    move/from16 v32, v26

    :goto_a
    move-wide/from16 v50, v4

    move-object/from16 v4, v28

    move/from16 v5, v29

    move-wide/from16 v28, v50

    move-wide/from16 v50, v11

    move/from16 v11, v31

    move/from16 v12, v32

    move-wide/from16 v31, v50

    goto :goto_b

    :cond_12
    move-wide/from16 v28, v4

    move-wide/from16 v31, v11

    move/from16 v5, v17

    move v7, v5

    move v11, v7

    move v12, v11

    move v13, v12

    move/from16 v30, v13

    move-object/from16 v4, v27

    :goto_b
    const-wide/16 v33, 0x48

    and-long v35, v2, v33

    cmp-long v35, v35, v28

    const-wide/32 v36, 0x40000000

    if-eqz v35, :cond_15

    if-eqz v8, :cond_13

    move/from16 v38, v16

    goto :goto_c

    :cond_13
    move/from16 v38, v17

    :goto_c
    if-eqz v35, :cond_16

    if-eqz v38, :cond_14

    or-long v2, v2, v36

    goto :goto_d

    :cond_14
    const-wide/32 v39, 0x20000000

    or-long v2, v2, v39

    goto :goto_d

    :cond_15
    move/from16 v38, v17

    :cond_16
    :goto_d
    const-wide/16 v39, 0x50

    and-long v41, v2, v39

    cmp-long v35, v41, v28

    const-wide v41, 0x400000000L

    if-eqz v35, :cond_19

    if-eqz v9, :cond_17

    move/from16 v43, v16

    goto :goto_e

    :cond_17
    move/from16 v43, v17

    :goto_e
    if-eqz v35, :cond_1a

    if-eqz v43, :cond_18

    or-long v2, v2, v41

    goto :goto_f

    :cond_18
    const-wide v44, 0x200000000L

    or-long v2, v2, v44

    goto :goto_f

    :cond_19
    move/from16 v43, v17

    :cond_1a
    :goto_f
    const-wide/16 v44, 0x60

    and-long v46, v2, v44

    cmp-long v35, v46, v28

    const-wide v46, 0x100000000L

    if-eqz v35, :cond_1d

    if-eqz v10, :cond_1b

    goto :goto_10

    :cond_1b
    move/from16 v16, v17

    :goto_10
    if-eqz v35, :cond_1e

    if-eqz v16, :cond_1c

    or-long v2, v2, v46

    goto :goto_11

    :cond_1c
    const-wide v48, 0x80000000L

    or-long v2, v2, v48

    goto :goto_11

    :cond_1d
    move/from16 v16, v17

    :cond_1e
    :goto_11
    and-long/2addr v14, v2

    cmp-long v14, v14, v28

    if-eqz v14, :cond_1f

    if-eqz v0, :cond_1f

    .line 376
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_1f
    move-object/from16 v0, v27

    :goto_12
    const-wide/32 v14, 0x100000

    and-long/2addr v14, v2

    cmp-long v14, v14, v28

    if-eqz v14, :cond_20

    xor-int/lit8 v14, v30, 0x1

    goto :goto_13

    :cond_20
    move/from16 v14, v17

    :goto_13
    and-long v48, v2, v24

    cmp-long v15, v48, v28

    if-eqz v15, :cond_29

    if-eqz v7, :cond_21

    move/from16 v35, v30

    goto :goto_14

    :cond_21
    move/from16 v35, v17

    :goto_14
    if-eqz v5, :cond_22

    goto :goto_15

    :cond_22
    move/from16 v30, v17

    :goto_15
    if-eqz v15, :cond_24

    if-eqz v35, :cond_23

    const-wide/16 v48, 0x4000

    goto :goto_16

    :cond_23
    const-wide/16 v48, 0x2000

    :goto_16
    or-long v2, v2, v48

    :cond_24
    and-long v48, v2, v24

    cmp-long v15, v48, v28

    if-eqz v15, :cond_26

    if-eqz v30, :cond_25

    const-wide/16 v48, 0x1000

    goto :goto_17

    :cond_25
    const-wide/16 v48, 0x800

    :goto_17
    or-long v2, v2, v48

    :cond_26
    if-eqz v35, :cond_27

    move/from16 v15, v17

    goto :goto_18

    :cond_27
    move/from16 v15, v26

    :goto_18
    if-eqz v30, :cond_28

    move/from16 v30, v17

    goto :goto_19

    :cond_28
    move/from16 v30, v26

    :goto_19
    move/from16 v50, v30

    move-object/from16 v30, v0

    move/from16 v0, v50

    goto :goto_1a

    :cond_29
    move-object/from16 v30, v0

    move/from16 v0, v17

    move v15, v0

    :goto_1a
    and-long v35, v2, v36

    cmp-long v35, v35, v28

    if-eqz v35, :cond_2a

    if-eqz v8, :cond_2a

    .line 417
    invoke-virtual {v8}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v8

    goto :goto_1b

    :cond_2a
    move-object/from16 v8, v27

    :goto_1b
    and-long v21, v2, v21

    cmp-long v21, v21, v28

    if-eqz v21, :cond_2b

    if-eqz v6, :cond_2b

    .line 424
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v6

    goto :goto_1c

    :cond_2b
    move-object/from16 v6, v27

    :goto_1c
    and-long v21, v2, v46

    cmp-long v21, v21, v28

    if-eqz v21, :cond_2c

    if-eqz v10, :cond_2c

    .line 431
    invoke-virtual {v10}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v10

    goto :goto_1d

    :cond_2c
    move-object/from16 v10, v27

    :goto_1d
    and-long v21, v2, v41

    cmp-long v21, v21, v28

    if-eqz v21, :cond_2d

    if-eqz v9, :cond_2d

    .line 438
    invoke-virtual {v9}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v9

    goto :goto_1e

    :cond_2d
    move-object/from16 v9, v27

    :goto_1e
    and-long v21, v2, v19

    cmp-long v21, v21, v28

    if-eqz v21, :cond_2f

    if-eqz v23, :cond_2e

    move-wide/from16 v21, v2

    goto :goto_1f

    .line 445
    :cond_2e
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-wide/from16 v21, v2

    sget v2, Lcom/example/digitalkiosk/R$string;->choose_your_option:I

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1f

    :cond_2f
    move-wide/from16 v21, v2

    move-object/from16 v6, v27

    :goto_1f
    and-long v2, v21, v24

    cmp-long v2, v2, v28

    if-eqz v2, :cond_32

    if-eqz v5, :cond_30

    goto :goto_20

    :cond_30
    move/from16 v14, v17

    :goto_20
    if-eqz v2, :cond_33

    if-eqz v14, :cond_31

    const-wide/16 v2, 0x100

    goto :goto_21

    :cond_31
    const-wide/16 v2, 0x80

    :goto_21
    or-long v2, v21, v2

    goto :goto_22

    :cond_32
    move/from16 v14, v17

    :cond_33
    move-wide/from16 v2, v21

    :goto_22
    and-long v21, v2, v31

    cmp-long v5, v21, v28

    if-eqz v5, :cond_35

    if-eqz v18, :cond_34

    move-wide/from16 v21, v2

    move-object/from16 v2, v30

    goto :goto_23

    .line 463
    :cond_34
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView12:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-wide/from16 v21, v2

    sget v2, Lcom/example/digitalkiosk/R$string;->select_your_option:I

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_23

    :cond_35
    move-wide/from16 v21, v2

    move-object/from16 v2, v27

    :goto_23
    and-long v35, v21, v33

    cmp-long v3, v35, v28

    if-eqz v3, :cond_37

    if-eqz v38, :cond_36

    goto :goto_24

    .line 468
    :cond_36
    iget-object v3, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView11:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/example/digitalkiosk/R$string;->pick_up_later:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_24

    :cond_37
    move-object/from16 v8, v27

    :goto_24
    and-long v35, v21, v44

    cmp-long v3, v35, v28

    if-eqz v3, :cond_39

    if-eqz v16, :cond_38

    goto :goto_25

    .line 473
    :cond_38
    iget-object v3, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView4:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/example/digitalkiosk/R$string;->take_away:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_25

    :cond_39
    move-object/from16 v10, v27

    :goto_25
    and-long v35, v21, v39

    cmp-long v3, v35, v28

    if-eqz v3, :cond_3b

    if-eqz v43, :cond_3a

    move-object/from16 v27, v9

    goto :goto_26

    .line 478
    :cond_3a
    iget-object v3, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView8:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/example/digitalkiosk/R$string;->dine_in:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v27, v3

    :cond_3b
    :goto_26
    move-object/from16 v3, v27

    and-long v35, v21, v24

    cmp-long v5, v35, v28

    if-eqz v5, :cond_40

    if-eqz v14, :cond_3c

    goto :goto_27

    :cond_3c
    move/from16 v7, v17

    :goto_27
    if-eqz v5, :cond_3e

    if-eqz v7, :cond_3d

    const-wide v35, 0x1000000000L

    goto :goto_28

    :cond_3d
    const-wide v35, 0x800000000L

    :goto_28
    or-long v21, v21, v35

    :cond_3e
    if-eqz v7, :cond_3f

    goto :goto_29

    :cond_3f
    move/from16 v17, v26

    :cond_40
    :goto_29
    move/from16 v5, v17

    and-long v16, v21, v24

    cmp-long v7, v16, v28

    if-eqz v7, :cond_41

    .line 503
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-static {v7, v4}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 504
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView10:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView3:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 506
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView5:Landroid/widget/Space;

    invoke-virtual {v4, v0}, Landroid/widget/Space;->setVisibility(I)V

    .line 507
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView6:Landroid/widget/Space;

    invoke-virtual {v0, v5}, Landroid/widget/Space;->setVisibility(I)V

    .line 508
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView7:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 509
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView9:Landroid/widget/Space;

    invoke-virtual {v0, v15}, Landroid/widget/Space;->setVisibility(I)V

    :cond_41
    and-long v4, v21, v33

    cmp-long v0, v4, v28

    if-eqz v0, :cond_42

    .line 514
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView11:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_42
    and-long v4, v21, v31

    cmp-long v0, v4, v28

    if-eqz v0, :cond_43

    .line 519
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView12:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_43
    and-long v4, v21, v19

    cmp-long v0, v4, v28

    if-eqz v0, :cond_44

    .line 524
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView2:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_44
    and-long v4, v21, v44

    cmp-long v0, v4, v28

    if-eqz v0, :cond_45

    .line 529
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView4:Landroid/widget/TextView;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_45
    and-long v4, v21, v39

    cmp-long v0, v4, v28

    if-eqz v0, :cond_46

    .line 534
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mboundView8:Landroid/widget/TextView;

    invoke-static {v0, v3}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_46
    return-void

    :catchall_0
    move-exception v0

    .line 204
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
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x40

    .line 100
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->requestRebind()V

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

.method public setChooseYourOption(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 151
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mChooseYourOption:Lcom/example/digitalkiosk/models/Translation;

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x6

    .line 155
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->notifyPropertyChanged(I)V

    .line 156
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 154
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDineIn(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 175
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDineIn:Lcom/example/digitalkiosk/models/Translation;

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    .line 178
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xe

    .line 179
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->notifyPropertyChanged(I)V

    .line 180
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->requestRebind()V

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

.method public setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V
    .locals 4

    .line 159
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    .line 160
    monitor-enter p0

    .line 161
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1d

    .line 163
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->notifyPropertyChanged(I)V

    .line 164
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 162
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPickLater(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 167
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mPickLater:Lcom/example/digitalkiosk/models/Translation;

    .line 168
    monitor-enter p0

    .line 169
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    .line 170
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x24

    .line 171
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->notifyPropertyChanged(I)V

    .line 172
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 170
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSelectYourOption(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 143
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mSelectYourOption:Lcom/example/digitalkiosk/models/Translation;

    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    .line 146
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x27

    .line 147
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->notifyPropertyChanged(I)V

    .line 148
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->requestRebind()V

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

.method public setTakeAway(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 183
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mTakeAway:Lcom/example/digitalkiosk/models/Translation;

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->mDirtyFlags:J

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x33

    .line 187
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->notifyPropertyChanged(I)V

    .line 188
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 186
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x27

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 119
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->setSelectYourOption(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_0
    const/4 v0, 0x6

    if-ne v0, p1, :cond_1

    .line 122
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->setChooseYourOption(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_1
    const/16 v0, 0x1d

    if-ne v0, p1, :cond_2

    .line 125
    check-cast p2, Lcom/example/digitalkiosk/models/KioskSetting;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V

    return v1

    :cond_2
    const/16 v0, 0x24

    if-ne v0, p1, :cond_3

    .line 128
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->setPickLater(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_3
    const/16 v0, 0xe

    if-ne v0, p1, :cond_4

    .line 131
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->setDineIn(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_4
    const/16 v0, 0x33

    if-ne v0, p1, :cond_5

    .line 134
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBindingImpl;->setTakeAway(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
