.class public final Lokhttp3/tls/internal/der/DerHeader;
.super Ljava/lang/Object;
.source "DerHeader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/tls/internal/der/DerHeader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u001a\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u0000 #2\u00020\u0001:\u0001#B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u001e\u001a\u00020\u00072\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0008\u0010 \u001a\u00020\u0003H\u0016J\u0008\u0010!\u001a\u00020\"H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u0011\u0010\u000e\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000bR\u001a\u0010\u0008\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010\"\u0004\u0008\u0014\u0010\u0012R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006$"
    }
    d2 = {
        "Lokhttp3/tls/internal/der/DerHeader;",
        "",
        "tagClass",
        "",
        "tag",
        "",
        "constructed",
        "",
        "length",
        "(IJZJ)V",
        "getConstructed",
        "()Z",
        "setConstructed",
        "(Z)V",
        "isEndOfData",
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
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lokhttp3/tls/internal/der/DerHeader$Companion;

.field public static final TAG_CLASS_APPLICATION:I = 0x40

.field public static final TAG_CLASS_CONTEXT_SPECIFIC:I = 0x80

.field public static final TAG_CLASS_PRIVATE:I = 0xc0

.field public static final TAG_CLASS_UNIVERSAL:I

.field public static final TAG_END_OF_CONTENTS:J


# instance fields
.field private constructed:Z

.field private length:J

.field private tag:J

.field private tagClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/tls/internal/der/DerHeader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/tls/internal/der/DerHeader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/tls/internal/der/DerHeader;->Companion:Lokhttp3/tls/internal/der/DerHeader$Companion;

    return-void
.end method

.method public constructor <init>(IJZJ)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    .line 37
    iput-wide p2, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    .line 50
    iput-boolean p4, p0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    .line 53
    iput-wide p5, p0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    return-void
.end method

.method public static synthetic copy$default(Lokhttp3/tls/internal/der/DerHeader;IJZJILjava/lang/Object;)Lokhttp3/tls/internal/der/DerHeader;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget p1, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-boolean p4, p0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    :cond_2
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_3

    iget-wide p5, p0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    :cond_3
    move-wide p7, p5

    move p6, p4

    move-wide p4, p2

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p8}, Lokhttp3/tls/internal/der/DerHeader;->copy(IJZJ)Lokhttp3/tls/internal/der/DerHeader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    return-wide v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    return-wide v0
.end method

.method public final copy(IJZJ)Lokhttp3/tls/internal/der/DerHeader;
    .locals 7

    new-instance v0, Lokhttp3/tls/internal/der/DerHeader;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lokhttp3/tls/internal/der/DerHeader;-><init>(IJZJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lokhttp3/tls/internal/der/DerHeader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lokhttp3/tls/internal/der/DerHeader;

    iget v1, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    iget v3, p1, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    iget-wide v5, p1, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    iget-boolean v3, p1, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    iget-wide v5, p1, Lokhttp3/tls/internal/der/DerHeader;->length:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getConstructed()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    return v0
.end method

.method public final getLength()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    return-wide v0
.end method

.method public final getTag()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    return-wide v0
.end method

.method public final getTagClass()I
    .locals 1

    .line 34
    iget v0, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 61
    iget v0, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget-wide v1, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-boolean v1, p0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-wide v1, p0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isEndOfData()Z
    .locals 4

    .line 56
    iget v0, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setConstructed(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lokhttp3/tls/internal/der/DerHeader;->constructed:Z

    return-void
.end method

.method public final setLength(J)V
    .locals 0

    .line 53
    iput-wide p1, p0, Lokhttp3/tls/internal/der/DerHeader;->length:J

    return-void
.end method

.method public final setTag(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    return-void
.end method

.method public final setTagClass(I)V
    .locals 0

    .line 34
    iput p1, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lokhttp3/tls/internal/der/DerHeader;->tagClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lokhttp3/tls/internal/der/DerHeader;->tag:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
