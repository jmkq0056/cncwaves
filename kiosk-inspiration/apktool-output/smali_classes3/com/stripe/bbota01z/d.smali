.class public Lcom/stripe/bbota01z/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/BufferedReader;

.field private b:Lcom/stripe/bbota01z/a;

.field private c:Z

.field private d:I

.field private e:J

.field private f:J

.field private g:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/stripe/bbota01z/d;->b:Lcom/stripe/bbota01z/a;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/stripe/bbota01z/d;->c:Z

    .line 5
    iput v1, p0, Lcom/stripe/bbota01z/d;->d:I

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcom/stripe/bbota01z/d;->e:J

    .line 7
    iput-wide v1, p0, Lcom/stripe/bbota01z/d;->f:J

    .line 8
    iput-object v0, p0, Lcom/stripe/bbota01z/d;->g:[B

    .line 25
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/stripe/bbota01z/d;->a:Ljava/io/BufferedReader;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/stripe/bbota01z/e;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbota01z/b;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/stripe/bbota01z/e;

    invoke-direct {v0}, Lcom/stripe/bbota01z/e;-><init>()V

    .line 4
    iget-boolean v1, p0, Lcom/stripe/bbota01z/d;->c:Z

    const-string v2, ")"

    if-nez v1, :cond_4

    .line 9
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    .line 14
    div-int/2addr v1, v3

    new-array v4, v1, [B

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/4 v8, 0x3

    if-ge v6, v1, :cond_0

    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v10, v9, 0x1

    add-int/2addr v9, v8

    .line 19
    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    .line 20
    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v4, v6

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 p1, v7, 0xff

    if-nez p1, :cond_2

    .line 30
    aget-byte p1, v4, v5

    iput p1, v0, Lcom/stripe/bbota01z/e;->a:I

    add-int/lit8 v6, p1, 0x5

    if-ne v6, v1, :cond_1

    .line 35
    new-array v1, p1, [B

    iput-object v1, v0, Lcom/stripe/bbota01z/e;->d:[B

    const/4 v2, 0x4

    .line 36
    invoke-static {v4, v2, v1, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    .line 39
    aget-byte p1, v4, p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    aget-byte v1, v4, v3

    and-int/lit16 v1, v1, 0xff

    add-int/2addr p1, v1

    iput p1, v0, Lcom/stripe/bbota01z/e;->b:I

    .line 42
    aget-byte p1, v4, v8

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lcom/stripe/bbota01z/f;->a(I)Lcom/stripe/bbota01z/f;

    move-result-object p1

    iput-object p1, v0, Lcom/stripe/bbota01z/e;->c:Lcom/stripe/bbota01z/f;

    return-object v0

    .line 43
    :cond_1
    new-instance p1, Lcom/stripe/bbota01z/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid record length ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/bbota01z/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/stripe/bbota01z/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_2
    new-instance p1, Lcom/stripe/bbota01z/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid checksum ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/bbota01z/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/stripe/bbota01z/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_3
    new-instance p1, Lcom/stripe/bbota01z/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Intel HEX record ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/bbota01z/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/stripe/bbota01z/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_4
    new-instance p1, Lcom/stripe/bbota01z/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data after eof ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/bbota01z/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/stripe/bbota01z/b;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/stripe/bbota01z/e;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbota01z/b;
        }
    .end annotation

    .line 47
    iget v0, p1, Lcom/stripe/bbota01z/e;->b:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/stripe/bbota01z/d;->e:J

    or-long/2addr v0, v2

    .line 48
    sget-object v2, Lcom/stripe/bbota01z/d$a;->a:[I

    iget-object v3, p1, Lcom/stripe/bbota01z/e;->c:Lcom/stripe/bbota01z/f;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-wide/16 v3, 0x0

    const-string v5, " "

    const-string v6, ")"

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/stripe/bbota01z/d;->g:[B

    if-nez v0, :cond_0

    .line 103
    iget-object p1, p1, Lcom/stripe/bbota01z/e;->d:[B

    array-length v0, p1

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/stripe/bbota01z/d;->g:[B

    .line 104
    invoke-static {p1, v11, v1, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 106
    :cond_0
    array-length v1, v0

    iget-object v2, p1, Lcom/stripe/bbota01z/e;->d:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 107
    array-length v2, v0

    invoke-static {v0, v11, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    iget-object p1, p1, Lcom/stripe/bbota01z/e;->d:[B

    iget-object v0, p0, Lcom/stripe/bbota01z/d;->g:[B

    array-length v0, v0

    array-length v2, p1

    invoke-static {p1, v11, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    iput-object v1, p0, Lcom/stripe/bbota01z/d;->g:[B

    return-void

    .line 110
    :pswitch_2
    iget v0, p1, Lcom/stripe/bbota01z/e;->a:I

    if-ne v0, v8, :cond_1

    .line 111
    iput-wide v3, p0, Lcom/stripe/bbota01z/d;->f:J

    .line 112
    iget-object p1, p1, Lcom/stripe/bbota01z/e;->d:[B

    array-length v0, p1

    :goto_0
    if-ge v11, v0, :cond_6

    aget-byte v1, p1, v11

    .line 113
    iget-wide v2, p0, Lcom/stripe/bbota01z/d;->f:J

    shl-long/2addr v2, v9

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long v1, v2, v4

    .line 114
    iput-wide v1, p0, Lcom/stripe/bbota01z/d;->f:J

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lcom/stripe/bbota01z/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid START_SEG record at line #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/stripe/bbota01z/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/stripe/bbota01z/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :pswitch_3
    iget v0, p1, Lcom/stripe/bbota01z/e;->a:I

    if-ne v0, v8, :cond_2

    .line 119
    iput-wide v3, p0, Lcom/stripe/bbota01z/d;->f:J

    .line 120
    iget-object p1, p1, Lcom/stripe/bbota01z/e;->d:[B

    array-length v0, p1

    :goto_1
    if-ge v11, v0, :cond_6

    aget-byte v1, p1, v11

    .line 121
    iget-wide v2, p0, Lcom/stripe/bbota01z/d;->f:J

    shl-long/2addr v2, v9

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long v1, v2, v4

    .line 122
    iput-wide v1, p0, Lcom/stripe/bbota01z/d;->f:J

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 125
    :cond_2
    new-instance v0, Lcom/stripe/bbota01z/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid START_LIN record at line #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/stripe/bbota01z/d;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/stripe/bbota01z/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :pswitch_4
    iget v0, p1, Lcom/stripe/bbota01z/e;->a:I

    if-ne v0, v7, :cond_3

    .line 127
    iget-object p1, p1, Lcom/stripe/bbota01z/e;->d:[B

    aget-byte v0, p1, v11

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v9

    aget-byte p1, p1, v10

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    int-to-long v0, v0

    shl-long/2addr v0, v8

    .line 128
    iput-wide v0, p0, Lcom/stripe/bbota01z/d;->e:J

    return-void

    .line 130
    :cond_3
    new-instance p1, Lcom/stripe/bbota01z/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid EXT_SEG record ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/bbota01z/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/stripe/bbota01z/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :pswitch_5
    iget v0, p1, Lcom/stripe/bbota01z/e;->a:I

    if-ne v0, v7, :cond_4

    .line 132
    iget-object p1, p1, Lcom/stripe/bbota01z/e;->d:[B

    aget-byte v0, p1, v11

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v9

    aget-byte p1, p1, v10

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    int-to-long v0, v0

    const/16 p1, 0x10

    shl-long/2addr v0, p1

    .line 133
    iput-wide v0, p0, Lcom/stripe/bbota01z/d;->e:J

    return-void

    .line 135
    :cond_4
    new-instance p1, Lcom/stripe/bbota01z/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid EXT_LIN record ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/bbota01z/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/stripe/bbota01z/b;-><init>(Ljava/lang/String;)V

    throw p1

    .line 136
    :pswitch_6
    iget-object p1, p0, Lcom/stripe/bbota01z/d;->b:Lcom/stripe/bbota01z/a;

    if-eqz p1, :cond_5

    .line 137
    invoke-interface {p1}, Lcom/stripe/bbota01z/a;->a()V

    .line 139
    :cond_5
    iput-boolean v10, p0, Lcom/stripe/bbota01z/d;->c:Z

    return-void

    .line 140
    :pswitch_7
    iget-object v2, p0, Lcom/stripe/bbota01z/d;->b:Lcom/stripe/bbota01z/a;

    if-eqz v2, :cond_6

    .line 141
    iget-object p1, p1, Lcom/stripe/bbota01z/e;->d:[B

    invoke-interface {v2, v0, v1, p1}, Lcom/stripe/bbota01z/a;->a(J[B)V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/stripe/bbota01z/d;->f:J

    return-wide v0
.end method

.method public a(Lcom/stripe/bbota01z/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/stripe/bbota01z/d;->b:Lcom/stripe/bbota01z/a;

    return-void
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbota01z/d;->g:[B

    return-object v0
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/bbota01z/b;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/stripe/bbota01z/d;->c:Z

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/stripe/bbota01z/d;->d:I

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/stripe/bbota01z/d;->e:J

    .line 4
    iput-wide v1, p0, Lcom/stripe/bbota01z/d;->f:J

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/stripe/bbota01z/d;->g:[B

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/stripe/bbota01z/d;->a:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-direct {p0, v1}, Lcom/stripe/bbota01z/d;->a(Ljava/lang/String;)Lcom/stripe/bbota01z/e;

    move-result-object v1

    .line 10
    invoke-direct {p0, v1}, Lcom/stripe/bbota01z/d;->a(Lcom/stripe/bbota01z/e;)V

    .line 11
    iget v1, p0, Lcom/stripe/bbota01z/d;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/stripe/bbota01z/d;->d:I

    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/stripe/bbota01z/d;->c:Z

    if-eqz v0, :cond_1

    return-void

    .line 15
    :cond_1
    new-instance v0, Lcom/stripe/bbota01z/b;

    const-string v1, "No eof at the end of file"

    invoke-direct {v0, v1}, Lcom/stripe/bbota01z/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method
