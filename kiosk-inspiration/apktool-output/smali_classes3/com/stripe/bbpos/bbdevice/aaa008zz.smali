.class final Lcom/stripe/bbpos/bbdevice/aaa008zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field aaa000:Z

.field private aaa001:Ljava/lang/String;

.field private aaa002:Ljava/lang/String;

.field private aaa003:Ljava/lang/String;

.field private aaa004:Ljava/lang/String;

.field private aaa005:Ljava/lang/String;

.field private aaa006:Ljava/lang/String;

.field private aaa007:Ljava/lang/String;

.field private aaa008:Ljava/lang/String;

.field private aaa009:Ljava/lang/String;

.field private aaa010:Ljava/lang/String;

.field private aaa011:Ljava/lang/String;

.field private aaa012:Ljava/lang/String;

.field private aaa013:Ljava/lang/String;

.field private aaa014:Ljava/lang/String;

.field private aaa015:Ljava/lang/String;

.field private aaa016:Ljava/lang/String;

.field private aaa017:Ljava/lang/String;

.field private aaa018:Ljava/lang/String;

.field private aaa019:Ljava/lang/String;

.field private aaa020:Ljava/lang/String;

.field private aaa021:Ljava/lang/String;

.field private aaa022:Ljava/lang/String;

.field private aaa023:Ljava/lang/String;

.field private aaa024:Ljava/lang/String;

.field private aaa025:Ljava/lang/String;


# direct methods
.method constructor <init>([B)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa000:Z

    .line 4
    const-string v3, ""

    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 5
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    .line 6
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    .line 7
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    .line 8
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa005:Ljava/lang/String;

    .line 9
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    .line 10
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    .line 11
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa008:Ljava/lang/String;

    .line 12
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    .line 13
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa010:Ljava/lang/String;

    .line 14
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa011:Ljava/lang/String;

    .line 15
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa012:Ljava/lang/String;

    .line 16
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa013:Ljava/lang/String;

    .line 17
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa014:Ljava/lang/String;

    .line 18
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa015:Ljava/lang/String;

    .line 19
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa016:Ljava/lang/String;

    .line 20
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa017:Ljava/lang/String;

    .line 21
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa018:Ljava/lang/String;

    .line 25
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa019:Ljava/lang/String;

    .line 26
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa020:Ljava/lang/String;

    .line 27
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa021:Ljava/lang/String;

    .line 28
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa022:Ljava/lang/String;

    .line 29
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa023:Ljava/lang/String;

    .line 30
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa024:Ljava/lang/String;

    .line 31
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa025:Ljava/lang/String;

    .line 34
    aget-byte v4, v1, v2

    const/16 v5, 0x16

    const/4 v6, 0x6

    const-string v7, "X"

    const/4 v8, 0x4

    const-string v10, "0"

    const/16 v11, 0x1a

    const/16 v12, 0x8

    const/4 v14, 0x1

    const/4 v15, 0x2

    if-ne v4, v5, :cond_2

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 37
    aget-byte v4, v1, v14

    and-int/lit16 v4, v4, 0xff

    .line 39
    new-array v5, v15, [B

    .line 40
    invoke-static {v1, v15, v5, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    .line 43
    new-array v14, v15, [B

    .line 44
    invoke-static {v1, v8, v14, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v8

    .line 47
    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    move v14, v2

    .line 48
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    sub-int v16, v4, v16

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v9, v16, v17

    if-ge v14, v9, :cond_0

    .line 49
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    .line 53
    new-array v4, v15, [B

    .line 54
    invoke-static {v1, v6, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    .line 57
    new-array v4, v11, [B

    .line 58
    invoke-static {v1, v12, v4, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa015:Ljava/lang/String;

    .line 61
    const-string v4, "^"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_1

    .line 63
    iget-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa015:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa005:Ljava/lang/String;

    goto :goto_1

    .line 65
    :cond_1
    iget-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa015:Ljava/lang/String;

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa005:Ljava/lang/String;

    :goto_1
    const/16 v4, 0xa

    .line 68
    new-array v5, v4, [B

    const/16 v6, 0x22

    .line 69
    invoke-static {v1, v6, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    const/16 v4, 0x40

    .line 72
    new-array v5, v4, [B

    const/16 v6, 0x2c

    .line 73
    invoke-static {v1, v6, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa011:Ljava/lang/String;

    goto/16 :goto_6

    :cond_2
    const/16 v5, 0x54

    move/from16 v17, v6

    const/4 v6, 0x7

    const/4 v9, 0x3

    if-ne v4, v5, :cond_b

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 77
    aget-byte v4, v1, v15

    and-int/lit16 v5, v4, 0x80

    if-eqz v5, :cond_4

    .line 82
    aget-byte v5, v1, v9

    and-int/lit16 v5, v5, 0xff

    .line 85
    new-array v13, v9, [B

    .line 86
    invoke-static {v1, v8, v13, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v8

    .line 90
    new-array v9, v15, [B

    .line 91
    invoke-static {v1, v6, v9, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v6

    .line 95
    iput-object v8, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    move v9, v2

    .line 96
    :goto_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    sub-int v13, v5, v13

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v13, v13, v17

    if-ge v9, v13, :cond_3

    .line 97
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 99
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    const/16 v9, 0x9

    :cond_4
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_5

    .line 103
    new-array v5, v15, [B

    .line 104
    invoke-static {v1, v9, v5, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x2

    :cond_5
    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_6

    .line 110
    new-array v5, v11, [B

    .line 111
    invoke-static {v1, v9, v5, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v6, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa005:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x1a

    :cond_6
    and-int/lit8 v5, v4, 0x10

    if-eqz v5, :cond_7

    const/16 v5, 0xa

    .line 117
    new-array v6, v5, [B

    .line 118
    invoke-static {v1, v9, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    add-int/lit8 v9, v9, 0xa

    :cond_7
    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_8

    .line 124
    new-array v5, v15, [B

    .line 125
    invoke-static {v1, v9, v5, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x2

    :cond_8
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_9

    const/16 v5, 0x40

    .line 131
    new-array v6, v5, [B

    .line 132
    invoke-static {v1, v9, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa012:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x40

    :cond_9
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_a

    const/16 v5, 0x18

    .line 139
    new-array v6, v5, [B

    .line 140
    invoke-static {v1, v9, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa013:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x18

    :cond_a
    and-int/2addr v4, v14

    if-eqz v4, :cond_10

    const/16 v4, 0x38

    .line 147
    new-array v5, v4, [B

    .line 148
    invoke-static {v1, v9, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa014:Ljava/lang/String;

    goto/16 :goto_6

    :cond_b
    const/16 v5, 0x36

    const/4 v12, 0x5

    if-ne v4, v5, :cond_f

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 156
    aget-byte v4, v1, v14

    and-int/lit16 v4, v4, 0xff

    .line 158
    new-array v5, v9, [B

    .line 159
    invoke-static {v1, v15, v5, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    .line 162
    new-array v8, v15, [B

    .line 163
    invoke-static {v1, v12, v8, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v8

    .line 166
    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    move v9, v2

    .line 167
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v12, v4, v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    if-ge v9, v12, :cond_c

    .line 168
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 170
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    .line 172
    new-array v4, v15, [B

    .line 173
    invoke-static {v1, v6, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    .line 176
    new-array v4, v11, [B

    const/16 v5, 0x9

    .line 177
    invoke-static {v1, v5, v4, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa005:Ljava/lang/String;

    const/16 v4, 0xa

    .line 180
    new-array v5, v4, [B

    const/16 v6, 0x23

    .line 181
    invoke-static {v1, v6, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    const/16 v4, 0x2d

    .line 184
    aget-byte v4, v1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_d

    move v4, v2

    goto :goto_4

    :cond_d
    and-int/lit16 v4, v4, 0xff

    :goto_4
    const/16 v5, 0x2e

    .line 185
    aget-byte v5, v1, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_e

    move v5, v2

    goto :goto_5

    :cond_e
    and-int/lit16 v5, v5, 0xff

    .line 186
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa008:Ljava/lang/String;

    .line 187
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    const/16 v4, 0x78

    .line 189
    new-array v4, v4, [B

    const/16 v5, 0x2f

    const/16 v6, 0x78

    .line 190
    invoke-static {v1, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa011:Ljava/lang/String;

    goto/16 :goto_6

    :cond_f
    const/16 v5, 0x41

    const/16 v13, 0x28

    move/from16 v22, v12

    const/16 v12, 0x10

    if-ne v4, v5, :cond_11

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 195
    aget-byte v4, v1, v14

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa

    .line 197
    new-array v6, v5, [B

    .line 198
    invoke-static {v1, v15, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    .line 201
    new-array v4, v15, [B

    const/16 v5, 0xc

    .line 202
    invoke-static {v1, v5, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    const/16 v4, 0x8

    .line 205
    new-array v5, v4, [B

    const/16 v6, 0xe

    .line 206
    invoke-static {v1, v6, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa022:Ljava/lang/String;

    .line 209
    new-array v4, v12, [B

    const/16 v5, 0x16

    .line 210
    invoke-static {v1, v5, v4, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x26

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x27

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa010:Ljava/lang/String;

    const/16 v4, 0x98

    .line 216
    new-array v4, v4, [B

    const/16 v5, 0x98

    .line 217
    invoke-static {v1, v13, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa011:Ljava/lang/String;

    :cond_10
    :goto_6
    move-object/from16 v17, v10

    goto/16 :goto_16

    :cond_11
    const/16 v5, 0x46

    if-ne v4, v5, :cond_12

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 224
    aget-byte v4, v1, v14

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa

    .line 225
    new-array v6, v5, [B

    .line 226
    invoke-static {v1, v15, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    .line 229
    new-array v4, v15, [B

    const/16 v6, 0xc

    .line 230
    invoke-static {v1, v6, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    .line 233
    new-array v4, v5, [B

    const/16 v6, 0xe

    .line 234
    invoke-static {v1, v6, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x18

    aget-byte v5, v1, v21

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    .line 238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x19

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa010:Ljava/lang/String;

    .line 240
    new-array v4, v13, [B

    .line 241
    invoke-static {v1, v11, v4, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    const/16 v21, 0x18

    aget-byte v4, v1, v21

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v14

    div-int/2addr v4, v15

    add-int/2addr v4, v14

    mul-int/2addr v4, v15

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa013:Ljava/lang/String;

    const/16 v4, 0x6c

    .line 244
    new-array v4, v4, [B

    const/16 v5, 0x42

    const/16 v6, 0x6c

    .line 245
    invoke-static {v1, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    const/16 v4, 0x19

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v4, v14

    div-int/2addr v4, v15

    add-int/2addr v4, v15

    mul-int/2addr v4, v15

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa014:Ljava/lang/String;

    const/16 v4, 0x8

    .line 248
    new-array v5, v4, [B

    const/16 v6, 0xae

    .line 249
    invoke-static {v1, v6, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa022:Ljava/lang/String;

    .line 252
    array-length v4, v1

    const/16 v5, 0xb6

    if-le v4, v5, :cond_10

    .line 253
    new-array v4, v15, [B

    const/16 v5, 0xb6

    .line 254
    invoke-static {v1, v5, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    goto/16 :goto_6

    :cond_12
    const/16 v5, 0x55

    if-ne v4, v5, :cond_14

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 262
    aget-byte v4, v1, v14

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xa

    .line 263
    new-array v6, v5, [B

    .line 264
    invoke-static {v1, v15, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    if-nez v4, :cond_13

    .line 268
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    .line 271
    :cond_13
    new-array v4, v15, [B

    const/16 v5, 0xc

    .line 272
    invoke-static {v1, v5, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    .line 275
    new-array v4, v12, [B

    const/16 v5, 0xe

    .line 276
    invoke-static {v1, v5, v4, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa023:Ljava/lang/String;

    .line 279
    new-array v4, v12, [B

    const/16 v5, 0x1e

    .line 280
    invoke-static {v1, v5, v4, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2e

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2f

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa010:Ljava/lang/String;

    .line 286
    new-array v4, v13, [B

    const/16 v5, 0x30

    .line 287
    invoke-static {v1, v5, v4, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa013:Ljava/lang/String;

    const/16 v4, 0x68

    .line 290
    new-array v4, v4, [B

    const/16 v5, 0x58

    const/16 v6, 0x68

    .line 291
    invoke-static {v1, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa014:Ljava/lang/String;

    .line 294
    array-length v4, v1

    const/16 v5, 0xc2

    if-lt v4, v5, :cond_10

    .line 295
    new-array v4, v15, [B

    const/16 v5, 0xc0

    .line 296
    invoke-static {v1, v5, v4, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    goto/16 :goto_6

    :cond_14
    const/16 v5, 0x60

    if-ne v4, v5, :cond_2c

    .line 300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 302
    aget-byte v4, v1, v14

    and-int/lit16 v4, v4, 0xff

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa019:Ljava/lang/String;

    .line 308
    aget-byte v4, v1, v22

    and-int/lit16 v4, v4, 0xff

    const/16 v19, 0x8

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, v1, v17

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 310
    array-length v5, v1

    add-int/lit8 v5, v5, -0x8

    move/from16 v23, v12

    new-array v12, v5, [B

    .line 311
    invoke-static {v1, v6, v12, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_15

    .line 315
    new-array v1, v5, [B

    .line 316
    invoke-static {v12, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 318
    :cond_15
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc042zz;->aaa000:[B

    invoke-static {v12, v1}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa000([B[B)[B

    move-result-object v1

    .line 320
    :goto_7
    array-length v5, v1

    sub-int/2addr v5, v14

    new-array v12, v5, [B

    .line 321
    invoke-static {v1, v2, v12, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v5

    array-length v12, v1

    sub-int/2addr v12, v14

    aget-byte v12, v1, v12

    if-eq v5, v12, :cond_16

    .line 324
    iput-boolean v14, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa000:Z

    return-void

    :cond_16
    const v5, 0x8000

    and-int/2addr v5, v4

    if-eqz v5, :cond_18

    .line 331
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    const/16 v19, 0x8

    shl-int/lit8 v5, v5, 0x8

    aget-byte v12, v1, v14

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v5, v12

    ushr-int/lit8 v12, v5, 0xd

    and-int/2addr v6, v12

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_17

    .line 347
    const-string v5, "ASCII"

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa020:Ljava/lang/String;

    goto :goto_8

    .line 349
    :cond_17
    const-string v5, "BCD"

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa020:Ljava/lang/String;

    :goto_8
    move v5, v15

    goto :goto_9

    :cond_18
    move v5, v2

    move v6, v5

    :goto_9
    and-int/lit16 v12, v4, 0x4000

    if-eqz v12, :cond_1b

    .line 354
    aget-byte v12, v1, v5

    and-int/lit16 v12, v12, 0xff

    move/from16 v24, v14

    .line 356
    new-array v14, v9, [B

    add-int/lit8 v13, v5, 0x1

    .line 357
    invoke-static {v1, v13, v14, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v13

    .line 359
    const-string v14, "ff"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_19

    invoke-virtual {v13, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 361
    :cond_19
    new-array v8, v15, [B

    add-int/lit8 v14, v5, 0x4

    .line 362
    invoke-static {v1, v14, v8, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 363
    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v8

    .line 365
    iput-object v13, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    move v14, v2

    .line 366
    :goto_a
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v17, v12, v17

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    sub-int v9, v17, v20

    if-ge v14, v9, :cond_1a

    .line 367
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x3

    const/16 v11, 0x1a

    goto :goto_a

    .line 369
    :cond_1a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x6

    if-nez v12, :cond_1c

    .line 374
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    goto :goto_b

    :cond_1b
    move/from16 v24, v14

    :cond_1c
    :goto_b
    and-int/lit16 v7, v4, 0x2000

    if-eqz v7, :cond_1d

    .line 379
    new-array v7, v15, [B

    .line 380
    invoke-static {v1, v5, v7, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x2

    :cond_1d
    and-int/lit16 v7, v4, 0x1000

    if-eqz v7, :cond_1e

    const/16 v7, 0x1a

    .line 386
    new-array v8, v7, [B

    .line 387
    invoke-static {v1, v5, v8, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 388
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa005:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x1a

    :cond_1e
    and-int/lit16 v7, v4, 0x800

    if-eqz v7, :cond_1f

    .line 393
    new-array v7, v15, [B

    .line 394
    invoke-static {v1, v5, v7, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v7, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    add-int/lit8 v5, v5, 0x2

    :cond_1f
    and-int/lit16 v7, v4, 0x400

    if-eqz v7, :cond_20

    .line 400
    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    int-to-double v8, v7

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v11

    .line 401
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    new-array v9, v8, [B

    add-int/lit8 v11, v5, 0x1

    .line 402
    invoke-static {v1, v11, v9, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v8

    :cond_20
    and-int/lit16 v7, v4, 0x200

    const/16 v8, 0x50

    if-eqz v7, :cond_23

    .line 409
    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    .line 410
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v11, v1, v5

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa008:Ljava/lang/String;

    .line 411
    new-array v9, v8, [B

    add-int/lit8 v11, v5, 0x1

    .line 412
    invoke-static {v1, v11, v9, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v6, :cond_22

    .line 414
    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa016:Ljava/lang/String;

    if-gt v7, v8, :cond_21

    mul-int/2addr v7, v15

    .line 416
    invoke-virtual {v9, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa016:Ljava/lang/String;

    .line 418
    :cond_21
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa012:Ljava/lang/String;

    goto :goto_c

    .line 420
    :cond_22
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa016:Ljava/lang/String;

    .line 421
    invoke-static {v9}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa012:Ljava/lang/String;

    :goto_c
    add-int/lit8 v5, v5, 0x51

    goto :goto_d

    .line 425
    :cond_23
    iput-object v10, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa008:Ljava/lang/String;

    :goto_d
    and-int/lit16 v7, v4, 0x100

    if-eqz v7, :cond_28

    .line 429
    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    .line 430
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v11, v1, v5

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    if-ne v6, v15, :cond_24

    const/16 v9, 0x30

    goto :goto_e

    :cond_24
    const/16 v9, 0x28

    .line 437
    :goto_e
    new-array v11, v9, [B

    add-int/lit8 v12, v5, 0x1

    .line 438
    invoke-static {v1, v12, v11, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v6, :cond_27

    .line 440
    invoke-static {v11}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa017:Ljava/lang/String;

    .line 441
    iget-object v11, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa020:Ljava/lang/String;

    const-string v12, "ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_25

    const/16 v11, 0x28

    if-gt v7, v11, :cond_26

    .line 443
    iget-object v8, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa017:Ljava/lang/String;

    mul-int/2addr v7, v15

    invoke-virtual {v8, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa017:Ljava/lang/String;

    goto :goto_f

    .line 445
    :cond_25
    iget-object v11, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa020:Ljava/lang/String;

    const-string v12, "BCD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_26

    if-gt v7, v8, :cond_26

    .line 447
    iget-object v8, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa017:Ljava/lang/String;

    invoke-virtual {v8, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa017:Ljava/lang/String;

    .line 450
    :cond_26
    :goto_f
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa013:Ljava/lang/String;

    goto :goto_10

    .line 452
    :cond_27
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa017:Ljava/lang/String;

    .line 453
    invoke-static {v11}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa013:Ljava/lang/String;

    :goto_10
    add-int/lit8 v9, v9, 0x1

    add-int/2addr v5, v9

    goto :goto_11

    .line 457
    :cond_28
    iput-object v10, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    :goto_11
    and-int/lit16 v7, v4, 0x80

    if-eqz v7, :cond_2b

    .line 461
    aget-byte v7, v1, v5

    and-int/lit16 v7, v7, 0xff

    .line 462
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v9, v1, v5

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa010:Ljava/lang/String;

    const/16 v8, 0x70

    .line 463
    new-array v8, v8, [B

    add-int/lit8 v9, v5, 0x1

    const/16 v11, 0x70

    .line 464
    invoke-static {v1, v9, v8, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez v6, :cond_2a

    .line 466
    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa018:Ljava/lang/String;

    const/16 v8, 0xe0

    if-gt v7, v8, :cond_29

    .line 468
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa018:Ljava/lang/String;

    .line 470
    :cond_29
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa014:Ljava/lang/String;

    goto :goto_12

    .line 472
    :cond_2a
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa018:Ljava/lang/String;

    .line 473
    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa014:Ljava/lang/String;

    :goto_12
    add-int/lit8 v5, v5, 0x71

    goto :goto_13

    .line 477
    :cond_2b
    iput-object v10, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa010:Ljava/lang/String;

    :goto_13
    const/16 v18, 0x40

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_10

    .line 481
    aget-byte v4, v1, v5

    and-int/lit16 v4, v4, 0xff

    const/16 v6, 0xa

    .line 482
    new-array v7, v6, [B

    add-int/lit8 v5, v5, 0x1

    .line 483
    invoke-static {v1, v5, v7, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    if-nez v4, :cond_10

    .line 488
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    goto/16 :goto_6

    :cond_2c
    move/from16 v23, v12

    move/from16 v24, v14

    const/16 v5, 0x61

    if-ne v4, v5, :cond_2d

    .line 493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 498
    aget-byte v4, v1, v24

    and-int/lit16 v4, v4, 0xff

    .line 501
    new-array v5, v4, [B

    .line 502
    invoke-static {v1, v15, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa021:Ljava/lang/String;

    goto/16 :goto_6

    :cond_2d
    const/16 v5, 0x64

    if-ne v4, v5, :cond_31

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 507
    aget-byte v4, v1, v24

    and-int/lit16 v4, v4, 0xff

    const/4 v8, 0x3

    .line 509
    new-array v5, v8, [B

    .line 510
    invoke-static {v1, v15, v5, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    .line 513
    new-array v8, v15, [B

    move/from16 v9, v22

    .line 514
    invoke-static {v1, v9, v8, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v8

    .line 517
    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    move v9, v2

    .line 518
    :goto_14
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    if-ge v9, v11, :cond_2e

    .line 519
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x1

    goto :goto_14

    .line 521
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    if-nez v4, :cond_2f

    .line 524
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    .line 527
    :cond_2f
    new-array v5, v15, [B

    .line 528
    invoke-static {v1, v6, v5, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    const/16 v5, 0x8

    .line 531
    new-array v6, v5, [B

    const/16 v7, 0x9

    .line 532
    invoke-static {v1, v7, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa022:Ljava/lang/String;

    move/from16 v5, v23

    .line 535
    new-array v6, v5, [B

    const/16 v7, 0x11

    .line 536
    invoke-static {v1, v7, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 537
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    .line 539
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x21

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    .line 540
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x22

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa010:Ljava/lang/String;

    const/16 v5, 0x18

    .line 542
    new-array v6, v5, [B

    const/16 v7, 0x23

    .line 543
    invoke-static {v1, v7, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa013:Ljava/lang/String;

    const/16 v5, 0x38

    .line 546
    new-array v6, v5, [B

    const/16 v7, 0x3b

    .line 547
    invoke-static {v1, v7, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa014:Ljava/lang/String;

    .line 550
    array-length v5, v1

    const/16 v6, 0x75

    if-lt v5, v6, :cond_30

    .line 551
    new-array v5, v15, [B

    const/16 v6, 0x73

    .line 552
    invoke-static {v1, v6, v5, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x3

    invoke-virtual {v5, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    .line 556
    :cond_30
    array-length v5, v1

    const/16 v6, 0x7f

    if-lt v5, v6, :cond_10

    const/16 v5, 0xa

    .line 557
    new-array v6, v5, [B

    const/16 v7, 0x75

    .line 558
    invoke-static {v1, v7, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    goto/16 :goto_6

    :cond_31
    const/16 v5, 0x65

    if-ne v4, v5, :cond_10

    .line 562
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, v1, v2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    .line 564
    aget-byte v4, v1, v24

    and-int/lit16 v4, v4, 0xff

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa019:Ljava/lang/String;

    const/16 v22, 0x5

    .line 567
    aget-byte v4, v1, v22

    and-int/lit16 v4, v4, 0xff

    const/16 v19, 0x8

    shl-int/lit8 v4, v4, 0x8

    aget-byte v5, v1, v17

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    .line 569
    new-array v5, v4, [B

    .line 570
    invoke-static {v1, v6, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc042zz;->aaa000:[B

    invoke-static {v5, v1}, Lcom/stripe/bbpos/bbdevice/ccc032zz;->aaa000([B[B)[B

    move-result-object v1

    .line 573
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    new-array v5, v4, [B

    .line 574
    invoke-static {v1, v2, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result v4

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v1, v5

    if-eq v4, v5, :cond_32

    move/from16 v4, v24

    .line 577
    iput-boolean v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa000:Z

    return-void

    .line 581
    :cond_32
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002([B)Ljava/util/List;

    move-result-object v1

    .line 582
    const-string v4, "C4"

    invoke-static {v1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v4

    .line 583
    const-string v5, "5A"

    invoke-static {v1, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    .line 584
    const-string v6, "5F20"

    invoke-static {v1, v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v6

    .line 585
    const-string v7, "5F30"

    invoke-static {v1, v7}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v7

    .line 586
    const-string v8, "5F24"

    invoke-static {v1, v8}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v8

    .line 587
    const-string v9, "D0"

    invoke-static {v1, v9}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v9

    .line 588
    const-string v11, "D1"

    invoke-static {v1, v11}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v11

    .line 589
    const-string v12, "D2"

    invoke-static {v1, v12}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v12

    .line 590
    const-string v13, "DF8257"

    invoke-static {v1, v13}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v13

    .line 591
    const-string v14, "DF07"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14

    .line 592
    const-string v15, "DF0B"

    invoke-static {v1, v15}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v15

    .line 593
    const-string v2, "DF8279"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    move-object/from16 v17, v10

    .line 594
    const-string v10, "DF827A"

    invoke-static {v1, v10}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v10

    move-object/from16 p1, v10

    .line 595
    const-string v10, "DF827B"

    invoke-static {v1, v10}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v10

    move-object/from16 v18, v10

    .line 596
    const-string v10, "DF8315"

    invoke-static {v1, v10}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    if-eqz v4, :cond_33

    .line 599
    new-instance v10, Ljava/lang/String;

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/lang/String;-><init>([B)V

    iput-object v10, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    :cond_33
    if-eqz v5, :cond_34

    .line 602
    new-instance v4, Ljava/lang/String;

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    :cond_34
    if-eqz v6, :cond_35

    .line 605
    iget-object v4, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa005:Ljava/lang/String;

    :cond_35
    if-eqz v7, :cond_36

    .line 608
    iget-object v4, v7, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    :cond_36
    if-eqz v8, :cond_37

    .line 611
    iget-object v4, v8, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    :cond_37
    if-eqz v9, :cond_38

    .line 614
    iget-object v4, v9, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa012:Ljava/lang/String;

    :cond_38
    if-eqz v11, :cond_39

    .line 617
    iget-object v4, v11, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa013:Ljava/lang/String;

    :cond_39
    if-eqz v12, :cond_3a

    .line 620
    iget-object v4, v12, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa014:Ljava/lang/String;

    :cond_3a
    if-eqz v13, :cond_3b

    .line 623
    iget-object v4, v13, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa011:Ljava/lang/String;

    :cond_3b
    if-eqz v14, :cond_3c

    .line 626
    iget-object v4, v14, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    :cond_3c
    if-eqz v15, :cond_3d

    .line 629
    iget-object v4, v15, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v4, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa024:Ljava/lang/String;

    :cond_3d
    if-eqz v2, :cond_3e

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa008:Ljava/lang/String;

    goto :goto_15

    :cond_3e
    const/16 v5, 0x10

    :goto_15
    if-eqz p1, :cond_3f

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, p1

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    :cond_3f
    if-eqz v18, :cond_40

    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v18

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa010:Ljava/lang/String;

    :cond_40
    if-eqz v1, :cond_41

    .line 642
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    iput-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa025:Ljava/lang/String;

    .line 646
    :cond_41
    :goto_16
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    const-string v2, "46"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    const-string v2, "55"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    const-string v2, "60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    const-string v2, "64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    const-string v2, "65"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 648
    :cond_42
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa008:Ljava/lang/String;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 649
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa012:Ljava/lang/String;

    .line 651
    :cond_43
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 652
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa013:Ljava/lang/String;

    .line 654
    :cond_44
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa010:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 655
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa014:Ljava/lang/String;

    .line 658
    :cond_45
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa008:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 659
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    .line 660
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    return-void

    .line 662
    :cond_46
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 663
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    .line 665
    :cond_47
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 666
    iput-object v3, v0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    :cond_48
    return-void
.end method


# virtual methods
.method aaa000()Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa001:Ljava/lang/String;

    const-string v2, "formatID"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa002:Ljava/lang/String;

    const-string v2, "maskedPAN"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa003:Ljava/lang/String;

    const-string v2, "pan"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa004:Ljava/lang/String;

    const-string v2, "expiryDate"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa005:Ljava/lang/String;

    const-string v2, "cardholderName"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa006:Ljava/lang/String;

    const-string v2, "ksn"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa007:Ljava/lang/String;

    const-string v2, "serviceCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa008:Ljava/lang/String;

    const-string v2, "track1Length"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa009:Ljava/lang/String;

    const-string v2, "track2Length"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa010:Ljava/lang/String;

    const-string v2, "track3Length"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa011:Ljava/lang/String;

    const-string v2, "encTracks"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa015:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa015:Ljava/lang/String;

    const-string v2, "partialTrack"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa021:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa021:Ljava/lang/String;

    const-string v2, "finalMessage"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa022:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 24
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa022:Ljava/lang/String;

    const-string v2, "randomNumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa023:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa023:Ljava/lang/String;

    const-string v2, "encWorkingKey"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa024:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 30
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa024:Ljava/lang/String;

    const-string v2, "mac"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_5
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa025:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 33
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa025:Ljava/lang/String;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa016:Ljava/lang/String;

    const-string v2, ""

    if-eqz v1, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 37
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa016:Ljava/lang/String;

    const-string v3, "track1"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_7
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa012:Ljava/lang/String;

    const-string v3, "encTrack1"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa017:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 43
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa017:Ljava/lang/String;

    const-string v3, "track2"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 45
    :cond_8
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa013:Ljava/lang/String;

    const-string v3, "encTrack2"

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :goto_1
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa018:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 49
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa018:Ljava/lang/String;

    const-string v2, "track3"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 51
    :cond_9
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa014:Ljava/lang/String;

    const-string v2, "encTrack3"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
