.class public Lcom/dantsu/escposprinter/barcode/Barcode39;
.super Lcom/dantsu/escposprinter/barcode/Barcode;
.source "Barcode39.java"


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;Ljava/lang/String;FFI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    const/16 v2, 0x45

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/dantsu/escposprinter/barcode/Barcode;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;ILjava/lang/String;FFI)V

    return-void
.end method


# virtual methods
.method public getCodeLength()I
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/dantsu/escposprinter/barcode/Barcode39;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getColsCount()I
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/barcode/Barcode39;->getCodeLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x10

    return v0
.end method
