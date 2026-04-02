.class public final Lcom/denzcoskun/imageslider/animations/ZoomOut;
.super Ljava/lang/Object;
.source "ZoomOut.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZoomOut.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZoomOut.kt\ncom/denzcoskun/imageslider/animations/ZoomOut\n*L\n1#1,47:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/denzcoskun/imageslider/animations/ZoomOut;",
        "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
        "()V",
        "MIN_ALPHA",
        "",
        "MIN_SCALE",
        "transformPage",
        "",
        "view",
        "Landroid/view/View;",
        "position",
        "imageslider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final MIN_ALPHA:F

.field private final MIN_SCALE:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f59999a    # 0.85f

    .line 15
    iput v0, p0, Lcom/denzcoskun/imageslider/animations/ZoomOut;->MIN_SCALE:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 16
    iput v0, p0, Lcom/denzcoskun/imageslider/animations/ZoomOut;->MIN_ALPHA:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, -0x1

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 24
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    const/4 v2, 0x1

    int-to-float v2, v2

    cmpg-float v4, p2, v2

    if-gtz v4, :cond_2

    .line 27
    iget v3, p0, Lcom/denzcoskun/imageslider/animations/ZoomOut;->MIN_SCALE:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    int-to-float v1, v1

    sub-float v4, v2, v3

    mul-float/2addr v1, v4

    const/4 v5, 0x2

    int-to-float v5, v5

    div-float/2addr v1, v5

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v5

    const/4 v4, 0x0

    int-to-float v4, v4

    cmpg-float p2, p2, v4

    if-gez p2, :cond_1

    div-float/2addr v1, v5

    sub-float/2addr v0, v1

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    :cond_1
    neg-float p2, v0

    div-float/2addr v1, v5

    add-float/2addr p2, v1

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 35
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 36
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    .line 37
    iget p2, p0, Lcom/denzcoskun/imageslider/animations/ZoomOut;->MIN_ALPHA:F

    .line 38
    iget v0, p0, Lcom/denzcoskun/imageslider/animations/ZoomOut;->MIN_SCALE:F

    sub-float/2addr v3, v0

    sub-float v0, v2, v0

    div-float/2addr v3, v0

    sub-float/2addr v2, p2

    mul-float/2addr v3, v2

    add-float/2addr p2, v3

    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void

    .line 42
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
