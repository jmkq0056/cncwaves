.class public abstract Lcom/example/digitalkiosk/msprintsdk/PrintCmd;
.super Ljava/lang/Object;
.source "PrintCmd.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckProductinformation([B)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1297
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1299
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 1301
    const-string p0, ""

    return-object p0

    .line 1303
    :cond_0
    const-string p0, "Failed to get printer product information!"

    return-object p0
.end method

.method public static CheckStatus([B)I
    .locals 6

    const/4 v0, 0x0

    .line 1175
    aget-byte v1, p0, v0

    const/16 v2, 0x16

    and-int/2addr v1, v2

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const/4 v1, 0x1

    .line 1177
    aget-byte v1, p0, v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/4 v4, 0x3

    if-ne v1, v2, :cond_1

    return v4

    .line 1179
    :cond_1
    aget-byte v1, p0, v3

    and-int/lit8 v3, v1, 0x8

    const/16 v5, 0x8

    if-ne v3, v5, :cond_2

    return v2

    :cond_2
    and-int/lit8 v2, v1, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 p0, 0x6

    return p0

    .line 1185
    :cond_4
    aget-byte p0, p0, v4

    and-int/lit8 v1, p0, 0x60

    const/16 v2, 0x60

    if-ne v1, v2, :cond_5

    const/4 p0, 0x7

    return p0

    :cond_5
    const/16 v1, 0xc

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_6

    return v5

    :cond_6
    return v0
.end method

.method public static CheckStatus1(B)I
    .locals 1

    const/16 v0, 0x16

    and-int/2addr p0, v0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static CheckStatus2(B)I
    .locals 1

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static CheckStatus3(B)I
    .locals 2

    and-int/lit8 v0, p0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    and-int/lit8 v0, p0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static CheckStatus4(B)I
    .locals 2

    and-int/lit8 v0, p0, 0x60

    const/16 v1, 0x60

    if-ne v0, v1, :cond_0

    const/4 p0, 0x7

    return p0

    :cond_0
    const/16 v0, 0xc

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static CheckStatus5(B)I
    .locals 4

    and-int/lit16 v0, p0, 0x80

    const/4 v1, 0x4

    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, p0, 0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 p0, 0x5

    return p0

    :cond_1
    and-int/lit8 v0, p0, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    const/4 p0, 0x6

    return p0

    :cond_2
    and-int/lit8 v0, p0, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    const/4 p0, 0x7

    return p0

    :cond_3
    and-int/2addr p0, v1

    if-ne p0, v1, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static GetProductinformation(I)[B
    .locals 3

    const/4 v0, 0x3

    .line 1278
    new-array v0, v0, [B

    const/16 v1, 0x1d

    const/4 v2, 0x0

    .line 1281
    :try_start_0
    aput-byte v1, v0, v2

    const/16 v1, 0x49

    const/4 v2, 0x1

    .line 1282
    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 1283
    aput-byte p0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1285
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static GetSDKinformation()Ljava/lang/String;
    .locals 1

    .line 1313
    const-string v0, "V3.0.0.0"

    return-object v0
.end method

.method public static GetStatus()[B
    .locals 6

    const/16 v0, 0xc

    .line 1069
    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 1072
    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/4 v3, 0x4

    .line 1073
    aput-byte v3, v0, v1

    const/4 v4, 0x2

    .line 1074
    aput-byte v1, v0, v4

    const/4 v1, 0x3

    .line 1076
    aput-byte v2, v0, v1

    .line 1077
    aput-byte v3, v0, v3

    const/4 v5, 0x5

    .line 1078
    aput-byte v4, v0, v5

    const/4 v4, 0x6

    .line 1080
    aput-byte v2, v0, v4

    const/4 v4, 0x7

    .line 1081
    aput-byte v3, v0, v4

    const/16 v4, 0x8

    .line 1082
    aput-byte v1, v0, v4

    const/16 v1, 0x9

    .line 1084
    aput-byte v2, v0, v1

    const/16 v1, 0xa

    .line 1085
    aput-byte v3, v0, v1

    const/16 v1, 0xb

    .line 1086
    aput-byte v3, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1089
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetStatus1()[B
    .locals 3

    const/4 v0, 0x3

    .line 1096
    :try_start_0
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 1099
    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 1100
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    .line 1101
    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetStatus2()[B
    .locals 3

    const/4 v0, 0x3

    .line 1111
    :try_start_0
    new-array v0, v0, [B

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 1114
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 1115
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    .line 1116
    aput-byte v1, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetStatus3()[B
    .locals 4

    const/4 v0, 0x3

    .line 1126
    :try_start_0
    new-array v1, v0, [B

    const/16 v2, 0x10

    const/4 v3, 0x0

    .line 1129
    aput-byte v2, v1, v3

    const/4 v2, 0x4

    const/4 v3, 0x1

    .line 1130
    aput-byte v2, v1, v3

    const/4 v2, 0x2

    .line 1131
    aput-byte v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 1134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetStatus4()[B
    .locals 3

    const/4 v0, 0x3

    .line 1141
    :try_start_0
    new-array v0, v0, [B

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 1144
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 1145
    aput-byte v1, v0, v2

    const/4 v2, 0x2

    .line 1146
    aput-byte v1, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1149
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static GetStatus5()[B
    .locals 3

    const/4 v0, 0x3

    .line 1156
    :try_start_0
    new-array v0, v0, [B

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 1159
    aput-byte v1, v0, v2

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 1160
    aput-byte v1, v0, v2

    const/4 v1, 0x5

    const/4 v2, 0x2

    .line 1161
    aput-byte v1, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static JNAByteToString([B)Ljava/lang/String;
    .locals 6

    .line 1748
    array-length v0, p0

    .line 1749
    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1751
    aget-byte v3, p0, v2

    add-int/lit16 v3, v3, 0x100

    rem-int/lit16 v3, v3, 0x100

    shr-int/lit8 v4, v3, 0x4

    .line 1753
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%x"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1754
    rem-int/lit8 v3, v3, 0x10

    .line 1755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1757
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static JNAByteToString([BII)Ljava/lang/String;
    .locals 5

    .line 1762
    const-string v0, "%x"

    .line 1765
    const-string v1, ""

    :goto_0
    if-ge p1, p2, :cond_0

    .line 1769
    :try_start_0
    aget-byte v2, p0, p1

    add-int/lit16 v2, v2, 0x100

    rem-int/lit16 v2, v2, 0x100

    shr-int/lit8 v3, v2, 0x4

    .line 1771
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1772
    rem-int/lit8 v2, v2, 0x10

    .line 1773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 1776
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1779
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static JNAStringToByte(Ljava/lang/String;I)[B
    .locals 6

    .line 1719
    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    .line 1725
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    .line 1726
    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x2

    .line 1729
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1730
    invoke-static {v2, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v4, v2

    int-to-byte v2, v4

    .line 1731
    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static Print1Dbar(IIIIILjava/lang/String;)[B
    .locals 19

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v4, 0x40

    .line 725
    new-array v4, v4, [B

    const/4 v5, 0x6

    const/4 v6, 0x2

    if-lt v0, v6, :cond_0

    if-le v0, v5, :cond_1

    :cond_0
    move v0, v6

    :cond_1
    const/16 v7, 0x18

    if-lt v1, v7, :cond_2

    const/16 v8, 0xfa

    if-le v1, v8, :cond_3

    :cond_2
    move v1, v7

    :cond_3
    const/16 v7, 0xa

    move/from16 v8, p4

    if-le v8, v7, :cond_4

    move v8, v7

    :cond_4
    const/4 v9, 0x0

    const/16 v10, 0x1d

    .line 737
    aput-byte v10, v4, v9

    const/16 v11, 0x77

    const/4 v12, 0x1

    .line 738
    aput-byte v11, v4, v12

    int-to-byte v0, v0

    .line 739
    aput-byte v0, v4, v6

    const/4 v0, 0x3

    .line 740
    aput-byte v10, v4, v0

    const/16 v11, 0x68

    const/4 v13, 0x4

    .line 741
    aput-byte v11, v4, v13

    int-to-byte v1, v1

    const/4 v11, 0x5

    .line 742
    aput-byte v1, v4, v11

    .line 744
    aput-byte v10, v4, v5

    const/16 v1, 0x66

    const/4 v14, 0x7

    .line 745
    aput-byte v1, v4, v14

    const/16 v1, 0x8

    if-le v2, v12, :cond_5

    .line 747
    aput-byte v9, v4, v1

    goto :goto_0

    :cond_5
    int-to-byte v2, v2

    .line 749
    aput-byte v2, v4, v1

    :goto_0
    const/16 v2, 0x9

    .line 750
    aput-byte v10, v4, v2

    const/16 v2, 0x48

    .line 751
    aput-byte v2, v4, v7

    const/16 v15, 0xb

    if-le v3, v0, :cond_6

    .line 753
    aput-byte v9, v4, v15

    goto :goto_1

    :cond_6
    int-to-byte v3, v3

    .line 755
    aput-byte v3, v4, v15

    :goto_1
    const/16 v3, 0xc

    .line 756
    aput-byte v10, v4, v3

    const/16 v10, 0x6b

    const/16 v16, 0xd

    .line 757
    aput-byte v10, v4, v16

    .line 759
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    move/from16 p0, v0

    .line 760
    array-length v0, v10

    const/16 v16, 0x10

    move/from16 p1, v1

    const/16 v1, 0x39

    move/from16 p2, v2

    const/16 v2, 0x30

    const/16 v17, 0xf

    const/16 v18, 0xe

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_19

    :pswitch_0
    const/16 v3, 0x49

    .line 879
    aput-byte v3, v4, v18

    move v3, v9

    :goto_2
    if-ge v3, v0, :cond_8

    .line 881
    aget-byte v5, v10, v3

    if-lt v5, v2, :cond_8

    if-le v5, v1, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    const/16 v1, 0x12

    const/16 v5, 0x11

    const/16 v8, 0x7b

    if-ne v3, v0, :cond_b

    .line 885
    rem-int/lit8 v3, v0, 0x2

    if-ne v3, v12, :cond_9

    .line 886
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v11

    int-to-byte v3, v3

    aput-byte v3, v4, v17

    goto :goto_4

    .line 888
    :cond_9
    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v4, v17

    .line 889
    :goto_4
    aput-byte v8, v4, v16

    const/16 v3, 0x43

    .line 890
    aput-byte v3, v4, v5

    :goto_5
    if-ge v9, v0, :cond_2b

    add-int/lit8 v3, v9, 0x1

    if-lt v3, v0, :cond_a

    add-int/lit8 v3, v1, 0x1

    .line 893
    aput-byte v8, v4, v1

    add-int/lit8 v5, v1, 0x2

    const/16 v6, 0x42

    .line 894
    aput-byte v6, v4, v3

    add-int/lit8 v1, v1, 0x3

    .line 895
    aget-byte v3, v10, v9

    aput-byte v3, v4, v5

    goto :goto_6

    :cond_a
    add-int/lit8 v5, v1, 0x1

    .line 898
    aget-byte v6, v10, v9

    sub-int/2addr v6, v2

    mul-int/2addr v6, v7

    aget-byte v3, v10, v3

    sub-int/2addr v3, v2

    add-int/2addr v6, v3

    int-to-byte v3, v6

    aput-byte v3, v4, v1

    move v1, v5

    :goto_6
    add-int/lit8 v9, v9, 0x2

    goto :goto_5

    :cond_b
    add-int/lit8 v2, v0, 0x2

    int-to-byte v2, v2

    .line 903
    aput-byte v2, v4, v17

    .line 904
    aput-byte v8, v4, v16

    const/16 v2, 0x42

    .line 905
    aput-byte v2, v4, v5

    :goto_7
    if-ge v9, v0, :cond_2b

    add-int/lit8 v2, v1, 0x1

    .line 907
    aget-byte v3, v10, v9

    aput-byte v3, v4, v1

    add-int/lit8 v9, v9, 0x1

    move v1, v2

    goto :goto_7

    .line 872
    :pswitch_1
    aput-byte p2, v4, v18

    int-to-byte v1, v0

    .line 873
    aput-byte v1, v4, v17

    :goto_8
    if-ge v9, v0, :cond_2b

    add-int/lit8 v1, v16, 0x1

    .line 875
    aget-byte v2, v10, v9

    aput-byte v2, v4, v16

    add-int/lit8 v9, v9, 0x1

    move/from16 v16, v1

    goto :goto_8

    .line 859
    :pswitch_2
    aput-byte p1, v4, v18

    if-ge v0, v14, :cond_c

    goto/16 :goto_19

    :cond_c
    move v0, v9

    :goto_9
    if-ge v0, v14, :cond_e

    .line 863
    aget-byte v3, v10, v0

    if-lt v3, v2, :cond_2b

    if-le v3, v1, :cond_d

    goto/16 :goto_19

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    move v0, v9

    :goto_a
    if-ge v0, v14, :cond_f

    add-int/lit8 v1, v17, 0x1

    .line 867
    aget-byte v2, v10, v0

    aput-byte v2, v4, v17

    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v1

    goto :goto_a

    .line 869
    :cond_f
    aput-byte v9, v4, v17

    return-object v4

    .line 846
    :pswitch_3
    aput-byte v14, v4, v18

    if-ge v0, v3, :cond_10

    goto/16 :goto_19

    :cond_10
    move v0, v9

    :goto_b
    if-ge v0, v3, :cond_12

    .line 850
    aget-byte v5, v10, v0

    if-lt v5, v2, :cond_2b

    if-le v5, v1, :cond_11

    goto/16 :goto_19

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_12
    move v0, v9

    :goto_c
    if-ge v0, v3, :cond_13

    add-int/lit8 v1, v17, 0x1

    .line 854
    aget-byte v2, v10, v0

    aput-byte v2, v4, v17

    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v1

    goto :goto_c

    .line 856
    :cond_13
    aput-byte v9, v4, v17

    return-object v4

    .line 839
    :pswitch_4
    aput-byte v5, v4, v18

    move v1, v9

    :goto_d
    if-ge v1, v0, :cond_14

    add-int/lit8 v2, v17, 0x1

    .line 841
    aget-byte v3, v10, v1

    aput-byte v3, v4, v17

    add-int/lit8 v1, v1, 0x1

    move/from16 v17, v2

    goto :goto_d

    .line 843
    :cond_14
    aput-byte v9, v4, v17

    return-object v4

    .line 826
    :pswitch_5
    aput-byte v11, v4, v18

    move v3, v9

    :goto_e
    if-ge v3, v0, :cond_16

    .line 828
    aget-byte v5, v10, v3

    if-lt v5, v2, :cond_2b

    if-le v5, v1, :cond_15

    goto/16 :goto_19

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 831
    :cond_16
    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v12, :cond_17

    add-int/lit8 v0, v0, -0x1

    :cond_17
    move v1, v9

    :goto_f
    if-ge v1, v0, :cond_18

    add-int/lit8 v2, v17, 0x1

    .line 834
    aget-byte v3, v10, v1

    aput-byte v3, v4, v17

    add-int/lit8 v1, v1, 0x1

    move/from16 v17, v2

    goto :goto_f

    .line 836
    :cond_18
    aput-byte v9, v4, v17

    return-object v4

    .line 819
    :pswitch_6
    aput-byte v13, v4, v18

    move v1, v9

    :goto_10
    if-ge v1, v0, :cond_19

    add-int/lit8 v2, v17, 0x1

    .line 821
    aget-byte v3, v10, v1

    aput-byte v3, v4, v17

    add-int/lit8 v1, v1, 0x1

    move/from16 v17, v2

    goto :goto_10

    .line 823
    :cond_19
    aput-byte v9, v4, v17

    return-object v4

    .line 806
    :pswitch_7
    aput-byte p0, v4, v18

    if-ge v0, v14, :cond_1a

    goto/16 :goto_19

    :cond_1a
    move v0, v9

    :goto_11
    if-ge v0, v14, :cond_1c

    .line 810
    aget-byte v3, v10, v0

    if-lt v3, v2, :cond_2b

    if-le v3, v1, :cond_1b

    goto/16 :goto_19

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1c
    move v0, v9

    :goto_12
    if-ge v0, v14, :cond_1d

    add-int/lit8 v1, v17, 0x1

    .line 814
    aget-byte v2, v10, v0

    aput-byte v2, v4, v17

    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v1

    goto :goto_12

    .line 816
    :cond_1d
    aput-byte v9, v4, v17

    return-object v4

    .line 793
    :pswitch_8
    aput-byte v6, v4, v18

    if-ge v0, v3, :cond_1e

    goto/16 :goto_19

    :cond_1e
    move v0, v9

    :goto_13
    if-ge v0, v3, :cond_20

    .line 797
    aget-byte v5, v10, v0

    if-lt v5, v2, :cond_2b

    if-le v5, v1, :cond_1f

    goto/16 :goto_19

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_20
    move v0, v9

    :goto_14
    if-ge v0, v3, :cond_21

    add-int/lit8 v1, v17, 0x1

    .line 801
    aget-byte v2, v10, v0

    aput-byte v2, v4, v17

    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v1

    goto :goto_14

    .line 803
    :cond_21
    aput-byte v9, v4, v17

    return-object v4

    .line 778
    :pswitch_9
    aput-byte v12, v4, v18

    if-ge v0, v15, :cond_22

    goto :goto_19

    .line 781
    :cond_22
    aget-byte v0, v10, v9

    if-eq v0, v2, :cond_23

    goto :goto_19

    :cond_23
    :goto_15
    if-ge v12, v15, :cond_25

    .line 784
    aget-byte v0, v10, v12

    if-lt v0, v2, :cond_2b

    if-le v0, v1, :cond_24

    goto :goto_19

    :cond_24
    add-int/lit8 v12, v12, 0x1

    goto :goto_15

    :cond_25
    move v0, v9

    :goto_16
    if-ge v0, v15, :cond_26

    add-int/lit8 v1, v17, 0x1

    .line 788
    aget-byte v2, v10, v0

    aput-byte v2, v4, v17

    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v1

    goto :goto_16

    .line 790
    :cond_26
    aput-byte v9, v4, v17

    return-object v4

    .line 765
    :pswitch_a
    aput-byte v9, v4, v18

    if-ge v0, v15, :cond_27

    goto :goto_19

    :cond_27
    move v0, v9

    :goto_17
    if-ge v0, v15, :cond_29

    .line 769
    aget-byte v3, v10, v0

    if-lt v3, v2, :cond_2b

    if-le v3, v1, :cond_28

    goto :goto_19

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_29
    move v0, v9

    :goto_18
    if-ge v0, v15, :cond_2a

    add-int/lit8 v1, v17, 0x1

    .line 773
    aget-byte v2, v10, v0

    aput-byte v2, v4, v17

    add-int/lit8 v0, v0, 0x1

    move/from16 v17, v1

    goto :goto_18

    .line 775
    :cond_2a
    aput-byte v9, v4, v17

    :cond_2b
    :goto_19
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static PrintChargeRow()[B
    .locals 3

    const/4 v0, 0x2

    .line 497
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0xa

    .line 499
    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static PrintCutpaper(I)[B
    .locals 4

    const/4 v0, 0x3

    .line 535
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_0

    .line 538
    aput-byte v1, v0, v2

    const/16 v1, 0x69

    .line 539
    aput-byte v1, v0, v3

    goto :goto_0

    .line 541
    :cond_0
    aput-byte v1, v0, v2

    const/16 v1, 0x6d

    .line 542
    aput-byte v1, v0, v3

    :goto_0
    const/4 v1, 0x2

    int-to-byte p0, p0

    .line 544
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static PrintDataMatrix(Ljava/lang/String;I)[B
    .locals 1

    .line 1786
    :try_start_0
    sget-object v0, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {v0, p0, p1}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1PrintDataMatrix(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    .line 1788
    sget-object p1, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {p1}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1GetPrintDataA()Ljava/lang/String;

    move-result-object p1

    .line 1789
    invoke-static {p1, p0}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->JNAStringToByte(Ljava/lang/String;I)[B

    move-result-object p0

    .line 1790
    sget-object p1, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {p1}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1Release()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static PrintDiskImagefile(Ljava/lang/String;)[B
    .locals 11

    const/4 v1, 0x0

    .line 929
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 931
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 934
    :goto_0
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    .line 940
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "bmp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 941
    invoke-static {v2}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->convertToBlackWhite(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 942
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 943
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    mul-int p0, v6, v10

    .line 945
    new-array v4, p0, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move v9, v6

    .line 946
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 947
    invoke-static {v4, v6, v10}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintDiskImagefile([III)[B

    move-result-object p0

    goto :goto_1

    .line 950
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 951
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int p0, v5, v9

    .line 953
    new-array v3, p0, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v8, v5

    .line 954
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 955
    invoke-static {v3, v5, v9}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->PrintDiskImagefile([III)[B

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static PrintDiskImagefile([III)[B
    .locals 13

    .line 962
    div-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    .line 963
    rem-int/2addr p1, v1

    if-lez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    mul-int v2, v0, p2

    add-int/2addr v2, v1

    .line 967
    new-array v2, v2, [B

    const/16 v3, 0x1d

    const/4 v4, 0x0

    .line 969
    aput-byte v3, v2, v4

    const/16 v3, 0x76

    const/4 v5, 0x1

    .line 970
    aput-byte v3, v2, v5

    const/16 v3, 0x30

    const/4 v6, 0x2

    .line 971
    aput-byte v3, v2, v6

    const/4 v3, 0x3

    .line 972
    aput-byte v4, v2, v3

    int-to-byte v3, v0

    const/4 v6, 0x4

    .line 973
    aput-byte v3, v2, v6

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    const/4 v6, 0x5

    .line 974
    aput-byte v3, v2, v6

    int-to-byte v3, p2

    const/4 v6, 0x6

    .line 975
    aput-byte v3, v2, v6

    shr-int/lit8 v3, p2, 0x8

    int-to-byte v3, v3

    const/4 v6, 0x7

    .line 976
    aput-byte v3, v2, v6

    move v6, v1

    move v3, v4

    move v7, v3

    :goto_0
    if-ge v3, p2, :cond_e

    move v8, v4

    :goto_1
    add-int/lit8 v9, v0, -0x1

    const/4 v10, -0x1

    if-ge v8, v9, :cond_9

    add-int/lit8 v9, v7, 0x1

    .line 989
    aget v11, p0, v7

    if-ge v11, v10, :cond_1

    const/16 v11, 0x80

    goto :goto_2

    :cond_1
    move v11, v4

    :goto_2
    add-int/lit8 v12, v7, 0x2

    .line 992
    aget v9, p0, v9

    if-ge v9, v10, :cond_2

    add-int/lit8 v11, v11, 0x40

    :cond_2
    add-int/lit8 v9, v7, 0x3

    .line 995
    aget v12, p0, v12

    if-ge v12, v10, :cond_3

    add-int/lit8 v11, v11, 0x20

    :cond_3
    add-int/lit8 v12, v7, 0x4

    .line 998
    aget v9, p0, v9

    if-ge v9, v10, :cond_4

    add-int/lit8 v11, v11, 0x10

    :cond_4
    add-int/lit8 v9, v7, 0x5

    .line 1001
    aget v12, p0, v12

    if-ge v12, v10, :cond_5

    add-int/lit8 v11, v11, 0x8

    :cond_5
    add-int/lit8 v12, v7, 0x6

    .line 1004
    aget v9, p0, v9

    if-ge v9, v10, :cond_6

    add-int/lit8 v11, v11, 0x4

    :cond_6
    add-int/lit8 v9, v7, 0x7

    .line 1007
    aget v12, p0, v12

    if-ge v12, v10, :cond_7

    add-int/lit8 v11, v11, 0x2

    :cond_7
    add-int/lit8 v7, v7, 0x8

    .line 1010
    aget v9, p0, v9

    if-ge v9, v10, :cond_8

    add-int/lit8 v11, v11, 0x1

    :cond_8
    add-int/lit8 v9, v6, 0x1

    int-to-byte v10, v11

    .line 1015
    aput-byte v10, v2, v6

    add-int/lit8 v8, v8, 0x1

    move v6, v9

    goto :goto_1

    :cond_9
    if-nez p1, :cond_b

    move v8, v1

    move v9, v4

    :goto_3
    if-le v8, p1, :cond_d

    add-int/lit8 v11, v7, 0x1

    .line 1022
    aget v7, p0, v7

    if-ge v7, v10, :cond_a

    shl-int v7, v5, v8

    add-int/2addr v9, v7

    :cond_a
    add-int/lit8 v8, v8, -0x1

    move v7, v11

    goto :goto_3

    :cond_b
    move v8, v4

    move v9, v8

    :goto_4
    if-ge v8, p1, :cond_d

    add-int/lit8 v11, v7, 0x1

    .line 1028
    aget v7, p0, v7

    if-ge v7, v10, :cond_c

    rsub-int/lit8 v7, v8, 0x8

    shl-int v7, v5, v7

    add-int/2addr v9, v7

    :cond_c
    add-int/lit8 v8, v8, 0x1

    move v7, v11

    goto :goto_4

    :cond_d
    add-int/lit8 v8, v6, 0x1

    int-to-byte v9, v9

    .line 1033
    aput-byte v9, v2, v6

    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto/16 :goto_0

    :cond_e
    return-object v2
.end method

.method public static PrintDiskbmpfile(Ljava/lang/String;)[B
    .locals 1

    .line 1833
    :try_start_0
    sget-object v0, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {v0, p0}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1PrintDiskbmpfile(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 1835
    sget-object v0, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {v0}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1GetPrintDataA()Ljava/lang/String;

    move-result-object v0

    .line 1836
    invoke-static {v0, p0}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->JNAStringToByte(Ljava/lang/String;I)[B

    move-result-object p0

    .line 1837
    sget-object v0, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {v0}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1Release()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1842
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static PrintFeedDot(I)[B
    .locals 3

    const/4 v0, 0x3

    .line 508
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 510
    aput-byte v1, v0, v2

    const/16 v1, 0x4a

    const/4 v2, 0x1

    .line 511
    aput-byte v1, v0, v2

    const/16 v1, 0xfa

    const/4 v2, 0x2

    if-le p0, v1, :cond_0

    const/4 p0, -0x6

    .line 513
    aput-byte p0, v0, v2

    return-object v0

    :cond_0
    int-to-byte p0, p0

    .line 515
    aput-byte p0, v0, v2

    return-object v0
.end method

.method public static PrintFeedline(I)[B
    .locals 3

    const/4 v0, 0x3

    .line 457
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 459
    aput-byte v1, v0, v2

    const/16 v1, 0x64

    const/4 v2, 0x1

    .line 460
    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 461
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static PrintMarkcutpaper(I)[B
    .locals 4

    const/4 v0, 0x4

    .line 588
    new-array v0, v0, [B

    const/16 v1, 0x1d

    const/4 v2, 0x0

    .line 590
    aput-byte v1, v0, v2

    const/16 v1, 0x56

    const/4 v3, 0x1

    .line 591
    aput-byte v1, v0, v3

    const/4 v1, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x42

    .line 593
    aput-byte p0, v0, v1

    const/4 p0, 0x3

    .line 594
    aput-byte v2, v0, p0

    return-object v0

    .line 596
    :cond_0
    aput-byte v3, v0, v1

    return-object v0
.end method

.method public static PrintMarkposition()[B
    .locals 3

    const/4 v0, 0x1

    .line 555
    new-array v0, v0, [B

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static PrintMarkpositionPrint()[B
    .locals 3

    const/4 v0, 0x2

    .line 564
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 566
    aput-byte v1, v0, v2

    const/16 v1, 0xc

    const/4 v2, 0x1

    .line 567
    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static PrintMarkpositioncut()[B
    .locals 3

    const/4 v0, 0x2

    .line 576
    new-array v0, v0, [B

    const/16 v1, 0x1d

    const/4 v2, 0x0

    .line 578
    aput-byte v1, v0, v2

    const/16 v1, 0xc

    const/4 v2, 0x1

    .line 579
    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static PrintNextHT()[B
    .locals 3

    const/4 v0, 0x1

    .line 526
    new-array v0, v0, [B

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static PrintNvbmp(II)[B
    .locals 3

    const/4 v0, 0x4

    .line 1047
    new-array v0, v0, [B

    const/16 v1, 0x30

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    const/16 v2, 0x33

    if-le p1, v2, :cond_1

    move v1, v2

    :cond_1
    const/16 p1, 0x1c

    const/4 v2, 0x0

    .line 1055
    aput-byte p1, v0, v2

    const/16 p1, 0x70

    const/4 v2, 0x1

    .line 1056
    aput-byte p1, v0, v2

    int-to-byte p0, p0

    const/4 p1, 0x2

    .line 1057
    aput-byte p0, v0, p1

    int-to-byte p0, v1

    const/4 p1, 0x3

    .line 1058
    aput-byte p0, v0, p1

    return-object v0
.end method

.method public static PrintPdf417(IIIILjava/lang/String;)[B
    .locals 9

    const/4 v0, 0x6

    const/4 v1, 0x2

    if-lt p0, v1, :cond_0

    if-le p0, v0, :cond_1

    :cond_0
    move p0, v1

    .line 685
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x80

    .line 686
    new-array v3, v3, [B

    const/4 v4, 0x0

    const/16 v5, 0x1d

    .line 689
    aput-byte v5, v3, v4

    const/16 v6, 0x77

    const/4 v7, 0x1

    .line 690
    aput-byte v6, v3, v7

    int-to-byte p0, p0

    .line 691
    aput-byte p0, v3, v1

    const/4 p0, 0x3

    .line 692
    aput-byte v5, v3, p0

    const/16 v6, 0x68

    const/4 v8, 0x4

    .line 693
    aput-byte v6, v3, v8

    int-to-byte p1, p1

    const/4 v6, 0x5

    .line 694
    aput-byte p1, v3, v6

    .line 697
    aput-byte v5, v3, v4

    const/16 p1, 0x6b

    .line 698
    aput-byte p1, v3, v7

    const/16 p1, 0x4c

    .line 699
    aput-byte p1, v3, v1

    int-to-byte p1, p2

    .line 700
    aput-byte p1, v3, p0

    int-to-byte p0, p3

    .line 701
    aput-byte p0, v3, v8

    int-to-byte p0, v2

    .line 702
    aput-byte p0, v3, v6

    .line 704
    new-array p0, v2, [B

    .line 705
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    :goto_0
    if-ge v4, v2, :cond_2

    add-int/lit8 p1, v0, 0x1

    .line 707
    aget-byte p2, p0, v4

    aput-byte p2, v3, v0

    add-int/lit8 v4, v4, 0x1

    move v0, p1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static PrintQrCodeT500II(ILjava/lang/String;)[B
    .locals 11

    .line 622
    :try_start_0
    const-string v0, "GB2312"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 623
    array-length v0, p1

    add-int/lit8 v0, v0, 0x19

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x13

    .line 625
    aput-byte v2, v0, v1

    const/16 v3, 0x50

    const/4 v4, 0x1

    .line 626
    aput-byte v3, v0, v4

    const/4 v5, 0x2

    const/16 v6, 0x48

    .line 627
    aput-byte v6, v0, v5

    const/4 v7, 0x3

    .line 628
    aput-byte v4, v0, v7

    const/4 v8, 0x4

    .line 629
    aput-byte v4, v0, v8

    const/4 v9, 0x5

    .line 631
    aput-byte v2, v0, v9

    const/4 v10, 0x6

    .line 632
    aput-byte v3, v0, v10

    const/4 v10, 0x7

    .line 633
    aput-byte v6, v0, v10

    const/16 v10, 0x8

    .line 634
    aput-byte v5, v0, v10

    const/16 v5, 0x9

    .line 635
    aput-byte v4, v0, v5

    const/16 v10, 0xa

    .line 637
    aput-byte v2, v0, v10

    const/16 v10, 0xb

    .line 638
    aput-byte v3, v0, v10

    const/16 v10, 0xc

    .line 639
    aput-byte v6, v0, v10

    const/16 v10, 0xd

    .line 640
    aput-byte v7, v0, v10

    const/16 v7, 0xe

    if-lt p0, v4, :cond_1

    if-le p0, v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-byte p0, p0

    .line 644
    aput-byte p0, v0, v7

    const/16 v7, 0xf

    :cond_1
    :goto_0
    add-int/lit8 p0, v7, 0x1

    .line 646
    aput-byte v2, v0, v7

    add-int/lit8 v4, v7, 0x2

    .line 647
    aput-byte v3, v0, p0

    add-int/lit8 p0, v7, 0x3

    .line 648
    aput-byte v6, v0, v4

    add-int/2addr v7, v8

    .line 649
    aput-byte v8, v0, p0

    move p0, v1

    .line 651
    :goto_1
    array-length v4, p1

    if-ge p0, v4, :cond_2

    add-int/lit8 v4, v7, 0x1

    .line 652
    aget-byte v5, p1, p0

    aput-byte v5, v0, v7

    add-int/lit8 p0, p0, 0x1

    move v7, v4

    goto :goto_1

    :cond_2
    add-int/lit8 p0, v7, 0x1

    .line 654
    aput-byte v1, v0, v7

    add-int/lit8 p1, v7, 0x2

    .line 655
    aput-byte v2, v0, p0

    add-int/lit8 p0, v7, 0x3

    .line 656
    aput-byte v3, v0, p1

    add-int/2addr v7, v8

    .line 657
    aput-byte v6, v0, p0

    .line 658
    aput-byte v9, v0, v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 661
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static PrintQrcode(Ljava/lang/String;III)[B
    .locals 1

    .line 1811
    :try_start_0
    sget-object v0, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1PrintQrcode(Ljava/lang/String;III)I

    move-result p0

    if-lez p0, :cond_0

    .line 1813
    sget-object p1, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {p1}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1GetPrintDataA()Ljava/lang/String;

    move-result-object p1

    .line 1814
    invoke-static {p1, p0}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->JNAStringToByte(Ljava/lang/String;I)[B

    move-result-object p0

    .line 1815
    sget-object p1, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {p1}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1Release()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1821
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static PrintQrcode51(Ljava/lang/String;III)[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static PrintRotation_Changeline()[B
    .locals 3

    const/4 v0, 0x1

    .line 1617
    new-array v0, v0, [B

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static PrintRotation_Data()[B
    .locals 3

    const/4 v0, 0x1

    .line 1383
    new-array v0, v0, [B

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static PrintRotation_Sendcode(IIIILjava/lang/String;)[B
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v4, 0x40

    .line 1425
    :try_start_0
    new-array v4, v4, [B

    const/16 v5, 0x1b

    const/4 v6, 0x0

    .line 1429
    aput-byte v5, v4, v6

    const/16 v5, 0x62

    const/4 v7, 0x1

    .line 1430
    aput-byte v5, v4, v7

    const/16 v5, 0x48

    const/4 v8, 0x2

    if-ge v0, v5, :cond_0

    int-to-byte v0, v0

    .line 1433
    aput-byte v0, v4, v8

    goto :goto_0

    .line 1435
    :cond_0
    aput-byte v6, v4, v8

    :goto_0
    const/4 v0, 0x6

    const/4 v5, 0x3

    if-lt v1, v8, :cond_1

    if-gt v1, v0, :cond_1

    int-to-byte v1, v1

    .line 1438
    aput-byte v1, v4, v5

    goto :goto_1

    .line 1440
    :cond_1
    aput-byte v8, v4, v5

    :goto_1
    const/16 v1, 0xa

    const/4 v9, 0x4

    if-lt v2, v7, :cond_2

    if-gt v2, v1, :cond_2

    int-to-byte v2, v2

    .line 1443
    aput-byte v2, v4, v9

    goto :goto_2

    .line 1445
    :cond_2
    aput-byte v7, v4, v9

    :goto_2
    const/16 v2, 0x8

    const/16 v10, 0xc

    if-le v3, v2, :cond_4

    if-ne v3, v10, :cond_3

    goto :goto_3

    :cond_3
    move v3, v8

    .line 1452
    :cond_4
    :goto_3
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v11

    .line 1453
    new-array v12, v11, [B

    .line 1454
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    if-ge v11, v8, :cond_5

    goto/16 :goto_17

    :cond_5
    const/4 v13, 0x5

    const/16 v14, 0x39

    const/16 v15, 0x30

    if-eq v3, v10, :cond_23

    move/from16 p0, v0

    const/16 v0, 0xb

    move/from16 p1, v1

    const/4 v1, 0x7

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_17

    .line 1577
    :pswitch_0
    aput-byte v2, v4, v13

    move/from16 v0, p0

    :goto_4
    if-ge v6, v11, :cond_6

    add-int/lit8 v1, v0, 0x1

    .line 1579
    aget-byte v2, v12, v6

    aput-byte v2, v4, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v1

    goto :goto_4

    .line 1581
    :cond_6
    aput-byte v5, v4, v0

    return-object v4

    .line 1569
    :pswitch_1
    aput-byte v1, v4, v13

    move/from16 v0, p0

    :goto_5
    if-ge v6, v11, :cond_7

    add-int/lit8 v1, v0, 0x1

    .line 1571
    aget-byte v2, v12, v6

    aput-byte v2, v4, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v1

    goto :goto_5

    .line 1573
    :cond_7
    aput-byte v5, v4, v0

    return-object v4

    .line 1555
    :pswitch_2
    aput-byte p0, v4, v13

    if-ge v11, v1, :cond_8

    goto/16 :goto_17

    :cond_8
    move v0, v6

    :goto_6
    if-ge v0, v1, :cond_a

    .line 1559
    aget-byte v2, v12, v0

    if-lt v2, v15, :cond_27

    if-le v2, v14, :cond_9

    goto/16 :goto_17

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    move/from16 v0, p0

    :goto_7
    if-ge v6, v1, :cond_b

    add-int/lit8 v2, v0, 0x1

    .line 1563
    aget-byte v3, v12, v6

    aput-byte v3, v4, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v2

    goto :goto_7

    .line 1565
    :cond_b
    aput-byte v5, v4, v0

    return-object v4

    .line 1539
    :pswitch_3
    aput-byte v13, v4, v13

    if-ge v11, v0, :cond_c

    goto/16 :goto_17

    .line 1542
    :cond_c
    aget-byte v1, v12, v6

    if-eq v1, v15, :cond_d

    goto/16 :goto_17

    :cond_d
    :goto_8
    if-ge v7, v0, :cond_f

    .line 1545
    aget-byte v1, v12, v7

    if-lt v1, v15, :cond_27

    if-le v1, v14, :cond_e

    goto/16 :goto_17

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_f
    move/from16 v1, p0

    :goto_9
    if-ge v6, v0, :cond_10

    add-int/lit8 v2, v1, 0x1

    .line 1549
    aget-byte v3, v12, v6

    aput-byte v3, v4, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v2

    goto :goto_9

    .line 1551
    :cond_10
    aput-byte v5, v4, v1

    return-object v4

    .line 1525
    :pswitch_4
    aput-byte v9, v4, v13

    if-ge v11, v10, :cond_11

    goto/16 :goto_17

    :cond_11
    move v0, v6

    :goto_a
    if-ge v0, v10, :cond_13

    .line 1529
    aget-byte v1, v12, v0

    if-lt v1, v15, :cond_27

    if-le v1, v14, :cond_12

    goto/16 :goto_17

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_13
    move/from16 v0, p0

    :goto_b
    if-ge v6, v10, :cond_14

    add-int/lit8 v1, v0, 0x1

    .line 1533
    aget-byte v2, v12, v6

    aput-byte v2, v4, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v1

    goto :goto_b

    .line 1535
    :cond_14
    aput-byte v5, v4, v0

    return-object v4

    .line 1511
    :pswitch_5
    aput-byte v5, v4, v13

    if-ge v11, v0, :cond_15

    goto/16 :goto_17

    :cond_15
    move v1, v6

    :goto_c
    if-ge v1, v0, :cond_17

    .line 1515
    aget-byte v2, v12, v1

    if-lt v2, v15, :cond_27

    if-le v2, v14, :cond_16

    goto/16 :goto_17

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    move/from16 v1, p0

    :goto_d
    if-ge v6, v0, :cond_18

    add-int/lit8 v2, v1, 0x1

    .line 1519
    aget-byte v3, v12, v6

    aput-byte v3, v4, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v2

    goto :goto_d

    .line 1521
    :cond_18
    aput-byte v5, v4, v1

    return-object v4

    .line 1481
    :pswitch_6
    aput-byte v8, v4, v13

    move v0, v6

    :goto_e
    if-ge v0, v11, :cond_1a

    .line 1483
    aget-byte v2, v12, v0

    if-lt v2, v15, :cond_1a

    if-le v2, v14, :cond_19

    goto :goto_f

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    :goto_f
    const/16 v2, -0x78

    if-ne v0, v11, :cond_1c

    const/16 v0, -0x77

    .line 1489
    aput-byte v0, v4, p0

    :goto_10
    if-ge v6, v11, :cond_1d

    add-int/lit8 v0, v6, 0x1

    if-lt v0, v11, :cond_1b

    add-int/lit8 v0, v1, 0x1

    .line 1492
    aput-byte v2, v4, v1

    add-int/lit8 v1, v1, 0x2

    .line 1493
    aget-byte v3, v12, v6

    aput-byte v3, v4, v0

    goto :goto_11

    :cond_1b
    add-int/lit8 v3, v1, 0x1

    .line 1496
    aget-byte v7, v12, v6

    sub-int/2addr v7, v15

    mul-int/lit8 v7, v7, 0xa

    aget-byte v0, v12, v0

    sub-int/2addr v0, v15

    add-int/2addr v7, v0

    int-to-byte v0, v7

    aput-byte v0, v4, v1

    move v1, v3

    :goto_11
    add-int/lit8 v6, v6, 0x2

    goto :goto_10

    .line 1502
    :cond_1c
    aput-byte v2, v4, p0

    :goto_12
    if-ge v6, v11, :cond_1d

    add-int/lit8 v0, v1, 0x1

    .line 1504
    aget-byte v2, v12, v6

    aput-byte v2, v4, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v0

    goto :goto_12

    .line 1507
    :cond_1d
    aput-byte v5, v4, v1

    return-object v4

    .line 1473
    :pswitch_7
    aput-byte v7, v4, v13

    move/from16 v0, p0

    :goto_13
    if-ge v6, v11, :cond_1e

    add-int/lit8 v1, v0, 0x1

    .line 1475
    aget-byte v2, v12, v6

    aput-byte v2, v4, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v1

    goto :goto_13

    .line 1477
    :cond_1e
    aput-byte v5, v4, v0

    return-object v4

    .line 1460
    :pswitch_8
    aput-byte v6, v4, v13

    move v0, v6

    :goto_14
    if-ge v0, v11, :cond_20

    .line 1462
    aget-byte v1, v12, v0

    if-lt v1, v15, :cond_27

    if-le v1, v14, :cond_1f

    goto :goto_17

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1465
    :cond_20
    rem-int/lit8 v0, v11, 0x2

    if-ne v0, v7, :cond_21

    add-int/lit8 v11, v11, -0x1

    :cond_21
    move/from16 v0, p0

    :goto_15
    if-ge v6, v11, :cond_22

    add-int/lit8 v1, v0, 0x1

    .line 1468
    aget-byte v2, v12, v6

    aput-byte v2, v4, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v1

    goto :goto_15

    .line 1470
    :cond_22
    aput-byte v5, v4, v0

    return-object v4

    :cond_23
    move/from16 p0, v0

    .line 1585
    aput-byte v10, v4, v13

    .line 1586
    rem-int/lit8 v0, v11, 0x2

    if-ne v0, v7, :cond_24

    add-int/lit8 v11, v11, -0x1

    :cond_24
    const/16 v0, 0xe

    if-le v11, v0, :cond_25

    goto :goto_17

    :cond_25
    move v0, v6

    :goto_16
    if-ge v0, v11, :cond_28

    .line 1591
    aget-byte v1, v12, v0

    if-lt v1, v15, :cond_27

    if-le v1, v14, :cond_26

    goto :goto_17

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_27
    :goto_17
    return-object v4

    :cond_28
    move/from16 v0, p0

    move v1, v6

    :goto_18
    if-ge v1, v11, :cond_29

    add-int/lit8 v2, v0, 0x1

    .line 1595
    aget-byte v3, v12, v1

    aput-byte v3, v4, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_18

    :cond_29
    add-int/lit8 v1, v0, 0x1

    .line 1597
    aput-byte v5, v4, v0

    .line 1598
    aput-byte v6, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 1605
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static PrintRotation_Sendtext(Ljava/lang/String;I)[B
    .locals 4

    const/4 v0, 0x1

    .line 1394
    new-array v1, v0, [B

    .line 1395
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 1396
    new-array v3, v3, [B

    .line 1397
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 v3, 0x0

    .line 1399
    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq p1, v0, :cond_0

    const/16 p1, 0xa

    .line 1401
    aput-byte p1, p0, v2

    .line 1404
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    return-object v1
.end method

.method public static PrintSelfcheck()[B
    .locals 4

    const/4 v0, 0x7

    .line 439
    new-array v0, v0, [B

    const/16 v1, 0x1d

    const/4 v2, 0x0

    .line 441
    aput-byte v1, v0, v2

    const/16 v1, 0x28

    const/4 v3, 0x1

    .line 442
    aput-byte v1, v0, v3

    const/16 v1, 0x41

    const/4 v3, 0x2

    .line 443
    aput-byte v1, v0, v3

    const/4 v1, 0x3

    .line 444
    aput-byte v3, v0, v1

    const/4 v1, 0x4

    .line 445
    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 446
    aput-byte v2, v0, v1

    const/4 v1, 0x6

    .line 447
    aput-byte v3, v0, v1

    return-object v0
.end method

.method public static PrintString(Ljava/lang/String;I)[B
    .locals 4

    .line 476
    :try_start_0
    const-string v0, "cp850"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 477
    array-length v0, p0

    if-nez p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 480
    :cond_0
    new-array v1, v0, [B

    .line 481
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    const/16 p0, 0xa

    .line 483
    aput-byte p0, v1, v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 487
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static Set1DBarCodeAlign(I)[B
    .locals 3

    const/4 v0, 0x3

    .line 1337
    new-array v0, v0, [B

    const/16 v1, 0x1d

    const/4 v2, 0x0

    .line 1339
    aput-byte v1, v0, v2

    const/16 v1, 0x50

    const/4 v2, 0x1

    .line 1340
    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 1341
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static SetAlignment(I)[B
    .locals 3

    const/4 v0, 0x3

    .line 256
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 258
    aput-byte v1, v0, v2

    const/16 v1, 0x61

    const/4 v2, 0x1

    .line 259
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    if-le p0, v1, :cond_0

    .line 261
    aput-byte v1, v0, v1

    return-object v0

    :cond_0
    int-to-byte p0, p0

    .line 263
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static SetBold(I)[B
    .locals 4

    const/4 v0, 0x3

    .line 272
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 274
    aput-byte v1, v0, v2

    const/16 v1, 0x47

    const/4 v3, 0x1

    .line 275
    aput-byte v1, v0, v3

    const/4 v1, 0x2

    if-eq p0, v3, :cond_0

    .line 277
    aput-byte v2, v0, v1

    return-object v0

    .line 279
    :cond_0
    aput-byte v3, v0, v1

    return-object v0
.end method

.method public static SetClean()[B
    .locals 3

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 47
    aput-byte v1, v0, v2

    const/16 v1, 0x40

    const/4 v2, 0x1

    .line 48
    aput-byte v1, v0, v2

    return-object v0
.end method

.method public static SetCodepage(II)[B
    .locals 5

    const/4 v0, 0x6

    .line 415
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x1b

    .line 418
    aput-byte v2, v0, v1

    const/16 v3, 0x52

    const/4 v4, 0x1

    .line 419
    aput-byte v3, v0, v4

    const/16 v3, 0xb

    const/4 v4, 0x2

    if-ge p0, v3, :cond_0

    int-to-byte p0, p0

    .line 421
    aput-byte p0, v0, v4

    goto :goto_0

    .line 423
    :cond_0
    aput-byte v1, v0, v4

    :goto_0
    const/4 p0, 0x3

    .line 425
    aput-byte v2, v0, p0

    const/16 p0, 0x74

    const/4 v3, 0x4

    .line 426
    aput-byte p0, v0, v3

    const/4 p0, 0x5

    if-ge p1, v2, :cond_1

    int-to-byte p1, p1

    .line 428
    aput-byte p1, v0, p0

    return-object v0

    .line 430
    :cond_1
    aput-byte v1, v0, p0

    return-object v0
.end method

.method public static SetCommandmode(I)[B
    .locals 0

    .line 1356
    invoke-static {p0}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->SetCommmandmode(I)[B

    move-result-object p0

    return-object p0
.end method

.method public static SetCommmandmode(I)[B
    .locals 4

    const/4 v0, 0x3

    .line 29
    new-array v1, v0, [B

    const/16 v2, 0x1b

    const/4 v3, 0x0

    .line 31
    aput-byte v2, v1, v3

    const/16 v2, 0x79

    const/4 v3, 0x1

    .line 32
    aput-byte v2, v1, v3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    aput-byte v0, v1, v2

    return-object v1

    :cond_1
    :goto_0
    int-to-byte p0, p0

    .line 34
    aput-byte p0, v1, v2

    return-object v1
.end method

.method public static SetDirection(I)[B
    .locals 4

    const/4 v0, 0x3

    .line 304
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 306
    aput-byte v1, v0, v2

    const/16 v1, 0x7b

    const/4 v3, 0x1

    .line 307
    aput-byte v1, v0, v3

    const/4 v1, 0x2

    if-eq p0, v3, :cond_0

    .line 309
    aput-byte v2, v0, v1

    return-object v0

    .line 311
    :cond_0
    aput-byte v3, v0, v1

    return-object v0
.end method

.method public static SetHTseat([BI)[B
    .locals 6

    const/16 v0, 0x23

    .line 387
    new-array v0, v0, [B

    const/16 v1, 0x20

    if-le p1, v1, :cond_0

    move p1, v1

    :cond_0
    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 395
    aput-byte v1, v0, v2

    const/16 v1, 0x44

    const/4 v3, 0x1

    .line 396
    aput-byte v1, v0, v3

    const/4 v1, 0x2

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    add-int/lit8 v4, v1, 0x1

    .line 398
    aget-byte v5, p0, v3

    aput-byte v5, v0, v1

    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_0

    .line 400
    :cond_1
    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static SetItalic(I)[B
    .locals 3

    const/4 v0, 0x3

    .line 337
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 339
    aput-byte v1, v0, v2

    const/16 v1, 0x25

    const/4 v2, 0x1

    .line 340
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    if-ne p0, v2, :cond_0

    const/16 p0, 0x47

    .line 342
    aput-byte p0, v0, v1

    return-object v0

    :cond_0
    const/16 p0, 0x48

    .line 344
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static SetLeftmargin(I)[B
    .locals 5

    const/4 v0, 0x4

    .line 112
    new-array v0, v0, [B

    const/16 v1, 0x1d

    const/4 v2, 0x0

    .line 114
    aput-byte v1, v0, v2

    const/16 v1, 0x4c

    const/4 v3, 0x1

    .line 115
    aput-byte v1, v0, v3

    const/16 v1, 0x240

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-le p0, v1, :cond_0

    .line 117
    aput-byte v2, v0, v4

    .line 118
    aput-byte v2, v0, v3

    return-object v0

    .line 120
    :cond_0
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 121
    div-int/lit16 p0, p0, 0x100

    int-to-byte p0, p0

    aput-byte p0, v0, v3

    return-object v0
.end method

.method public static SetLinespace(I)[B
    .locals 3

    const/4 v0, 0x3

    .line 58
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 60
    aput-byte v1, v0, v2

    const/16 v1, 0x33

    const/4 v2, 0x1

    .line 61
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x7f

    if-le p0, v2, :cond_0

    .line 63
    aput-byte v2, v0, v1

    return-object v0

    :cond_0
    int-to-byte p0, p0

    .line 65
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static SetMarkoffsetcut(I)[B
    .locals 3

    const/4 v0, 0x6

    .line 131
    new-array v0, v0, [B

    const/16 v1, 0x13

    const/4 v2, 0x0

    .line 133
    aput-byte v1, v0, v2

    const/16 v1, 0x74

    const/4 v2, 0x1

    .line 134
    aput-byte v1, v0, v2

    const/16 v1, 0x33

    const/4 v2, 0x2

    .line 135
    aput-byte v1, v0, v2

    const/16 v1, 0x78

    const/4 v2, 0x3

    .line 136
    aput-byte v1, v0, v2

    const/16 v1, 0x640

    if-le p0, v1, :cond_0

    return-object v0

    :cond_0
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x4

    .line 140
    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x5

    .line 141
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static SetMarkoffsetprint(I)[B
    .locals 3

    const/4 v0, 0x6

    .line 151
    new-array v0, v0, [B

    const/16 v1, 0x13

    const/4 v2, 0x0

    .line 153
    aput-byte v1, v0, v2

    const/16 v1, 0x74

    const/4 v2, 0x1

    .line 154
    aput-byte v1, v0, v2

    const/16 v1, 0x11

    const/4 v2, 0x2

    .line 155
    aput-byte v1, v0, v2

    const/16 v1, 0x78

    const/4 v2, 0x3

    .line 156
    aput-byte v1, v0, v2

    const/16 v1, 0x640

    if-le p0, v1, :cond_0

    return-object v0

    :cond_0
    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x4

    .line 160
    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x5

    .line 161
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static SetNvbmp(ILjava/lang/String;)[B
    .locals 1

    .line 1854
    :try_start_0
    sget-object v0, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {v0, p0, p1}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1SetNvbmp(ILjava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    .line 1856
    sget-object p1, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {p1}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1GetPrintDataA()Ljava/lang/String;

    move-result-object p1

    .line 1857
    invoke-static {p1, p0}, Lcom/example/digitalkiosk/msprintsdk/PrintCmd;->JNAStringToByte(Ljava/lang/String;I)[B

    move-result-object p0

    .line 1858
    sget-object p1, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->INSTANCE:Lcom/example/digitalkiosk/msprintsdk/JNAData1;

    invoke-interface {p1}, Lcom/example/digitalkiosk/msprintsdk/JNAData1;->Data1Release()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1863
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static SetReadZKmode(I)[B
    .locals 3

    const/4 v0, 0x2

    .line 371
    new-array v0, v0, [B

    const/16 v1, 0x1c

    const/4 v2, 0x0

    .line 373
    aput-byte v1, v0, v2

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/16 p0, 0x2e

    .line 375
    aput-byte p0, v0, v1

    return-object v0

    :cond_0
    const/16 p0, 0x26

    .line 377
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static SetRightmargin(I)[B
    .locals 3

    const/4 v0, 0x3

    .line 1324
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 1326
    aput-byte v1, v0, v2

    const/16 v1, 0x20

    const/4 v2, 0x1

    .line 1327
    aput-byte v1, v0, v2

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 1328
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static SetRotate(I)[B
    .locals 4

    const/4 v0, 0x3

    .line 288
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 290
    aput-byte v1, v0, v2

    const/16 v1, 0x56

    const/4 v3, 0x1

    .line 291
    aput-byte v1, v0, v3

    const/4 v1, 0x2

    if-eq p0, v3, :cond_0

    .line 293
    aput-byte v2, v0, v1

    return-object v0

    .line 295
    :cond_0
    aput-byte v3, v0, v1

    return-object v0
.end method

.method public static SetRotation_Intomode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static SetRotation_Leftspace(I)[B
    .locals 4

    const/4 v0, 0x3

    .line 1627
    new-array v0, v0, [B

    const/16 v1, 0x13

    const/4 v2, 0x0

    .line 1629
    aput-byte v1, v0, v2

    const/16 v1, 0x76

    const/4 v3, 0x1

    .line 1630
    aput-byte v1, v0, v3

    const/16 v1, 0x48

    const/4 v3, 0x2

    if-ge p0, v1, :cond_0

    int-to-byte p0, p0

    .line 1632
    aput-byte p0, v0, v3

    return-object v0

    .line 1634
    :cond_0
    aput-byte v2, v0, v3

    return-object v0
.end method

.method public static SetSizechar(IIII)[B
    .locals 2

    const/4 v0, 0x3

    .line 206
    new-array v0, v0, [B

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    move p0, v1

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    if-le p2, v1, :cond_2

    move p2, v1

    :cond_2
    if-le p3, v1, :cond_3

    move p3, v1

    :cond_3
    mul-int/lit8 p0, p0, 0x10

    mul-int/lit8 p1, p1, 0x20

    add-int/2addr p0, p1

    mul-int/lit16 p2, p2, 0x80

    add-int/2addr p0, p2

    add-int/2addr p0, p3

    const/16 p1, 0x1b

    const/4 p2, 0x0

    .line 222
    aput-byte p1, v0, p2

    const/16 p1, 0x21

    .line 223
    aput-byte p1, v0, v1

    int-to-byte p0, p0

    const/4 p1, 0x2

    .line 224
    aput-byte p0, v0, p1

    return-object v0
.end method

.method public static SetSizechinese(IIII)[B
    .locals 2

    const/4 v0, 0x3

    .line 175
    new-array v0, v0, [B

    const/4 v1, 0x1

    if-le p0, v1, :cond_0

    move p0, v1

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    if-le p2, v1, :cond_2

    move p2, v1

    :cond_2
    mul-int/lit8 p0, p0, 0x8

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p0, p1

    mul-int/lit16 p2, p2, 0x80

    add-int/2addr p0, p2

    add-int/2addr p0, p3

    const/16 p1, 0x1c

    const/4 p2, 0x0

    .line 192
    aput-byte p1, v0, p2

    const/16 p1, 0x21

    .line 193
    aput-byte p1, v0, v1

    int-to-byte p0, p0

    const/4 p1, 0x2

    .line 194
    aput-byte p0, v0, p1

    return-object v0
.end method

.method public static SetSizetext(II)[B
    .locals 2

    const/4 v0, 0x3

    .line 234
    new-array v0, v0, [B

    mul-int/lit8 p0, p0, 0x10

    add-int/2addr p1, p0

    const/16 p0, 0x1d

    const/4 v1, 0x0

    .line 245
    aput-byte p0, v0, v1

    const/16 p0, 0x21

    const/4 v1, 0x1

    .line 246
    aput-byte p0, v0, v1

    int-to-byte p0, p1

    const/4 p1, 0x2

    .line 247
    aput-byte p0, v0, p1

    return-object v0
.end method

.method public static SetSpacechar(I)[B
    .locals 3

    const/4 v0, 0x3

    .line 74
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 76
    aput-byte v1, v0, v2

    const/16 v1, 0x20

    const/4 v2, 0x1

    .line 77
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x40

    if-le p0, v2, :cond_0

    .line 79
    aput-byte v2, v0, v1

    return-object v0

    :cond_0
    int-to-byte p0, p0

    .line 81
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static SetSpacechinese(II)[B
    .locals 3

    const/4 v0, 0x4

    .line 91
    new-array v0, v0, [B

    const/16 v1, 0x1c

    const/4 v2, 0x0

    .line 93
    aput-byte v1, v0, v2

    const/16 v1, 0x53

    const/4 v2, 0x1

    .line 94
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    const/16 v2, 0x40

    if-le p0, v2, :cond_0

    .line 96
    aput-byte v2, v0, v1

    goto :goto_0

    :cond_0
    int-to-byte p0, p0

    .line 98
    aput-byte p0, v0, v1

    :goto_0
    const/4 p0, 0x3

    if-le p1, v2, :cond_1

    .line 101
    aput-byte v2, v0, p0

    return-object v0

    :cond_1
    int-to-byte p1, p1

    .line 103
    aput-byte p1, v0, p0

    return-object v0
.end method

.method public static SetUnderline(I)[B
    .locals 3

    const/4 v0, 0x3

    .line 354
    new-array v0, v0, [B

    const/16 v1, 0x1b

    const/4 v2, 0x0

    .line 356
    aput-byte v1, v0, v2

    const/16 v1, 0x2d

    const/4 v2, 0x1

    .line 357
    aput-byte v1, v0, v2

    const/4 v1, 0x2

    if-le p0, v1, :cond_0

    .line 359
    aput-byte v1, v0, v1

    return-object v0

    :cond_0
    int-to-byte p0, p0

    .line 361
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static SetWhitemodel(I)[B
    .locals 4

    const/4 v0, 0x3

    .line 321
    new-array v0, v0, [B

    const/16 v1, 0x1d

    const/4 v2, 0x0

    .line 323
    aput-byte v1, v0, v2

    const/16 v1, 0x42

    const/4 v3, 0x1

    .line 324
    aput-byte v1, v0, v3

    const/4 v1, 0x2

    if-eq p0, v3, :cond_0

    .line 326
    aput-byte v2, v0, v1

    return-object v0

    .line 328
    :cond_0
    aput-byte v3, v0, v1

    return-object v0
.end method

.method private static getHexResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1691
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1694
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1695
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1696
    invoke-static {v3}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->isCN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1697
    invoke-static {v3}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->encodeCN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1699
    :cond_0
    invoke-static {v3}, Lcom/example/digitalkiosk/msprintsdk/UtilsTools;->encodeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1703
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStatusDescriptionEn(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 1902
    const-string p0, ""

    return-object p0

    .line 1899
    :pswitch_0
    const-string p0, "Paper low"

    return-object p0

    .line 1896
    :pswitch_1
    const-string p0, "Paper out"

    return-object p0

    .line 1893
    :pswitch_2
    const-string p0, "Printer does not detect blackmark"

    return-object p0

    .line 1890
    :pswitch_3
    const-string p0, "Printer head temp is abnormal"

    return-object p0

    .line 1887
    :pswitch_4
    const-string p0, "Cutter is not reset"

    return-object p0

    .line 1884
    :pswitch_5
    const-string p0, "Printer head is opened"

    return-object p0

    .line 1881
    :pswitch_6
    const-string p0, "Printer called unmatched library"

    return-object p0

    .line 1878
    :pswitch_7
    const-string p0, "Printer is offline or no power"

    return-object p0

    .line 1875
    :pswitch_8
    const-string p0, "Printer is ready"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
