.class public Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;
.super Ljava/lang/Object;
.source "PrinterTextParserImg.java"

# interfaces
.implements Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;


# instance fields
.field private image:[B

.field private length:I


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 135
    invoke-static {p3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->hexadecimalStringToBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;[B)V
    .locals 8

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->getLine()Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getTextParser()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object p1

    const/4 v0, 0x4

    .line 149
    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x8

    const/4 v2, 0x6

    .line 151
    aget-byte v2, p3, v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x7

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x100

    add-int/2addr v2, v3

    .line 152
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/EscPosPrinter;->getPrinterWidthPx()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v1, v3

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v4, "C"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "R"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    move v1, v5

    goto :goto_0

    :cond_0
    int-to-float p2, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    .line 157
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v1

    :cond_1
    :goto_0
    if-lez v1, :cond_3

    add-int p2, v0, v1

    .line 166
    invoke-static {p2, v2}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->initGSv0Command(II)[B

    move-result-object v4

    :goto_1
    if-ge v5, v2, :cond_2

    mul-int v6, v0, v5

    add-int/lit8 v6, v6, 0x8

    mul-int v7, p2, v5

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x8

    .line 168
    invoke-static {p3, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object p3, v4

    :cond_3
    int-to-float p2, v0

    mul-float/2addr p2, v3

    .line 173
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/EscPosPrinter;->getPrinterCharSizeWidthPx()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->length:I

    .line 174
    iput-object p3, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->image:[B

    return-void
.end method

.method public static bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 75
    invoke-static {p0, p1, v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/Bitmap;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/Bitmap;Z)Ljava/lang/String;
    .locals 0

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/dantsu/escposprinter/EscPosPrinterSize;->bitmapToBytes(Landroid/graphics/Bitmap;Z)[B

    move-result-object p0

    invoke-static {p0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->bytesToHexadecimalString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/drawable/BitmapDrawable;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/drawable/BitmapDrawable;Z)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/Bitmap;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 1

    .line 24
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 25
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/drawable/BitmapDrawable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/drawable/Drawable;Z)Ljava/lang/String;
    .locals 1

    .line 38
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 39
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p0, p1, p2}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->bitmapToHexadecimalString(Lcom/dantsu/escposprinter/EscPosPrinterSize;Landroid/graphics/drawable/BitmapDrawable;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static bytesToHexadecimalString([B)Ljava/lang/String;
    .locals 6

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 101
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexadecimalStringToBytes(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 118
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public length()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    .line 184
    iget v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->length:I

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

    .line 14
    invoke-virtual {p0, p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->print(Lcom/dantsu/escposprinter/EscPosPrinterCommands;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;

    move-result-object p1

    return-object p1
.end method

.method public print(Lcom/dantsu/escposprinter/EscPosPrinterCommands;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;->image:[B

    invoke-virtual {p1, v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printImage([B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    return-object p0
.end method
