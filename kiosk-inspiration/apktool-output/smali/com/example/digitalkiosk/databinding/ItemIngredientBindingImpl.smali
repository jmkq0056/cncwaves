.class public Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;
.super Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;
.source "ItemIngredientBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView1:Landroid/widget/ImageView;

.field private final mboundView2:Landroid/widget/ImageView;

.field private final mboundView3:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->remove:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 32
    sget-object v0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 35
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageButton;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/ImageButton;)V

    const-wide/16 p1, -0x1

    .line 184
    iput-wide p1, v1, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mDirtyFlags:J

    .line 39
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->ingredientButton:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 40
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mboundView1:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mboundView2:Landroid/widget/ImageView;

    .line 43
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mboundView3:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p0, v3}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 15

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 113
    iput-wide v2, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mDirtyFlags:J

    .line 114
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v4, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mExtra:Lcom/example/digitalkiosk/models/Extra;

    .line 122
    iget-object v5, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mSelected:Ljava/lang/Boolean;

    const-wide/16 v6, 0x5

    and-long v8, v0, v6

    cmp-long v8, v8, v2

    if-eqz v8, :cond_0

    if-eqz v4, :cond_0

    .line 130
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Extra;->getName()Ljava/lang/String;

    move-result-object v8

    .line 132
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Extra;->getImage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move-object v4, v8

    :goto_0
    const-wide/16 v9, 0x6

    and-long v11, v0, v9

    cmp-long v11, v11, v2

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    .line 140
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v5

    if-eqz v11, :cond_2

    if-eqz v5, :cond_1

    const-wide/16 v13, 0x150

    goto :goto_1

    :cond_1
    const-wide/16 v13, 0xa8

    :goto_1
    or-long/2addr v0, v13

    :cond_2
    if-eqz v5, :cond_3

    const v11, 0x3ecccccd    # 0.4f

    goto :goto_2

    :cond_3
    const/high16 v11, 0x3f800000    # 1.0f

    :goto_2
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/16 v12, 0x8

    :goto_3
    if-eqz v5, :cond_5

    .line 160
    iget-object v5, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mboundView3:Landroid/widget/TextView;

    sget v13, Lcom/example/digitalkiosk/R$color;->red:I

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mboundView3:Landroid/widget/TextView;

    sget v13, Lcom/example/digitalkiosk/R$color;->black:I

    :goto_4
    invoke-static {v5, v13}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->getColorFromResource(Landroid/view/View;I)I

    move-result v5

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    move v5, v12

    :goto_5
    and-long/2addr v9, v0

    cmp-long v9, v9, v2

    if-eqz v9, :cond_8

    .line 165
    invoke-static {}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->getBuildSdkInt()I

    move-result v9

    const/16 v10, 0xb

    if-lt v9, v10, :cond_7

    .line 167
    iget-object v9, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 171
    :cond_7
    iget-object v9, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mboundView2:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v9, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_8
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 177
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mboundView1:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mboundView3:Landroid/widget/TextView;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_9
    return-void

    :catchall_0
    move-exception v0

    .line 114
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 63
    monitor-exit p0

    return v0

    .line 65
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

    .line 53
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 54
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mDirtyFlags:J

    .line 55
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 55
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

.method public setExtra(Lcom/example/digitalkiosk/models/Extra;)V
    .locals 4

    .line 85
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mExtra:Lcom/example/digitalkiosk/models/Extra;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mDirtyFlags:J

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x13

    .line 89
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->notifyPropertyChanged(I)V

    .line 90
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;->requestRebind()V

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

.method public setSelected(Ljava/lang/Boolean;)V
    .locals 4

    .line 93
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mSelected:Ljava/lang/Boolean;

    .line 94
    monitor-enter p0

    .line 95
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->mDirtyFlags:J

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x29

    .line 97
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->notifyPropertyChanged(I)V

    .line 98
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x13

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 73
    check-cast p2, Lcom/example/digitalkiosk/models/Extra;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->setExtra(Lcom/example/digitalkiosk/models/Extra;)V

    return v1

    :cond_0
    const/16 v0, 0x29

    if-ne v0, p1, :cond_1

    .line 76
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/ItemIngredientBindingImpl;->setSelected(Ljava/lang/Boolean;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
