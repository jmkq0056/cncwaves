.class public final Lokhttp3/tls/internal/der/DerWriter;
.super Ljava/lang/Object;
.source "DerWriter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0002\u001a\u00020\u0003H\u0002J\u0008\u0010\u0016\u001a\u00020\rH\u0016J\u001f\u0010\u0017\u001a\u0002H\u0018\"\u0004\u0008\u0000\u0010\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u0002H\u00180\u001a\u00a2\u0006\u0002\u0010\u001bJ2\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"2\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u001d0#J\u000e\u0010$\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020%J\u000e\u0010&\u001a\u00020\u001d2\u0006\u0010\'\u001a\u00020(J\u000e\u0010)\u001a\u00020\u001d2\u0006\u0010*\u001a\u00020\u0006J\u000e\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\"J\u000e\u0010-\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\rJ\u000e\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u000201J\u000e\u00102\u001a\u00020\u001d2\u0006\u0010.\u001a\u00020\rJ\u000e\u00103\u001a\u00020\u001d2\u0006\u0010\u000f\u001a\u00020\rJ\u0010\u00104\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\"H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00018F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lokhttp3/tls/internal/der/DerWriter;",
        "",
        "sink",
        "Lokio/BufferedSink;",
        "(Lokio/BufferedSink;)V",
        "constructed",
        "",
        "getConstructed",
        "()Z",
        "setConstructed",
        "(Z)V",
        "path",
        "",
        "",
        "stack",
        "value",
        "typeHint",
        "getTypeHint",
        "()Ljava/lang/Object;",
        "setTypeHint",
        "(Ljava/lang/Object;)V",
        "typeHintStack",
        "toString",
        "withTypeHint",
        "T",
        "block",
        "Lkotlin/Function0;",
        "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "write",
        "",
        "name",
        "tagClass",
        "",
        "tag",
        "",
        "Lkotlin/Function1;",
        "writeBigInteger",
        "Ljava/math/BigInteger;",
        "writeBitString",
        "bitString",
        "Lokhttp3/tls/internal/der/BitString;",
        "writeBoolean",
        "b",
        "writeLong",
        "v",
        "writeObjectIdentifier",
        "s",
        "writeOctetString",
        "byteString",
        "Lokio/ByteString;",
        "writeRelativeObjectIdentifier",
        "writeUtf8",
        "writeVariableLengthLong",
        "okhttp-tls"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private constructed:Z

.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokio/BufferedSink;",
            ">;"
        }
    .end annotation
.end field

.field private final typeHintStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/BufferedSink;)V
    .locals 2

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Lokio/BufferedSink;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/tls/internal/der/DerWriter;->stack:Ljava/util/List;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lokhttp3/tls/internal/der/DerWriter;->typeHintStack:Ljava/util/List;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lokhttp3/tls/internal/der/DerWriter;->path:Ljava/util/List;

    return-void
.end method

.method private final sink()Lokio/BufferedSink;
    .locals 2

    .line 108
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerWriter;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/BufferedSink;

    return-object v0
.end method

.method private final writeVariableLengthLong(J)V
    .locals 9

    .line 176
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerWriter;->sink()Lokio/BufferedSink;

    move-result-object v0

    .line 177
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x46

    .line 178
    div-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x7

    const/4 v2, -0x7

    const/4 v3, 0x0

    .line 179
    invoke-static {v1, v3, v2}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v2

    if-gt v2, v1, :cond_1

    :goto_0
    if-nez v1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const/16 v4, 0x80

    :goto_1
    shr-long v5, p1, v1

    const-wide/16 v7, 0x7f

    and-long/2addr v5, v7

    long-to-int v5, v5

    or-int/2addr v4, v5

    .line 181
    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, -0x7

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getConstructed()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/DerWriter;->constructed:Z

    return v0
.end method

.method public final getTypeHint()Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerWriter;->typeHintStack:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setConstructed(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lokhttp3/tls/internal/der/DerWriter;->constructed:Z

    return-void
.end method

.method public final setTypeHint(Ljava/lang/Object;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerWriter;->typeHintStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 185
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerWriter;->path:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    const-string v0, " / "

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const/16 v8, 0x3e

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final withTypeHint(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerWriter;->typeHintStack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v0, p0, Lokhttp3/tls/internal/der/DerWriter;->typeHintStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lokhttp3/tls/internal/der/DerWriter;->typeHintStack:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/tls/internal/der/DerWriter;->typeHintStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    throw p1
.end method

.method public final write(Ljava/lang/String;IJLkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokio/BufferedSink;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 53
    iget-object v1, p0, Lokhttp3/tls/internal/der/DerWriter;->stack:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lokhttp3/tls/internal/der/DerWriter;->constructed:Z

    .line 55
    iget-object v2, p0, Lokhttp3/tls/internal/der/DerWriter;->path:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 57
    :try_start_0
    invoke-interface {p5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-boolean p5, p0, Lokhttp3/tls/internal/der/DerWriter;->constructed:Z

    if-eqz p5, :cond_0

    const/16 p5, 0x20

    goto :goto_0

    :cond_0
    move p5, v1

    .line 59
    :goto_0
    iput-boolean p1, p0, Lokhttp3/tls/internal/der/DerWriter;->constructed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v2, p0, Lokhttp3/tls/internal/der/DerWriter;->stack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    iget-object v2, p0, Lokhttp3/tls/internal/der/DerWriter;->path:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 65
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerWriter;->sink()Lokio/BufferedSink;

    move-result-object v2

    const-wide/16 v3, 0x1f

    cmp-long v3, p3, v3

    if-gez v3, :cond_1

    or-int/2addr p2, p5

    long-to-int p3, p3

    or-int/2addr p2, p3

    .line 70
    invoke-interface {v2, p2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_1

    :cond_1
    or-int/2addr p2, p5

    or-int/lit8 p2, p2, 0x1f

    .line 73
    invoke-interface {v2, p2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 74
    invoke-direct {p0, p3, p4}, Lokhttp3/tls/internal/der/DerWriter;->writeVariableLengthLong(J)V

    .line 78
    :goto_1
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide p2

    const-wide/16 p4, 0x80

    cmp-long p4, p2, p4

    if-gez p4, :cond_2

    long-to-int p1, p2

    .line 80
    invoke-interface {v2, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_3

    .line 83
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p4

    rsub-int/lit8 p4, p4, 0x47

    .line 84
    div-int/lit8 p4, p4, 0x8

    or-int/lit16 p5, p4, 0x80

    .line 85
    invoke-interface {v2, p5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    sub-int/2addr p4, p1

    mul-int/lit8 p4, p4, 0x8

    const/4 p1, -0x8

    .line 86
    invoke-static {p4, v1, p1}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result p1

    if-gt p1, p4, :cond_3

    :goto_2
    shr-long v3, p2, p4

    long-to-int p5, v3

    .line 87
    invoke-interface {v2, p5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    if-eq p4, p1, :cond_3

    add-int/lit8 p4, p4, -0x8

    goto :goto_2

    .line 92
    :cond_3
    :goto_3
    check-cast v0, Lokio/Source;

    invoke-interface {v2, v0}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    return-void

    :catchall_0
    move-exception p2

    .line 61
    iget-object p3, p0, Lokhttp3/tls/internal/der/DerWriter;->stack:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, p1

    invoke-interface {p3, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    iget-object p3, p0, Lokhttp3/tls/internal/der/DerWriter;->path:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, p1

    invoke-interface {p3, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    throw p2
.end method

.method public final writeBigInteger(Ljava/math/BigInteger;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerWriter;->sink()Lokio/BufferedSink;

    move-result-object v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    const-string v1, "value.toByteArray()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    return-void
.end method

.method public final writeBitString(Lokhttp3/tls/internal/der/BitString;)V
    .locals 2

    const-string v0, "bitString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerWriter;->sink()Lokio/BufferedSink;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/BitString;->getUnusedBitsCount()I

    move-result v1

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 136
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/BitString;->getByteString()Lokio/ByteString;

    move-result-object p1

    invoke-interface {v0, p1}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 1

    .line 111
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerWriter;->sink()Lokio/BufferedSink;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    return-void
.end method

.method public final writeLong(J)V
    .locals 5

    .line 119
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerWriter;->sink()Lokio/BufferedSink;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    not-long v1, p1

    .line 122
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    goto :goto_0

    .line 124
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    :goto_0
    rsub-int/lit8 v1, v1, 0x41

    add-int/lit8 v1, v1, 0x7

    .line 127
    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    const/4 v3, -0x8

    .line 128
    invoke-static {v1, v2, v3}, Lkotlin/internal/ProgressionUtilKt;->getProgressionLastElement(III)I

    move-result v2

    if-gt v2, v1, :cond_1

    :goto_1
    shr-long v3, p1, v1

    long-to-int v3, v3

    .line 129
    invoke-interface {v0, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final writeObjectIdentifier(Ljava/lang/String;)V
    .locals 9

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v0

    .line 150
    invoke-virtual {p1}, Lokio/Buffer;->readByte()B

    move-result v2

    const-string v3, "Failed requirement."

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_2

    .line 151
    invoke-virtual {p1}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v5

    const/16 v2, 0x28

    int-to-long v7, v2

    mul-long/2addr v0, v7

    add-long/2addr v0, v5

    .line 152
    invoke-direct {p0, v0, v1}, Lokhttp3/tls/internal/der/DerWriter;->writeVariableLengthLong(J)V

    .line 154
    :goto_0
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p1}, Lokio/Buffer;->readByte()B

    move-result v0

    if-ne v0, v4, :cond_0

    .line 156
    invoke-virtual {p1}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v0

    .line 157
    invoke-direct {p0, v0, v1}, Lokhttp3/tls/internal/der/DerWriter;->writeVariableLengthLong(J)V

    goto :goto_0

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void

    .line 150
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final writeOctetString(Lokio/ByteString;)V
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerWriter;->sink()Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    return-void
.end method

.method public final writeRelativeObjectIdentifier(Ljava/lang/String;)V
    .locals 4

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    const/16 v1, 0x2e

    .line 164
    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    .line 167
    :goto_0
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    invoke-virtual {p1}, Lokio/Buffer;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p1}, Lokio/Buffer;->readDecimalLong()J

    move-result-wide v2

    .line 170
    invoke-direct {p0, v2, v3}, Lokhttp3/tls/internal/der/DerWriter;->writeVariableLengthLong(J)V

    goto :goto_0

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public final writeUtf8(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lokhttp3/tls/internal/der/DerWriter;->sink()Lokio/BufferedSink;

    move-result-object v0

    invoke-interface {v0, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    return-void
.end method
