.class public final Lokhttp3/tls/internal/der/AnyValue;
.super Ljava/lang/Object;
.source "AnyValue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\nH\u00c6\u0003J;\u0010!\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\"\u001a\u00020\u00072\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0008\u0010$\u001a\u00020\u0003H\u0016J\t\u0010%\u001a\u00020&H\u00d6\u0001R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0017\u0010\u0015R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\'"
    }
    d2 = {
        "Lokhttp3/tls/internal/der/AnyValue;",
        "",
        "tagClass",
        "",
        "tag",
        "",
        "constructed",
        "",
        "length",
        "bytes",
        "Lokio/ByteString;",
        "(IJZJLokio/ByteString;)V",
        "getBytes",
        "()Lokio/ByteString;",
        "getConstructed",
        "()Z",
        "setConstructed",
        "(Z)V",
        "getLength",
        "()J",
        "setLength",
        "(J)V",
        "getTag",
        "setTag",
        "getTagClass",
        "()I",
        "setTagClass",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final bytes:Lokio/ByteString;

.field private constructed:Z

.field private length:J

.field private tag:J

.field private tagClass:I


# direct methods
.method public constructor <init>(IJZJLokio/ByteString;)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lokhttp3/tls/internal/der/AnyValue;->tagClass:I

    .line 26
    iput-wide p2, p0, Lokhttp3/tls/internal/der/AnyValue;->tag:J

    .line 27
    iput-boolean p4, p0, Lokhttp3/tls/internal/der/AnyValue;->constructed:Z

    .line 28
    iput-wide p5, p0, Lokhttp3/tls/internal/der/AnyValue;->length:J

    .line 29
    iput-object p7, p0, Lokhttp3/tls/internal/der/AnyValue;->bytes:Lokio/ByteString;

    return-void
.end method

.method public synthetic constructor <init>(IJZJLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p8, 0x8

    if-eqz p4, :cond_1

    const-wide/16 p5, -0x1

    :cond_1
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v5, p5

    move-object v7, p7

    .line 24
    invoke-direct/range {v0 .. v7}, Lokhttp3/tls/internal/der/AnyValue;-><init>(IJZJLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lokhttp3/tls/internal/der/AnyValue;IJZJLokio/ByteString;ILjava/lang/Object;)Lokhttp3/tls/internal/der/AnyValue;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lokhttp3/tls/internal/der/AnyValue;->tagClass:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-wide p2, p0, Lokhttp3/tls/internal/der/AnyValue;->tag:J

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-boolean p4, p0, Lokhttp3/tls/internal/der/AnyValue;->constructed:Z

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-wide p5, p0, Lokhttp3/tls/internal/der/AnyValue;->length:J

    :cond_3
    and-int/lit8 p8, p8, 0x10

    if-eqz p8, :cond_4

    iget-object p7, p0, Lokhttp3/tls/internal/der/AnyValue;->bytes:Lokio/ByteString;

    :cond_4
    move-object p9, p7

    move-wide p7, p5

    move p6, p4

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lokhttp3/tls/internal/der/AnyValue;->copy(IJZJLokio/ByteString;)Lokhttp3/tls/internal/der/AnyValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lokhttp3/tls/internal/der/AnyValue;->tagClass:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/tls/internal/der/AnyValue;->tag:J

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/tls/internal/der/AnyValue;->constructed:Z

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/tls/internal/der/AnyValue;->length:J

    return-wide v0
.end method

.method public final component5()Lokio/ByteString;
    .locals 1

    iget-object v0, p0, Lokhttp3/tls/internal/der/AnyValue;->bytes:Lokio/ByteString;

    return-object v0
.end method

.method public final copy(IJZJLokio/ByteString;)Lokhttp3/tls/internal/der/AnyValue;
    .locals 9

    const-string v0, "bytes"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lokhttp3/tls/internal/der/AnyValue;

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lokhttp3/tls/internal/der/AnyValue;-><init>(IJZJLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lokhttp3/tls/internal/der/AnyValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lokhttp3/tls/internal/der/AnyValue;

    iget v1, p0, Lokhttp3/tls/internal/der/AnyValue;->tagClass:I

    iget v3, p1, Lokhttp3/tls/internal/der/AnyValue;->tagClass:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lokhttp3/tls/internal/der/AnyValue;->tag:J

    iget-wide v5, p1, Lokhttp3/tls/internal/der/AnyValue;->tag:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lokhttp3/tls/internal/der/AnyValue;->constructed:Z

    iget-boolean v3, p1, Lokhttp3/tls/internal/der/AnyValue;->constructed:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lokhttp3/tls/internal/der/AnyValue;->length:J

    iget-wide v5, p1, Lokhttp3/tls/internal/der/AnyValue;->length:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lokhttp3/tls/internal/der/AnyValue;->bytes:Lokio/ByteString;

    iget-object p1, p1, Lokhttp3/tls/internal/der/AnyValue;->bytes:Lokio/ByteString;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getBytes()Lokio/ByteString;
    .locals 1

    .line 29
    iget-object v0, p0, Lokhttp3/tls/internal/der/AnyValue;->bytes:Lokio/ByteString;

    return-object v0
.end method

.method public final getConstructed()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/AnyValue;->constructed:Z

    return v0
.end method

.method public final getLength()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lokhttp3/tls/internal/der/AnyValue;->length:J

    return-wide v0
.end method

.method public final getTag()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lokhttp3/tls/internal/der/AnyValue;->tag:J

    return-wide v0
.end method

.method public final getTagClass()I
    .locals 1

    .line 25
    iget v0, p0, Lokhttp3/tls/internal/der/AnyValue;->tagClass:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 34
    iget v0, p0, Lokhttp3/tls/internal/der/AnyValue;->tagClass:I

    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget-wide v1, p0, Lokhttp3/tls/internal/der/AnyValue;->tag:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 36
    iget-boolean v1, p0, Lokhttp3/tls/internal/der/AnyValue;->constructed:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 37
    iget-wide v1, p0, Lokhttp3/tls/internal/der/AnyValue;->length:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 38
    iget-object v1, p0, Lokhttp3/tls/internal/der/AnyValue;->bytes:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setConstructed(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lokhttp3/tls/internal/der/AnyValue;->constructed:Z

    return-void
.end method

.method public final setLength(J)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lokhttp3/tls/internal/der/AnyValue;->length:J

    return-void
.end method

.method public final setTag(J)V
    .locals 0

    .line 26
    iput-wide p1, p0, Lokhttp3/tls/internal/der/AnyValue;->tag:J

    return-void
.end method

.method public final setTagClass(I)V
    .locals 0

    .line 25
    iput p1, p0, Lokhttp3/tls/internal/der/AnyValue;->tagClass:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnyValue(tagClass="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lokhttp3/tls/internal/der/AnyValue;->tagClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lokhttp3/tls/internal/der/AnyValue;->tag:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", constructed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lokhttp3/tls/internal/der/AnyValue;->constructed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lokhttp3/tls/internal/der/AnyValue;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/tls/internal/der/AnyValue;->bytes:Lokio/ByteString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
