.class public Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;
.super Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;
.source "SubcategoryButtonBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/LinearLayout;

.field private final mboundView1:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 29
    sget-object v0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 172
    iput-wide v1, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mDirtyFlags:J

    .line 34
    aget-object p1, p3, v0

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mboundView1:Landroid/widget/TextView;

    .line 37
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 13

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 105
    iput-wide v2, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v4, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mSelectedCategory:Ljava/lang/Boolean;

    .line 114
    iget-object v5, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mCategory:Lcom/example/digitalkiosk/models/Category;

    const-wide/16 v6, 0x5

    and-long v8, v0, v6

    cmp-long v8, v8, v2

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    .line 121
    invoke-static {v4}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v8, :cond_1

    if-eqz v4, :cond_0

    const-wide/16 v10, 0x50

    goto :goto_0

    :cond_0
    const-wide/16 v10, 0x28

    :goto_0
    or-long/2addr v0, v10

    .line 135
    :cond_1
    iget-object v8, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mboundView1:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    sget v10, Lcom/example/digitalkiosk/R$color;->white:I

    goto :goto_1

    :cond_2
    sget v10, Lcom/example/digitalkiosk/R$color;->black:I

    :goto_1
    invoke-static {v8, v10}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v8

    xor-int/lit8 v10, v4, 0x1

    if-eqz v4, :cond_3

    .line 139
    iget-object v4, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v11, Lcom/example/digitalkiosk/R$drawable;->subcat_button_selected:I

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v11, Lcom/example/digitalkiosk/R$drawable;->subcat_button:I

    :goto_2
    invoke-static {v4, v11}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 143
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    move v10, v8

    move-object v4, v9

    :goto_3
    const-wide/16 v11, 0x6

    and-long/2addr v11, v0

    cmp-long v11, v11, v2

    if-eqz v11, :cond_5

    if-eqz v5, :cond_5

    .line 151
    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/Category;->getName()Ljava/lang/String;

    move-result-object v9

    :cond_5
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 158
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 159
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 160
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mboundView0:Landroid/widget/LinearLayout;

    invoke-static {v0, v4}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    if-eqz v11, :cond_7

    .line 166
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mboundView1:Landroid/widget/TextView;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    .line 106
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
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mDirtyFlags:J

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

    const-wide/16 v0, 0x4

    .line 46
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->requestRebind()V

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

    .line 85
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mCategory:Lcom/example/digitalkiosk/models/Category;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mDirtyFlags:J

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x5

    .line 89
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 90
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 88
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setSelectedCategory(Ljava/lang/Boolean;)V
    .locals 4

    .line 77
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mSelectedCategory:Ljava/lang/Boolean;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->mDirtyFlags:J

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x2a

    .line 81
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 82
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 80
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

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->setSelectedCategory(Ljava/lang/Boolean;)V

    return v1

    :cond_0
    const/4 v0, 0x5

    if-ne v0, p1, :cond_1

    .line 68
    check-cast p2, Lcom/example/digitalkiosk/models/Category;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/SubcategoryButtonBindingImpl;->setCategory(Lcom/example/digitalkiosk/models/Category;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
