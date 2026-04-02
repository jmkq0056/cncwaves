.class public final Lcom/squareup/tape2/QueueFile;
.super Ljava/lang/Object;
.source "QueueFile.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/tape2/QueueFile$Builder;,
        Lcom/squareup/tape2/QueueFile$Element;,
        Lcom/squareup/tape2/QueueFile$ElementIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;",
        "Ljava/lang/Iterable<",
        "[B>;"
    }
.end annotation


# static fields
.field static final INITIAL_LENGTH:I = 0x1000

.field private static final VERSIONED_HEADER:I = -0x7fffffff

.field private static final ZEROES:[B


# instance fields
.field private final buffer:[B

.field closed:Z

.field elementCount:I

.field final file:Ljava/io/File;

.field fileLength:J

.field first:Lcom/squareup/tape2/QueueFile$Element;

.field final headerLength:I

.field private last:Lcom/squareup/tape2/QueueFile$Element;

.field modCount:I

.field final raf:Ljava/io/RandomAccessFile;

.field final versioned:Z

.field private final zero:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    .line 63
    new-array v0, v0, [B

    sput-object v0, Lcom/squareup/tape2/QueueFile;->ZEROES:[B

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/io/RandomAccessFile;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 122
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    const/4 v2, 0x0

    .line 129
    iput v2, p0, Lcom/squareup/tape2/QueueFile;->modCount:I

    .line 170
    iput-object p1, p0, Lcom/squareup/tape2/QueueFile;->file:Ljava/io/File;

    .line 171
    iput-object p2, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    .line 172
    iput-boolean p3, p0, Lcom/squareup/tape2/QueueFile;->zero:Z

    const-wide/16 v3, 0x0

    .line 174
    invoke-virtual {p2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 175
    invoke-virtual {p2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 p1, 0x1

    if-nez p4, :cond_0

    .line 177
    aget-byte p3, v1, v2

    and-int/lit16 p3, p3, 0x80

    if-eqz p3, :cond_0

    move p3, p1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    iput-boolean p3, p0, Lcom/squareup/tape2/QueueFile;->versioned:Z

    const/16 p4, 0xc

    const/4 v3, 0x4

    const/16 v4, 0x10

    if-eqz p3, :cond_2

    .line 181
    iput v0, p0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    .line 183
    invoke-static {v1, v2}, Lcom/squareup/tape2/QueueFile;->readInt([BI)I

    move-result p3

    const v0, 0x7fffffff

    and-int/2addr p3, v0

    if-ne p3, p1, :cond_1

    .line 188
    invoke-static {v1, v3}, Lcom/squareup/tape2/QueueFile;->readLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    .line 189
    invoke-static {v1, p4}, Lcom/squareup/tape2/QueueFile;->readInt([BI)I

    move-result p1

    iput p1, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    .line 190
    invoke-static {v1, v4}, Lcom/squareup/tape2/QueueFile;->readLong([BI)J

    move-result-wide p3

    const/16 p1, 0x18

    .line 191
    invoke-static {v1, p1}, Lcom/squareup/tape2/QueueFile;->readLong([BI)J

    move-result-wide v0

    goto :goto_1

    .line 185
    :cond_1
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "Unable to read version "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " format. Supported versions are 1 and legacy."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 193
    :cond_2
    iput v4, p0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    .line 195
    invoke-static {v1, v2}, Lcom/squareup/tape2/QueueFile;->readInt([BI)I

    move-result p1

    int-to-long v4, p1

    iput-wide v4, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    .line 196
    invoke-static {v1, v3}, Lcom/squareup/tape2/QueueFile;->readInt([BI)I

    move-result p1

    iput p1, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    const/16 p1, 0x8

    .line 197
    invoke-static {v1, p1}, Lcom/squareup/tape2/QueueFile;->readInt([BI)I

    move-result p1

    int-to-long v2, p1

    .line 198
    invoke-static {v1, p4}, Lcom/squareup/tape2/QueueFile;->readInt([BI)I

    move-result p1

    int-to-long v0, p1

    move-wide p3, v2

    .line 201
    :goto_1
    iget-wide v2, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gtz p1, :cond_4

    .line 204
    iget-wide p1, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    iget v2, p0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v2, v2

    cmp-long p1, p1, v2

    if-lez p1, :cond_3

    .line 209
    invoke-virtual {p0, p3, p4}, Lcom/squareup/tape2/QueueFile;->readElement(J)Lcom/squareup/tape2/QueueFile$Element;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    .line 210
    invoke-virtual {p0, v0, v1}, Lcom/squareup/tape2/QueueFile;->readElement(J)Lcom/squareup/tape2/QueueFile$Element;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    return-void

    .line 205
    :cond_3
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "File is corrupt; length stored in header ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p3, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ") is invalid."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "File is truncated. Expected length: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", Actual length: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 203
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private expandIfNecessary(J)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x4

    add-long v3, p1, v1

    .line 439
    invoke-direct {v0}, Lcom/squareup/tape2/QueueFile;->remainingBytes()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-ltz v7, :cond_0

    goto/16 :goto_2

    .line 443
    :cond_0
    iget-wide v7, v0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    :cond_1
    add-long/2addr v5, v7

    const/4 v9, 0x1

    shl-long/2addr v7, v9

    cmp-long v9, v5, v3

    if-ltz v9, :cond_1

    .line 452
    invoke-direct {v0, v7, v8}, Lcom/squareup/tape2/QueueFile;->setLength(J)V

    .line 455
    iget-object v3, v0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v3, v3, Lcom/squareup/tape2/QueueFile$Element;->position:J

    add-long/2addr v3, v1

    iget-object v1, v0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget v1, v1, Lcom/squareup/tape2/QueueFile$Element;->length:I

    int-to-long v1, v1

    add-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/squareup/tape2/QueueFile;->wrapPosition(J)J

    move-result-wide v1

    .line 458
    iget-object v3, v0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v3, v3, Lcom/squareup/tape2/QueueFile$Element;->position:J

    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    .line 459
    iget-object v3, v0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v9

    .line 460
    iget-wide v3, v0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    invoke-virtual {v9, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 461
    iget v3, v0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v4, v3

    sub-long v12, v1, v4

    int-to-long v10, v3

    move-object v14, v9

    .line 462
    invoke-virtual/range {v9 .. v14}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v1

    cmp-long v1, v1, v12

    if-nez v1, :cond_2

    goto :goto_0

    .line 463
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Copied insufficient number of bytes!"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_3
    const-wide/16 v12, 0x0

    .line 468
    :goto_0
    iget-object v1, v0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v1, v1, Lcom/squareup/tape2/QueueFile$Element;->position:J

    iget-object v3, v0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v3, v3, Lcom/squareup/tape2/QueueFile$Element;->position:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 469
    iget-wide v1, v0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    iget-object v3, v0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v3, v3, Lcom/squareup/tape2/QueueFile$Element;->position:J

    add-long/2addr v1, v3

    iget v3, v0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 470
    iget v3, v0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    iget-object v4, v0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v4, v4, Lcom/squareup/tape2/QueueFile$Element;->position:J

    move-wide v15, v7

    move-wide v6, v1

    move-wide v1, v15

    invoke-direct/range {v0 .. v7}, Lcom/squareup/tape2/QueueFile;->writeHeader(JIJJ)V

    .line 471
    new-instance v3, Lcom/squareup/tape2/QueueFile$Element;

    iget-object v4, v0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget v4, v4, Lcom/squareup/tape2/QueueFile$Element;->length:I

    invoke-direct {v3, v6, v7, v4}, Lcom/squareup/tape2/QueueFile$Element;-><init>(JI)V

    iput-object v3, v0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    goto :goto_1

    :cond_4
    move-wide v1, v7

    .line 473
    iget v3, v0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    iget-object v4, v0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v4, v4, Lcom/squareup/tape2/QueueFile$Element;->position:J

    iget-object v6, v0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v6, v6, Lcom/squareup/tape2/QueueFile$Element;->position:J

    invoke-direct/range {v0 .. v7}, Lcom/squareup/tape2/QueueFile;->writeHeader(JIJJ)V

    :goto_1
    move-wide v7, v1

    .line 476
    iput-wide v7, v0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    .line 478
    iget-boolean v1, v0, Lcom/squareup/tape2/QueueFile;->zero:Z

    if-eqz v1, :cond_5

    .line 479
    iget v1, v0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v1, v1

    invoke-direct {v0, v1, v2, v12, v13}, Lcom/squareup/tape2/QueueFile;->ringErase(JJ)V

    :cond_5
    :goto_2
    return-void
.end method

.method static getSneakyThrowable(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")TT;^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 771
    throw p0
.end method

.method static initializeFromFile(Ljava/io/File;Z)Ljava/io/RandomAccessFile;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-static {v0}, Lcom/squareup/tape2/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v1

    const-wide/16 v2, 0x1000

    .line 143
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    const-wide/16 v4, 0x0

    .line 144
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    .line 146
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_0

    :cond_0
    const p1, -0x7fffffff

    .line 148
    invoke-virtual {v1, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 149
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 156
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Rename failed!"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 152
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw p0

    .line 161
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/squareup/tape2/QueueFile;->open(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object p0

    return-object p0
.end method

.method private static open(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 166
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static readInt([BI)I
    .locals 2

    .line 226
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    add-int/2addr v0, p0

    return v0
.end method

.method private static readLong([BI)J
    .locals 7

    .line 249
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private remainingBytes()J
    .locals 4

    .line 424
    iget-wide v0, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    invoke-direct {p0}, Lcom/squareup/tape2/QueueFile;->usedBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private ringErase(JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-wide v1, p1

    :goto_0
    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    .line 326
    sget-object v3, Lcom/squareup/tape2/QueueFile;->ZEROES:[B

    array-length p1, v3

    int-to-long p1, p1

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int v5, p1

    const/4 v4, 0x0

    move-object v0, p0

    .line 327
    invoke-direct/range {v0 .. v5}, Lcom/squareup/tape2/QueueFile;->ringWrite(J[BII)V

    int-to-long p1, v5

    sub-long/2addr p3, p1

    add-long/2addr v1, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ringWrite(J[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/squareup/tape2/QueueFile;->wrapPosition(J)J

    move-result-wide p1

    int-to-long v0, p5

    add-long/2addr v0, p1

    .line 310
    iget-wide v2, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 312
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void

    :cond_0
    sub-long/2addr v2, p1

    long-to-int v0, v2

    .line 317
    iget-object v1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 318
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 319
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget p2, p0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 320
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int/2addr p4, v0

    sub-int/2addr p5, v0

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private setLength(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 487
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/nio/channels/FileChannel;->force(Z)V

    return-void
.end method

.method private usedBytes()J
    .locals 7

    .line 408
    iget v0, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v0, v0

    return-wide v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v0, v0, Lcom/squareup/tape2/QueueFile$Element;->position:J

    iget-object v2, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v2, v2, Lcom/squareup/tape2/QueueFile$Element;->position:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x4

    if-ltz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v3, v0, Lcom/squareup/tape2/QueueFile$Element;->position:J

    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v5, v0, Lcom/squareup/tape2/QueueFile$Element;->position:J

    sub-long/2addr v3, v5

    add-long/2addr v3, v1

    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget v0, v0, Lcom/squareup/tape2/QueueFile$Element;->length:I

    int-to-long v0, v0

    add-long/2addr v3, v0

    iget v0, p0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v0, v0

    add-long/2addr v3, v0

    return-wide v3

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v3, v0, Lcom/squareup/tape2/QueueFile$Element;->position:J

    add-long/2addr v3, v1

    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget v0, v0, Lcom/squareup/tape2/QueueFile$Element;->length:I

    int-to-long v0, v0

    add-long/2addr v3, v0

    iget-wide v0, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    add-long/2addr v3, v0

    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v0, v0, Lcom/squareup/tape2/QueueFile$Element;->position:J

    sub-long/2addr v3, v0

    return-wide v3
.end method

.method private writeHeader(JIJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 269
    iget-boolean v0, p0, Lcom/squareup/tape2/QueueFile;->versioned:Z

    const/16 v1, 0x10

    const/16 v2, 0xc

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    const v5, -0x7fffffff

    invoke-static {v0, v4, v5}, Lcom/squareup/tape2/QueueFile;->writeInt([BII)V

    .line 271
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    invoke-static {v0, v3, p1, p2}, Lcom/squareup/tape2/QueueFile;->writeLong([BIJ)V

    .line 272
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    invoke-static {p1, v2, p3}, Lcom/squareup/tape2/QueueFile;->writeInt([BII)V

    .line 273
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    invoke-static {p1, v1, p4, p5}, Lcom/squareup/tape2/QueueFile;->writeLong([BIJ)V

    .line 274
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    const/16 p2, 0x18

    invoke-static {p1, p2, p6, p7}, Lcom/squareup/tape2/QueueFile;->writeLong([BIJ)V

    .line 275
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    const/16 p3, 0x20

    invoke-virtual {p1, p2, v4, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    long-to-int p1, p1

    invoke-static {v0, v4, p1}, Lcom/squareup/tape2/QueueFile;->writeInt([BII)V

    .line 281
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    invoke-static {p1, v3, p3}, Lcom/squareup/tape2/QueueFile;->writeInt([BII)V

    .line 282
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    const/16 p2, 0x8

    long-to-int p3, p4

    invoke-static {p1, p2, p3}, Lcom/squareup/tape2/QueueFile;->writeInt([BII)V

    .line 283
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    long-to-int p2, p6

    invoke-static {p1, v2, p2}, Lcom/squareup/tape2/QueueFile;->writeInt([BII)V

    .line 284
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget-object p2, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    invoke-virtual {p1, p2, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private static writeInt([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    .line 218
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    .line 219
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    .line 220
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x3

    int-to-byte p2, p2

    .line 221
    aput-byte p2, p0, p1

    return-void
.end method

.method private static writeLong([BIJ)V
    .locals 3

    const/16 v0, 0x38

    shr-long v0, p2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 237
    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x30

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 238
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x28

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 239
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 240
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x18

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 241
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x10

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 242
    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x8

    shr-long v1, p2, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 243
    aput-byte v1, p0, v0

    add-int/lit8 p1, p1, 0x7

    long-to-int p2, p2

    int-to-byte p2, p2

    .line 244
    aput-byte p2, p0, p1

    return-void
.end method


# virtual methods
.method public add([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 362
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/squareup/tape2/QueueFile;->add([BII)V

    return-void
.end method

.method public add([BII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    or-int v1, p2, p3

    if-ltz v1, :cond_4

    .line 378
    array-length v1, p1

    sub-int/2addr v1, p2

    if-gt p3, v1, :cond_4

    .line 381
    iget-boolean v1, p0, Lcom/squareup/tape2/QueueFile;->closed:Z

    if-nez v1, :cond_3

    int-to-long v1, p3

    .line 383
    invoke-direct {p0, v1, v2}, Lcom/squareup/tape2/QueueFile;->expandIfNecessary(J)V

    .line 386
    invoke-virtual {p0}, Lcom/squareup/tape2/QueueFile;->isEmpty()Z

    move-result v8

    const-wide/16 v9, 0x4

    if-eqz v8, :cond_0

    .line 387
    iget v1, p0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v1, v1

    goto :goto_0

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v1, v1, Lcom/squareup/tape2/QueueFile$Element;->position:J

    add-long/2addr v1, v9

    iget-object v3, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget v3, v3, Lcom/squareup/tape2/QueueFile$Element;->length:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/squareup/tape2/QueueFile;->wrapPosition(J)J

    move-result-wide v1

    .line 389
    :goto_0
    new-instance v11, Lcom/squareup/tape2/QueueFile$Element;

    invoke-direct {v11, v1, v2, p3}, Lcom/squareup/tape2/QueueFile$Element;-><init>(JI)V

    .line 392
    iget-object v1, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, p3}, Lcom/squareup/tape2/QueueFile;->writeInt([BII)V

    .line 393
    iget-wide v1, v11, Lcom/squareup/tape2/QueueFile$Element;->position:J

    iget-object v3, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/tape2/QueueFile;->ringWrite(J[BII)V

    .line 396
    iget-wide v0, v11, Lcom/squareup/tape2/QueueFile$Element;->position:J

    add-long v1, v0, v9

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/squareup/tape2/QueueFile;->ringWrite(J[BII)V

    if-eqz v8, :cond_1

    .line 399
    iget-wide v1, v11, Lcom/squareup/tape2/QueueFile$Element;->position:J

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v1, v1, Lcom/squareup/tape2/QueueFile$Element;->position:J

    :goto_1
    move-wide v4, v1

    .line 400
    iget-wide v1, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    iget v3, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    add-int/lit8 v3, v3, 0x1

    iget-wide v6, v11, Lcom/squareup/tape2/QueueFile$Element;->position:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/squareup/tape2/QueueFile;->writeHeader(JIJJ)V

    .line 401
    iput-object v11, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    .line 402
    iget v1, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    .line 403
    iget v1, p0, Lcom/squareup/tape2/QueueFile;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/tape2/QueueFile;->modCount:I

    if-eqz v8, :cond_2

    .line 404
    iput-object v11, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    :cond_2
    return-void

    .line 381
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_4
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 376
    :cond_5
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "data == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clear()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    iget-boolean v0, p0, Lcom/squareup/tape2/QueueFile;->closed:Z

    if-nez v0, :cond_2

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v2, 0x1000

    const/4 v4, 0x0

    move-object v1, p0

    .line 651
    invoke-direct/range {v1 .. v8}, Lcom/squareup/tape2/QueueFile;->writeHeader(JIJJ)V

    .line 653
    iget-boolean v0, v1, Lcom/squareup/tape2/QueueFile;->zero:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, v1, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget v3, v1, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 656
    iget-object v0, v1, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    sget-object v3, Lcom/squareup/tape2/QueueFile;->ZEROES:[B

    iget v4, v1, Lcom/squareup/tape2/QueueFile;->headerLength:I

    rsub-int v4, v4, 0x1000

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 659
    :cond_0
    iput v2, v1, Lcom/squareup/tape2/QueueFile;->elementCount:I

    .line 660
    sget-object v0, Lcom/squareup/tape2/QueueFile$Element;->NULL:Lcom/squareup/tape2/QueueFile$Element;

    iput-object v0, v1, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    .line 661
    sget-object v0, Lcom/squareup/tape2/QueueFile$Element;->NULL:Lcom/squareup/tape2/QueueFile$Element;

    iput-object v0, v1, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    .line 662
    iget-wide v2, v1, Lcom/squareup/tape2/QueueFile;->fileLength:J

    const-wide/16 v4, 0x1000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    invoke-direct {p0, v4, v5}, Lcom/squareup/tape2/QueueFile;->setLength(J)V

    .line 663
    :cond_1
    iput-wide v4, v1, Lcom/squareup/tape2/QueueFile;->fileLength:J

    .line 664
    iget v0, v1, Lcom/squareup/tape2/QueueFile;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/squareup/tape2/QueueFile;->modCount:I

    return-void

    :cond_2
    move-object v1, p0

    .line 648
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 673
    iput-boolean v0, p0, Lcom/squareup/tape2/QueueFile;->closed:Z

    .line 674
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public file()Ljava/io/File;
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->file:Ljava/io/File;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 429
    iget v0, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation

    .line 511
    new-instance v0, Lcom/squareup/tape2/QueueFile$ElementIterator;

    invoke-direct {v0, p0}, Lcom/squareup/tape2/QueueFile$ElementIterator;-><init>(Lcom/squareup/tape2/QueueFile;)V

    return-object v0
.end method

.method public peek()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 492
    iget-boolean v0, p0, Lcom/squareup/tape2/QueueFile;->closed:Z

    if-nez v0, :cond_1

    .line 493
    invoke-virtual {p0}, Lcom/squareup/tape2/QueueFile;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget v6, v0, Lcom/squareup/tape2/QueueFile$Element;->length:I

    .line 495
    new-array v4, v6, [B

    .line 496
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v0, v0, Lcom/squareup/tape2/QueueFile$Element;->position:J

    const-wide/16 v2, 0x4

    add-long/2addr v2, v0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/squareup/tape2/QueueFile;->ringRead(J[BII)V

    return-object v4

    .line 492
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method readElement(J)Lcom/squareup/tape2/QueueFile$Element;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 288
    sget-object p1, Lcom/squareup/tape2/QueueFile$Element;->NULL:Lcom/squareup/tape2/QueueFile$Element;

    return-object p1

    .line 289
    :cond_0
    iget-object v3, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/tape2/QueueFile;->ringRead(J[BII)V

    .line 290
    iget-object p1, v0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/squareup/tape2/QueueFile;->readInt([BI)I

    move-result p1

    .line 291
    new-instance p2, Lcom/squareup/tape2/QueueFile$Element;

    invoke-direct {p2, v1, v2, p1}, Lcom/squareup/tape2/QueueFile$Element;-><init>(JI)V

    return-object p2
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 595
    invoke-virtual {p0, v0}, Lcom/squareup/tape2/QueueFile;->remove(I)V

    return-void
.end method

.method public remove(I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 610
    :cond_0
    iget v1, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    if-ne p1, v1, :cond_1

    .line 611
    invoke-virtual {p0}, Lcom/squareup/tape2/QueueFile;->clear()V

    return-void

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/tape2/QueueFile;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 617
    iget v1, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    if-gt p1, v1, :cond_4

    .line 622
    iget-object v1, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v8, v1, Lcom/squareup/tape2/QueueFile$Element;->position:J

    .line 626
    iget-object v1, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v1, v1, Lcom/squareup/tape2/QueueFile$Element;->position:J

    .line 627
    iget-object v3, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    iget v3, v3, Lcom/squareup/tape2/QueueFile$Element;->length:I

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    move v10, v3

    move-wide v11, v4

    move v7, v6

    :goto_0
    move-wide v4, v1

    if-ge v7, p1, :cond_2

    add-int/lit8 v1, v10, 0x4

    int-to-long v1, v1

    add-long/2addr v11, v1

    const-wide/16 v1, 0x4

    add-long/2addr v4, v1

    int-to-long v1, v10

    add-long/2addr v4, v1

    .line 630
    invoke-virtual {p0, v4, v5}, Lcom/squareup/tape2/QueueFile;->wrapPosition(J)J

    move-result-wide v1

    .line 631
    iget-object v3, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/tape2/QueueFile;->ringRead(J[BII)V

    .line 632
    iget-object v3, p0, Lcom/squareup/tape2/QueueFile;->buffer:[B

    invoke-static {v3, v6}, Lcom/squareup/tape2/QueueFile;->readInt([BI)I

    move-result v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 636
    :cond_2
    iget-wide v1, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    iget v3, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    sub-int/2addr v3, p1

    iget-object v6, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    iget-wide v6, v6, Lcom/squareup/tape2/QueueFile$Element;->position:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/squareup/tape2/QueueFile;->writeHeader(JIJJ)V

    .line 637
    iget v1, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    .line 638
    iget v1, p0, Lcom/squareup/tape2/QueueFile;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/tape2/QueueFile;->modCount:I

    .line 639
    new-instance v1, Lcom/squareup/tape2/QueueFile$Element;

    invoke-direct {v1, v4, v5, v10}, Lcom/squareup/tape2/QueueFile$Element;-><init>(JI)V

    iput-object v1, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    .line 641
    iget-boolean v1, p0, Lcom/squareup/tape2/QueueFile;->zero:Z

    if-eqz v1, :cond_3

    .line 642
    invoke-direct {p0, v8, v9, v11, v12}, Lcom/squareup/tape2/QueueFile;->ringErase(JJ)V

    :cond_3
    :goto_1
    return-void

    .line 618
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot remove more elements ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") than present in queue ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :cond_5
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 605
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot remove negative ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") number of elements."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method ringRead(J[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    invoke-virtual {p0, p1, p2}, Lcom/squareup/tape2/QueueFile;->wrapPosition(J)J

    move-result-wide p1

    int-to-long v0, p5

    add-long/2addr v0, p1

    .line 342
    iget-wide v2, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 344
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void

    :cond_0
    sub-long/2addr v2, p1

    long-to-int v0, v2

    .line 349
    iget-object v1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 350
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p3, p4, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 351
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    iget p2, p0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 352
    iget-object p1, p0, Lcom/squareup/tape2/QueueFile;->raf:Ljava/io/RandomAccessFile;

    add-int/2addr p4, v0

    sub-int/2addr p5, v0

    invoke-virtual {p1, p3, p4, p5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 586
    iget v0, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QueueFile{file="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/tape2/QueueFile;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zero="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/tape2/QueueFile;->zero:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versioned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/squareup/tape2/QueueFile;->versioned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/squareup/tape2/QueueFile;->elementCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/tape2/QueueFile;->first:Lcom/squareup/tape2/QueueFile$Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", last="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/tape2/QueueFile;->last:Lcom/squareup/tape2/QueueFile$Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wrapPosition(J)J
    .locals 4

    .line 296
    iget-wide v0, p0, Lcom/squareup/tape2/QueueFile;->fileLength:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide p1

    .line 297
    :cond_0
    iget v2, p0, Lcom/squareup/tape2/QueueFile;->headerLength:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    sub-long/2addr v2, v0

    return-wide v2
.end method
