.class public Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;
.super Ljava/lang/Object;
.source "PrinterTextParserString.java"

# interfaces
.implements Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;


# instance fields
.field private printer:Lcom/dantsu/escposprinter/EscPosPrinter;

.field private text:Ljava/lang/String;

.field private textBold:[B

.field private textColor:[B

.field private textDoubleStrike:[B

.field private textReverseColor:[B

.field private textSize:[B

.field private textUnderline:[B


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;[B[B[B[B[B[B)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->getLine()Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getTextParser()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->printer:Lcom/dantsu/escposprinter/EscPosPrinter;

    .line 23
    iput-object p2, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->text:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textSize:[B

    .line 25
    iput-object p4, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textColor:[B

    .line 26
    iput-object p5, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textReverseColor:[B

    .line 27
    iput-object p6, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textBold:[B

    .line 28
    iput-object p7, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textUnderline:[B

    .line 29
    iput-object p8, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textDoubleStrike:[B

    return-void
.end method


# virtual methods
.method public length()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->printer:Lcom/dantsu/escposprinter/EscPosPrinter;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/EscPosPrinter;->getEncoding()Lcom/dantsu/escposprinter/EscPosCharsetEncoding;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textSize:[B

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_DOUBLE_WIDTH:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textSize:[B

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textSize:[B

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_2:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textSize:[B

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_3:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textSize:[B

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_4:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    goto :goto_1

    .line 45
    :cond_3
    iget-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textSize:[B

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_5:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x6

    goto :goto_1

    .line 47
    :cond_4
    iget-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textSize:[B

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_6:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v1, 0x2

    :goto_1
    if-eqz v0, :cond_7

    .line 52
    :try_start_0
    iget-object v2, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/EscPosCharsetEncoding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/2addr v0, v1

    return v0

    :catch_0
    move-exception v0

    .line 54
    new-instance v1, Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_7
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/2addr v0, v1

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

    .line 11
    invoke-virtual {p0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->print(Lcom/dantsu/escposprinter/EscPosPrinterCommands;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;

    move-result-object p1

    return-object p1
.end method

.method public print(Lcom/dantsu/escposprinter/EscPosPrinterCommands;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    .line 69
    iget-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textSize:[B

    iget-object v3, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textColor:[B

    iget-object v4, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textReverseColor:[B

    iget-object v5, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textBold:[B

    iget-object v6, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textUnderline:[B

    iget-object v7, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;->textDoubleStrike:[B

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printText(Ljava/lang/String;[B[B[B[B[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    return-object p0
.end method
