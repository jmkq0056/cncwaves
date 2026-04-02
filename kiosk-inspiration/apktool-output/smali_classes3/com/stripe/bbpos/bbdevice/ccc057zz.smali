.class final Lcom/stripe/bbpos/bbdevice/ccc057zz;
.super Lcom/stripe/bbpos/bbdevice/ccc062zz;
.source "SourceFile"


# static fields
.field static aaa004:Z = false

.field static aaa005:[B = null

.field static aaa006:Z = false


# instance fields
.field private aaa003:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [B

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa005:[B

    return-void
.end method

.method constructor <init>(BB[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc062zz;-><init>(BB)V

    .line 25
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    const/16 p2, -0x70

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 28
    sput-boolean p1, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa006:Z

    return-void

    :cond_0
    const/16 p2, -0x6f

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 32
    sput-boolean p1, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa006:Z

    return-void
.end method

.method constructor <init>(B[B)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;-><init>(BB)V

    const/16 v1, 0x50

    if-ne p1, v1, :cond_0

    const/16 v2, -0x80

    .line 3
    invoke-virtual {p0, v2}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa000(B)V

    .line 5
    :cond_0
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    .line 7
    sget-boolean v2, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa004:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eq p1, v1, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa003()B

    move-result v1

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa000(B)V

    if-eqz p2, :cond_1

    .line 10
    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc056zz;->aaa000([B)B

    move-result v1

    .line 11
    array-length v2, p2

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 12
    array-length v4, p2

    invoke-static {p2, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    array-length p2, p2

    aput-byte v1, v2, p2

    .line 14
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa005:[B

    invoke-static {v2, p2}, Lcom/stripe/bbpos/bbdevice/ccc069zz;->aaa002([B[B)[B

    move-result-object p2

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    :cond_1
    const/16 p2, -0x70

    if-ne p1, p2, :cond_2

    .line 19
    sput-boolean v3, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa006:Z

    return-void

    :cond_2
    const/16 p2, -0x6f

    if-ne p1, p2, :cond_3

    return-void

    .line 23
    :cond_3
    sput-boolean v0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa006:Z

    return-void
.end method


# virtual methods
.method protected aaa000()Lcom/stripe/bbpos/bbdevice/ccc062zz;
    .locals 4

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ccc057zz;

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa002()B

    move-result v1

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa003()B

    move-result v2

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ccc057zz;-><init>(BB[B)V

    return-object v0
.end method

.method protected aaa001()[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa002()B

    move-result v0

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa003()B

    move-result v1

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    invoke-static {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc058zz;->aaa000(BB[B)[B

    move-result-object v0

    return-object v0
.end method

.method aaa004()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

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
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc062zz;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/stripe/bbpos/bbdevice/ccc057zz;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lcom/stripe/bbpos/bbdevice/ccc057zz;

    .line 3
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa002()B

    move-result v0

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/ccc062zz;->aaa002()B

    move-result v2

    if-ne v0, v2, :cond_3

    .line 4
    iget-object v0, p1, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    if-nez v3, :cond_0

    return v2

    .line 8
    :cond_0
    :try_start_0
    array-length v0, v0

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    array-length v3, v3

    if-ne v0, v3, :cond_3

    move v0, v1

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 10
    iget-object v4, p1, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    aget-byte v4, v4, v0

    aget-byte v3, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v4, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2

    :catch_0
    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/ccc057zz;->aaa003:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
