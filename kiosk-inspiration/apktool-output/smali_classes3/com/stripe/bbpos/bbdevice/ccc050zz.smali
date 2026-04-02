.class Lcom/stripe/bbpos/bbdevice/ccc050zz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

.field aaa001:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/stripe/bbpos/bbdevice/BBDeviceController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    .line 3
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa001:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method static aaa000()Ljava/lang/String;
    .locals 2

    .line 19
    const-string v0, "0003"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static aaa000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x3

    add-int/2addr v0, v2

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 8
    aget-byte v3, p0, v0

    const/16 v4, -0x5b

    if-ne v3, v1, :cond_0

    .line 9
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_0
    if-ne v3, v2, :cond_1

    .line 11
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    if-ne v3, v4, :cond_2

    .line 13
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 15
    :cond_2
    :goto_1
    aget-byte v3, p0, v0

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "02"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "03"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static aaa001(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method aaa000([B)V
    .locals 8

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa001:Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 21
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa001:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 22
    array-length v0, p1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto/16 :goto_6

    .line 26
    :cond_0
    aget-byte v0, p1, v2

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_a

    move v0, v3

    .line 29
    :goto_0
    array-length v4, p1

    const/16 v5, -0x5b

    const/4 v6, -0x1

    if-ge v0, v4, :cond_3

    .line 30
    aget-byte v4, p1, v0

    if-ne v4, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x3

    if-ne v4, v7, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_3
    move v0, v6

    :goto_2
    if-ne v0, v6, :cond_4

    goto/16 :goto_6

    .line 43
    :cond_4
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa001:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 44
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa001:Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v6, v0, 0x1

    array-length v7, p1

    sub-int/2addr v7, v6

    invoke-virtual {v4, p1, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    sub-int/2addr v0, v3

    .line 47
    new-array v4, v0, [B

    .line 48
    invoke-static {p1, v3, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move v6, v2

    :goto_3
    if-ge v6, v0, :cond_7

    .line 52
    aget-byte v7, v4, v6

    if-ne v7, v5, :cond_5

    add-int/lit8 v6, v6, 0x1

    :cond_5
    if-ge v6, v0, :cond_6

    .line 56
    aget-byte v7, v4, v6

    invoke-virtual {p1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 60
    :cond_7
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 61
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    array-length v5, p1

    sub-int/2addr v5, v3

    new-array v3, v5, [B

    .line 64
    invoke-static {p1, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/aaa007zz;->aaa000([B)B

    move-result p1

    .line 68
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x4

    .line 70
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    const/16 v3, 0x8

    .line 71
    invoke-virtual {v0, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "0002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 74
    const-string v1, "0006"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 75
    const-string v1, "0008"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 76
    const-string v1, "000A"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 78
    :cond_8
    const-string v0, "0004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 79
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa019()Lcom/stripe/bbpos/bbdevice/ccc066zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc066zz$aaa002zz;)V

    .line 80
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->CARD_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa001(Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;Ljava/util/Hashtable;)V

    goto :goto_5

    .line 81
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa025(Ljava/lang/String;)V

    goto :goto_5

    .line 90
    :cond_a
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa001:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 91
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa001:Ljava/io/ByteArrayOutputStream;

    array-length v1, p1

    sub-int/2addr v1, v3

    invoke-virtual {v0, p1, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 96
    :cond_b
    :goto_5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa001:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 97
    new-array p1, v2, [B

    invoke-virtual {p0, p1}, Lcom/stripe/bbpos/bbdevice/ccc050zz;->aaa000([B)V

    :cond_c
    :goto_6
    return-void
.end method
