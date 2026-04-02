.class public Lcom/dantsu/escposprinter/textparser/PrinterTextParserQRCode;
.super Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;
.source "PrinterTextParserQRCode.java"


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 40
    invoke-static {p1, p3, p4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserQRCode;->initConstructor(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/util/Hashtable;Ljava/lang/String;)[B

    move-result-object p3

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;[B)V

    return-void
.end method

.method private static initConstructor(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/util/Hashtable;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->getLine()Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getTextParser()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    move-result-object p0

    invoke-virtual {p0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object p0

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const/high16 v0, 0x41a00000    # 20.0f

    .line 18
    invoke-virtual {p0, v0}, Lcom/dantsu/escposprinter/EscPosPrinter;->mmToPx(F)I

    move-result v0

    .line 20
    const-string v1, "size"

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 26
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dantsu/escposprinter/EscPosPrinter;->mmToPx(F)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    new-instance p0, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;

    const-string p1, "Invalid QR code size value"

    invoke-direct {p0, p1}, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_0
    new-instance p0, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;

    const-string p1, "Invalid QR code attribute : size"

    invoke-direct {p0, p1}, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 32
    :cond_1
    :goto_0
    invoke-static {p2, v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->QRCodeDataToBytes(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method
