.class public abstract Lcom/dantsu/escposprinter/barcode/BarcodeNumber;
.super Lcom/dantsu/escposprinter/barcode/Barcode;
.source "BarcodeNumber.java"


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;ILjava/lang/String;FFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 9
    invoke-direct/range {p0 .. p6}, Lcom/dantsu/escposprinter/barcode/Barcode;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;ILjava/lang/String;FFI)V

    .line 10
    invoke-direct {p0}, Lcom/dantsu/escposprinter/barcode/BarcodeNumber;->checkCode()V

    return-void
.end method

.method private checkCode()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/barcode/BarcodeNumber;->getCodeLength()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 21
    iget-object v2, p0, Lcom/dantsu/escposprinter/barcode/BarcodeNumber;->code:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v1, :cond_3

    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/dantsu/escposprinter/barcode/BarcodeNumber;->code:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v4, v3

    :goto_0
    const/4 v5, 0x2

    const/16 v6, 0xa

    if-ge v3, v1, :cond_1

    add-int/lit8 v5, v0, -0x2

    sub-int/2addr v5, v3

    add-int/lit8 v7, v5, 0x1

    .line 32
    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 33
    rem-int/lit8 v6, v3, 0x2

    if-nez v6, :cond_0

    mul-int/lit8 v5, v5, 0x3

    :cond_0
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_1
    rem-int/2addr v4, v6

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 41
    const-string v0, "0"

    .line 43
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/barcode/BarcodeNumber;->code:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 47
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;

    const-string v1, "Invalid barcode number"

    invoke-direct {v0, v1}, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_3
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;

    const-string v1, "Code is too short for the barcode type."

    invoke-direct {v0, v1}, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getColsCount()I
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/barcode/BarcodeNumber;->getCodeLength()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0xb

    return v0
.end method
