.class public Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
.super Ljava/lang/Object;
.source "PrinterTextParserColumn.java"


# instance fields
.field private elements:[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

.field private textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 31
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 23
    new-array v3, v2, [Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    iput-object v3, v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->elements:[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    move-object/from16 v3, p1

    .line 32
    iput-object v3, v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    .line 33
    invoke-virtual {v3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getTextParser()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    move-result-object v8

    .line 36
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextUnderline()[B

    move-result-object v6

    .line 37
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextDoubleStrike()[B

    move-result-object v7

    .line 38
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextColor()[B

    move-result-object v3

    .line 39
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextReverseColor()[B

    move-result-object v4

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v10, 0x1

    const-string v11, "L"

    const/4 v12, 0x2

    if-le v5, v12, :cond_3

    const/4 v5, 0x3

    .line 45
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :goto_0
    const/4 v13, -0x1

    goto :goto_1

    :sswitch_0
    const-string v14, "[R]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_0

    :cond_0
    move v13, v12

    goto :goto_1

    :sswitch_1
    const-string v14, "[L]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_0

    :cond_1
    move v13, v10

    goto :goto_1

    :sswitch_2
    const-string v14, "[C]"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    goto :goto_0

    :cond_2
    move v13, v2

    :goto_1
    packed-switch v13, :pswitch_data_0

    goto :goto_2

    .line 49
    :pswitch_0
    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 50
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    :goto_2
    move-object v13, v11

    .line 55
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 58
    iget-object v14, v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    invoke-virtual {v14}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getNbrColumns()I

    move-result v14

    const-string v15, ">"

    const-string v2, "<"

    if-ne v14, v10, :cond_a

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_a

    .line 61
    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v12, v14, 0x1

    .line 62
    invoke-virtual {v5, v15, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v12

    add-int/2addr v12, v10

    if-ge v14, v12, :cond_a

    .line 65
    new-instance v10, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;

    invoke-virtual {v5, v14, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v10}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getTagName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v17

    const-string v9, "img"

    move-object/from16 v18, v3

    const-string v3, "barcode"

    move-object/from16 v19, v4

    const-string v4, "qrcode"

    sparse-switch v17, :sswitch_data_1

    :goto_4
    const/4 v14, -0x1

    goto :goto_5

    :sswitch_3
    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    goto :goto_4

    :cond_4
    const/4 v14, 0x2

    goto :goto_5

    :sswitch_4
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    goto :goto_4

    :cond_5
    const/4 v14, 0x1

    goto :goto_5

    :sswitch_5
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    goto :goto_4

    :cond_6
    const/4 v14, 0x0

    :goto_5
    packed-switch v14, :pswitch_data_1

    goto/16 :goto_9

    .line 71
    :pswitch_1
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v6

    const-string v6, "</"

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    sub-int v14, v14, v20

    move-object/from16 v20, v7

    .line 74
    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 75
    invoke-virtual {v10}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2

    :goto_6
    const/4 v2, -0x1

    goto :goto_7

    :sswitch_6
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_6

    :cond_7
    const/4 v2, 0x2

    goto :goto_7

    :sswitch_7
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x1

    goto :goto_7

    :sswitch_8
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    :goto_7
    packed-switch v2, :pswitch_data_2

    goto :goto_8

    .line 77
    :pswitch_2
    invoke-virtual {v5, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v13, v1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendImage(Ljava/lang/String;Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    goto :goto_8

    .line 80
    :pswitch_3
    invoke-virtual {v10}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getAttributes()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v5, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v13, v1, v2}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendBarcode(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    goto :goto_8

    .line 83
    :pswitch_4
    invoke-virtual {v10}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getAttributes()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v5, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v13, v1, v2}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendQRCode(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    :goto_8
    return-void

    :cond_a
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    :goto_9
    move-object/from16 v17, v6

    move-object/from16 v20, v7

    :cond_b
    const/4 v3, 0x0

    .line 99
    :goto_a
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 102
    invoke-virtual {v1, v15, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    goto :goto_b

    .line 104
    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    move v6, v5

    .line 107
    :goto_b
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendString(Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    if-ne v6, v5, :cond_18

    .line 227
    iget-object v1, v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    invoke-virtual {v1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getNbrCharColumn()I

    move-result v1

    .line 228
    iget-object v2, v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    invoke-virtual {v2}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getNbrCharForgetted()I

    move-result v2

    .line 229
    iget-object v3, v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    invoke-virtual {v3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getNbrCharColumnExceeded()I

    move-result v3

    .line 234
    iget-object v4, v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->elements:[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    array-length v6, v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_c
    if-ge v7, v6, :cond_d

    aget-object v10, v4, v7

    .line 235
    invoke-interface {v10}, Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;->length()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 238
    :cond_d
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_3

    goto :goto_d

    :sswitch_9
    const-string v4, "R"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_d

    :cond_e
    const/4 v5, 0x2

    goto :goto_d

    :sswitch_a
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_d

    :cond_f
    const/4 v5, 0x1

    goto :goto_d

    :sswitch_b
    const-string v4, "C"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_d

    :cond_10
    const/4 v5, 0x0

    :goto_d
    packed-switch v5, :pswitch_data_3

    const/4 v1, 0x0

    :goto_e
    const/4 v4, 0x0

    goto :goto_f

    :pswitch_5
    sub-int/2addr v1, v9

    move v4, v1

    const/4 v1, 0x0

    goto :goto_f

    :pswitch_6
    sub-int/2addr v1, v9

    goto :goto_e

    :pswitch_7
    int-to-float v4, v1

    int-to-float v5, v9

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 243
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int/2addr v1, v9

    sub-int/2addr v1, v4

    :goto_f
    if-lez v2, :cond_11

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, 0x1

    :cond_11
    move v9, v2

    if-gez v3, :cond_13

    add-int/2addr v4, v3

    const/4 v3, 0x1

    if-ge v4, v3, :cond_12

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v1, v4

    move v10, v3

    goto :goto_10

    :cond_12
    move v10, v4

    :goto_10
    const/4 v3, 0x0

    goto :goto_11

    :cond_13
    move v10, v4

    :goto_11
    if-gez v10, :cond_14

    add-int/2addr v3, v10

    const/4 v10, 0x0

    :cond_14
    if-gez v1, :cond_15

    add-int/2addr v3, v1

    const/16 v16, 0x0

    goto :goto_12

    :cond_15
    move/from16 v16, v1

    :goto_12
    move v11, v3

    if-lez v10, :cond_16

    .line 275
    invoke-static {v10}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->generateSpace(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_NORMAL:[B

    sget-object v5, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_WEIGHT_NORMAL:[B

    move-object/from16 v6, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->prependString(Ljava/lang/String;[B[B[B[B[B[B)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    :cond_16
    if-lez v16, :cond_17

    .line 278
    invoke-static/range {v16 .. v16}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->generateSpace(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_NORMAL:[B

    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextColor()[B

    move-result-object v3

    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextReverseColor()[B

    move-result-object v4

    sget-object v5, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_WEIGHT_NORMAL:[B

    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextUnderline()[B

    move-result-object v6

    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextDoubleStrike()[B

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendString(Ljava/lang/String;[B[B[B[B[B[B)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    goto :goto_13

    :cond_17
    move-object/from16 v0, p0

    .line 284
    :goto_13
    iget-object v1, v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    .line 285
    invoke-virtual {v1, v9}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->setNbrCharForgetted(I)Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    move-result-object v1

    .line 286
    invoke-virtual {v1, v11}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->setNbrCharColumnExceeded(I)Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    return-void

    :cond_18
    const/4 v3, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 114
    new-instance v7, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v7}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getTagName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->isTagTextFormat(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 117
    invoke-virtual {v7}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->isCloseTag()Z

    move-result v4

    const-string v9, "font"

    const-string v10, "u"

    const-string v12, "b"

    if-eqz v4, :cond_1c

    .line 118
    invoke-virtual {v7}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_4

    :goto_14
    move v4, v5

    goto :goto_15

    :sswitch_c
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto :goto_14

    :cond_19
    const/4 v4, 0x2

    goto :goto_15

    :sswitch_d
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_14

    :cond_1a
    move v4, v3

    goto :goto_15

    :sswitch_e
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto :goto_14

    :cond_1b
    const/4 v4, 0x0

    :goto_15
    packed-switch v4, :pswitch_data_4

    goto/16 :goto_1b

    .line 127
    :pswitch_8
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->dropLastTextSize()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 128
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->dropLastTextColor()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 129
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->dropLastTextReverseColor()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto/16 :goto_1b

    .line 123
    :pswitch_9
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->dropLastTextUnderline()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 124
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->dropLastTextDoubleStrike()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto/16 :goto_1b

    .line 120
    :pswitch_a
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->dropTextBold()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto/16 :goto_1b

    .line 133
    :cond_1c
    invoke-virtual {v7}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_5

    :goto_16
    move v4, v5

    goto :goto_17

    :sswitch_f
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_16

    :cond_1d
    const/4 v4, 0x2

    goto :goto_17

    :sswitch_10
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_16

    :cond_1e
    move v4, v3

    goto :goto_17

    :sswitch_11
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_16

    :cond_1f
    const/4 v4, 0x0

    :goto_17
    const-string v9, "normal"

    packed-switch v4, :pswitch_data_5

    goto/16 :goto_1b

    .line 155
    :pswitch_b
    const-string v4, "size"

    invoke-virtual {v7, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 156
    invoke-virtual {v7, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_6

    packed-switch v10, :pswitch_data_6

    goto/16 :goto_18

    :pswitch_c
    const-string v9, "big-6"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 183
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_6:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto/16 :goto_19

    .line 156
    :pswitch_d
    const-string v9, "big-5"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 180
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_5:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_19

    .line 156
    :pswitch_e
    const-string v9, "big-4"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 177
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_4:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_19

    .line 156
    :pswitch_f
    const-string v9, "big-3"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 174
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_3:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_19

    .line 156
    :pswitch_10
    const-string v9, "big-2"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 171
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG_2:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_19

    .line 156
    :sswitch_12
    const-string v9, "wide"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 165
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_DOUBLE_WIDTH:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_19

    .line 156
    :sswitch_13
    const-string v9, "tall"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 162
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_DOUBLE_HEIGHT:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_19

    .line 156
    :sswitch_14
    const-string v9, "big"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 168
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_BIG:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_19

    .line 156
    :sswitch_15
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 159
    :cond_20
    :goto_18
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_SIZE_NORMAL:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_19

    .line 187
    :cond_21
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextSize()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextSize([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 190
    :goto_19
    const-string v4, "color"

    invoke-virtual {v7, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_23

    .line 191
    invoke-virtual {v7, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_7

    goto :goto_1a

    :sswitch_16
    const-string v7, "bg-black"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 198
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_BLACK:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 199
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_REVERSE_ON:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextReverseColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto/16 :goto_1b

    .line 191
    :sswitch_17
    const-string v7, "black"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1a

    :sswitch_18
    const-string v7, "red"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 202
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_RED:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 203
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_REVERSE_OFF:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextReverseColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto/16 :goto_1b

    .line 191
    :sswitch_19
    const-string v7, "bg-red"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 206
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_RED:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 207
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_REVERSE_ON:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextReverseColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_1b

    .line 194
    :cond_22
    :goto_1a
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_BLACK:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 195
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_COLOR_REVERSE_OFF:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextReverseColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_1b

    .line 211
    :cond_23
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextColor()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 212
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextReverseColor()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextReverseColor([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_1b

    .line 138
    :pswitch_11
    const-string v4, "type"

    invoke-virtual {v7, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 139
    invoke-virtual {v7, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const-string v7, "double"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_25

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_1b

    .line 141
    :cond_24
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_UNDERLINE_LARGE:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextUnderline([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 142
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextDoubleStrike()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextDoubleStrike([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_1b

    .line 145
    :cond_25
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextUnderline()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextUnderline([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 146
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_DOUBLE_STRIKE_ON:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextDoubleStrike([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_1b

    .line 150
    :cond_26
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_UNDERLINE_LARGE:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextUnderline([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 151
    invoke-virtual {v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextDoubleStrike()[B

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextDoubleStrike([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    goto :goto_1b

    .line 135
    :pswitch_12
    sget-object v4, Lcom/dantsu/escposprinter/EscPosPrinterCommands;->TEXT_WEIGHT_BOLD:[B

    invoke-virtual {v8, v4}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->addTextBold([B)Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    :goto_1b
    move v4, v6

    goto :goto_1c

    .line 219
    :cond_27
    invoke-direct {v0, v2}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendString(Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    add-int/lit8 v4, v4, 0x1

    :goto_1c
    move v3, v4

    goto/16 :goto_a

    :sswitch_data_0
    .sparse-switch
        0x15e15 -> :sswitch_2
        0x15f2c -> :sswitch_1
        0x15fe6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x38b73c72 -> :sswitch_5
        -0x13e21780 -> :sswitch_4
        0x197c3 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x38b73c72 -> :sswitch_8
        -0x13e21780 -> :sswitch_7
        0x197c3 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x43 -> :sswitch_b
        0x4c -> :sswitch_a
        0x52 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0x62 -> :sswitch_e
        0x75 -> :sswitch_d
        0x300c4f -> :sswitch_c
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        0x62 -> :sswitch_11
        0x75 -> :sswitch_10
        0x300c4f -> :sswitch_f
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_b
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x3df94319 -> :sswitch_15
        0x17d00 -> :sswitch_14
        0x3634ad -> :sswitch_13
        0x37aed3 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x59642a5
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x530370f7 -> :sswitch_19
        0x1b891 -> :sswitch_18
        0x5978fff -> :sswitch_17
        0x5f36a877 -> :sswitch_16
    .end sparse-switch
.end method

.method private appendBarcode(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 322
    new-instance v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendElement(Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object p1

    return-object p1
.end method

.method private appendElement(Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->elements:[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    const/4 v2, 0x0

    .line 343
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->elements:[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    array-length v0, v0

    aput-object p1, v1, v0

    .line 345
    iput-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->elements:[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    return-object p0
.end method

.method private appendImage(Ljava/lang/String;Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 1

    .line 314
    new-instance v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;

    invoke-direct {v0, p0, p1, p2}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendElement(Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object p1

    return-object p1
.end method

.method private appendQRCode(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 330
    new-instance v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserQRCode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserQRCode;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendElement(Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object p1

    return-object p1
.end method

.method private appendString(Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 9

    .line 300
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getTextParser()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextSize()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextColor()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextReverseColor()[B

    move-result-object v5

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextBold()[B

    move-result-object v6

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextUnderline()[B

    move-result-object v7

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextDoubleStrike()[B

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendString(Ljava/lang/String;[B[B[B[B[B[B)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object p1

    return-object p1
.end method

.method private appendString(Ljava/lang/String;[B[B[B[B[B[B)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 9

    .line 305
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getTextParser()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    .line 306
    new-instance v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;[B[B[B[B[B[B)V

    invoke-direct {p0, v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->appendElement(Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object v0

    return-object v0
.end method

.method private static generateSpace(I)Ljava/lang/String;
    .locals 3

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 16
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prependBarcode(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 318
    new-instance v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->prependElement(Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object p1

    return-object p1
.end method

.method private prependElement(Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->elements:[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    const/4 v3, 0x0

    .line 335
    aput-object p1, v1, v3

    .line 336
    array-length p1, v0

    invoke-static {v0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    iput-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->elements:[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    return-object p0
.end method

.method private prependImage(Ljava/lang/String;Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 1

    .line 310
    new-instance v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;

    invoke-direct {v0, p0, p1, p2}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserImg;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->prependElement(Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object p1

    return-object p1
.end method

.method private prependQRCode(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;
        }
    .end annotation

    .line 326
    new-instance v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserBarcode;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->prependElement(Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object p1

    return-object p1
.end method

.method private prependString(Ljava/lang/String;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 9

    .line 291
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getTextParser()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextSize()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextColor()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextReverseColor()[B

    move-result-object v5

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextBold()[B

    move-result-object v6

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextUnderline()[B

    move-result-object v7

    invoke-virtual {v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getLastTextDoubleStrike()[B

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->prependString(Ljava/lang/String;[B[B[B[B[B[B)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object p1

    return-object p1
.end method

.method private prependString(Ljava/lang/String;[B[B[B[B[B[B)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 9

    .line 296
    new-instance v0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserString;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;Ljava/lang/String;[B[B[B[B[B[B)V

    invoke-direct {p0, v0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->prependElement(Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;)Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getElements()[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->elements:[Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;

    return-object v0
.end method

.method public getLine()Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;->textParserLine:Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;

    return-object v0
.end method
