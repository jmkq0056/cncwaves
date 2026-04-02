.class public Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;
.super Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;
.source "ActivityOptionBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/4 v1, 0x2

    .line 16
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "option_layout_nohandicap"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "option_layout_handicap"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    filled-new-array {v5, v1}, [I

    move-result-object v1

    sget v3, Lcom/example/digitalkiosk/R$layout;->option_layout_nohandicap:I

    sget v5, Lcom/example/digitalkiosk/R$layout;->option_layout_handicap:I

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-virtual {v0, v4, v2, v1, v3}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 21
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 22
    sget v1, Lcom/example/digitalkiosk/R$id;->exitbutton:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 33
    sget-object v0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x3

    .line 36
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/view/View;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    const/4 v4, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;)V

    const-wide/16 p1, -0x1

    .line 301
    iput-wide p1, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 41
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    const/4 p1, 0x0

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    const/4 p2, 0x0

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 44
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 45
    invoke-virtual {p0, v3}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeHandicap(Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-wide p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 184
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onChangeNoHandicap(Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 191
    monitor-enter p0

    .line 192
    :try_start_0
    iget-wide p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 193
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 18

    move-object/from16 v1, p0

    .line 202
    monitor-enter p0

    .line 203
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 204
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 205
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mPickLater:Lcom/example/digitalkiosk/models/Translation;

    .line 209
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    .line 210
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDineIn:Lcom/example/digitalkiosk/models/Translation;

    .line 212
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mSelectYourOption:Lcom/example/digitalkiosk/models/Translation;

    .line 213
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    .line 214
    iget-object v10, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mTakeAway:Lcom/example/digitalkiosk/models/Translation;

    .line 215
    iget-object v11, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mChooseYourOption:Lcom/example/digitalkiosk/models/Translation;

    const-wide/16 v12, 0x240

    and-long v14, v2, v12

    cmp-long v14, v14, v4

    const/4 v15, 0x0

    if-eqz v14, :cond_4

    .line 230
    invoke-static {v9}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v9

    if-eqz v14, :cond_1

    if-eqz v9, :cond_0

    const-wide/16 v16, 0x2800

    goto :goto_0

    :cond_0
    const-wide/16 v16, 0x1400

    :goto_0
    or-long v2, v2, v16

    :cond_1
    const/16 v14, 0x8

    if-eqz v9, :cond_2

    move/from16 v16, v15

    goto :goto_1

    :cond_2
    move/from16 v16, v14

    :goto_1
    if-eqz v9, :cond_3

    move v15, v14

    :cond_3
    move v9, v15

    move/from16 v15, v16

    goto :goto_2

    :cond_4
    move v9, v15

    :goto_2
    const-wide/16 v16, 0x280

    and-long v16, v2, v16

    cmp-long v14, v16, v4

    const-wide/16 v16, 0x300

    and-long v16, v2, v16

    cmp-long v16, v16, v4

    and-long/2addr v12, v2

    cmp-long v12, v12, v4

    if-eqz v12, :cond_5

    .line 256
    iget-object v12, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {v12}, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;->getRoot()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v12, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {v12}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->getRoot()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const-wide/16 v12, 0x208

    and-long/2addr v12, v2

    cmp-long v9, v12, v4

    if-eqz v9, :cond_6

    .line 262
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {v9, v6}, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;->setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V

    .line 263
    iget-object v9, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {v9, v6}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V

    :cond_6
    if-eqz v16, :cond_7

    .line 268
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {v6, v11}, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;->setChooseYourOption(Lcom/example/digitalkiosk/models/Translation;)V

    .line 269
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {v6, v11}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->setChooseYourOption(Lcom/example/digitalkiosk/models/Translation;)V

    :cond_7
    if-eqz v14, :cond_8

    .line 274
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {v6, v10}, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;->setTakeAway(Lcom/example/digitalkiosk/models/Translation;)V

    .line 275
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {v6, v10}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->setTakeAway(Lcom/example/digitalkiosk/models/Translation;)V

    :cond_8
    const-wide/16 v9, 0x210

    and-long/2addr v9, v2

    cmp-long v6, v9, v4

    if-eqz v6, :cond_9

    .line 280
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {v6, v7}, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;->setDineIn(Lcom/example/digitalkiosk/models/Translation;)V

    .line 281
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {v6, v7}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->setDineIn(Lcom/example/digitalkiosk/models/Translation;)V

    :cond_9
    const-wide/16 v6, 0x204

    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_a

    .line 286
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {v6, v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;->setPickLater(Lcom/example/digitalkiosk/models/Translation;)V

    .line 287
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {v6, v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->setPickLater(Lcom/example/digitalkiosk/models/Translation;)V

    :cond_a
    const-wide/16 v6, 0x220

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    .line 292
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {v0, v8}, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;->setSelectYourOption(Lcom/example/digitalkiosk/models/Translation;)V

    .line 293
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {v0, v8}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->setSelectYourOption(Lcom/example/digitalkiosk/models/Translation;)V

    .line 295
    :cond_b
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-static {v0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 296
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-static {v0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 205
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 64
    monitor-exit p0

    return v1

    .line 66
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 66
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 52
    monitor-enter p0

    const-wide/16 v0, 0x200

    .line 53
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 54
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->invalidateAll()V

    .line 56
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;->invalidateAll()V

    .line 57
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 54
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 176
    :cond_0
    check-cast p2, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-direct {p0, p2, p3}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->onChangeNoHandicap(Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;I)Z

    move-result p1

    return p1

    .line 174
    :cond_1
    check-cast p2, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-direct {p0, p2, p3}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->onChangeHandicap(Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;I)Z

    move-result p1

    return p1
.end method

.method public setChooseYourOption(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 155
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mChooseYourOption:Lcom/example/digitalkiosk/models/Translation;

    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 158
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x7

    .line 159
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->notifyPropertyChanged(I)V

    .line 160
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 158
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setDineIn(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 123
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDineIn:Lcom/example/digitalkiosk/models/Translation;

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 126
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0xf

    .line 127
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->notifyPropertyChanged(I)V

    .line 128
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 126
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandicapOn(Ljava/lang/Boolean;)V
    .locals 4

    .line 139
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x16

    .line 143
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->notifyPropertyChanged(I)V

    .line 144
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 142
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V
    .locals 4

    .line 115
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mKiosksetting:Lcom/example/digitalkiosk/models/KioskSetting;

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1d

    .line 119
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->notifyPropertyChanged(I)V

    .line 120
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 118
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 165
    invoke-super {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 166
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->noHandicap:Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/databinding/OptionLayoutNohandicapBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 167
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->handicap:Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/databinding/OptionLayoutHandicapBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setPickLater(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 107
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mPickLater:Lcom/example/digitalkiosk/models/Translation;

    .line 108
    monitor-enter p0

    .line 109
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x25

    .line 111
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->notifyPropertyChanged(I)V

    .line 112
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 110
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSelectYourOption(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 131
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mSelectYourOption:Lcom/example/digitalkiosk/models/Translation;

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 134
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x28

    .line 135
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->notifyPropertyChanged(I)V

    .line 136
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 134
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setTakeAway(Lcom/example/digitalkiosk/models/Translation;)V
    .locals 4

    .line 147
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mTakeAway:Lcom/example/digitalkiosk/models/Translation;

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->mDirtyFlags:J

    .line 150
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x34

    .line 151
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->notifyPropertyChanged(I)V

    .line 152
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ActivityOptionBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 150
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x25

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 80
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->setPickLater(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_0
    const/16 v0, 0x1d

    if-ne v0, p1, :cond_1

    .line 83
    check-cast p2, Lcom/example/digitalkiosk/models/KioskSetting;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V

    return v1

    :cond_1
    const/16 v0, 0xf

    if-ne v0, p1, :cond_2

    .line 86
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->setDineIn(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_2
    const/16 v0, 0x28

    if-ne v0, p1, :cond_3

    .line 89
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->setSelectYourOption(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_3
    const/16 v0, 0x16

    if-ne v0, p1, :cond_4

    .line 92
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->setHandicapOn(Ljava/lang/Boolean;)V

    return v1

    :cond_4
    const/16 v0, 0x34

    if-ne v0, p1, :cond_5

    .line 95
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->setTakeAway(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_5
    const/4 v0, 0x7

    if-ne v0, p1, :cond_6

    .line 98
    check-cast p2, Lcom/example/digitalkiosk/models/Translation;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ActivityOptionBindingImpl;->setChooseYourOption(Lcom/example/digitalkiosk/models/Translation;)V

    return v1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method
