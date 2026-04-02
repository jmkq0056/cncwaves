.class public abstract Lcom/dantsu/escposprinter/barcode/Barcode;
.super Ljava/lang/Object;
.source "Barcode.java"


# instance fields
.field protected barcodeType:I

.field protected code:Ljava/lang/String;

.field protected colWidth:I

.field protected height:I

.field protected textPosition:I


# direct methods
.method constructor <init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;ILjava/lang/String;FFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p2, p0, Lcom/dantsu/escposprinter/barcode/Barcode;->barcodeType:I

    .line 16
    iput-object p3, p0, Lcom/dantsu/escposprinter/barcode/Barcode;->code:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, p5}, Lcom/dantsu/escposprinter/EscPosPrinterSize;->mmToPx(F)I

    move-result p2

    iput p2, p0, Lcom/dantsu/escposprinter/barcode/Barcode;->height:I

    .line 18
    iput p6, p0, Lcom/dantsu/escposprinter/barcode/Barcode;->textPosition:I

    const/4 p2, 0x0

    cmpl-float p2, p4, p2

    if-nez p2, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/EscPosPrinterSize;->getPrinterWidthMM()F

    move-result p2

    const p3, 0x3f333333    # 0.7f

    mul-float p4, p2, p3

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/EscPosPrinterSize;->getPrinterWidthMM()F

    move-result p2

    cmpl-float p2, p4, p2

    if-lez p2, :cond_1

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/EscPosPrinterSize;->getPrinterWidthPx()I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p4}, Lcom/dantsu/escposprinter/EscPosPrinterSize;->mmToPx(F)I

    move-result p2

    :goto_0
    int-to-double p2, p2

    .line 26
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/barcode/Barcode;->getColsCount()I

    move-result p4

    int-to-double p4, p4

    div-double/2addr p2, p4

    invoke-static {p2, p3}, Ljava/lang/Math;->round(D)J

    move-result-wide p2

    long-to-int p2, p2

    .line 28
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/barcode/Barcode;->getColsCount()I

    move-result p3

    mul-int/2addr p3, p2

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/EscPosPrinterSize;->getPrinterWidthPx()I

    move-result p1

    if-le p3, p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    :cond_2
    if-eqz p2, :cond_3

    .line 36
    iput p2, p0, Lcom/dantsu/escposprinter/barcode/Barcode;->colWidth:I

    return-void

    .line 33
    :cond_3
    new-instance p1, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;

    const-string p2, "Barcode is too long for the paper size."

    invoke-direct {p1, p2}, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBarcodeType()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/dantsu/escposprinter/barcode/Barcode;->barcodeType:I

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/dantsu/escposprinter/barcode/Barcode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getCodeLength()I
.end method

.method public getColWidth()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/dantsu/escposprinter/barcode/Barcode;->colWidth:I

    return v0
.end method

.method public abstract getColsCount()I
.end method

.method public getHeight()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/dantsu/escposprinter/barcode/Barcode;->height:I

    return v0
.end method

.method public getTextPosition()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/dantsu/escposprinter/barcode/Barcode;->textPosition:I

    return v0
.end method
