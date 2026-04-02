.class final Lcom/stripe/bbpos/bbdevice/ccc073zz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aaa002:Ljava/lang/Object;

.field private static final aaa003:[D


# instance fields
.field private final aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field private aaa001:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa002:Ljava/lang/Object;

    const/16 v0, 0x15

    .line 4
    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa003:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x400b374bc6a7ef9eL    # 3.402
        0x400c7ced916872b0L    # 3.561
        0x400cdf3b645a1cacL    # 3.609
        0x400d0a3d70a3d70aL    # 3.63
        0x400d395810624dd3L    # 3.653
        0x400d5e353f7ced91L    # 3.671
        0x400d83126e978d50L    # 3.689
        0x400d99999999999aL    # 3.7
        0x400db4395810624eL    # 3.713
        0x400dced916872b02L    # 3.726
        0x400df5c28f5c28f6L    # 3.745
        0x400e189374bc6a7fL    # 3.762
        0x400e4395810624ddL    # 3.783
        0x400e74bc6a7ef9dbL    # 3.807
        0x400ea9fbe76c8b44L    # 3.833
        0x400ee978d4fdf3b6L    # 3.864
        0x400f24dd2f1a9fbeL    # 3.893
        0x400f6a7ef9db22d1L    # 3.927
        0x400fb4395810624eL    # 3.963
        0x4010020c49ba5e35L    # 4.002
        0x40102d0e56041893L    # 4.044
    .end array-data
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    return-void
.end method

.method private aaa001(Lcom/stripe/bbpos/bbdevice/ccc057zz;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa002()B

    move-result p1

    iput-byte p1, p0, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa001:B

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa000(B)V

    return-void
.end method


# virtual methods
.method aaa000()V
    .locals 1

    const/4 v0, 0x0

    .line 317
    iput-byte v0, p0, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa001:B

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/ccc057zz;)V
    .locals 36

    const-string v0, ""

    .line 1
    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa002:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa002()B

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x9

    const/4 v7, -0x1

    const/4 v12, 0x2

    const/4 v14, 0x1

    if-ne v3, v6, :cond_19

    const/16 v16, 0x4

    .line 6
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa004()[B

    move-result-object v4

    move/from16 v17, v6

    .line 8
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 10
    const-string v18, ""

    .line 16
    const-string v19, ""

    .line 17
    const-string v20, ""

    .line 18
    const-string v21, ""

    .line 19
    const-string v22, ""

    .line 20
    const-string v23, ""

    .line 21
    const-string v24, ""

    .line 22
    const-string v25, ""

    .line 23
    const-string v26, ""

    .line 26
    const-string v27, ""

    const/16 v28, 0x7

    .line 28
    aget-byte v5, v4, v14

    const/16 v29, 0x5

    const/16 v13, 0xc

    if-ne v5, v13, :cond_0

    .line 29
    const-string v5, "true"

    .line 30
    const-string v20, "true"

    .line 31
    const-string v21, "false"

    move-object/from16 v22, v21

    const/16 v30, 0x6

    move-object/from16 v21, v20

    :goto_0
    move-object/from16 v20, v5

    goto :goto_2

    :cond_0
    const/16 v30, 0x6

    const/16 v11, 0x17

    if-ne v5, v11, :cond_1

    .line 33
    const-string v5, "false"

    .line 34
    const-string v11, "true"

    .line 35
    const-string v20, "true"

    :goto_1
    move-object/from16 v21, v11

    move-object/from16 v22, v20

    goto :goto_0

    :cond_1
    const/16 v11, 0x7b

    if-ne v5, v11, :cond_2

    .line 37
    const-string v5, "true"

    .line 38
    const-string v11, "true"

    .line 39
    const-string v20, "true"

    goto :goto_1

    :cond_2
    :goto_2
    move-object/from16 v5, v20

    move-object/from16 v11, v21

    move-object/from16 v8, v22

    const/16 v20, 0x8

    const/16 v21, 0x3

    .line 42
    aget-byte v10, v4, v12

    if-eq v10, v7, :cond_3

    aget-byte v10, v4, v21

    if-eq v10, v7, :cond_3

    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v10, v4, v12

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v10, v4, v21

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_3
    move-object/from16 v7, v18

    .line 45
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v13, v4, v16

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "."

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-byte v13, v4, v29

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 46
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v9, v4, v30

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, "."

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v13, v4, v28

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 49
    aget-byte v13, v4, v20

    if-ne v13, v14, :cond_4

    move v13, v14

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    .line 50
    :goto_3
    aget-byte v15, v4, v17

    if-ne v15, v14, :cond_5

    move v15, v14

    move/from16 v17, v15

    goto :goto_4

    :cond_5
    move/from16 v17, v14

    const/4 v15, 0x0

    .line 52
    :goto_4
    new-array v14, v12, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v32, v3

    const/16 v3, 0xa

    const/4 v1, 0x0

    .line 53
    :try_start_2
    invoke-static {v4, v3, v14, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    move v14, v13

    int-to-double v12, v0

    const-wide v28, 0x4047800000000000L    # 47.0

    div-double v12, v12, v28

    const-wide v28, 0x4051400000000000L    # 69.0

    mul-double v12, v12, v28

    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    div-double v12, v12, v28

    const-wide v28, 0x400a666666666666L    # 3.3

    mul-double v12, v12, v28

    const-wide v28, 0x4010624dd2f1a9fcL    # 4.096

    div-double v12, v12, v28

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    const-wide v28, 0x408f400000000000L    # 1000.0

    div-double v12, v12, v28

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v15, :cond_6

    const/4 v1, 0x0

    .line 57
    :goto_5
    sget-object v12, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa003:[D

    array-length v13, v12

    if-ge v1, v13, :cond_6

    .line 58
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v28

    aget-wide v33, v12, v1

    cmpl-double v12, v28, v33

    if-lez v12, :cond_6

    .line 59
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    mul-int/lit8 v13, v1, 0x5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v1, v19

    .line 67
    array-length v12, v4

    const/16 v13, 0x12

    if-lt v12, v13, :cond_a

    const/4 v3, 0x2

    .line 68
    new-array v12, v3, [B

    move/from16 v18, v14

    const/16 v13, 0xc

    const/4 v14, 0x0

    .line 69
    invoke-static {v4, v13, v12, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v23

    move/from16 v3, v21

    .line 73
    new-array v12, v3, [B

    const/16 v13, 0xe

    .line 74
    invoke-static {v4, v13, v12, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, "."

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v27

    const/16 v12, 0x11

    .line 81
    aget-byte v12, v4, v12

    and-int/lit16 v12, v12, 0xff

    if-lez v12, :cond_7

    .line 83
    new-array v13, v12, [B

    move-object/from16 v16, v3

    const/4 v3, 0x0

    const/16 v14, 0x12

    .line 84
    invoke-static {v4, v14, v13, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v24

    add-int/lit8 v13, v12, 0x12

    goto :goto_6

    :cond_7
    move-object/from16 v16, v3

    const/16 v14, 0x12

    move v13, v14

    :goto_6
    add-int/lit8 v3, v13, 0x1

    .line 90
    aget-byte v12, v4, v13

    and-int/lit16 v12, v12, 0xff

    if-lez v12, :cond_8

    .line 92
    new-array v13, v12, [B

    const/4 v14, 0x0

    .line 93
    invoke-static {v4, v3, v13, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v25

    add-int/2addr v3, v12

    :cond_8
    add-int/lit8 v12, v3, 0x1

    .line 99
    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    if-lez v3, :cond_9

    .line 101
    new-array v13, v3, [B

    const/4 v14, 0x0

    .line 102
    invoke-static {v4, v12, v13, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v26

    add-int/2addr v12, v3

    :cond_9
    add-int/lit8 v13, v12, 0x1

    .line 108
    aget-byte v3, v4, v12

    and-int/lit16 v3, v3, 0xff

    if-lez v3, :cond_b

    .line 110
    new-array v12, v3, [B

    const/4 v14, 0x0

    .line 111
    invoke-static {v4, v13, v12, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    add-int/2addr v13, v3

    goto :goto_7

    :cond_a
    move/from16 v18, v14

    const/16 v13, 0xc

    move-object/from16 v16, v9

    :cond_b
    :goto_7
    move-object/from16 v12, v24

    move-object/from16 v14, v25

    move-object/from16 v3, v26

    .line 118
    const-string v19, ""

    .line 119
    const-string v20, ""

    .line 120
    const-string v21, ""

    .line 121
    const-string v22, ""

    .line 122
    const-string v24, ""

    .line 123
    const-string v25, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v26, v9

    .line 125
    :try_start_3
    array-length v9, v4

    if-ge v13, v9, :cond_16

    .line 126
    aget-byte v9, v4, v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-int/lit16 v9, v9, 0xff

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v28, v3

    .line 129
    :try_start_4
    new-array v3, v9, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v29, v14

    const/4 v14, 0x0

    .line 130
    :try_start_5
    invoke-static {v4, v13, v3, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002([B)Ljava/util/List;

    move-result-object v3

    .line 133
    const-string v4, "D3"

    invoke-static {v3, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v4

    .line 134
    const-string v9, "D8"

    invoke-static {v3, v9}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v9

    .line 135
    const-string v13, "DF25"

    invoke-static {v3, v13}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v13

    .line 136
    const-string v14, "DF5E"

    invoke-static {v3, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v30, v12

    .line 137
    :try_start_6
    const-string v12, "DF5D"

    invoke-static {v3, v12}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v12
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v31, v8

    .line 138
    :try_start_7
    const-string v8, "D7"

    invoke-static {v3, v8}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v33, v11

    .line 139
    :try_start_8
    const-string v11, "DF10"

    invoke-static {v3, v11}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v34, v5

    .line 140
    :try_start_9
    const-string v5, "DF826E"

    invoke-static {v3, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object/from16 v35, v7

    .line 141
    :try_start_a
    const-string v7, "DF834F"

    invoke-static {v3, v7}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    if-nez v4, :cond_c

    goto :goto_8

    .line 143
    :cond_c
    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v23, v4

    :goto_8
    if-nez v9, :cond_d

    goto :goto_9

    .line 144
    :cond_d
    iget-object v4, v9, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v19, v4

    :goto_9
    if-nez v13, :cond_e

    goto :goto_a

    .line 145
    :cond_e
    iget-object v4, v13, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v20, v4

    :goto_a
    if-nez v14, :cond_f

    goto :goto_b

    .line 146
    :cond_f
    new-instance v4, Ljava/lang/String;

    iget-object v7, v14, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v21, v4

    :goto_b
    if-nez v12, :cond_10

    goto :goto_c

    .line 147
    :cond_10
    new-instance v4, Ljava/lang/String;

    iget-object v7, v12, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v22, v4

    :goto_c
    if-nez v8, :cond_11

    move-object/from16 v9, v26

    goto :goto_d

    .line 148
    :cond_11
    new-instance v4, Ljava/lang/String;

    iget-object v7, v8, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-object v9, v4

    :goto_d
    if-nez v11, :cond_12

    move-object/from16 v4, v27

    goto :goto_e

    .line 149
    :cond_12
    :try_start_b
    new-instance v4, Ljava/lang/String;

    iget-object v7, v11, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_e
    if-nez v5, :cond_13

    :goto_f
    move-object/from16 v5, v24

    goto :goto_10

    .line 150
    :cond_13
    :try_start_c
    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_f

    .line 151
    :goto_10
    :try_start_d
    const-string v7, "\\u0000"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-nez v3, :cond_14

    goto :goto_11

    .line 152
    :cond_14
    :try_start_e
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 155
    :goto_11
    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v3, :cond_15

    .line 157
    :try_start_f
    const-string v3, ""
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-object v5, v9

    move-object v9, v3

    move-object v3, v5

    move-object v14, v4

    goto :goto_12

    :catch_0
    move-object v14, v4

    move-object v3, v9

    goto :goto_12

    :cond_15
    move-object v14, v4

    move-object/from16 v3, v16

    :goto_12
    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v16, v25

    goto/16 :goto_17

    :catch_1
    move-object/from16 v27, v4

    move-object/from16 v24, v5

    goto/16 :goto_16

    :catch_2
    move-object/from16 v27, v4

    goto/16 :goto_16

    :catch_3
    move-object/from16 v34, v5

    :catch_4
    move-object/from16 v35, v7

    goto :goto_15

    :catch_5
    move-object/from16 v34, v5

    move-object/from16 v35, v7

    goto :goto_13

    :catch_6
    move-object/from16 v34, v5

    move-object/from16 v35, v7

    move-object/from16 v31, v8

    :goto_13
    move-object/from16 v33, v11

    goto :goto_15

    :catch_7
    move-object/from16 v34, v5

    move-object/from16 v35, v7

    move-object/from16 v31, v8

    move-object/from16 v33, v11

    move-object/from16 v30, v12

    goto :goto_15

    :cond_16
    move-object/from16 v28, v3

    move-object/from16 v34, v5

    move-object/from16 v35, v7

    move-object/from16 v31, v8

    move-object/from16 v33, v11

    move-object/from16 v30, v12

    move-object/from16 v29, v14

    move-object/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v16, v25

    move-object/from16 v9, v26

    :goto_14
    move-object/from16 v14, v27

    goto :goto_17

    :catch_8
    move-object/from16 v28, v3

    :catch_9
    move-object/from16 v34, v5

    move-object/from16 v35, v7

    move-object/from16 v31, v8

    move-object/from16 v33, v11

    move-object/from16 v30, v12

    move-object/from16 v29, v14

    :catch_a
    :goto_15
    move-object/from16 v9, v26

    :catch_b
    :goto_16
    move-object/from16 v3, v16

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v16, v25

    goto :goto_14

    .line 163
    :goto_17
    :try_start_10
    const-string v13, "bootloaderVersion"

    invoke-virtual {v6, v13, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v10, "firmwareVersion"

    invoke-virtual {v6, v10, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v3, "isUsbConnected"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v13, v18

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v3, "isCharging"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v3, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v3, "batteryLevel"

    invoke-virtual {v6, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "batteryPercentage"

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "hardwareVersion"

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "isSupportedTrack1"

    move-object/from16 v1, v34

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v0, "isSupportedTrack2"

    move-object/from16 v1, v33

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v0, "isSupportedTrack3"

    move-object/from16 v1, v31

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v0, "productId"

    invoke-virtual {v6, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v0, "productID"

    invoke-virtual {v6, v0, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v0, "pinKsn"

    move-object/from16 v1, v30

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v0, "emvKsn"

    move-object/from16 v1, v29

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v0, "trackKsn"

    move-object/from16 v1, v28

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "terminalSettingVersion"

    invoke-virtual {v6, v0, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "deviceSettingVersion"

    invoke-virtual {v6, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v0, "vendorID"

    invoke-virtual {v6, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v0, "formatID"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "isSupportedNfc"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v0, "uid"

    invoke-virtual {v6, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "csn"

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "mainProcessorVersion"

    invoke-virtual {v6, v0, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "coprocessorVersion"

    invoke-virtual {v6, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v12, :cond_17

    .line 188
    const-string v0, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 189
    const-string v0, "serialNumber"

    invoke-virtual {v6, v0, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    if-eqz v16, :cond_18

    .line 191
    const-string v0, ""

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 192
    const-string v0, "bID"

    invoke-virtual {v6, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_18
    invoke-direct/range {p0 .. p1}, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc057zz;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-object/from16 v1, p0

    .line 196
    :try_start_11
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa011(Ljava/util/Hashtable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto/16 :goto_19

    :catch_c
    move-object/from16 v1, p0

    :catch_d
    move/from16 v4, v32

    goto/16 :goto_1a

    :catch_e
    move-object/from16 v1, p0

    move v4, v3

    goto/16 :goto_1a

    :cond_19
    move-object/from16 v1, p0

    move/from16 v32, v3

    move/from16 v17, v14

    const/16 v16, 0x4

    const/16 v20, 0x8

    const/16 v28, 0x7

    const/16 v29, 0x5

    const/16 v30, 0x6

    const/16 v0, 0x51

    move/from16 v4, v32

    if-ne v4, v0, :cond_1c

    .line 198
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa004()[B

    move-result-object v0

    const/4 v3, 0x2

    .line 199
    new-array v5, v3, [B

    .line 200
    array-length v6, v0

    move/from16 v7, v20

    if-lt v6, v7, :cond_1a

    move/from16 v6, v30

    const/4 v14, 0x0

    .line 201
    invoke-static {v0, v6, v5, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_18

    :cond_1a
    const/4 v14, 0x0

    .line 204
    invoke-static {v0, v14, v5, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    :goto_18
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013:[B

    .line 208
    invoke-direct/range {p0 .. p1}, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc057zz;)V

    .line 209
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa012()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    if-ne v0, v3, :cond_1b

    .line 210
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa067:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa004(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_19

    .line 211
    :cond_1b
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa012()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    move-result-object v0

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa001zz;

    if-ne v0, v3, :cond_30

    .line 212
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc055zz;->aaa067:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa006(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_19

    :cond_1c
    const/16 v0, 0x53

    if-ne v4, v0, :cond_1f

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa004()[B

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002([B)Ljava/util/List;

    move-result-object v0

    .line 216
    const-string v3, "DF826F"

    invoke-static {v0, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 218
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(B)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 219
    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    return-void

    .line 221
    :cond_1d
    :try_start_14
    iget-object v3, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v30, 0x6

    add-int/lit8 v5, v5, -0x6

    const/4 v14, 0x0

    invoke-virtual {v3, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa021()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc069zz;->aaa000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/stripe/bbpos/bbdevice/ccc069zz;->aaa000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    const-string v5, "70BB5FCDE822CCD6"

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc069zz;->aaa000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/stripe/bbpos/bbdevice/ccc069zz;->aaa001(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    const-string v6, "3776E3F109A98F0A"

    invoke-static {v3, v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa021()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc069zz;->aaa000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/stripe/bbpos/bbdevice/ccc069zz;->aaa001(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    invoke-direct/range {p0 .. p1}, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa001(Lcom/stripe/bbpos/bbdevice/ccc057zz;)V

    const/4 v6, 0x6

    const/4 v14, 0x0

    .line 226
    invoke-virtual {v5, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v6, 0x16

    const/16 v7, 0x10

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 227
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa029(Ljava/lang/String;)V

    .line 228
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->bbb005()V

    goto/16 :goto_19

    .line 230
    :cond_1e
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->INVALID_VENDOR_TOKEN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 233
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa004()[B

    move-result-object v3

    const/16 v31, 0x0

    .line 234
    aget-byte v5, v3, v31

    const/16 v6, 0x50

    if-ne v5, v6, :cond_21

    aget-byte v8, v3, v17

    move/from16 v9, v17

    if-ne v8, v9, :cond_21

    .line 235
    array-length v0, v3

    sub-int/2addr v0, v9

    new-array v5, v0, [B

    const/4 v14, 0x0

    .line 236
    invoke-static {v3, v14, v5, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc056zz;->aaa000([B)B

    move-result v5

    aget-byte v0, v3, v0

    if-ne v5, v0, :cond_20

    .line 238
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa023()V

    goto/16 :goto_19

    .line 240
    :cond_20
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->COMM_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    const-string v5, "CRC (error code - 7008)"

    invoke-virtual {v0, v3, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa003(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V

    goto/16 :goto_19

    :cond_21
    if-ne v5, v6, :cond_22

    const/16 v17, 0x1

    .line 242
    aget-byte v8, v3, v17

    const/4 v9, 0x3

    if-ne v8, v9, :cond_23

    goto/16 :goto_19

    :cond_22
    const/16 v17, 0x1

    :cond_23
    if-ne v5, v6, :cond_2f

    .line 246
    aget-byte v8, v3, v17

    move/from16 v9, v29

    if-ne v8, v9, :cond_2f

    .line 249
    array-length v5, v3

    if-lt v5, v9, :cond_30

    const/16 v21, 0x3

    .line 250
    aget-byte v5, v3, v21

    and-int/lit16 v5, v5, 0xff

    const/16 v20, 0x8

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, v3, v16

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    .line 251
    array-length v6, v3

    add-int/lit8 v8, v5, 0x6

    if-lt v6, v8, :cond_2e

    add-int/lit8 v6, v5, 0x5

    .line 252
    new-array v8, v6, [B

    const/4 v14, 0x0

    .line 253
    invoke-static {v3, v14, v8, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc056zz;->aaa000([B)B

    move-result v8

    aget-byte v6, v3, v6

    if-ne v8, v6, :cond_2d

    .line 255
    new-array v6, v5, [B

    const/4 v9, 0x5

    .line 256
    invoke-static {v3, v9, v6, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002([B)Ljava/util/List;

    move-result-object v3

    .line 259
    const-string v5, "DF822D"

    invoke-static {v3, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    .line 260
    const-string v6, "DF864B"

    invoke-static {v3, v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v6

    .line 261
    const-string v8, "DF8663"

    invoke-static {v3, v8}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    if-nez v5, :cond_24

    .line 263
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(B)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 264
    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    return-void

    .line 266
    :cond_24
    :try_start_16
    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v8, 0x10

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v0, :cond_25

    .line 268
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    goto/16 :goto_19

    :cond_25
    const/16 v0, 0x54

    if-ne v5, v0, :cond_27

    .line 270
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v3, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa002:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-nez v6, :cond_26

    .line 272
    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(B)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_10
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .line 273
    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    return-void

    .line 275
    :cond_26
    :try_start_18
    iget-object v0, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v0, v3, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa002:Ljava/lang/String;

    goto/16 :goto_19

    :cond_27
    const/16 v0, 0x55

    if-ne v5, v0, :cond_28

    .line 277
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa003:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    goto/16 :goto_19

    :cond_28
    const/16 v0, 0x57

    if-ne v5, v0, :cond_29

    .line 279
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    goto/16 :goto_19

    :cond_29
    const/16 v0, 0x58

    if-ne v5, v0, :cond_2a

    .line 281
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa005:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    if-eqz v3, :cond_30

    .line 282
    iget-object v0, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_10
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-nez v0, :cond_30

    .line 285
    :try_start_19
    iget-object v0, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 288
    :catch_f
    :try_start_1a
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    iput v7, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa001:I

    goto :goto_19

    :cond_2a
    const/16 v0, 0x77

    if-ne v5, v0, :cond_2b

    .line 291
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa009:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    goto :goto_19

    :cond_2b
    const/16 v0, 0x78

    if-ne v5, v0, :cond_2c

    .line 293
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa010:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    goto :goto_19

    .line 295
    :cond_2c
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa008:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    goto :goto_19

    .line 298
    :cond_2d
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa006:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    goto :goto_19

    .line 301
    :cond_2e
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022:Lcom/stripe/bbpos/bbdevice/ccc054zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;->aaa007:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/ccc054zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc054zz$aaa000zz;

    goto :goto_19

    :cond_2f
    if-ne v5, v6, :cond_30

    const/16 v17, 0x1

    .line 304
    aget-byte v0, v3, v17

    move/from16 v3, v28

    if-ne v0, v3, :cond_30

    .line 305
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa076()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_10
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    .line 312
    :cond_30
    :goto_19
    :try_start_1b
    monitor-exit v2

    goto :goto_1b

    .line 313
    :catch_10
    :goto_1a
    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {v0, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(B)V

    .line 314
    monitor-exit v2

    :goto_1b
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    .line 316
    :goto_1c
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1c
.end method

.method aaa001()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/stripe/bbpos/bbdevice/ccc073zz;->aaa001:B

    return v0
.end method
