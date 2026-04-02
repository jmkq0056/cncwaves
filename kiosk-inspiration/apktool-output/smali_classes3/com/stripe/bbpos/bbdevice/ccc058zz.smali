.class final Lcom/stripe/bbpos/bbdevice/ccc058zz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;


# direct methods
.method static aaa000(BB)[B
    .locals 6

    .line 44
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, -0xf

    .line 46
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 47
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 48
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 50
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 51
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 55
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc056zz;->aaa000([B)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 57
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 59
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc056zz;->aaa000([B)B

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/16 v1, -0x56

    .line 64
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 65
    :goto_0
    array-length v2, p1

    const/16 v4, -0x45

    if-ge v3, v2, :cond_2

    .line 66
    aget-byte v2, p1, v3

    const/16 v5, -0x34

    if-eq v2, v1, :cond_0

    if-eq v2, v4, :cond_0

    if-ne v2, v5, :cond_1

    .line 67
    :cond_0
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 69
    :cond_1
    aget-byte v2, p1, v3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[CommandFactory] [createBluetoothResponse] out: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000(Ljava/lang/String;)V

    .line 74
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc058zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz p1, :cond_3

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013(Ljava/lang/String;)V

    .line 78
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method static aaa000(BB[B)[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 4
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    .line 5
    :cond_0
    array-length v2, p2

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez p2, :cond_1

    move v2, v1

    goto :goto_1

    .line 6
    :cond_1
    array-length v2, p2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p2, :cond_2

    .line 8
    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 11
    :cond_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 13
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez p2, :cond_3

    move p0, v1

    goto :goto_2

    .line 14
    :cond_3
    array-length p0, p2

    shr-int/lit8 p0, p0, 0x8

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    :goto_2
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez p2, :cond_4

    move p0, v1

    goto :goto_3

    .line 15
    :cond_4
    array-length p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    :goto_3
    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p2, :cond_5

    .line 17
    array-length p0, p2

    invoke-virtual {v2, p2, v1, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 20
    :cond_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc056zz;->aaa000([B)B

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 22
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 24
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc056zz;->aaa000([B)B

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 27
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/16 p2, -0x56

    .line 29
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 30
    :goto_4
    array-length v2, p1

    const/16 v3, -0x45

    if-ge v1, v2, :cond_8

    .line 31
    aget-byte v2, p1, v1

    const/16 v4, -0x34

    if-eq v2, p2, :cond_6

    if-eq v2, v3, :cond_6

    if-ne v2, v4, :cond_7

    .line 32
    :cond_6
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 34
    :cond_7
    aget-byte v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 36
    :cond_8
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[CommandFactory] [createBluetoothCommand] out: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa000(Ljava/lang/String;)V

    .line 39
    sget-object p1, Lcom/stripe/bbpos/bbdevice/ccc058zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    if-eqz p1, :cond_9

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ") [CommandFactory] [createBluetoothCommand] out: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa013(Ljava/lang/String;)V

    .line 43
    :cond_9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
