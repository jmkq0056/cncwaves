.class public Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;
.super Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBinding;
.source "ItemConfigurationStepBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/TextView;

.field private final mboundView2:Landroid/view/View;

.field private final mboundView3:Landroid/view/View;

.field private final mboundView4:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 35
    sget-object v0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 344
    iput-wide v1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    .line 40
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView1:Landroid/widget/TextView;

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView2:Landroid/view/View;

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView3:Landroid/view/View;

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 48
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView4:Landroid/view/View;

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 38

    move-object/from16 v1, p0

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 150
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mCompleted:Ljava/lang/Boolean;

    .line 156
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mActive:Ljava/lang/Boolean;

    .line 157
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mLast:Ljava/lang/Boolean;

    .line 162
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mFirst:Ljava/lang/Boolean;

    .line 165
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mTitle:Ljava/lang/String;

    const-wide/16 v10, 0x23

    and-long v12, v2, v10

    cmp-long v12, v12, v4

    const-wide/32 v13, 0x8000

    const-wide/16 v15, 0x4000

    const-wide/32 v17, 0x40023

    const/16 v19, 0x0

    if-eqz v12, :cond_1

    .line 174
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    and-long v20, v2, v17

    cmp-long v20, v20, v4

    if-eqz v20, :cond_2

    if-eqz v12, :cond_0

    or-long/2addr v2, v13

    goto :goto_0

    :cond_0
    or-long/2addr v2, v15

    goto :goto_0

    :cond_1
    move/from16 v12, v19

    :cond_2
    :goto_0
    const-wide/16 v20, 0x25

    and-long v22, v2, v20

    cmp-long v22, v22, v4

    const-wide/16 v23, 0x1000

    if-eqz v22, :cond_4

    .line 189
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v22, :cond_5

    if-eqz v7, :cond_3

    const-wide/16 v25, 0x2000

    or-long v2, v2, v25

    goto :goto_1

    :cond_3
    or-long v2, v2, v23

    goto :goto_1

    :cond_4
    move/from16 v7, v19

    :cond_5
    :goto_1
    const-wide/16 v25, 0x2b

    and-long v27, v2, v25

    cmp-long v22, v27, v4

    const-wide/32 v27, 0x40000

    if-eqz v22, :cond_7

    .line 204
    invoke-static {v8}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v8

    if-eqz v22, :cond_8

    if-eqz v8, :cond_6

    const-wide/32 v29, 0x80000

    or-long v2, v2, v29

    goto :goto_2

    :cond_6
    or-long v2, v2, v27

    goto :goto_2

    :cond_7
    move/from16 v8, v19

    :cond_8
    :goto_2
    and-long v29, v2, v23

    cmp-long v22, v29, v4

    const-wide/16 v29, 0x80

    const-wide/16 v31, 0x40

    if-eqz v22, :cond_c

    .line 223
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v33

    if-eqz v22, :cond_a

    if-eqz v33, :cond_9

    or-long v2, v2, v29

    goto :goto_3

    :cond_9
    or-long v2, v2, v31

    :cond_a
    :goto_3
    move-wide/from16 v34, v4

    .line 235
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView4:Landroid/view/View;

    if-eqz v33, :cond_b

    sget v5, Lcom/example/digitalkiosk/R$color;->tab_active_color:I

    goto :goto_4

    :cond_b
    sget v5, Lcom/example/digitalkiosk/R$color;->tab_deactive_color:I

    :goto_4
    invoke-static {v4, v5}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v4

    goto :goto_5

    :cond_c
    move-wide/from16 v34, v4

    move/from16 v4, v19

    move/from16 v33, v4

    :goto_5
    and-long v36, v2, v27

    cmp-long v5, v36, v34

    if-eqz v5, :cond_e

    .line 242
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v12

    and-long v5, v2, v17

    cmp-long v5, v5, v34

    if-eqz v5, :cond_e

    if-eqz v12, :cond_d

    or-long/2addr v2, v13

    goto :goto_6

    :cond_d
    or-long/2addr v2, v15

    :cond_e
    :goto_6
    and-long v5, v2, v20

    cmp-long v5, v5, v34

    if-eqz v5, :cond_f

    if-eqz v7, :cond_10

    .line 256
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView4:Landroid/view/View;

    sget v5, Lcom/example/digitalkiosk/R$color;->transparent:I

    invoke-static {v4, v5}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v4

    goto :goto_7

    :cond_f
    move/from16 v4, v19

    :cond_10
    :goto_7
    and-long v5, v2, v15

    cmp-long v5, v5, v34

    if-eqz v5, :cond_12

    .line 265
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v33

    and-long v5, v2, v23

    cmp-long v0, v5, v34

    if-eqz v0, :cond_12

    if-eqz v33, :cond_11

    or-long v2, v2, v29

    goto :goto_8

    :cond_11
    or-long v2, v2, v31

    :cond_12
    :goto_8
    and-long v5, v2, v17

    cmp-long v0, v5, v34

    const/4 v5, 0x0

    if-eqz v0, :cond_1d

    if-eqz v12, :cond_13

    const/16 v33, 0x1

    :cond_13
    and-long v6, v2, v10

    cmp-long v0, v6, v34

    if-eqz v0, :cond_15

    if-eqz v33, :cond_14

    const-wide/16 v6, 0xa00

    goto :goto_9

    :cond_14
    const-wide/16 v6, 0x500

    :goto_9
    or-long/2addr v2, v6

    :cond_15
    and-long v6, v2, v27

    cmp-long v0, v6, v34

    if-eqz v0, :cond_17

    if-eqz v33, :cond_16

    const-wide/32 v6, 0x20000

    goto :goto_a

    :cond_16
    const-wide/32 v6, 0x10000

    :goto_a
    or-long/2addr v2, v6

    :cond_17
    and-long v6, v2, v10

    cmp-long v0, v6, v34

    if-eqz v0, :cond_1a

    .line 302
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView1:Landroid/widget/TextView;

    if-eqz v33, :cond_18

    sget v5, Lcom/example/digitalkiosk/R$color;->tab_active_color:I

    goto :goto_b

    :cond_18
    sget v5, Lcom/example/digitalkiosk/R$color;->tab_deactive_color:I

    :goto_b
    invoke-static {v0, v5}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v0

    .line 304
    iget-object v5, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView3:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v33, :cond_19

    sget v6, Lcom/example/digitalkiosk/R$drawable;->item_config_step_active:I

    goto :goto_c

    :cond_19
    sget v6, Lcom/example/digitalkiosk/R$drawable;->item_config_step:I

    :goto_c
    invoke-static {v5, v6}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_d

    :cond_1a
    move/from16 v0, v19

    :goto_d
    and-long v6, v2, v27

    cmp-long v6, v6, v34

    if-eqz v6, :cond_1c

    .line 309
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView2:Landroid/view/View;

    if-eqz v33, :cond_1b

    sget v7, Lcom/example/digitalkiosk/R$color;->tab_active_color:I

    goto :goto_e

    :cond_1b
    sget v7, Lcom/example/digitalkiosk/R$color;->tab_deactive_color:I

    :goto_e
    invoke-static {v6, v7}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v6

    goto :goto_f

    :cond_1c
    move/from16 v6, v19

    goto :goto_f

    :cond_1d
    move/from16 v0, v19

    move v6, v0

    :goto_f
    and-long v12, v2, v25

    cmp-long v7, v12, v34

    if-eqz v7, :cond_1f

    if-eqz v8, :cond_1e

    .line 316
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView2:Landroid/view/View;

    sget v8, Lcom/example/digitalkiosk/R$color;->transparent:I

    invoke-static {v6, v8}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v6

    :cond_1e
    move/from16 v19, v6

    :cond_1f
    const-wide/16 v12, 0x30

    and-long/2addr v12, v2

    cmp-long v6, v12, v34

    if-eqz v6, :cond_20

    .line 322
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-static {v6, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_20
    and-long v8, v2, v10

    cmp-long v6, v8, v34

    if-eqz v6, :cond_21

    .line 327
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView3:Landroid/view/View;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_21
    if-eqz v7, :cond_22

    .line 333
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView2:Landroid/view/View;

    invoke-static/range {v19 .. v19}, Landroidx/databinding/adapters/Converters;->convertColorToDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_22
    and-long v2, v2, v20

    cmp-long v0, v2, v34

    if-eqz v0, :cond_23

    .line 338
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mboundView4:Landroid/view/View;

    invoke-static {v4}, Landroidx/databinding/adapters/Converters;->convertColorToDrawable(I)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_23
    return-void

    :catchall_0
    move-exception v0

    .line 151
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 67
    monitor-exit p0

    return v0

    .line 69
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

    .line 57
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 58
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 59
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

.method public setActive(Ljava/lang/Boolean;)V
    .locals 4

    .line 106
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mActive:Ljava/lang/Boolean;

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->notifyPropertyChanged(I)V

    .line 111
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCompleted(Ljava/lang/Boolean;)V
    .locals 4

    .line 98
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mCompleted:Ljava/lang/Boolean;

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x9

    .line 102
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->notifyPropertyChanged(I)V

    .line 103
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 101
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFirst(Ljava/lang/Boolean;)V
    .locals 4

    .line 122
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mFirst:Ljava/lang/Boolean;

    .line 123
    monitor-enter p0

    .line 124
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    .line 125
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x15

    .line 126
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->notifyPropertyChanged(I)V

    .line 127
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBinding;->requestRebind()V

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

.method public setLast(Ljava/lang/Boolean;)V
    .locals 4

    .line 114
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mLast:Ljava/lang/Boolean;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x20

    .line 118
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->notifyPropertyChanged(I)V

    .line 119
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBinding;->requestRebind()V

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

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .line 130
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mTitle:Ljava/lang/String;

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->mDirtyFlags:J

    .line 133
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x37

    .line 134
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->notifyPropertyChanged(I)V

    .line 135
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBinding;->requestRebind()V

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

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 77
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->setCompleted(Ljava/lang/Boolean;)V

    return v1

    :cond_0
    if-ne v1, p1, :cond_1

    .line 80
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->setActive(Ljava/lang/Boolean;)V

    return v1

    :cond_1
    const/16 v0, 0x20

    if-ne v0, p1, :cond_2

    .line 83
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->setLast(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/16 v0, 0x15

    if-ne v0, p1, :cond_3

    .line 86
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->setFirst(Ljava/lang/Boolean;)V

    return v1

    :cond_3
    const/16 v0, 0x37

    if-ne v0, p1, :cond_4

    .line 89
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemConfigurationStepBindingImpl;->setTitle(Ljava/lang/String;)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
