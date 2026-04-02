.class public Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
.super Ljava/lang/Object;
.source "PrinterTextParser.java"


# static fields
.field public static final ATTR_BARCODE_HEIGHT:Ljava/lang/String; = "height"

.field public static final ATTR_BARCODE_TEXT_POSITION:Ljava/lang/String; = "text"

.field public static final ATTR_BARCODE_TEXT_POSITION_ABOVE:Ljava/lang/String; = "above"

.field public static final ATTR_BARCODE_TEXT_POSITION_BELOW:Ljava/lang/String; = "below"

.field public static final ATTR_BARCODE_TEXT_POSITION_NONE:Ljava/lang/String; = "none"

.field public static final ATTR_BARCODE_TYPE:Ljava/lang/String; = "type"

.field public static final ATTR_BARCODE_TYPE_128:Ljava/lang/String; = "128"

.field public static final ATTR_BARCODE_TYPE_39:Ljava/lang/String; = "39"

.field public static final ATTR_BARCODE_TYPE_EAN13:Ljava/lang/String; = "ean13"

.field public static final ATTR_BARCODE_TYPE_EAN8:Ljava/lang/String; = "ean8"

.field public static final ATTR_BARCODE_TYPE_UPCA:Ljava/lang/String; = "upca"

.field public static final ATTR_BARCODE_TYPE_UPCE:Ljava/lang/String; = "upce"

.field public static final ATTR_BARCODE_WIDTH:Ljava/lang/String; = "width"

.field public static final ATTR_FORMAT_TEXT_FONT_COLOR:Ljava/lang/String; = "color"

.field public static final ATTR_FORMAT_TEXT_FONT_COLOR_BG_BLACK:Ljava/lang/String; = "bg-black"

.field public static final ATTR_FORMAT_TEXT_FONT_COLOR_BG_RED:Ljava/lang/String; = "bg-red"

.field public static final ATTR_FORMAT_TEXT_FONT_COLOR_BLACK:Ljava/lang/String; = "black"

.field public static final ATTR_FORMAT_TEXT_FONT_COLOR_RED:Ljava/lang/String; = "red"

.field public static final ATTR_FORMAT_TEXT_FONT_SIZE:Ljava/lang/String; = "size"

.field public static final ATTR_FORMAT_TEXT_FONT_SIZE_BIG:Ljava/lang/String; = "big"

.field public static final ATTR_FORMAT_TEXT_FONT_SIZE_BIG_2:Ljava/lang/String; = "big-2"

.field public static final ATTR_FORMAT_TEXT_FONT_SIZE_BIG_3:Ljava/lang/String; = "big-3"

.field public static final ATTR_FORMAT_TEXT_FONT_SIZE_BIG_4:Ljava/lang/String; = "big-4"

.field public static final ATTR_FORMAT_TEXT_FONT_SIZE_BIG_5:Ljava/lang/String; = "big-5"

.field public static final ATTR_FORMAT_TEXT_FONT_SIZE_BIG_6:Ljava/lang/String; = "big-6"

.field public static final ATTR_FORMAT_TEXT_FONT_SIZE_NORMAL:Ljava/lang/String; = "normal"

.field public static final ATTR_FORMAT_TEXT_FONT_SIZE_TALL:Ljava/lang/String; = "tall"

.field public static final ATTR_FORMAT_TEXT_FONT_SIZE_WIDE:Ljava/lang/String; = "wide"

.field public static final ATTR_FORMAT_TEXT_UNDERLINE_TYPE:Ljava/lang/String; = "type"

.field public static final ATTR_FORMAT_TEXT_UNDERLINE_TYPE_DOUBLE:Ljava/lang/String; = "double"

.field public static final ATTR_FORMAT_TEXT_UNDERLINE_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final ATTR_QRCODE_SIZE:Ljava/lang/String; = "size"

.field public static final TAGS_ALIGN:[Ljava/lang/String;

.field public static final TAGS_ALIGN_CENTER:Ljava/lang/String; = "C"

.field public static final TAGS_ALIGN_LEFT:Ljava/lang/String; = "L"

.field public static final TAGS_ALIGN_RIGHT:Ljava/lang/String; = "R"

.field public static final TAGS_BARCODE:Ljava/lang/String; = "barcode"

.field public static final TAGS_FORMAT_TEXT:[Ljava/lang/String;

.field public static final TAGS_FORMAT_TEXT_BOLD:Ljava/lang/String; = "b"

.field public static final TAGS_FORMAT_TEXT_FONT:Ljava/lang/String; = "font"

.field public static final TAGS_FORMAT_TEXT_UNDERLINE:Ljava/lang/String; = "u"

.field public static final TAGS_IMAGE:Ljava/lang/String; = "img"

.field public static final TAGS_QRCODE:Ljava/lang/String; = "qrcode"

.field private static regexAlignTags:Ljava/lang/String;


# instance fields
.field private printer:Lcom/dantsu/escposprinter/EscPosPrinter;

.field private text:Ljava/lang/String;

.field private textBold:[[B

.field private textColor:[[B

.field private textDoubleStrike:[[B

.field private textReverseColor:[[B

.field private textSize:[[B

.field private textUnderline:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 16
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "L"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "C"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "R"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->TAGS_ALIGN:[Ljava/lang/String;

    .line 39
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "font"

    aput-object v1, v0, v3

    const-string v1, "b"

    aput-object v1, v0, v4

    const-string v1, "u"

    aput-object v1, v0, v5

    sput-object v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->TAGS_FORMAT_TEXT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/dantsu/escposprinter/EscPosPrinter;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    sget-object v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_NORMAL:[B

    filled-new-array {v0}, [[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textSize:[[B

    .line 112
    sget-object v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_BLACK:[B

    filled-new-array {v0}, [[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textColor:[[B

    .line 113
    sget-object v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_REVERSE_OFF:[B

    filled-new-array {v0}, [[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textReverseColor:[[B

    .line 114
    sget-object v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_WEIGHT_NORMAL:[B

    filled-new-array {v0}, [[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textBold:[[B

    .line 115
    sget-object v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_UNDERLINE_OFF:[B

    filled-new-array {v0}, [[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textUnderline:[[B

    .line 116
    sget-object v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_DOUBLE_STRIKE_OFF:[B

    filled-new-array {v0}, [[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textDoubleStrike:[[B

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->text:Ljava/lang/String;

    .line 120
    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->printer:Lcom/dantsu/escposprinter/EscPosPrinter;

    return-void
.end method

.method public static arrayByteDropLast([[B)[[B
    .locals 3

    .line 90
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    .line 94
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [[B

    const/4 v2, 0x0

    .line 95
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public static arrayBytePush([[B[B)[[B
    .locals 3

    .line 101
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 102
    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    array-length p0, p0

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static getRegexAlignTags()Ljava/lang/String;
    .locals 4

    .line 66
    sget-object v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->regexAlignTags:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 68
    :goto_0
    sget-object v2, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->TAGS_ALIGN:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 69
    const-string v3, "|\\["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v2, v1

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->regexAlignTags:Ljava/lang/String;

    .line 73
    :cond_1
    sget-object v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->regexAlignTags:Ljava/lang/String;

    return-object v0
.end method

.method public static isTagTextFormat(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 77
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 81
    :cond_0
    sget-object v2, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->TAGS_FORMAT_TEXT:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 82
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public addTextBold([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textBold:[[B

    invoke-static {v0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayBytePush([[B[B)[[B

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textBold:[[B

    return-object p0
.end method

.method public addTextColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textColor:[[B

    invoke-static {v0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayBytePush([[B[B)[[B

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textColor:[[B

    return-object p0
.end method

.method public addTextDoubleStrike([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textDoubleStrike:[[B

    invoke-static {v0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayBytePush([[B[B)[[B

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textDoubleStrike:[[B

    return-object p0
.end method

.method public addTextReverseColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textReverseColor:[[B

    invoke-static {v0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayBytePush([[B[B)[[B

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textReverseColor:[[B

    return-object p0
.end method

.method public addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textSize:[[B

    invoke-static {v0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayBytePush([[B[B)[[B

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textSize:[[B

    return-object p0
.end method

.method public addTextUnderline([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textUnderline:[[B

    invoke-static {v0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayBytePush([[B[B)[[B

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textUnderline:[[B

    return-object p0
.end method

.method public dropLastTextColor()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textColor:[[B

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 159
    invoke-static {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayByteDropLast([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textColor:[[B

    :cond_0
    return-object p0
.end method

.method public dropLastTextDoubleStrike()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textDoubleStrike:[[B

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 223
    invoke-static {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayByteDropLast([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textDoubleStrike:[[B

    :cond_0
    return-object p0
.end method

.method public dropLastTextReverseColor()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textReverseColor:[[B

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 175
    invoke-static {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayByteDropLast([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textReverseColor:[[B

    :cond_0
    return-object p0
.end method

.method public dropLastTextSize()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textSize:[[B

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 143
    invoke-static {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayByteDropLast([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textSize:[[B

    :cond_0
    return-object p0
.end method

.method public dropLastTextUnderline()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textUnderline:[[B

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 207
    invoke-static {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayByteDropLast([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textUnderline:[[B

    :cond_0
    return-object p0
.end method

.method public dropTextBold()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textBold:[[B

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 191
    invoke-static {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->arrayByteDropLast([[B)[[B

    move-result-object v0

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textBold:[[B

    :cond_0
    return-object p0
.end method

.method public getLastTextBold()[B
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textBold:[[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLastTextColor()[B
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textColor:[[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLastTextDoubleStrike()[B
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textDoubleStrike:[[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLastTextReverseColor()[B
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textReverseColor:[[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLastTextSize()[B
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textSize:[[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLastTextUnderline()[B
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->textUnderline:[[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->printer:Lcom/dantsu/escposprinter/EscPosPrinter;

    return-object v0
.end method

.method public parse()[Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->text:Ljava/lang/String;

    const-string v1, "\n|\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 230
    array-length v1, v0

    new-array v1, v1, [Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    .line 232
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    .line 233
    new-instance v7, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    invoke-direct {v7, p0, v5}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParser;Ljava/lang/String;)V

    aput-object v7, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public setFormattedText(Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->text:Ljava/lang/String;

    return-object p0
.end method
