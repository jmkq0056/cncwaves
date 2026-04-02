.class public Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;
.super Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;
.source "ItemConfigurationBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/LinearLayout;

.field private final mboundView10:Landroid/widget/TextView;

.field private final mboundView2:Landroid/widget/ImageView;

.field private final mboundView3:Landroid/widget/TextView;

.field private final mboundView4:Landroid/widget/TextView;

.field private final mboundView5:Landroid/widget/TextView;

.field private final mboundView6:Landroid/widget/LinearLayout;

.field private final mboundView7:Landroid/widget/ImageView;

.field private final mboundView8:Landroid/widget/TextView;

.field private final mboundView9:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->yourway:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/example/digitalkiosk/R$id;->yourway_hand:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/example/digitalkiosk/R$id;->extras_scroll:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/example/digitalkiosk/R$id;->extras:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/example/digitalkiosk/R$id;->remove_items:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/example/digitalkiosk/R$id;->remove_title:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lcom/example/digitalkiosk/R$id;->ingredients:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/example/digitalkiosk/R$id;->yourway_handicap:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/example/digitalkiosk/R$id;->yourway_handicap_hand:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lcom/example/digitalkiosk/R$id;->extras_handicap_scroll:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v1, Lcom/example/digitalkiosk/R$id;->extras_handicap:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget v1, Lcom/example/digitalkiosk/R$id;->remove_items_ingredients:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget v1, Lcom/example/digitalkiosk/R$id;->handicap_remove_title:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget v1, Lcom/example/digitalkiosk/R$id;->ingredients_handicap:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 61
    sget-object v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x1b

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 20

    const/16 v0, 0xb

    .line 64
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x17

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x16

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/core/widget/NestedScrollView;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/core/widget/NestedScrollView;

    const/16 v0, 0x19

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x13

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0x1a

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    const/16 v0, 0x18

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    const/16 v0, 0x12

    aget-object v0, p3, v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/ImageView;

    const/16 v0, 0x14

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x15

    aget-object v0, p3, v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/ImageView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v19}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatButton;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/core/widget/NestedScrollView;Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/ImageView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/ImageView;)V

    const-wide/16 v1, -0x1

    .line 400
    iput-wide v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    .line 82
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 83
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    .line 84
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 85
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0xa

    .line 87
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView10:Landroid/widget/TextView;

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 89
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView2:Landroid/widget/ImageView;

    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 91
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 92
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x4

    .line 93
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView4:Landroid/widget/TextView;

    .line 94
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x5

    .line 95
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView5:Landroid/widget/TextView;

    .line 96
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x6

    .line 97
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView6:Landroid/widget/LinearLayout;

    .line 98
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x7

    .line 99
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView7:Landroid/widget/ImageView;

    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x8

    .line 101
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView8:Landroid/widget/TextView;

    .line 102
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x9

    .line 103
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView9:Landroid/widget/TextView;

    .line 104
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 105
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->nextButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    .line 106
    invoke-virtual {v0, v2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 108
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 38

    move-object/from16 v1, p0

    .line 204
    monitor-enter p0

    .line 205
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 206
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    .line 207
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mItem:Lcom/example/digitalkiosk/models/ItemDetails;

    .line 216
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mAmount:Ljava/lang/String;

    .line 221
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mNextButtonText:Lcom/example/digitalkiosk/models/Translation;

    .line 227
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mCancelButtonText:Lcom/example/digitalkiosk/models/Translation;

    .line 228
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    const-wide/16 v10, 0x21

    and-long v12, v2, v10

    cmp-long v12, v12, v4

    const-wide/16 v13, 0x100

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz v12, :cond_4

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getDescription()Ljava/lang/String;

    move-result-object v18

    .line 238
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getImage()Ljava/lang/String;

    move-result-object v19

    .line 240
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, v16

    move-object/from16 v18, v0

    move-object/from16 v19, v18

    :goto_0
    if-nez v18, :cond_1

    move/from16 v20, v15

    goto :goto_1

    :cond_1
    move/from16 v20, v17

    :goto_1
    if-eqz v12, :cond_3

    if-eqz v20, :cond_2

    const-wide/16 v21, 0x200

    or-long v2, v2, v21

    goto :goto_2

    :cond_2
    or-long/2addr v2, v13

    :cond_3
    :goto_2
    move-object/from16 v12, v18

    move-wide/from16 v36, v4

    move-object/from16 v4, v19

    move-wide/from16 v18, v36

    goto :goto_3

    :cond_4
    move-wide/from16 v18, v4

    move-object/from16 v0, v16

    move-object v4, v0

    move-object v12, v4

    move/from16 v20, v17

    :goto_3
    const-wide/16 v21, 0x24

    and-long v23, v2, v21

    cmp-long v5, v23, v18

    const-wide/32 v23, 0x8000

    if-eqz v5, :cond_7

    if-eqz v7, :cond_5

    move/from16 v25, v15

    goto :goto_4

    :cond_5
    move/from16 v25, v17

    :goto_4
    if-eqz v5, :cond_8

    if-eqz v25, :cond_6

    or-long v2, v2, v23

    goto :goto_5

    :cond_6
    const-wide/16 v26, 0x4000

    or-long v2, v2, v26

    goto :goto_5

    :cond_7
    move/from16 v25, v17

    :cond_8
    :goto_5
    const-wide/16 v26, 0x28

    and-long v28, v2, v26

    cmp-long v5, v28, v18

    const-wide/32 v28, 0x20000

    if-eqz v5, :cond_b

    if-eqz v8, :cond_9

    move/from16 v30, v15

    goto :goto_6

    :cond_9
    move/from16 v30, v17

    :goto_6
    if-eqz v5, :cond_c

    if-eqz v30, :cond_a

    or-long v2, v2, v28

    goto :goto_7

    :cond_a
    const-wide/32 v31, 0x10000

    or-long v2, v2, v31

    goto :goto_7

    :cond_b
    move/from16 v30, v17

    :cond_c
    :goto_7
    const-wide/16 v31, 0x30

    and-long v33, v2, v31

    cmp-long v5, v33, v18

    const/16 v33, 0x8

    if-eqz v5, :cond_11

    .line 292
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v5, :cond_e

    if-eqz v9, :cond_d

    const-wide/16 v34, 0x880

    goto :goto_8

    :cond_d
    const-wide/16 v34, 0x440

    :goto_8
    or-long v2, v2, v34

    :cond_e
    if-eqz v9, :cond_f

    move/from16 v5, v17

    goto :goto_9

    :cond_f
    move/from16 v5, v33

    :goto_9
    if-eqz v9, :cond_10

    move/from16 v9, v33

    goto :goto_a

    :cond_10
    move/from16 v9, v17

    goto :goto_a

    :cond_11
    move/from16 v5, v17

    move v9, v5

    :goto_a
    and-long v23, v2, v23

    cmp-long v23, v23, v18

    if-eqz v23, :cond_12

    if-eqz v7, :cond_12

    .line 316
    invoke-virtual {v7}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_12
    move-object/from16 v7, v16

    :goto_b
    and-long v23, v2, v28

    cmp-long v23, v23, v18

    if-eqz v23, :cond_13

    if-eqz v8, :cond_13

    .line 323
    invoke-virtual {v8}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v8

    goto :goto_c

    :cond_13
    move-object/from16 v8, v16

    :goto_c
    and-long/2addr v13, v2

    cmp-long v13, v13, v18

    if-eqz v13, :cond_14

    if-eqz v12, :cond_14

    .line 330
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    goto :goto_d

    :cond_14
    move/from16 v13, v17

    :goto_d
    and-long v23, v2, v10

    cmp-long v14, v23, v18

    if-eqz v14, :cond_18

    if-eqz v20, :cond_15

    goto :goto_e

    :cond_15
    move v15, v13

    :goto_e
    if-eqz v14, :cond_17

    if-eqz v15, :cond_16

    const-wide/16 v13, 0x2000

    goto :goto_f

    :cond_16
    const-wide/16 v13, 0x1000

    :goto_f
    or-long/2addr v2, v13

    :cond_17
    if-eqz v15, :cond_18

    move/from16 v17, v33

    :cond_18
    move/from16 v13, v17

    and-long v14, v2, v21

    cmp-long v14, v14, v18

    if-eqz v14, :cond_1a

    if-eqz v25, :cond_19

    goto :goto_10

    .line 354
    :cond_19
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->nextButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v7}, Landroidx/appcompat/widget/AppCompatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v15, Lcom/example/digitalkiosk/R$string;->first_popup_next:I

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_10

    :cond_1a
    move-object/from16 v7, v16

    :goto_10
    and-long v20, v2, v26

    cmp-long v15, v20, v18

    if-eqz v15, :cond_1c

    if-eqz v30, :cond_1b

    move-wide/from16 v20, v10

    goto :goto_11

    .line 359
    :cond_1b
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v8}, Landroidx/appcompat/widget/AppCompatButton;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-wide/from16 v20, v10

    sget v10, Lcom/example/digitalkiosk/R$string;->first_popup_cancel:I

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_11
    move-object/from16 v16, v8

    goto :goto_12

    :cond_1c
    move-wide/from16 v20, v10

    :goto_12
    move-object/from16 v8, v16

    if-eqz v15, :cond_1d

    .line 365
    iget-object v10, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v10, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1d
    and-long v10, v2, v31

    cmp-long v8, v10, v18

    if-eqz v8, :cond_1e

    .line 370
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView1:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView6:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1e
    and-long v8, v2, v20

    cmp-long v5, v8, v18

    if-eqz v5, :cond_1f

    .line 376
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView10:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 377
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView10:Landroid/widget/TextView;

    invoke-static {v5, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 378
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView2:Landroid/widget/ImageView;

    invoke-static {v5, v4}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 379
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v5, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 380
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView5:Landroid/widget/TextView;

    invoke-virtual {v5, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView5:Landroid/widget/TextView;

    invoke-static {v5, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 382
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView7:Landroid/widget/ImageView;

    invoke-static {v5, v4}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 383
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView8:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_1f
    const-wide/16 v4, 0x22

    and-long/2addr v2, v4

    cmp-long v0, v2, v18

    if-eqz v0, :cond_20

    .line 388
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView4:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 389
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mboundView9:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_20
    if-eqz v14, :cond_21

    .line 394
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->nextButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_21
    return-void

    :catchall_0
    move-exception v0

    .line 207
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 123
    monitor-exit p0

    return v0

    .line 125
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

    .line 113
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 114
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    .line 115
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 115
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

    .line 162
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mAmount:Ljava/lang/String;

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    .line 165
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x2

    .line 166
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->notifyPropertyChanged(I)V

    .line 167
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 165
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCancelButtonText(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 178
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mCancelButtonText:Lcom/example/digitalkiosk/models/Translation;

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    .line 181
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    .line 182
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->notifyPropertyChanged(I)V

    .line 183
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 181
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandicapOn(Ljava/lang/Boolean;)V
    .locals 4

    .line 186
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    .line 187
    monitor-enter p0

    .line 188
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    .line 189
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x16

    .line 190
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->notifyPropertyChanged(I)V

    .line 191
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->requestRebind()V

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

.method public setItem(Lcom/example/digitalkiosk/models/ItemDetails;)V
    .locals 4

    .line 154
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mItem:Lcom/example/digitalkiosk/models/ItemDetails;

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    .line 157
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1b

    .line 158
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->notifyPropertyChanged(I)V

    .line 159
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->requestRebind()V

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

.method public setNextButtonText(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 170
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mNextButtonText:Lcom/example/digitalkiosk/models/Translation;

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->mDirtyFlags:J

    .line 173
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x22

    .line 174
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->notifyPropertyChanged(I)V

    .line 175
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 173
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

    .line 133
    check-cast p2, Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->setItem(Lcom/example/digitalkiosk/models/ItemDetails;)V

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 136
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->setAmount(Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 v0, 0x22

    if-ne v0, p1, :cond_2

    .line 139
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->setNextButtonText(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 142
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->setCancelButtonText(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_3
    const/16 v0, 0x16

    if-ne v0, p1, :cond_4

    .line 145
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationBindingImpl;->setHandicapOn(Ljava/lang/Boolean;)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
