.class public Lcom/example/digitalkiosk/msprintsdk/UtilsTools;
.super Ljava/lang/Object;
.source "UtilsTools.java"


# static fields
.field private static hexString:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Byte2Hex(Ljava/lang/Byte;)Ljava/lang/String;
    .locals 1

    .line 514
    const-string v0, "%02x"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static PrintBase64(Ljava/lang/String;)[B
    .locals 10

    .line 435
    invoke-static {p0}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->readTxt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 438
    :try_start_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 439
    array-length v2, p0

    invoke-static {p0, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 440
    invoke-static {v1}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->convertToBlackWhite(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 442
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    .line 444
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 445
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int p0, v5, v9

    .line 447
    new-array v3, p0, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v8, v5

    .line 448
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 450
    invoke-static {v3, v5, v9}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintDiskImagefile([III)[B

    move-result-object p0

    return-object p0
.end method

.method public static ReadTxtFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const-string v1, "The File doesn\'t not exist."

    const-string v2, "TestFile"

    if-eqz v0, :cond_0

    .line 526
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result p0

    .line 535
    new-array p0, p0, [B

    .line 537
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 539
    invoke-static {p0}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->codetype([B)Ljava/lang/String;

    move-result-object v0

    .line 541
    invoke-static {p0, v0}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 546
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :catch_1
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static byteArrToHex([B)Ljava/lang/String;
    .locals 4

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 506
    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v3}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->Byte2Hex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byteSub([BII)[B
    .locals 4

    .line 378
    new-array v0, p2, [B

    add-int v1, p1, p2

    .line 380
    array-length v2, p0

    if-le v1, v2, :cond_0

    .line 381
    array-length v0, p0

    sub-int/2addr v0, p1

    new-array v0, v0, [B

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v2, v1, p1

    .line 384
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 385
    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 6

    .line 301
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 302
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 303
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 307
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bytesToInt([BI)[I
    .locals 4

    .line 282
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 283
    :goto_0
    array-length v2, p0

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_0

    .line 285
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    .line 289
    aput v2, v0, v1

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static charToByte(C)B
    .locals 1

    .line 496
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method private static codetype([B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    .line 559
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 560
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    aget-byte p0, v1, v2

    const/4 v0, -0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p0, v3, :cond_0

    aget-byte v4, v1, v2

    if-ne v4, v0, :cond_0

    .line 562
    const-string p0, "UTF-16"

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    .line 564
    aget-byte v0, v1, v2

    if-ne v0, v3, :cond_1

    .line 565
    const-string p0, "UNICODE"

    return-object p0

    :cond_1
    const/16 v0, -0x11

    if-ne p0, v0, :cond_2

    .line 567
    aget-byte p0, v1, v2

    const/16 v0, -0x45

    if-ne p0, v0, :cond_2

    const/4 p0, 0x2

    aget-byte p0, v1, p0

    const/16 v0, -0x41

    if-ne p0, v0, :cond_2

    .line 568
    const-string p0, "UTF-8"

    return-object p0

    .line 571
    :cond_2
    const-string p0, "GB2312"

    return-object p0
.end method

.method public static convertToBlackWhite(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 38
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/16 v1, 0x280

    if-le v0, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    mul-int v0, v4, v8

    .line 45
    new-array v2, v0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    move-object v1, p0

    .line 46
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 47
    new-array p0, v0, [I

    const/4 v1, 0x0

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_2

    move v3, v1

    :goto_2
    if-ge v3, v4, :cond_1

    mul-int v5, v4, v0

    add-int/2addr v5, v3

    .line 51
    :try_start_0
    aget v6, v2, v5

    const/high16 v7, 0xff0000

    and-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x10

    .line 53
    aput v6, p0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "PrintBmp:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ContentValues"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    move v0, v1

    :goto_4
    if-ge v0, v8, :cond_8

    move v3, v1

    :goto_5
    if-ge v3, v4, :cond_7

    mul-int v5, v4, v0

    add-int/2addr v5, v3

    .line 63
    aget v6, p0, v5

    const/16 v7, 0x80

    if-lt v6, v7, :cond_3

    const/4 v7, -0x1

    .line 65
    aput v7, v2, v5

    add-int/lit16 v6, v6, -0xff

    goto :goto_6

    :cond_3
    const/high16 v7, -0x1000000

    .line 69
    aput v7, v2, v5

    :goto_6
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_4

    add-int/lit8 v9, v8, -0x1

    if-ge v0, v9, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 73
    aget v7, p0, v5

    mul-int/lit8 v9, v6, 0x3

    div-int/lit8 v9, v9, 0x8

    add-int/2addr v7, v9

    aput v7, p0, v5

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    .line 74
    aget v7, p0, v5

    add-int/2addr v7, v9

    aput v7, p0, v5

    add-int/lit8 v5, v5, 0x1

    .line 75
    aget v7, p0, v5

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v7, v6

    aput v7, p0, v5

    goto :goto_7

    :cond_4
    if-ne v3, v7, :cond_5

    add-int/lit8 v9, v8, -0x1

    if-ge v0, v9, :cond_5

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v4

    add-int/2addr v5, v3

    .line 77
    aget v7, p0, v5

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x8

    add-int/2addr v7, v6

    aput v7, p0, v5

    goto :goto_7

    :cond_5
    if-ge v3, v7, :cond_6

    add-int/lit8 v7, v8, -0x1

    if-ne v0, v7, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 79
    aget v7, p0, v5

    div-int/lit8 v6, v6, 0x4

    add-int/2addr v7, v6

    aput v7, p0, v5

    :cond_6
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 85
    :cond_8
    sget-object p0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v8, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    .line 87
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 89
    invoke-static {v1, v4, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static data()Ljava/lang/String;
    .locals 3

    .line 599
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 601
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm:ss "

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeCN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 206
    :try_start_0
    const-string v0, "gbk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 208
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 209
    sget-object v2, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->hexString:Ljava/lang/String;

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    sget-object v2, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->hexString:Ljava/lang/String;

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 215
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 217
    const-string p0, ""

    return-object p0
.end method

.method public static encodeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 221
    const-string v0, ""

    .line 224
    :try_start_0
    const-string v1, "gbk"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v0

    .line 225
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    :catch_0
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    return-object v0
.end method

.method public static getBitmapParamsData(Ljava/lang/String;)[I
    .locals 9

    .line 463
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 465
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    .line 467
    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 468
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "bmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 470
    invoke-static {v0}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->convertToBlackWhite(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    move-object v1, v0

    .line 472
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 473
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    mul-int p0, v4, v8

    .line 475
    new-array v2, p0, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, v4

    .line 476
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object v2
.end method

.method public static getEncoding(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 332
    const-string v0, "GB2312"

    .line 334
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    .line 340
    :catch_0
    :cond_0
    const-string v0, "ISO-8859-1"

    .line 342
    :try_start_1
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_1

    return-object v0

    .line 348
    :catch_1
    :cond_1
    const-string v0, "UTF-8"

    .line 350
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_2

    return-object v0

    .line 356
    :catch_2
    :cond_2
    const-string v0, "GBK"

    .line 358
    :try_start_3
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz p0, :cond_3

    return-object v0

    .line 364
    :catch_3
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static getExtensionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x2e

    .line 250
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 251
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 252
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getFromRaw(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    .line 581
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 583
    new-array v0, v0, [B

    .line 585
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 586
    const-string p0, "encoding"

    invoke-static {v0, p0}, Lorg/apache/http/util/EncodingUtils;->getString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 588
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 590
    const-string p0, ""

    return-object p0
.end method

.method private static hexStr2Bytesnoenter(Ljava/lang/String;)[B
    .locals 4

    .line 265
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 266
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 268
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    .line 485
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 486
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 487
    array-length v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    .line 488
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 489
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 490
    aget-char v4, v3, v1

    invoke-static {v4}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->charToByte(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    const/4 v5, 0x1

    aget-char v3, v3, v5

    invoke-static {v3}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->charToByte(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static hexToByte(Ljava/lang/String;)B
    .locals 1

    const/16 v0, 0x10

    .line 425
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static hexToByteArr(Ljava/lang/String;)[B
    .locals 6

    .line 406
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 408
    invoke-static {v0}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->isOdd(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 410
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 413
    :cond_0
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_1

    add-int/lit8 v5, v3, 0x2

    .line 417
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->hexToByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v1, v4

    add-int/2addr v4, v2

    move v3, v5

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static isCN(Ljava/lang/String;)Z
    .locals 1

    .line 239
    const-string v0, "^[\u4e00-\u9fa5]*$"

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isHexStrValid(Ljava/lang/String;)Z
    .locals 1

    .line 396
    const-string v0, "^[0-9A-F]+$"

    .line 397
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isOdd(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static readTxt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 187
    const-string v0, ""

    .line 189
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance p0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v1, "UTF-8"

    invoke-direct {p0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 191
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 194
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static saveBmpFile(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .locals 13

    if-nez p0, :cond_0

    goto/16 :goto_2

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    .line 101
    rem-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    .line 103
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 107
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    add-int/lit8 p1, v3, 0x36

    int-to-long v5, p1

    const/16 p1, 0x4d42

    .line 113
    invoke-static {v4, p1}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 114
    invoke-static {v4, v5, v6}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeDword(Ljava/io/FileOutputStream;J)V

    const/4 p1, 0x0

    .line 115
    invoke-static {v4, p1}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeWord(Ljava/io/FileOutputStream;I)V

    .line 116
    invoke-static {v4, p1}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeWord(Ljava/io/FileOutputStream;I)V

    const-wide/16 v5, 0x36

    .line 117
    invoke-static {v4, v5, v6}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeDword(Ljava/io/FileOutputStream;J)V

    int-to-long v5, v0

    int-to-long v7, v1

    const-wide/16 v9, 0x28

    .line 129
    invoke-static {v4, v9, v10}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 130
    invoke-static {v4, v5, v6}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 131
    invoke-static {v4, v7, v8}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeLong(Ljava/io/FileOutputStream;J)V

    const/4 v5, 0x1

    .line 132
    invoke-static {v4, v5}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeWord(Ljava/io/FileOutputStream;I)V

    const/16 v5, 0x18

    .line 133
    invoke-static {v4, v5}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeWord(Ljava/io/FileOutputStream;I)V

    const-wide/16 v5, 0x0

    .line 134
    invoke-static {v4, v5, v6}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 135
    invoke-static {v4, v5, v6}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 136
    invoke-static {v4, v5, v6}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 137
    invoke-static {v4, v5, v6}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeLong(Ljava/io/FileOutputStream;J)V

    .line 138
    invoke-static {v4, v5, v6}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 139
    invoke-static {v4, v5, v6}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->writeDword(Ljava/io/FileOutputStream;J)V

    .line 140
    new-array v3, v3, [B

    .line 141
    rem-int/lit8 v5, v0, 0x4

    add-int/2addr v2, v5

    add-int/lit8 v5, v1, -0x1

    move v6, p1

    :goto_0
    if-ge v6, v1, :cond_3

    move v7, p1

    move v8, v7

    :goto_1
    if-ge v7, v0, :cond_2

    .line 144
    invoke-virtual {p0, v7, v6}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    mul-int v10, v5, v2

    add-int/2addr v10, v8

    .line 145
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    add-int/lit8 v11, v10, 0x1

    .line 146
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v3, v11

    add-int/lit8 v10, v10, 0x2

    .line 147
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v3, v10

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 150
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 151
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p0

    .line 154
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    const/4 p0, -0x1

    return p0
.end method

.method public static unicodeToUtf8(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 313
    const-string v0, "TAG"

    invoke-static {p0}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :try_start_0
    invoke-static {p0}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "UTF-8"

    const-string v2, "GBK"

    if-ne v0, v1, :cond_0

    .line 316
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 318
    :cond_0
    invoke-static {p0}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eq v0, v2, :cond_2

    invoke-static {p0}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "GB2312"

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    invoke-static {p0}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->getEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "ISO-8859-1"

    if-ne v0, v2, :cond_3

    .line 322
    :try_start_2
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0

    .line 319
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 326
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static writeDword(Ljava/io/FileOutputStream;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x10

    shr-long v4, p1, v4

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x18

    shr-long/2addr p1, v5

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x4

    .line 173
    new-array p2, p2, [B

    const/4 v0, 0x0

    aput-byte v2, p2, v0

    const/4 v0, 0x1

    aput-byte v3, p2, v0

    const/4 v0, 0x2

    aput-byte v4, p2, v0

    const/4 v0, 0x3

    aput-byte p1, p2, v0

    .line 174
    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method protected static writeLong(Ljava/io/FileOutputStream;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xff

    and-long v2, p1, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x8

    shr-long v3, p1, v3

    and-long/2addr v3, v0

    long-to-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x10

    shr-long v4, p1, v4

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x18

    shr-long/2addr p1, v5

    and-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    const/4 p2, 0x4

    .line 182
    new-array p2, p2, [B

    const/4 v0, 0x0

    aput-byte v2, p2, v0

    const/4 v0, 0x1

    aput-byte v3, p2, v0

    const/4 v0, 0x2

    aput-byte v4, p2, v0

    const/4 v0, 0x3

    aput-byte p1, p2, v0

    .line 183
    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method protected static writeWord(Ljava/io/FileOutputStream;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x2

    .line 164
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    .line 165
    invoke-virtual {p0, v1}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method
