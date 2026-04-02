.class public final Lcom/denzcoskun/imageslider/animations/BackgroundToForeground;
.super Ljava/lang/Object;
.source "BackgroundToForeground.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBackgroundToForeground.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackgroundToForeground.kt\ncom/denzcoskun/imageslider/animations/BackgroundToForeground\n*L\n1#1,27:1\n*E\n"
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
        "Lcom/denzcoskun/imageslider/animations/BackgroundToForeground;",
        "Landroidx/viewpager/widget/ViewPager$PageTransformer;",
        "()V",
        "transformPage",
        "",
        "view",
        "Landroid/view/View;",
        "position",
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

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    sub-float v4, v3, p2

    .line 18
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    :goto_0
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 20
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleX(F)V

    .line 21
    invoke-virtual {p1, v3}, Landroid/view/View;->setScaleY(F)V

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v4, v1, v3

    .line 22
    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotX(F)V

    mul-float/2addr v0, v3

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    if-gez v2, :cond_1

    mul-float/2addr v1, p2

    goto :goto_1

    :cond_1
    neg-float v0, v1

    mul-float/2addr v0, p2

    const/high16 p2, 0x3e800000    # 0.25f

    mul-float v1, v0, p2

    .line 24
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method
