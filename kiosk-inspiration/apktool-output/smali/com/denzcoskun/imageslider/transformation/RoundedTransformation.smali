.class public final Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;
.super Ljava/lang/Object;
.source "RoundedTransformation.kt"

# interfaces
.implements Lcom/squareup/picasso/Transformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001:\u0001*B!\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\n2\u0006\u0010!\u001a\u00020\nH\u0002J(\u0010\"\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010#\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J(\u0010$\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\nH\u0002J\u0008\u0010%\u001a\u00020&H\u0016J\u0010\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020(H\u0016R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;",
        "Lcom/squareup/picasso/Transformation;",
        "radius",
        "",
        "margin",
        "cornerType",
        "Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;",
        "(IILcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;)V",
        "mCornerType",
        "mDiameter",
        "",
        "mMargin",
        "mRadius",
        "drawBottomLeftRoundRect",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "paint",
        "Landroid/graphics/Paint;",
        "right",
        "bottom",
        "drawBottomRightRoundRect",
        "drawBottomRoundRect",
        "drawDiagonalFromTopLeftRoundRect",
        "drawDiagonalFromTopRightRoundRect",
        "drawLeftRoundRect",
        "drawOtherBottomLeftRoundRect",
        "drawOtherBottomRightRoundRect",
        "drawOtherTopLeftRoundRect",
        "drawOtherTopRightRoundRect",
        "drawRightRoundRect",
        "drawRoundRect",
        "width",
        "height",
        "drawTopLeftRoundRect",
        "drawTopRightRoundRect",
        "drawTopRoundRect",
        "key",
        "",
        "transform",
        "Landroid/graphics/Bitmap;",
        "source",
        "CornerType",
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
.field private mCornerType:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

.field private mDiameter:F

.field private mMargin:F

.field private mRadius:F


# direct methods
.method public constructor <init>(II)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;-><init>(IILcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IILcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;)V
    .locals 1

    const-string v0, "cornerType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-float v0, p1

    .line 29
    iput v0, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 30
    iput p1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    int-to-float p1, p2

    .line 31
    iput p1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    .line 32
    iput-object p3, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mCornerType:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 11
    sget-object p3, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ALL:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;-><init>(IILcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;)V

    return-void
.end method

.method private final drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 82
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v3, p4, v2

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v3, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 83
    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    .line 82
    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 84
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    sub-float v3, p4, v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    add-float/2addr v2, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 88
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v2, p3, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 90
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    sub-float v2, p3, v2

    invoke-direct {v0, v1, v1, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    sub-float v2, p3, v1

    iget v3, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    sub-float/2addr p4, v1

    invoke-direct {v0, v2, v3, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    sub-float/2addr p4, v2

    invoke-direct {v0, v1, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 144
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    add-float v3, v1, v2

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 145
    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    .line 144
    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 146
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v2, p3, v1

    sub-float v1, p4, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v3, p3, v3

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    sub-float/2addr p4, v3

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v2, p3, v1

    iget v3, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    add-float/2addr v1, v3

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 155
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v3, p4, v2

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v3, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 156
    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    .line 155
    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 157
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    sub-float v3, p3, v2

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    add-float v3, v1, v2

    add-float/2addr v1, v2

    invoke-direct {v0, v3, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3

    .line 104
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v1, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 106
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    add-float/2addr v2, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 128
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v1, p3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 132
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    add-float v3, v1, v2

    sub-float/2addr p3, v2

    invoke-direct {v0, v1, v3, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v1, p3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v1, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    add-float v3, v1, v2

    add-float/2addr v1, v2

    invoke-direct {v0, v3, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3

    .line 114
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 116
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 118
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    sub-float/2addr p3, v2

    sub-float/2addr p4, v2

    invoke-direct {v0, v1, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 121
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v1, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v2, p4, v2

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 125
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    add-float v3, v1, v2

    sub-float/2addr p4, v2

    invoke-direct {v0, v3, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3

    .line 109
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v1, p3, v1

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 111
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    sub-float/2addr p3, v2

    invoke-direct {v0, v1, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 2

    .line 48
    iget v0, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    sub-float/2addr p3, v0

    sub-float/2addr p4, v0

    .line 50
    iget-object v0, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mCornerType:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    sget-object v1, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    invoke-direct {v0, v1, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    .line 65
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawDiagonalFromTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 64
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawDiagonalFromTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 63
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawOtherBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 62
    :pswitch_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawOtherBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 61
    :pswitch_4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawOtherTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 60
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawOtherTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 59
    :pswitch_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 58
    :pswitch_7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 57
    :pswitch_8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawBottomRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 56
    :pswitch_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 55
    :pswitch_a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawBottomRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 54
    :pswitch_b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawBottomLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 53
    :pswitch_c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 52
    :pswitch_d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    return-void

    .line 51
    :pswitch_e
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    invoke-direct {v0, v1, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget p3, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final drawTopLeftRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    add-float v3, v1, v2

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    .line 70
    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 72
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    add-float v3, v1, v2

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v3, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    add-float/2addr v2, v1

    invoke-direct {v0, v2, v1, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawTopRightRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 4

    .line 76
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    sub-float v2, p3, v1

    iget v3, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    add-float/2addr v1, v3

    invoke-direct {v0, v2, v3, p3, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 78
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    sub-float v2, p3, v2

    invoke-direct {v0, v1, v1, v2, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 79
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    sub-float v2, p3, v1

    iget v3, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    add-float/2addr v3, v1

    invoke-direct {v0, v2, v3, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private final drawTopRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 3

    .line 94
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v1, p3, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {p1, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    iget v2, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    add-float/2addr v2, v1

    invoke-direct {v0, v1, v2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoundedTransformation(radius="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diameter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    iget v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mDiameter:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cornerType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->mCornerType:Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation$CornerType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 38
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 39
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 40
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 41
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    new-instance v5, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v5, p1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    check-cast v5, Landroid/graphics/Shader;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v0, v0

    int-to-float v1, v1

    .line 43
    invoke-direct {p0, v3, v4, v0, v1}, Lcom/denzcoskun/imageslider/transformation/RoundedTransformation;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    const-string p1, "bitmap"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method
