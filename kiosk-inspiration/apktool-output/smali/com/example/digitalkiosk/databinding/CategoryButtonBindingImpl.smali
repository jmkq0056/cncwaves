.class public Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;
.super Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;
.source "CategoryButtonBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView1:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 27
    sget-object v0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 30
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-wide/16 p1, -0x1

    .line 198
    iput-wide p1, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    .line 34
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->button:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 35
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->categoryName:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mboundView1:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, v3}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 19

    move-object/from16 v1, p0

    .line 114
    monitor-enter p0

    .line 115
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 116
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mSelectedCategory:Ljava/lang/Boolean;

    .line 124
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mCategory:Lcom/example/digitalkiosk/models/Category;

    .line 126
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    const-wide/16 v8, 0x9

    and-long v10, v2, v8

    cmp-long v10, v10, v4

    const/4 v11, 0x0

    if-eqz v10, :cond_2

    .line 133
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v10, :cond_1

    if-eqz v0, :cond_0

    const-wide/16 v12, 0x80

    goto :goto_0

    :cond_0
    const-wide/16 v12, 0x40

    :goto_0
    or-long/2addr v2, v12

    :cond_1
    if-eqz v0, :cond_2

    .line 145
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->button:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v10, Lcom/example/digitalkiosk/R$drawable;->category_selected:I

    invoke-static {v0, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v11

    :goto_1
    const-wide/16 v12, 0xa

    and-long v14, v2, v12

    cmp-long v10, v14, v4

    if-eqz v10, :cond_3

    if-eqz v6, :cond_3

    .line 153
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/Category;->getImage()Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-virtual {v6}, Lcom/example/digitalkiosk/models/Category;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v11

    :goto_2
    const-wide/16 v14, 0xc

    and-long v16, v2, v14

    cmp-long v10, v16, v4

    const/16 v16, 0x0

    if-eqz v10, :cond_6

    .line 163
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v10, :cond_5

    if-eqz v7, :cond_4

    const-wide/16 v17, 0x20

    goto :goto_3

    :cond_4
    const-wide/16 v17, 0x10

    :goto_3
    or-long v2, v2, v17

    :cond_5
    if-eqz v7, :cond_6

    const/16 v7, 0x8

    move/from16 v16, v7

    :cond_6
    move/from16 v7, v16

    and-long/2addr v8, v2

    cmp-long v8, v8, v4

    if-eqz v8, :cond_7

    .line 181
    iget-object v8, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->button:Landroid/widget/LinearLayout;

    invoke-static {v8, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    and-long v8, v2, v12

    cmp-long v0, v8, v4

    if-eqz v0, :cond_8

    .line 186
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->categoryName:Landroid/widget/TextView;

    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-static {v0, v11}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_8
    and-long/2addr v2, v14

    cmp-long v0, v2, v4

    if-eqz v0, :cond_9

    .line 192
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 117
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 55
    monitor-exit p0

    return v0

    .line 57
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

    .line 45
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 46
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 47
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

.method public setCategory(Lcom/example/digitalkiosk/models/Category;)V
    .locals 4

    .line 88
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mCategory:Lcom/example/digitalkiosk/models/Category;

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 92
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 93
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setHandicapOn(Ljava/lang/Boolean;)V
    .locals 4

    .line 96
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mHandicapOn:Ljava/lang/Boolean;

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    .line 99
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x16

    .line 100
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 101
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 99
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSelectedCategory(Ljava/lang/Boolean;)V
    .locals 4

    .line 80
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mSelectedCategory:Ljava/lang/Boolean;

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->mDirtyFlags:J

    .line 83
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2a

    .line 84
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 85
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/CategoryButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 83
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x2a

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 65
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->setSelectedCategory(Ljava/lang/Boolean;)V

    return v1

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 68
    check-cast p2, Lcom/example/digitalkiosk/models/Category;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->setCategory(Lcom/example/digitalkiosk/models/Category;)V

    return v1

    :cond_1
    const/16 v0, 0x16

    if-ne v0, p1, :cond_2

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/CategoryButtonBindingImpl;->setHandicapOn(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
