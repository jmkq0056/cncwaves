.class public Lcom/dantsu/escposprinter/EscPosPrinterCommands;
.super Ljava/lang/Object;
.source "EscPosPrinterCommands.java"


# static fields
.field public static final BARCODE_TEXT_POSITION_ABOVE:I = 0x1

.field public static final BARCODE_TEXT_POSITION_BELOW:I = 0x2

.field public static final BARCODE_TEXT_POSITION_NONE:I = 0x0

.field public static final BARCODE_TYPE_128:I = 0x49

.field public static final BARCODE_TYPE_39:I = 0x45

.field public static final BARCODE_TYPE_EAN13:I = 0x43

.field public static final BARCODE_TYPE_EAN8:I = 0x44

.field public static final BARCODE_TYPE_ITF:I = 0x46

.field public static final BARCODE_TYPE_UPCA:I = 0x41

.field public static final BARCODE_TYPE_UPCE:I = 0x42

.field public static final LF:B = 0xat

.field public static final LINE_SPACING_24:[B

.field public static final LINE_SPACING_30:[B

.field public static final QRCODE_1:I = 0x31

.field public static final QRCODE_2:I = 0x32

.field public static final RESET_PRINTER:[B

.field public static final TEXT_ALIGN_CENTER:[B

.field public static final TEXT_ALIGN_LEFT:[B

.field public static final TEXT_ALIGN_RIGHT:[B

.field public static final TEXT_COLOR_BLACK:[B

.field public static final TEXT_COLOR_RED:[B

.field public static final TEXT_COLOR_REVERSE_OFF:[B

.field public static final TEXT_COLOR_REVERSE_ON:[B

.field public static final TEXT_DOUBLE_STRIKE_OFF:[B

.field public static final TEXT_DOUBLE_STRIKE_ON:[B

.field public static final TEXT_FONT_A:[B

.field public static final TEXT_FONT_B:[B

.field public static final TEXT_FONT_C:[B

.field public static final TEXT_FONT_D:[B

.field public static final TEXT_FONT_E:[B

.field public static final TEXT_SIZE_BIG:[B

.field public static final TEXT_SIZE_BIG_2:[B

.field public static final TEXT_SIZE_BIG_3:[B

.field public static final TEXT_SIZE_BIG_4:[B

.field public static final TEXT_SIZE_BIG_5:[B

.field public static final TEXT_SIZE_BIG_6:[B

.field public static final TEXT_SIZE_DOUBLE_HEIGHT:[B

.field public static final TEXT_SIZE_DOUBLE_WIDTH:[B

.field public static final TEXT_SIZE_NORMAL:[B

.field public static final TEXT_UNDERLINE_LARGE:[B

.field public static final TEXT_UNDERLINE_OFF:[B

.field public static final TEXT_UNDERLINE_ON:[B

.field public static final TEXT_WEIGHT_BOLD:[B

.field public static final TEXT_WEIGHT_NORMAL:[B


# instance fields
.field private charsetEncoding:Lcom/dantsu/escposprinter/EscPosCharsetEncoding;

.field private currentTextBold:[B

.field private currentTextColor:[B

.field private currentTextDoubleStrike:[B

.field private currentTextReverseColor:[B

.field private currentTextSize:[B

.field private currentTextUnderline:[B

.field private printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

.field private useEscAsteriskCommand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->RESET_PRINTER:[B

    const/4 v0, 0x3

    .line 27
    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_ALIGN_LEFT:[B

    .line 28
    new-array v1, v0, [B

    fill-array-data v1, :array_2

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_ALIGN_CENTER:[B

    .line 29
    new-array v1, v0, [B

    fill-array-data v1, :array_3

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_ALIGN_RIGHT:[B

    .line 31
    new-array v1, v0, [B

    fill-array-data v1, :array_4

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_WEIGHT_NORMAL:[B

    .line 32
    new-array v1, v0, [B

    fill-array-data v1, :array_5

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_WEIGHT_BOLD:[B

    .line 34
    new-array v1, v0, [B

    fill-array-data v1, :array_6

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->LINE_SPACING_24:[B

    .line 35
    new-array v1, v0, [B

    fill-array-data v1, :array_7

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->LINE_SPACING_30:[B

    .line 37
    new-array v1, v0, [B

    fill-array-data v1, :array_8

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_FONT_A:[B

    .line 38
    new-array v1, v0, [B

    fill-array-data v1, :array_9

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_FONT_B:[B

    .line 39
    new-array v1, v0, [B

    fill-array-data v1, :array_a

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_FONT_C:[B

    .line 40
    new-array v1, v0, [B

    fill-array-data v1, :array_b

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_FONT_D:[B

    .line 41
    new-array v1, v0, [B

    fill-array-data v1, :array_c

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_FONT_E:[B

    .line 43
    new-array v1, v0, [B

    fill-array-data v1, :array_d

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_NORMAL:[B

    .line 44
    new-array v1, v0, [B

    fill-array-data v1, :array_e

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_DOUBLE_HEIGHT:[B

    .line 45
    new-array v1, v0, [B

    fill-array-data v1, :array_f

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_DOUBLE_WIDTH:[B

    .line 46
    new-array v1, v0, [B

    fill-array-data v1, :array_10

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG:[B

    .line 47
    new-array v1, v0, [B

    fill-array-data v1, :array_11

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_2:[B

    .line 48
    new-array v1, v0, [B

    fill-array-data v1, :array_12

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_3:[B

    .line 49
    new-array v1, v0, [B

    fill-array-data v1, :array_13

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_4:[B

    .line 50
    new-array v1, v0, [B

    fill-array-data v1, :array_14

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_5:[B

    .line 51
    new-array v1, v0, [B

    fill-array-data v1, :array_15

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_6:[B

    .line 53
    new-array v1, v0, [B

    fill-array-data v1, :array_16

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_UNDERLINE_OFF:[B

    .line 54
    new-array v1, v0, [B

    fill-array-data v1, :array_17

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_UNDERLINE_ON:[B

    .line 55
    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_UNDERLINE_LARGE:[B

    .line 57
    new-array v1, v0, [B

    fill-array-data v1, :array_19

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_DOUBLE_STRIKE_OFF:[B

    .line 58
    new-array v1, v0, [B

    fill-array-data v1, :array_1a

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_DOUBLE_STRIKE_ON:[B

    .line 60
    new-array v1, v0, [B

    fill-array-data v1, :array_1b

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_BLACK:[B

    .line 61
    new-array v1, v0, [B

    fill-array-data v1, :array_1c

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_RED:[B

    .line 63
    new-array v1, v0, [B

    fill-array-data v1, :array_1d

    sput-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_REVERSE_OFF:[B

    .line 64
    new-array v0, v0, [B

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_REVERSE_ON:[B

    return-void

    :array_0
    .array-data 1
        0x1bt
        0x40t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1bt
        0x61t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x1bt
        0x61t
        0x1t
    .end array-data

    :array_3
    .array-data 1
        0x1bt
        0x61t
        0x2t
    .end array-data

    :array_4
    .array-data 1
        0x1bt
        0x45t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x1bt
        0x45t
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0x1bt
        0x33t
        0x18t
    .end array-data

    :array_7
    .array-data 1
        0x1bt
        0x33t
        0x1et
    .end array-data

    :array_8
    .array-data 1
        0x1bt
        0x4dt
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x1bt
        0x4dt
        0x1t
    .end array-data

    :array_a
    .array-data 1
        0x1bt
        0x4dt
        0x2t
    .end array-data

    :array_b
    .array-data 1
        0x1bt
        0x4dt
        0x3t
    .end array-data

    :array_c
    .array-data 1
        0x1bt
        0x4dt
        0x4t
    .end array-data

    :array_d
    .array-data 1
        0x1dt
        0x21t
        0x0t
    .end array-data

    :array_e
    .array-data 1
        0x1dt
        0x21t
        0x1t
    .end array-data

    :array_f
    .array-data 1
        0x1dt
        0x21t
        0x10t
    .end array-data

    :array_10
    .array-data 1
        0x1dt
        0x21t
        0x11t
    .end array-data

    :array_11
    .array-data 1
        0x1dt
        0x21t
        0x22t
    .end array-data

    :array_12
    .array-data 1
        0x1dt
        0x21t
        0x33t
    .end array-data

    :array_13
    .array-data 1
        0x1dt
        0x21t
        0x44t
    .end array-data

    :array_14
    .array-data 1
        0x1dt
        0x21t
        0x55t
    .end array-data

    :array_15
    .array-data 1
        0x1dt
        0x21t
        0x66t
    .end array-data

    :array_16
    .array-data 1
        0x1bt
        0x2dt
        0x0t
    .end array-data

    :array_17
    .array-data 1
        0x1bt
        0x2dt
        0x1t
    .end array-data

    :array_18
    .array-data 1
        0x1bt
        0x2dt
        0x2t
    .end array-data

    :array_19
    .array-data 1
        0x1bt
        0x47t
        0x0t
    .end array-data

    :array_1a
    .array-data 1
        0x1bt
        0x47t
        0x1t
    .end array-data

    :array_1b
    .array-data 1
        0x1bt
        0x72t
        0x0t
    .end array-data

    :array_1c
    .array-data 1
        0x1bt
        0x72t
        0x1t
    .end array-data

    :array_1d
    .array-data 1
        0x1dt
        0x42t
        0x0t
    .end array-data

    :array_1e
    .array-data 1
        0x1dt
        0x42t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Lcom/dantsu/escposprinter/connection/DeviceConnection;)V
    .locals 1

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;-><init>(Lcom/dantsu/escposprinter/connection/DeviceConnection;Lcom/dantsu/escposprinter/EscPosCharsetEncoding;)V

    return-void
.end method

.method public constructor <init>(Lcom/dantsu/escposprinter/connection/DeviceConnection;Lcom/dantsu/escposprinter/EscPosCharsetEncoding;)V
    .locals 2

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 424
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextSize:[B

    .line 425
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextColor:[B

    .line 426
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextReverseColor:[B

    .line 427
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextBold:[B

    .line 428
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextUnderline:[B

    .line 429
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextDoubleStrike:[B

    .line 303
    iput-object p1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    new-instance p2, Lcom/dantsu/escposprinter/EscPosCharsetEncoding;

    const-string p1, "windows-1252"

    const/4 v0, 0x6

    invoke-direct {p2, p1, v0}, Lcom/dantsu/escposprinter/EscPosCharsetEncoding;-><init>(Ljava/lang/String;I)V

    :goto_0
    iput-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->charsetEncoding:Lcom/dantsu/escposprinter/EscPosCharsetEncoding;

    return-void
.end method

.method public static QRCodeDataToBytes(Ljava/lang/String;I)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 229
    :try_start_0
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 230
    sget-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v1, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object/from16 v2, p0

    invoke-static {v2, v1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 241
    invoke-static {v1, v1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->initGSv0Command(II)[B

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v2

    .line 246
    invoke-virtual {v0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v3

    move/from16 v4, p1

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 247
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int v5, v2, v4

    mul-int v6, v3, v4

    int-to-float v5, v5

    const/high16 v7, 0x41000000    # 8.0f

    div-float/2addr v5, v7

    float-to-double v7, v5

    .line 250
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    const/4 v7, 0x1

    if-ge v4, v7, :cond_1

    .line 254
    invoke-static {v1, v1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->initGSv0Command(II)[B

    move-result-object v0

    return-object v0

    .line 257
    :cond_1
    invoke-static {v5, v6}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->initGSv0Command(II)[B

    move-result-object v6

    const/16 v8, 0x8

    move v9, v1

    move v10, v8

    :goto_0
    if-ge v9, v3, :cond_8

    .line 260
    new-array v11, v5, [B

    const/4 v12, -0x1

    move v13, v1

    move v15, v13

    move v14, v4

    :goto_1
    if-ge v13, v5, :cond_6

    move/from16 v16, v1

    :goto_2
    if-ge v1, v8, :cond_5

    if-ne v14, v4, :cond_3

    add-int/lit8 v12, v12, 0x1

    if-ge v12, v2, :cond_2

    .line 267
    invoke-virtual {v0, v12, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v14

    if-ne v14, v7, :cond_2

    move v14, v7

    goto :goto_3

    :cond_2
    const/4 v14, 0x0

    :goto_3
    move v15, v14

    const/4 v14, 0x0

    :cond_3
    if-eqz v15, :cond_4

    rsub-int/lit8 v17, v1, 0x7

    shl-int v17, v7, v17

    move/from16 p1, v7

    move/from16 v7, v16

    or-int v16, v7, v17

    goto :goto_4

    :cond_4
    move/from16 p1, v7

    move/from16 v7, v16

    :goto_4
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v1, v1, 0x1

    move/from16 v7, p1

    goto :goto_2

    :cond_5
    move/from16 p1, v7

    move/from16 v7, v16

    int-to-byte v1, v7

    .line 275
    aput-byte v1, v11, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v7, p1

    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    move/from16 p1, v7

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v4, :cond_7

    const/4 v7, 0x0

    .line 279
    invoke-static {v11, v7, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    add-int/lit8 v9, v9, 0x1

    move v1, v7

    move/from16 v7, p1

    goto :goto_0

    :cond_8
    return-object v6

    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    .line 237
    new-instance v0, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;

    const-string v1, "Unable to encode QR code"

    invoke-direct {v0, v1}, Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bitmapToBytes(Landroid/graphics/Bitmap;Z)[B
    .locals 22

    .line 115
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v2, v0

    const/high16 v3, 0x41000000    # 8.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 119
    invoke-static {v2, v1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->initGSv0Command(II)[B

    move-result-object v2

    const/16 v3, 0x5f

    int-to-double v3, v3

    const-wide v5, 0x4087e80000000000L    # 765.0

    div-double/2addr v5, v3

    const/16 v3, 0x8

    move v9, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v1, :cond_8

    .line 130
    rem-int/lit8 v10, v7, 0x6

    move v12, v8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_6

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v14, v3, :cond_5

    add-int v3, v11, v14

    move-object/from16 v4, p0

    if-ge v3, v0, :cond_4

    .line 136
    invoke-virtual {v4, v3, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    shr-int/lit8 v13, v3, 0x10

    and-int/lit16 v13, v13, 0xff

    move/from16 v16, v0

    shr-int/lit8 v0, v3, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v3, v3, 0xff

    if-eqz p1, :cond_0

    add-int v17, v13, v0

    move/from16 v18, v1

    add-int v1, v17, v3

    move-object/from16 v17, v2

    int-to-double v1, v1

    mul-int/lit8 v19, v12, 0x6

    move-wide/from16 v20, v1

    add-int v1, v19, v10

    int-to-double v1, v1

    mul-double/2addr v1, v5

    cmpg-double v1, v20, v1

    if-ltz v1, :cond_1

    goto :goto_3

    :cond_0
    move/from16 v18, v1

    move-object/from16 v17, v2

    :goto_3
    if-nez p1, :cond_2

    const/16 v1, 0xa0

    if-lt v13, v1, :cond_1

    if-lt v0, v1, :cond_1

    if-ge v3, v1, :cond_2

    :cond_1
    rsub-int/lit8 v0, v14, 0x7

    const/4 v1, 0x1

    shl-int v0, v1, v0

    or-int/2addr v0, v15

    move v15, v0

    :cond_2
    add-int/lit8 v0, v12, 0x5

    const/16 v1, 0xf

    if-le v0, v1, :cond_3

    add-int/lit8 v12, v12, -0xb

    goto :goto_4

    :cond_3
    move v12, v0

    goto :goto_4

    :cond_4
    move/from16 v16, v0

    move/from16 v18, v1

    move-object/from16 v17, v2

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move/from16 v0, v16

    move-object/from16 v2, v17

    move/from16 v1, v18

    const/16 v3, 0x8

    goto :goto_2

    :cond_5
    move-object/from16 v4, p0

    move/from16 v16, v0

    move/from16 v18, v1

    move-object/from16 v17, v2

    add-int/lit8 v0, v9, 0x1

    int-to-byte v1, v15

    .line 154
    aput-byte v1, v17, v9

    add-int/lit8 v11, v11, 0x8

    move v9, v0

    move/from16 v0, v16

    move/from16 v1, v18

    const/16 v3, 0x8

    goto :goto_1

    :cond_6
    move-object/from16 v4, p0

    move/from16 v16, v0

    move/from16 v18, v1

    move-object/from16 v17, v2

    add-int/lit8 v8, v8, 0x2

    const/16 v1, 0xf

    if-le v8, v1, :cond_7

    const/4 v8, 0x0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    move-object/from16 v2, v17

    move/from16 v1, v18

    const/16 v3, 0x8

    goto/16 :goto_0

    :cond_8
    move-object/from16 v17, v2

    return-object v17
.end method

.method public static convertGSv0ToEscAsterisk([B)[[B
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x4

    .line 168
    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x5

    .line 169
    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x6

    .line 170
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x7

    .line 171
    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v4, v2

    mul-int/lit8 v2, v4, 0x8

    .line 174
    div-int/lit16 v8, v2, 0x100

    .line 175
    rem-int/lit16 v2, v2, 0x100

    mul-int/lit16 v7, v7, 0x100

    add-int/2addr v7, v5

    int-to-double v9, v7

    const-wide/high16 v11, 0x4038000000000000L    # 24.0

    div-double/2addr v9, v11

    .line 177
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v5, v9

    mul-int/lit8 v7, v4, 0x18

    add-int/lit8 v9, v7, 0x6

    add-int/lit8 v10, v5, 0x2

    .line 180
    new-array v10, v10, [[B

    .line 181
    sget-object v11, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->LINE_SPACING_24:[B

    const/4 v12, 0x0

    aput-object v11, v10, v12

    move v11, v12

    :goto_0
    const/4 v13, 0x1

    if-ge v11, v5, :cond_4

    mul-int/lit8 v14, v11, 0x18

    .line 184
    new-array v15, v9, [B

    const/16 v16, 0x1b

    .line 185
    aput-byte v16, v15, v12

    const/16 v16, 0x2a

    .line 186
    aput-byte v16, v15, v13

    const/16 v16, 0x21

    const/16 v17, 0x2

    .line 187
    aput-byte v16, v15, v17

    move/from16 v16, v1

    int-to-byte v1, v2

    const/16 v17, 0x3

    .line 188
    aput-byte v1, v15, v17

    int-to-byte v1, v8

    .line 189
    aput-byte v1, v15, v16

    move v1, v3

    :goto_1
    if-ge v1, v9, :cond_3

    add-int/lit8 v18, v1, -0x5

    .line 193
    rem-int/lit8 v19, v18, 0x3

    .line 194
    div-int/lit8 v18, v18, 0x3

    .line 195
    rem-int/lit8 v20, v18, 0x8

    rsub-int/lit8 v20, v20, 0x7

    move/from16 v21, v3

    shl-int v3, v13, v20

    const/16 v6, 0x8

    mul-int/lit8 v19, v19, 0x8

    add-int v19, v14, v19

    :goto_2
    if-ge v12, v6, :cond_2

    add-int v22, v19, v12

    mul-int v22, v22, v4

    .line 198
    div-int/lit8 v23, v18, 0x8

    add-int v22, v22, v23

    move/from16 v23, v6

    add-int/lit8 v6, v22, 0x8

    move/from16 v22, v13

    .line 200
    array-length v13, v0

    if-lt v6, v13, :cond_0

    goto :goto_3

    .line 204
    :cond_0
    aget-byte v6, v0, v6

    and-int/2addr v6, v3

    if-ne v6, v3, :cond_1

    .line 206
    aget-byte v6, v15, v1

    rsub-int/lit8 v13, v12, 0x7

    shl-int v13, v22, v13

    or-int/2addr v6, v13

    int-to-byte v6, v6

    aput-byte v6, v15, v1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    move/from16 v13, v22

    move/from16 v6, v23

    goto :goto_2

    :cond_2
    move/from16 v22, v13

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v21

    move/from16 v13, v22

    const/4 v6, 0x7

    const/4 v12, 0x0

    goto :goto_1

    :cond_3
    move/from16 v21, v3

    add-int/lit8 v3, v7, 0x5

    const/16 v1, 0xa

    .line 210
    aput-byte v1, v15, v3

    add-int/lit8 v11, v11, 0x1

    .line 211
    aput-object v15, v10, v11

    move/from16 v1, v16

    move/from16 v3, v21

    const/4 v6, 0x7

    const/4 v12, 0x0

    goto :goto_0

    :cond_4
    move/from16 v22, v13

    add-int/lit8 v5, v5, 0x1

    .line 213
    sget-object v0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->LINE_SPACING_30:[B

    aput-object v0, v10, v5

    return-object v10
.end method

.method public static initGSv0Command(II)[B
    .locals 6

    .line 89
    div-int/lit16 v0, p0, 0x100

    mul-int/lit16 v1, v0, 0x100

    sub-int v1, p0, v1

    .line 91
    div-int/lit16 v2, p1, 0x100

    mul-int/lit16 v3, v2, 0x100

    sub-int v3, p1, v3

    mul-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x8

    .line 94
    new-array p0, p0, [B

    const/16 p1, 0x1d

    const/4 v4, 0x0

    .line 95
    aput-byte p1, p0, v4

    const/4 p1, 0x1

    const/16 v5, 0x76

    .line 96
    aput-byte v5, p0, p1

    const/4 p1, 0x2

    const/16 v5, 0x30

    .line 97
    aput-byte v5, p0, p1

    const/4 p1, 0x3

    .line 98
    aput-byte v4, p0, p1

    const/4 p1, 0x4

    int-to-byte v1, v1

    .line 99
    aput-byte v1, p0, p1

    const/4 p1, 0x5

    int-to-byte v0, v0

    .line 100
    aput-byte v0, p0, p1

    const/4 p1, 0x6

    int-to-byte v0, v3

    .line 101
    aput-byte v0, p0, p1

    const/4 p1, 0x7

    int-to-byte v0, v2

    .line 102
    aput-byte v0, p0, p1

    return-object p0
.end method


# virtual methods
.method public connect()Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->connect()Lcom/dantsu/escposprinter/connection/DeviceConnection;

    return-object p0
.end method

.method public cutPaper()Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 736
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->send(I)V

    return-object p0

    :array_0
    .array-data 1
        0x1dt
        0x56t
        0x1t
    .end array-data
.end method

.method public disconnect()V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->disconnect()Lcom/dantsu/escposprinter/connection/DeviceConnection;

    return-void
.end method

.method public feedPaper(I)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 718
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    int-to-byte v1, p1

    const/4 v2, 0x3

    new-array v2, v2, [B

    const/16 v3, 0x1b

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    const/16 v3, 0x4a

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    const/4 v3, 0x2

    aput-byte v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 719
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0, p1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->send(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getCharsetEncoding()Lcom/dantsu/escposprinter/EscPosCharsetEncoding;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->charsetEncoding:Lcom/dantsu/escposprinter/EscPosCharsetEncoding;

    return-object v0
.end method

.method public newLine()Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 683
    invoke-virtual {p0, v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->newLine([B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    move-result-object v0

    return-object v0
.end method

.method public newLine([B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0xa

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 698
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->send()V

    if-eqz p1, :cond_1

    .line 701
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0, p1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public openCashBox()Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 751
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->send(I)V

    return-object p0

    :array_0
    .array-data 1
        0x1bt
        0x70t
        0x0t
        0x3ct
        -0x1t
    .end array-data
.end method

.method public printAllCharsetsEncodingCharacters()Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 515
    invoke-virtual {p0, v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printCharsetEncodingCharacters(I)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public printBarcode(Lcom/dantsu/escposprinter/barcode/Barcode;)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 11

    .line 607
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 611
    :cond_0
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/barcode/Barcode;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/barcode/Barcode;->getCodeLength()I

    move-result v1

    add-int/lit8 v2, v1, 0x4

    .line 613
    new-array v2, v2, [B

    .line 614
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/barcode/Barcode;->getBarcodeType()I

    move-result v3

    int-to-byte v3, v3

    int-to-byte v4, v1

    const/4 v5, 0x4

    new-array v6, v5, [B

    const/4 v7, 0x0

    const/16 v8, 0x1d

    aput-byte v8, v6, v7

    const/16 v9, 0x6b

    const/4 v10, 0x1

    aput-byte v9, v6, v10

    const/4 v9, 0x2

    aput-byte v3, v6, v9

    const/4 v3, 0x3

    aput-byte v4, v6, v3

    invoke-static {v6, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v7

    :goto_0
    if-ge v4, v1, :cond_1

    add-int/lit8 v5, v4, 0x4

    .line 617
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/barcode/Barcode;->getTextPosition()I

    move-result v1

    int-to-byte v1, v1

    new-array v4, v3, [B

    aput-byte v8, v4, v7

    const/16 v5, 0x48

    aput-byte v5, v4, v10

    aput-byte v1, v4, v9

    invoke-virtual {v0, v4}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 621
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/barcode/Barcode;->getColWidth()I

    move-result v1

    int-to-byte v1, v1

    new-array v4, v3, [B

    aput-byte v8, v4, v7

    const/16 v5, 0x77

    aput-byte v5, v4, v10

    aput-byte v1, v4, v9

    invoke-virtual {v0, v4}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 622
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/barcode/Barcode;->getHeight()I

    move-result p1

    int-to-byte p1, p1

    new-array v1, v3, [B

    aput-byte v8, v1, v7

    const/16 v3, 0x68

    aput-byte v3, v1, v10

    aput-byte p1, v1, v9

    invoke-virtual {v0, v1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 623
    iget-object p1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p1, v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    return-object p0
.end method

.method public printCharsetEncodingCharacters(I)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 6

    const-string v0, ":::: Charset n\u00b0"

    .line 528
    iget-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    .line 533
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    int-to-byte v2, p1

    const/4 v3, 0x3

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x1b

    aput-byte v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x74

    aput-byte v5, v3, v4

    const/4 v4, 0x2

    aput-byte v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 534
    iget-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_NORMAL:[B

    invoke-virtual {v1, v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 535
    iget-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_BLACK:[B

    invoke-virtual {v1, v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 536
    iget-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_REVERSE_OFF:[B

    invoke-virtual {v1, v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 537
    iget-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_WEIGHT_NORMAL:[B

    invoke-virtual {v1, v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 538
    iget-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_UNDERLINE_OFF:[B

    invoke-virtual {v1, v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 539
    iget-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_DOUBLE_STRIKE_OFF:[B

    invoke-virtual {v1, v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 540
    iget-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 541
    iget-object p1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 559
    iget-object p1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-virtual {p1, v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 560
    iget-object p1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->send()V
    :try_end_0
    .catch Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 562
    invoke-virtual {p1}, Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;->printStackTrace()V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        0x40t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5bt
        0x5ct
        0x5dt
        0x5et
        0x5ft
        0x60t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x7bt
        0x7ct
        0x7dt
        0x7et
        0x7ft
        -0x80t
        -0x7ft
        -0x7et
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        -0x76t
        -0x75t
        -0x74t
        -0x73t
        -0x72t
        -0x71t
        -0x70t
        -0x6ft
        -0x6et
        -0x6dt
        -0x6ct
        -0x6bt
        -0x6at
        -0x69t
        -0x68t
        -0x67t
        -0x66t
        -0x65t
        -0x64t
        -0x63t
        -0x62t
        -0x61t
        -0x60t
        -0x5ft
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
        -0x5at
        -0x59t
        -0x58t
        -0x57t
        -0x56t
        -0x55t
        -0x54t
        -0x53t
        -0x52t
        -0x51t
        -0x50t
        -0x4ft
        -0x4et
        -0x4dt
        -0x4ct
        -0x4bt
        -0x4at
        -0x49t
        -0x48t
        -0x47t
        -0x46t
        -0x45t
        -0x44t
        -0x43t
        -0x42t
        -0x41t
        -0x40t
        -0x3ft
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x35t
        -0x34t
        -0x33t
        -0x32t
        -0x31t
        -0x30t
        -0x2ft
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x25t
        -0x24t
        -0x23t
        -0x22t
        -0x21t
        -0x20t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0x15t
        -0x14t
        -0x13t
        -0x12t
        -0x11t
        -0x10t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x8t
        -0x7t
        -0x6t
        -0x5t
        -0x4t
        -0x3t
        -0x2t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0xat
        0xat
        0xat
        0xat
    .end array-data
.end method

.method public printCharsetsEncodingCharacters([I)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 3

    .line 521
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 522
    invoke-virtual {p0, v2}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printCharsetEncodingCharacters(I)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public printImage([B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 590
    :cond_0
    iget-boolean v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->useEscAsteriskCommand:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->convertGSv0ToEscAsterisk([B)[[B

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [[B

    aput-object p1, v0, v1

    move-object p1, v0

    .line 592
    :goto_0
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 593
    iget-object v3, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v3, v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 594
    iget-object v2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->send()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object p0
.end method

.method public printQRCode(ILjava/lang/String;I)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p3

    .line 637
    iget-object v2, v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    if-le v0, v3, :cond_2

    move v0, v3

    .line 649
    :cond_2
    :goto_0
    :try_start_0
    const-string v3, "UTF-8"

    move-object/from16 v4, p2

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 652
    array-length v4, v3

    const/4 v5, 0x3

    add-int/2addr v4, v5

    .line 653
    rem-int/lit16 v6, v4, 0x100

    .line 654
    div-int/lit16 v4, v4, 0x100

    .line 661
    iget-object v7, v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    move/from16 v8, p1

    int-to-byte v8, v8

    const/16 v9, 0x9

    new-array v9, v9, [B

    const/16 v10, 0x1d

    const/4 v11, 0x0

    aput-byte v10, v9, v11

    const/16 v12, 0x28

    aput-byte v12, v9, v2

    const/4 v13, 0x2

    const/16 v14, 0x6b

    aput-byte v14, v9, v13

    const/4 v15, 0x4

    aput-byte v15, v9, v5

    aput-byte v11, v9, v15

    const/16 v16, 0x5

    const/16 v17, 0x31

    aput-byte v17, v9, v16

    const/16 v18, 0x6

    const/16 v19, 0x41

    aput-byte v19, v9, v18

    const/16 v19, 0x7

    aput-byte v8, v9, v19

    const/16 v8, 0x8

    aput-byte v11, v9, v8

    invoke-virtual {v7, v9}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 662
    iget-object v7, v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    int-to-byte v0, v0

    new-array v9, v8, [B

    aput-byte v10, v9, v11

    aput-byte v12, v9, v2

    aput-byte v14, v9, v13

    aput-byte v5, v9, v5

    aput-byte v11, v9, v15

    aput-byte v17, v9, v16

    const/16 v20, 0x43

    aput-byte v20, v9, v18

    aput-byte v0, v9, v19

    invoke-virtual {v7, v9}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 663
    iget-object v0, v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    new-array v7, v8, [B

    fill-array-data v7, :array_0

    invoke-virtual {v0, v7}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 665
    array-length v0, v3

    add-int/2addr v0, v8

    new-array v0, v0, [B

    int-to-byte v6, v6

    int-to-byte v4, v4

    .line 666
    new-array v7, v8, [B

    aput-byte v10, v7, v11

    aput-byte v12, v7, v2

    aput-byte v14, v7, v13

    aput-byte v6, v7, v5

    aput-byte v4, v7, v15

    aput-byte v17, v7, v16

    const/16 v2, 0x50

    aput-byte v2, v7, v18

    const/16 v2, 0x30

    aput-byte v2, v7, v19

    invoke-static {v7, v11, v0, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    array-length v2, v3

    invoke-static {v3, v11, v0, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    iget-object v2, v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v2, v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 669
    iget-object v0, v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    invoke-virtual {v0, v2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 671
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 672
    new-instance v2, Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :array_0
    .array-data 1
        0x1dt
        0x28t
        0x6bt
        0x3t
        0x0t
        0x31t
        0x45t
        0x30t
    .end array-data

    :array_1
    .array-data 1
        0x1dt
        0x28t
        0x6bt
        0x3t
        0x0t
        0x31t
        0x51t
        0x30t
    .end array-data
.end method

.method public printText(Ljava/lang/String;)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, p1, v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printText(Ljava/lang/String;[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    move-result-object p1

    return-object p1
.end method

.method public printText(Ljava/lang/String;[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 366
    invoke-virtual {p0, p1, p2, v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printText(Ljava/lang/String;[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    move-result-object p1

    return-object p1
.end method

.method public printText(Ljava/lang/String;[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printText(Ljava/lang/String;[B[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    move-result-object p1

    return-object p1
.end method

.method public printText(Ljava/lang/String;[B[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 391
    invoke-virtual/range {v0 .. v5}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printText(Ljava/lang/String;[B[B[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    move-result-object p1

    return-object p1
.end method

.method public printText(Ljava/lang/String;[B[B[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 405
    invoke-virtual/range {v0 .. v6}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printText(Ljava/lang/String;[B[B[B[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    move-result-object p1

    return-object p1
.end method

.method public printText(Ljava/lang/String;[B[B[B[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 420
    invoke-virtual/range {v0 .. v7}, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printText(Ljava/lang/String;[B[B[B[B[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;

    move-result-object p1

    return-object p1
.end method

.method public printText(Ljava/lang/String;[B[B[B[B[B[B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 449
    sget-object p2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_NORMAL:[B

    :cond_1
    if-nez p3, :cond_2

    .line 452
    sget-object p3, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_BLACK:[B

    :cond_2
    if-nez p4, :cond_3

    .line 455
    sget-object p4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_REVERSE_OFF:[B

    :cond_3
    if-nez p5, :cond_4

    .line 458
    sget-object p5, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_WEIGHT_NORMAL:[B

    :cond_4
    if-nez p6, :cond_5

    .line 461
    sget-object p6, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_UNDERLINE_OFF:[B

    :cond_5
    if-nez p7, :cond_6

    .line 464
    sget-object p7, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_DOUBLE_STRIKE_OFF:[B

    .line 468
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->charsetEncoding:Lcom/dantsu/escposprinter/EscPosCharsetEncoding;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/EscPosCharsetEncoding;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 469
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    iget-object v1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->charsetEncoding:Lcom/dantsu/escposprinter/EscPosCharsetEncoding;

    invoke-virtual {v1}, Lcom/dantsu/escposprinter/EscPosCharsetEncoding;->getCommand()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 473
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextSize:[B

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_7

    .line 474
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0, p2}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 475
    iput-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextSize:[B

    .line 478
    :cond_7
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextDoubleStrike:[B

    invoke-static {p2, p7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_8

    .line 479
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p2, p7}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 480
    iput-object p7, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextDoubleStrike:[B

    .line 483
    :cond_8
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextUnderline:[B

    invoke-static {p2, p6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_9

    .line 484
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p2, p6}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 485
    iput-object p6, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextUnderline:[B

    .line 488
    :cond_9
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextBold:[B

    invoke-static {p2, p5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_a

    .line 489
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p2, p5}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 490
    iput-object p5, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextBold:[B

    .line 493
    :cond_a
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextColor:[B

    invoke-static {p2, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_b

    .line 494
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p2, p3}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 495
    iput-object p3, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextColor:[B

    .line 498
    :cond_b
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextReverseColor:[B

    invoke-static {p2, p4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_c

    .line 499
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p2, p4}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    .line 500
    iput-object p4, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->currentTextReverseColor:[B

    .line 503
    :cond_c
    iget-object p2, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {p2, p1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 506
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 507
    new-instance p2, Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;

    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public reset()Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    sget-object v1, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->RESET_PRINTER:[B

    invoke-virtual {v0, v1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    return-object p0
.end method

.method public setAlign([B)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->printerConnection:Lcom/dantsu/escposprinter/connection/DeviceConnection;

    invoke-virtual {v0, p1}, Lcom/dantsu/escposprinter/connection/DeviceConnection;->write([B)V

    return-object p0
.end method

.method public useEscAsteriskCommand(Z)Lcom/dantsu/escposprinter/EscPosPrinterCommands;
    .locals 0

    .line 575
    iput-boolean p1, p0, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->useEscAsteriskCommand:Z

    return-object p0
.end method
