.class public final Lcom/denzcoskun/imageslider/animations/DepthSlide;
.super Ljava/lang/Object;
.source "DepthSlide.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDepthSlide.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DepthSlide.kt\ncom/denzcoskun/imageslider/animations/DepthSlide\n*L\n1#1,42:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/denzcoskun/imageslider/animations/DepthSlide;",
        "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
        "()V",
        "MIN_SCALE",
        "",
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
.field private final MIN_SCALE:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f400000    # 0.75f

    .line 13
    iput v0, p0, Lcom/denzcoskun/imageslider/animations/DepthSlide;->MIN_SCALE:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, -0x1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 19
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    const/4 v1, 0x0

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_1
    const/4 v1, 0x1

    int-to-float v1, v1

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_2

    sub-float v2, v1, p2

    .line 28
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    int-to-float v0, v0

    neg-float v2, p2

    mul-float/2addr v0, v2

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 32
    iget v0, p0, Lcom/denzcoskun/imageslider/animations/DepthSlide;->MIN_SCALE:F

    sub-float v2, v1, v0

    .line 33
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    sub-float/2addr v1, p2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 38
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
