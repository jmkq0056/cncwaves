.class public Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;
.super Ljava/lang/Object;
.source "PrinterTextParserBarcode.java"

# interfaces
.implements Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;


# instance fields
.field private align:[B

.field private barcode:Lcom/dantsu/escposprinter/barcode/Barcode;

.field private length:I


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V
    .locals 9
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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->getLine()Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getTextParser()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object v1

    .line 30
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 32
    sget-object p1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_ALIGN_LEFT:[B

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->align:[B

    .line 33
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "C"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "R"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    sget-object p1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_ALIGN_RIGHT:[B

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->align:[B

    goto :goto_0

    .line 35
    :cond_1
    sget-object p1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_ALIGN_CENTER:[B

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->align:[B

    .line 42
    :goto_0
    invoke-virtual {v1}, Lcom/dantsu/escposprinter/EscPosPrinter;->getPrinterNbrCharactersPerLine()I

    move-result p1

    iput p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->length:I

    .line 45
    const-string p1, "height"

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 46
    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 53
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 55
    :catch_0
    new-instance p1, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;

    const-string p2, "Invalid barcode height value"

    invoke-direct {p1, p2}, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_2
    new-instance p1, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;

    const-string p2, "Invalid barcode attribute: height"

    invoke-direct {p1, p2}, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/high16 p1, 0x41200000    # 10.0f

    :goto_1
    move v4, p1

    .line 60
    const-string p1, "width"

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 61
    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 68
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 70
    :catch_1
    new-instance p1, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;

    const-string p2, "Invalid barcode width value"

    invoke-direct {p1, p2}, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_4
    new-instance p1, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;

    const-string p2, "Invalid barcode attribute: width"

    invoke-direct {p1, p2}, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/4 p1, 0x0

    :goto_2
    move v3, p1

    .line 75
    const-string p1, "text"

    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x2

    if-eqz p2, :cond_9

    .line 76
    invoke-virtual {p3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "none"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "above"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    move p1, v5

    move v5, p4

    goto :goto_4

    :cond_7
    move p1, v5

    move v5, v0

    goto :goto_4

    .line 79
    :cond_8
    new-instance p1, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;

    const-string p2, "Invalid barcode attribute: text"

    invoke-direct {p1, p2}, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    move p1, v5

    .line 94
    :goto_4
    const-string p2, "type"

    invoke-virtual {p3, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "Invalid barcode attribute : type"

    const-string v8, "ean13"

    if-eqz v6, :cond_b

    .line 95
    invoke-virtual {p3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_a

    goto :goto_5

    .line 98
    :cond_a
    new-instance p1, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;

    invoke-direct {p1, v7}, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    move-object p2, v8

    .line 102
    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v6, -0x1

    sparse-switch p3, :sswitch_data_0

    :goto_6
    move p4, v6

    goto :goto_7

    :sswitch_0
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    const/4 p4, 0x5

    goto :goto_7

    :sswitch_1
    const-string p1, "upce"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_6

    :cond_d
    const/4 p4, 0x4

    goto :goto_7

    :sswitch_2
    const-string p1, "upca"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_6

    :cond_e
    const/4 p4, 0x3

    goto :goto_7

    :sswitch_3
    const-string p3, "ean8"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_6

    :cond_f
    move p4, p1

    goto :goto_7

    :sswitch_4
    const-string p1, "128"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_6

    :sswitch_5
    const-string p1, "39"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_6

    :cond_10
    move p4, v0

    :cond_11
    :goto_7
    packed-switch p4, :pswitch_data_0

    .line 122
    new-instance p1, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;

    invoke-direct {p1, v7}, Lcom/dantsu/escposprinter/exceptions/EscPosParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :pswitch_0
    new-instance v0, Lcom/dantsu/escposprinter/barcode/BarcodeEAN13;

    invoke-direct/range {v0 .. v5}, Lcom/dantsu/escposprinter/barcode/BarcodeEAN13;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;Ljava/lang/String;FFI)V

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->barcode:Lcom/dantsu/escposprinter/barcode/Barcode;

    return-void

    .line 113
    :pswitch_1
    new-instance v0, Lcom/dantsu/escposprinter/barcode/BarcodeUPCE;

    invoke-direct/range {v0 .. v5}, Lcom/dantsu/escposprinter/barcode/BarcodeUPCE;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;Ljava/lang/String;FFI)V

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->barcode:Lcom/dantsu/escposprinter/barcode/Barcode;

    return-void

    .line 110
    :pswitch_2
    new-instance v0, Lcom/dantsu/escposprinter/barcode/BarcodeUPCA;

    invoke-direct/range {v0 .. v5}, Lcom/dantsu/escposprinter/barcode/BarcodeUPCA;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;Ljava/lang/String;FFI)V

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->barcode:Lcom/dantsu/escposprinter/barcode/Barcode;

    return-void

    .line 104
    :pswitch_3
    new-instance v0, Lcom/dantsu/escposprinter/barcode/BarcodeEAN8;

    invoke-direct/range {v0 .. v5}, Lcom/dantsu/escposprinter/barcode/BarcodeEAN8;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;Ljava/lang/String;FFI)V

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->barcode:Lcom/dantsu/escposprinter/barcode/Barcode;

    return-void

    .line 116
    :pswitch_4
    new-instance v0, Lcom/dantsu/escposprinter/barcode/Barcode128;

    invoke-direct/range {v0 .. v5}, Lcom/dantsu/escposprinter/barcode/Barcode128;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;Ljava/lang/String;FFI)V

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->barcode:Lcom/dantsu/escposprinter/barcode/Barcode;

    return-void

    .line 119
    :pswitch_5
    new-instance v0, Lcom/dantsu/escposprinter/barcode/Barcode39;

    invoke-direct/range {v0 .. v5}, Lcom/dantsu/escposprinter/barcode/Barcode39;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterSize;Ljava/lang/String;FFI)V

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->barcode:Lcom/dantsu/escposprinter/barcode/Barcode;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x666 -> :sswitch_5
        0xbe37 -> :sswitch_4
        0x2f6326 -> :sswitch_3
        0x36e039 -> :sswitch_2
        0x36e03d -> :sswitch_1
        0x5bd00f4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public length()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    .line 133
    iget v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->length:I

    return v0
.end method

.method public bridge synthetic print(Lcom/dantsu/escposprinter/EscPosPrinterCommands;)Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->print(Lcom/dantsu/escposprinter/EscPosPrinterCommands;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;

    move-result-object p1

    return-object p1
.end method

.method public print(Lcom/dantsu/escposprinter/EscPosPrinterCommands;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->align:[B

    .line 145
    invoke-virtual {p1, v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->setAlign([B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    move-result-object p1

    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;->barcode:Lcom/dantsu/escposprinter/barcode/Barcode;

    .line 146
    invoke-virtual {p1, v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printBarcode(Lcom/dantsu/escposprinter/barcode/Barcode;)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    return-object p0
.end method
