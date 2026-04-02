.class public Lcom/dantsu/escposprinter/barcode/BarcodeUPCE;
.super Lcom/dantsu/escposprinter/barcode/Barcode;
.source "BarcodeUPCE.java"


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;Ljava/lang/String;FFI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    const/16 v2, 0x42

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/dantsu/escposprinter/barcode/Barcode;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;ILjava/lang/String;FFI)V

    .line 11
    invoke-direct {p0}, Lcom/dantsu/escposprinter/barcode/BarcodeUPCE;->checkCode()V

    return-void
.end method

.method private checkCode()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/barcode/BarcodeUPCE;->getCodeLength()I

    move-result v0

    .line 26
    iget-object v1, p0, Lcom/dantsu/escposprinter/barcode/BarcodeUPCE;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_1

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/dantsu/escposprinter/barcode/BarcodeUPCE;->code:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dantsu/escposprinter/barcode/BarcodeUPCE;->code:Ljava/lang/String;

    :goto_0
    if-ge v2, v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/dantsu/escposprinter/barcode/BarcodeUPCE;->code:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 37
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;

    const-string v1, "Invalid barcode number"

    invoke-direct {v0, v1}, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;

    const-string v1, "Code is too short for the barcode type."

    invoke-direct {v0, v1}, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCodeLength()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public getColsCount()I
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/barcode/BarcodeUPCE;->getCodeLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x10

    return v0
.end method
