.class public final Lcom/denzcoskun/imageslider/animations/ZoomIn;
.super Ljava/lang/Object;
.source "ZoomIn.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nZoomIn.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ZoomIn.kt\ncom/denzcoskun/imageslider/animations/ZoomIn\n*L\n1#1,23:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/denzcoskun/imageslider/animations/ZoomIn;",
        "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
        "()V",
        "transformPage",
        "",
        "view",
        "Landroid/view/View;",
        "positon",
        "",
        "imageslider_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    add-float v0, p2, v1

    goto :goto_0

    :cond_0
    sub-float v0, v1, p2

    .line 15
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 16
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_2

    cmpl-float p2, p2, v1

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    sub-float/2addr v0, v1

    sub-float/2addr v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 20
    :goto_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
