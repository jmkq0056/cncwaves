.class public abstract Lcom/dantsu/escposprinter/EscPosPrinterSize;
.super Ljava/lang/Object;
.source "EscPosPrinterSize.java"


# static fields
.field public static final INCH_TO_MM:F = 25.4f


# instance fields
.field protected printerCharSizeWidthPx:I

.field protected printerDpi:I

.field protected printerNbrCharactersPerLine:I

.field protected printerWidthMM:F

.field protected printerWidthPx:I


# direct methods
.method protected constructor <init>(IFI)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerDpi:I

    .line 18
    iput p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerWidthMM:F

    .line 19
    iput p3, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerNbrCharactersPerLine:I

    .line 20
    invoke-virtual {p0, p2}, Lcom/dantsu/escposprinter/EscPosPrinterSize;->mmToPx(F)I

    move-result p1

    .line 21
    rem-int/lit8 p2, p1, 0x8

    add-int/2addr p2, p1

    iput p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerWidthPx:I

    .line 22
    iget p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerNbrCharactersPerLine:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerCharSizeWidthPx:I

    return-void
.end method


# virtual methods
.method public bitmapToBytes(Landroid/graphics/Bitmap;Z)[B
    .locals 5

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 92
    iget v2, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerWidthPx:I

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    int-to-float v1, v1

    int-to-float v4, v2

    mul-float/2addr v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 96
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move v0, v2

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x100

    if-le v1, v4, :cond_1

    int-to-float v0, v0

    int-to-float v2, v4

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 101
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v2, v3

    move v1, v4

    :cond_1
    if-eqz v2, :cond_2

    .line 107
    invoke-static {p1, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 110
    :cond_2
    invoke-static {p1, p2}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->bitmapToBytes(Landroid/graphics/Bitmap;Z)[B

    move-result-object p1

    return-object p1
.end method

.method public getPrinterCharSizeWidthPx()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerCharSizeWidthPx:I

    return v0
.end method

.method public getPrinterDpi()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerDpi:I

    return v0
.end method

.method public getPrinterNbrCharactersPerLine()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerNbrCharactersPerLine:I

    return v0
.end method

.method public getPrinterWidthMM()F
    .locals 1

    .line 40
    iget v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerWidthMM:F

    return v0
.end method

.method public getPrinterWidthPx()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerWidthPx:I

    return v0
.end method

.method public mmToPx(F)I
    .locals 1

    .line 77
    iget v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterSize;->printerDpi:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    const v0, 0x41cb3333    # 25.4f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
