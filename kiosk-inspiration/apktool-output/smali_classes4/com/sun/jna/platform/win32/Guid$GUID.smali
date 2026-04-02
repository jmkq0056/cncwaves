.class public Lcom/sun/jna/platform/win32/Guid$GUID;
.super Lcom/sun/jna/Structure;
.source "Guid.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Data1",
        "Data2",
        "Data3",
        "Data4"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Guid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GUID"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Guid$GUID$ByReference;,
        Lcom/sun/jna/platform/win32/Guid$GUID$ByValue;
    }
.end annotation


# instance fields
.field public Data1:I

.field public Data2:S

.field public Data3:S

.field public Data4:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x8

    .line 120
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 170
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x8

    .line 120
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    .line 171
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Guid$GUID;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/Guid$GUID;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x8

    .line 120
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    .line 135
    iget v0, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data1:I

    iput v0, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data1:I

    .line 136
    iget-short v0, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data2:S

    iput-short v0, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data2:S

    .line 137
    iget-short v0, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data3:S

    iput-short v0, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data3:S

    .line 138
    iget-object p1, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    .line 140
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Guid$GUID;->writeFieldsToMemory()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 150
    invoke-static {p1}, Lcom/sun/jna/platform/win32/Guid$GUID;->fromString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Guid$GUID;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Lcom/sun/jna/platform/win32/Guid$GUID;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 160
    invoke-static {p1}, Lcom/sun/jna/platform/win32/Guid$GUID;->fromBinary([B)Lcom/sun/jna/platform/win32/Guid$GUID;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Lcom/sun/jna/platform/win32/Guid$GUID;)V

    return-void
.end method

.method public static fromBinary([B)Lcom/sun/jna/platform/win32/Guid$GUID;
    .locals 12

    .line 206
    array-length v0, p0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 211
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>()V

    const/4 v1, 0x0

    .line 212
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    const/4 v5, 0x1

    .line 214
    aget-byte v6, p0, v5

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v2, v6

    shl-long/2addr v2, v4

    const/4 v6, 0x2

    .line 216
    aget-byte v7, p0, v6

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long/2addr v2, v7

    shl-long/2addr v2, v4

    const/4 v7, 0x3

    .line 218
    aget-byte v8, p0, v7

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v2, v8

    long-to-int v2, v2

    .line 219
    iput v2, v0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data1:I

    const/4 v2, 0x4

    .line 221
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v4

    const/4 v8, 0x5

    .line 223
    aget-byte v9, p0, v8

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    int-to-short v3, v3

    .line 224
    iput-short v3, v0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data2:S

    const/4 v3, 0x6

    .line 226
    aget-byte v9, p0, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v4

    const/4 v10, 0x7

    .line 228
    aget-byte v11, p0, v10

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v9, v11

    int-to-short v9, v9

    .line 229
    iput-short v9, v0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data3:S

    .line 231
    iget-object v9, v0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    aget-byte v4, p0, v4

    aput-byte v4, v9, v1

    const/16 v1, 0x9

    .line 232
    aget-byte v1, p0, v1

    aput-byte v1, v9, v5

    const/16 v1, 0xa

    .line 233
    aget-byte v1, p0, v1

    aput-byte v1, v9, v6

    const/16 v1, 0xb

    .line 234
    aget-byte v1, p0, v1

    aput-byte v1, v9, v7

    const/16 v1, 0xc

    .line 235
    aget-byte v1, p0, v1

    aput-byte v1, v9, v2

    const/16 v1, 0xd

    .line 236
    aget-byte v1, p0, v1

    aput-byte v1, v9, v8

    const/16 v1, 0xe

    .line 237
    aget-byte v1, p0, v1

    aput-byte v1, v9, v3

    const/16 v1, 0xf

    .line 238
    aget-byte p0, p0, v1

    aput-byte p0, v9, v10

    .line 240
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Guid$GUID;->writeFieldsToMemory()V

    return-object v0

    .line 207
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid data length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Guid$GUID;
    .locals 12

    const/16 v0, 0x20

    .line 254
    new-array v1, v0, [C

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/16 v3, 0x10

    .line 256
    new-array v4, v3, [B

    .line 257
    new-instance v5, Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>()V

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x26

    if-gt v6, v7, :cond_3

    const/4 p0, 0x0

    move v6, p0

    move v7, v6

    .line 266
    :goto_0
    array-length v8, v2

    if-ge v6, v8, :cond_1

    .line 267
    aget-char v8, v2, v6

    const/16 v9, 0x7b

    if-eq v8, v9, :cond_0

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_0

    const/16 v9, 0x7d

    if-eq v8, v9, :cond_0

    add-int/lit8 v9, v7, 0x1

    .line 269
    aput-char v8, v1, v7

    move v7, v9

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_1
    const/4 v6, 0x4

    if-ge v2, v0, :cond_2

    .line 274
    div-int/lit8 v7, v2, 0x2

    aget-char v8, v1, v2

    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    shl-int/lit8 v6, v8, 0x4

    add-int/lit8 v8, v2, 0x1

    aget-char v8, v1, v8

    .line 275
    invoke-static {v8, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    add-int/2addr v6, v8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v4, v7

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 283
    :cond_2
    aget-byte v0, v4, p0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/16 v2, 0x8

    shl-long/2addr v0, v2

    const/4 v3, 0x1

    .line 285
    aget-byte v7, v4, v3

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long/2addr v0, v7

    shl-long/2addr v0, v2

    const/4 v7, 0x2

    .line 287
    aget-byte v8, v4, v7

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long/2addr v0, v8

    shl-long/2addr v0, v2

    const/4 v8, 0x3

    .line 289
    aget-byte v9, v4, v8

    and-int/lit16 v9, v9, 0xff

    int-to-long v9, v9

    or-long/2addr v0, v9

    long-to-int v0, v0

    .line 290
    iput v0, v5, Lcom/sun/jna/platform/win32/Guid$GUID;->Data1:I

    .line 292
    aget-byte v0, v4, v6

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v2

    const/4 v1, 0x5

    .line 294
    aget-byte v9, v4, v1

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v0, v9

    int-to-short v0, v0

    .line 295
    iput-short v0, v5, Lcom/sun/jna/platform/win32/Guid$GUID;->Data2:S

    const/4 v0, 0x6

    .line 297
    aget-byte v9, v4, v0

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v2

    const/4 v10, 0x7

    .line 299
    aget-byte v11, v4, v10

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v9, v11

    int-to-short v9, v9

    .line 300
    iput-short v9, v5, Lcom/sun/jna/platform/win32/Guid$GUID;->Data3:S

    .line 302
    iget-object v9, v5, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    aget-byte v2, v4, v2

    aput-byte v2, v9, p0

    const/16 p0, 0x9

    .line 303
    aget-byte p0, v4, p0

    aput-byte p0, v9, v3

    const/16 p0, 0xa

    .line 304
    aget-byte p0, v4, p0

    aput-byte p0, v9, v7

    const/16 p0, 0xb

    .line 305
    aget-byte p0, v4, p0

    aput-byte p0, v9, v8

    const/16 p0, 0xc

    .line 306
    aget-byte p0, v4, p0

    aput-byte p0, v9, v6

    const/16 p0, 0xd

    .line 307
    aget-byte p0, v4, p0

    aput-byte p0, v9, v1

    const/16 p0, 0xe

    .line 308
    aget-byte p0, v4, p0

    aput-byte p0, v9, v0

    const/16 p0, 0xf

    .line 309
    aget-byte p0, v4, p0

    aput-byte p0, v9, v10

    .line 311
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/Guid$GUID;->writeFieldsToMemory()V

    return-object v5

    .line 261
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid guid length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newGuid()Lcom/sun/jna/platform/win32/Guid$GUID;
    .locals 3

    .line 323
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const/16 v1, 0x10

    .line 324
    new-array v1, v1, [B

    .line 326
    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x6

    .line 327
    aget-byte v2, v1, v0

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x40

    int-to-byte v2, v2

    .line 328
    aput-byte v2, v1, v0

    const/16 v0, 0x8

    .line 329
    aget-byte v2, v1, v0

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    .line 330
    aput-byte v2, v1, v0

    .line 332
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 182
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    .line 186
    :cond_2
    check-cast p1, Lcom/sun/jna/platform/win32/Guid$GUID;

    .line 187
    iget v2, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data1:I

    iget v3, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data1:I

    if-ne v2, v3, :cond_3

    iget-short v2, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data2:S

    iget-short v3, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data2:S

    if-ne v2, v3, :cond_3

    iget-short v2, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data3:S

    iget-short v3, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data3:S

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    iget-object p1, p1, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    .line 190
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 195
    iget v0, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data1:I

    iget-short v1, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data2:S

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data3:S

    const v2, 0xffff

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method public toByteArray()[B
    .locals 13

    const/16 v0, 0x10

    .line 341
    new-array v0, v0, [B

    .line 344
    iget v1, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data1:I

    shr-int/lit8 v2, v1, 0x18

    int-to-byte v2, v2

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    shr-int/lit8 v4, v1, 0x8

    int-to-byte v4, v4

    int-to-byte v1, v1

    const/4 v5, 0x4

    .line 347
    new-array v6, v5, [B

    const/4 v7, 0x0

    aput-byte v2, v6, v7

    const/4 v2, 0x1

    aput-byte v3, v6, v2

    const/4 v3, 0x2

    aput-byte v4, v6, v3

    const/4 v4, 0x3

    aput-byte v1, v6, v4

    .line 350
    iget-short v1, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data2:S

    shr-int/lit8 v8, v1, 0x18

    int-to-byte v8, v8

    shr-int/lit8 v9, v1, 0x10

    int-to-byte v9, v9

    shr-int/lit8 v10, v1, 0x8

    int-to-byte v10, v10

    int-to-byte v1, v1

    .line 353
    new-array v11, v5, [B

    aput-byte v8, v11, v7

    aput-byte v9, v11, v2

    aput-byte v10, v11, v3

    aput-byte v1, v11, v4

    .line 356
    iget-short v1, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data3:S

    shr-int/lit8 v8, v1, 0x18

    int-to-byte v8, v8

    shr-int/lit8 v9, v1, 0x10

    int-to-byte v9, v9

    shr-int/lit8 v10, v1, 0x8

    int-to-byte v10, v10

    int-to-byte v1, v1

    .line 359
    new-array v12, v5, [B

    aput-byte v8, v12, v7

    aput-byte v9, v12, v2

    aput-byte v10, v12, v3

    aput-byte v1, v12, v4

    .line 361
    invoke-static {v6, v7, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    invoke-static {v11, v3, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x6

    .line 363
    invoke-static {v12, v3, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 364
    iget-object v1, p0, Lcom/sun/jna/platform/win32/Guid$GUID;->Data4:[B

    const/16 v2, 0x8

    invoke-static {v1, v7, v0, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toGuidString()Ljava/lang/String;
    .locals 6

    .line 377
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Guid$GUID;->toByteArray()[B

    move-result-object v0

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 380
    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 382
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 383
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const-string v4, "0123456789ABCDEF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 384
    aget-byte v5, v0, v2

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 385
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 388
    :cond_0
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    :cond_2
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeFieldsToMemory()V
    .locals 2

    .line 399
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Guid$GUID;->getFieldOrder()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 400
    invoke-virtual {p0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;->writeField(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
