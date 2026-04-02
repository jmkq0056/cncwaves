.class public Lcom/dantsu/escposprinter/EscPosPrinter;
.super Lcom/dantsu/escposprinter/EscPosPrinterSize;
.source "EscPosPrinter.java"


# instance fields
.field private printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/EscPosPrinterCommands;IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 52
    invoke-direct {p0, p2, p3, p4}, Lcom/dantsu/escposprinter/EscPosPrinterSize;-><init>(IFI)V

    const/4 p2, 0x0

    .line 16
    iput-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->connect()Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/dantsu/escposprinter/connection/DeviceConnection;IFI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 27
    new-instance v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-direct {v0, p1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;-><init>(Lcom/dantsu/escposprinter/connection/DeviceConnection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/dantsu/escposprinter/EscPosPrinter;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterCommands;IFI)V

    return-void
.end method

.method public constructor <init>(Lcom/dantsu/escposprinter/connection/DeviceConnection;IFILcom/dantsu/escposprinter/EscPosCharsetEncoding;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 40
    new-instance v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-direct {v0, p1, p5}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;-><init>(Lcom/dantsu/escposprinter/connection/DeviceConnection;Lcom/dantsu/escposprinter/EscPosCharsetEncoding;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/dantsu/escposprinter/EscPosPrinter;-><init>(Lcom/dantsu/escposprinter/EscPosPrinterCommands;IFI)V

    return-void
.end method


# virtual methods
.method public disconnectPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->disconnect()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    :cond_0
    return-object p0
.end method

.method public getEncoding()Lcom/dantsu/escposprinter/EscPosCharsetEncoding;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->getCharsetEncoding()Lcom/dantsu/escposprinter/EscPosCharsetEncoding;

    move-result-object v0

    return-object v0
.end method

.method public printAllCharsetsEncodingCharacters()Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printAllCharsetsEncodingCharacters()Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    return-object p0
.end method

.method public printCharsetEncodingCharacters(I)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-virtual {v0, p1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printCharsetEncodingCharacters(I)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    return-object p0
.end method

.method public printCharsetsEncodingCharacters([I)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-virtual {v0, p1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printCharsetsEncodingCharacters([I)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    return-object p0
.end method

.method public printFormattedText(Ljava/lang/String;)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedText(Ljava/lang/String;F)Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object p1

    return-object p1
.end method

.method public printFormattedText(Ljava/lang/String;F)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0, p2}, Lcom/dantsu/escposprinter/EscPosPrinter;->mmToPx(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedText(Ljava/lang/String;I)Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object p1

    return-object p1
.end method

.method public printFormattedText(Ljava/lang/String;I)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printerNbrCharactersPerLine:I

    if-nez v0, :cond_0

    goto :goto_3

    .line 115
    :cond_0
    new-instance v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    invoke-direct {v0, p0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;-><init>(Lcom/dantsu/escposprinter/EscPosPrinter;)V

    .line 117
    invoke-virtual {v0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->setFormattedText(Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->parse()[Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    move-result-object p1

    .line 120
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->reset()Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    .line 122
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    .line 123
    invoke-virtual {v3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getColumns()[Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object v3

    .line 126
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    .line 127
    invoke-virtual {v7}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->getElements()[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    move-result-object v7

    .line 128
    array-length v8, v7

    move v9, v1

    :goto_2
    if-ge v9, v8, :cond_1

    aget-object v5, v7, v9

    .line 129
    iget-object v10, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-interface {v5, v10}, Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;->print(Lcom/dantsu/escposprinter/EscPosPrinterCommands;)Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 134
    :cond_2
    instance-of v3, v5, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;

    if-eqz v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-virtual {v3}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->newLine()Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_4
    iget-object p1, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-virtual {p1, p2}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->feedPaper(I)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    :cond_5
    :goto_3
    return-object p0
.end method

.method public printFormattedTextAndCut(Ljava/lang/String;)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    const/high16 v0, 0x41a00000    # 20.0f

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedTextAndCut(Ljava/lang/String;F)Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object p1

    return-object p1
.end method

.method public printFormattedTextAndCut(Ljava/lang/String;F)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 161
    invoke-virtual {p0, p2}, Lcom/dantsu/escposprinter/EscPosPrinter;->mmToPx(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedTextAndCut(Ljava/lang/String;I)Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object p1

    return-object p1
.end method

.method public printFormattedTextAndCut(Ljava/lang/String;I)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printerNbrCharactersPerLine:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedText(Ljava/lang/String;I)Lcom/dantsu/escposprinter/EscPosPrinter;

    .line 177
    iget-object p1, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->cutPaper()Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public printFormattedTextAndOpenCashBox(Ljava/lang/String;F)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 190
    invoke-virtual {p0, p2}, Lcom/dantsu/escposprinter/EscPosPrinter;->mmToPx(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedTextAndOpenCashBox(Ljava/lang/String;I)Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object p1

    return-object p1
.end method

.method public printFormattedTextAndOpenCashBox(Ljava/lang/String;I)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printerNbrCharactersPerLine:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dantsu/escposprinter/EscPosPrinter;->printFormattedTextAndCut(Ljava/lang/String;I)Lcom/dantsu/escposprinter/EscPosPrinter;

    .line 206
    iget-object p1, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->openCashBox()Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public useEscAsteriskCommand(Z)Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinter;->printer:Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    invoke-virtual {v0, p1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->useEscAsteriskCommand(Z)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    return-object p0
.end method
