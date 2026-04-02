.class public final Lcom/denzcoskun/imageslider/animations/Toss;
.super Ljava/lang/Object;
.source "Toss.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nToss.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Toss.kt\ncom/denzcoskun/imageslider/animations/Toss\n*L\n1#1,49:1\n*E\n"
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
        "Lcom/denzcoskun/imageslider/animations/Toss;",
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
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    neg-float v0, p2

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const v0, 0x469c4000    # 20000.0f

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    float-to-double v0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    .line 20
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const/4 v0, -0x1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_1
    int-to-float v0, v3

    cmpg-float v0, p2, v0

    const/16 v2, -0x3e8

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const v5, 0x3ecccccd    # 0.4f

    if-gtz v0, :cond_2

    .line 30
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    int-to-float v0, v4

    .line 31
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 32
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    const/16 v1, 0x438

    int-to-float v1, v1

    .line 33
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v0, v3

    add-float/2addr v3, v0

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    int-to-float v0, v2

    .line 34
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_2
    int-to-float v0, v4

    cmpg-float v4, p2, v0

    if-gtz v4, :cond_3

    .line 37
    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 38
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 39
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v0, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    const/16 v1, -0x438

    int-to-float v1, v1

    .line 40
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v0, v3

    add-float/2addr v3, v0

    mul-float/2addr v1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setRotationX(F)V

    int-to-float v0, v2

    .line 41
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 44
    :cond_3
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
