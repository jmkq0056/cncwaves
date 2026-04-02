.class public Lcom/dantsu/escposprinter/barcode/BarcodeEAN8;
.super Lcom/dantsu/escposprinter/barcode/BarcodeNumber;
.source "BarcodeEAN8.java"


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;Ljava/lang/String;FFI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    const/16 v2, 0x44

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 9
    invoke-direct/range {v0 .. v6}, Lcom/dantsu/escposprinter/barcode/BarcodeNumber;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;ILjava/lang/String;FFI)V

    return-void
.end method


# virtual methods
.method public getCodeLength()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
