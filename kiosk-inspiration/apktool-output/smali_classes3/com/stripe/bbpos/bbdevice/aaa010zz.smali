.class final Lcom/stripe/bbpos/bbdevice/aaa010zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aaa000:[B

.field private aaa001:B

.field private aaa002:B

.field private final aaa003:[B

.field private aaa004:Z


# direct methods
.method constructor <init>([B)V
    .locals 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 11
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa000:[B

    const/4 v2, 0x0

    .line 12
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    aget-byte v1, p1, v0

    shr-int/lit8 v3, v1, 0x6

    const/4 v4, 0x3

    and-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa001:B

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    .line 15
    iput-byte v1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa002:B

    .line 17
    aget-byte v1, p1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    .line 18
    new-array v3, v1, [B

    iput-object v3, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003:[B

    const/4 v4, 0x5

    .line 19
    invoke-static {p1, v4, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa000:[B

    const/4 v1, 0x1

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    .line 22
    rem-int/2addr p1, v0

    if-ne p1, v1, :cond_0

    .line 23
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa004:Z

    :cond_0
    return-void
.end method

.method constructor <init>([BBB[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa000:[B

    .line 3
    iput-byte p2, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa001:B

    .line 4
    iput-byte p3, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa002:B

    .line 5
    iput-object p4, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003:[B

    const/4 p2, 0x1

    .line 7
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 8
    rem-int/lit8 p1, p1, 0x2

    if-ne p1, p2, :cond_0

    .line 9
    iput-boolean p2, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa004:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected aaa000()Lcom/stripe/bbpos/bbdevice/aaa010zz;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa000:[B

    array-length v1, v0

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003:[B

    array-length v1, v0

    new-array v4, v1, [B

    .line 6
    invoke-static {v0, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa010zz;

    iget-byte v1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa001:B

    iget-byte v3, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa002:B

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa010zz;-><init>([BBB[B)V

    return-object v0
.end method

.method aaa000(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa002:B

    return-void
.end method

.method aaa001()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa001:B

    return v0
.end method

.method aaa002()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa002:B

    return v0
.end method

.method aaa003()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa000:[B

    return-object v0
.end method

.method aaa004()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003:[B

    return-object v0
.end method

.method aaa005()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa004:Z

    return v0
.end method

.method aaa006()[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa000:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3
    iget-byte v1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa001:B

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x6

    iget-byte v2, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa002:B

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003:[B

    if-eqz v1, :cond_0

    .line 5
    array-length v1, v1

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 6
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003:[B

    array-length v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 7
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa003:[B

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

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

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
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa010zz;->aaa000()Lcom/stripe/bbpos/bbdevice/aaa010zz;

    move-result-object v0

    return-object v0
.end method
