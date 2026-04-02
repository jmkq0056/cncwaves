.class final Lcom/stripe/bbpos/bbdevice/ota/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:B

.field private c:B

.field private d:[B

.field private e:Z


# direct methods
.method constructor <init>([BBB[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->a:[B

    .line 3
    iput-byte p2, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->b:B

    .line 4
    iput-byte p3, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->c:B

    .line 5
    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->d:[B

    const/4 p2, 0x1

    .line 7
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 8
    rem-int/lit8 p1, p1, 0x2

    if-ne p1, p2, :cond_0

    .line 9
    iput-boolean p2, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Lcom/stripe/bbpos/bbdevice/ota/g;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->a:[B

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 2
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->d:[B

    if-eqz v0, :cond_0

    .line 6
    array-length v1, v0

    new-array v4, v1, [B

    .line 7
    invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 10
    :goto_0
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/g;

    iget-byte v1, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->b:B

    iget-byte v3, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->c:B

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/g;-><init>([BBB[B)V

    return-object v0
.end method

.method b()[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3
    iget-byte v1, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->b:B

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x6

    iget-byte v2, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->c:B

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->d:[B

    if-eqz v1, :cond_0

    .line 5
    array-length v1, v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->d:[B

    array-length v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 7
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/ota/g;->d:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 10
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ota/f;->a([B)B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ota/g;->a()Lcom/stripe/bbpos/bbdevice/ota/g;

    move-result-object v0

    return-object v0
.end method
