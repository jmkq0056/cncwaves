.class public Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;
.super Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;
.source "LanguageButtonBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->button:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 28
    sget-object v0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x2

    .line 31
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/RelativeLayout;Lcom/google/android/material/imageview/ShapeableImageView;)V

    const-wide/16 p1, -0x1

    .line 145
    iput-wide p1, v1, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mDirtyFlags:J

    .line 35
    iget-object p1, v1, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->image:Lcom/google/android/material/imageview/ShapeableImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/imageview/ShapeableImageView;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 36
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, v1, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0, v3}, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 9

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 105
    iput-wide v2, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mDirtyFlags:J

    .line 106
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    iget-object v4, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mLanguage:Lcom/example/digitalkiosk/models/Language;

    .line 108
    iget-object v5, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mOpacity:Ljava/lang/Float;

    const-wide/16 v6, 0x5

    and-long/2addr v6, v0

    cmp-long v6, v6, v2

    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Language;->getLogo()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v7, 0x6

    and-long/2addr v0, v7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 126
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Float;)F

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 132
    iget-object v2, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->image:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-static {v2, v4}, Lcom/example/digitalkiosk/BindingAdaptersKt;->bindImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 136
    invoke-static {}, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->getBuildSdkInt()I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_3

    .line 138
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->image:Lcom/google/android/material/imageview/ShapeableImageView;

    invoke-virtual {v0, v1}, Lcom/google/android/material/imageview/ShapeableImageView;->setAlpha(F)V

    :cond_3
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
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mDirtyFlags:J

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
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mDirtyFlags:J

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->requestRebind()V

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

.method public setLanguage(Lcom/example/digitalkiosk/models/Language;)V
    .locals 4

    .line 77
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mLanguage:Lcom/example/digitalkiosk/models/Language;

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mDirtyFlags:J

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x1e

    .line 81
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 82
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;->requestRebind()V

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

.method public setOpacity(Ljava/lang/Float;)V
    .locals 4

    .line 85
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mOpacity:Ljava/lang/Float;

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->mDirtyFlags:J

    .line 88
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x23

    .line 89
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->notifyPropertyChanged(I)V

    .line 90
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/LanguageButtonBinding;->requestRebind()V

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

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x1e

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 65
    check-cast p2, Lcom/example/digitalkiosk/models/Language;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->setLanguage(Lcom/example/digitalkiosk/models/Language;)V

    return v1

    :cond_0
    const/16 v0, 0x23

    if-ne v0, p1, :cond_1

    .line 68
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/LanguageButtonBindingImpl;->setOpacity(Ljava/lang/Float;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
