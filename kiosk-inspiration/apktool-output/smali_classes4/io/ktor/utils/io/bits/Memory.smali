.class public final Lio/ktor/utils/io/bits/Memory;
.super Ljava/lang/Object;
.source "MemoryJvm.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/bits/Memory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,230:1\n6#2,2:231\n6#2,2:233\n6#2,2:235\n6#2,2:237\n6#2,2:239\n6#2,2:241\n*S KotlinDebug\n*F\n+ 1 MemoryJvm.kt\nio/ktor/utils/io/bits/Memory\n*L\n31#1:231,2\n44#1:233,2\n51#1:235,2\n95#1:237,2\n96#1:239,2\n97#1:241,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0005\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u0000 32\u00020\u0001:\u00013B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J3\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\r\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J3\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\t\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0016\u0010\u0018J\u001a\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010\u000fJ\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\rH\u0086\u0008\u00a2\u0006\u0004\u0008#\u0010$J\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\tH\u0086\u0008\u00a2\u0006\u0004\u0008#\u0010%J&\u0010&\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\r\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010(J&\u0010&\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\t\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\'\u0010)J \u0010*\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\r2\u0006\u0010+\u001a\u00020!H\u0086\u0008\u00a2\u0006\u0004\u0008,\u0010-J \u0010*\u001a\u00020\u00112\u0006\u0010\"\u001a\u00020\t2\u0006\u0010+\u001a\u00020!H\u0086\u0008\u00a2\u0006\u0004\u0008,\u0010.J\u0010\u0010/\u001a\u000200H\u00d6\u0001\u00a2\u0006\u0004\u00081\u00102R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\t8\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0012\u0010\u000c\u001a\u00020\r8\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000f\u0088\u0001\u0002\u00f8\u0001\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u00064"
    }
    d2 = {
        "Lio/ktor/utils/io/bits/Memory;",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "constructor-impl",
        "(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;",
        "getBuffer",
        "()Ljava/nio/ByteBuffer;",
        "size",
        "",
        "getSize-impl",
        "(Ljava/nio/ByteBuffer;)J",
        "size32",
        "",
        "getSize32-impl",
        "(Ljava/nio/ByteBuffer;)I",
        "copyTo",
        "",
        "destination",
        "offset",
        "length",
        "destinationOffset",
        "copyTo-JT6ljtQ",
        "(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V",
        "(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V",
        "equals",
        "",
        "other",
        "equals-impl",
        "(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "loadAt",
        "",
        "index",
        "loadAt-impl",
        "(Ljava/nio/ByteBuffer;I)B",
        "(Ljava/nio/ByteBuffer;J)B",
        "slice",
        "slice-87lwejk",
        "(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;",
        "(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;",
        "storeAt",
        "value",
        "storeAt-impl",
        "(Ljava/nio/ByteBuffer;IB)V",
        "(Ljava/nio/ByteBuffer;JB)V",
        "toString",
        "",
        "toString-impl",
        "(Ljava/nio/ByteBuffer;)Ljava/lang/String;",
        "Companion",
        "ktor-io"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/bits/Memory$Companion;

.field private static final Empty:Ljava/nio/ByteBuffer;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/ktor/utils/io/bits/Memory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/bits/Memory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    const/4 v0, 0x0

    .line 102
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-string v1, "allocate(0).order(ByteOrder.BIG_ENDIAN)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/bits/Memory;->Empty:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private synthetic constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Ljava/nio/ByteBuffer;
    .locals 1

    .line 8
    sget-object v0, Lio/ktor/utils/io/bits/Memory;->Empty:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static final synthetic box-impl(Ljava/nio/ByteBuffer;)Lio/ktor/utils/io/bits/Memory;
    .locals 1

    new-instance v0, Lio/ktor/utils/io/bits/Memory;

    invoke-direct {v0, p0}, Lio/ktor/utils/io/bits/Memory;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    const-string v0, "buffer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
    .locals 1

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 65
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p0

    add-int/2addr p0, p2

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr p1, p4

    .line 63
    invoke-static {v0, p0, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr p2, p3

    .line 78
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 81
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V
    .locals 3

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p2, v0

    if-gez v2, :cond_2

    long-to-int p2, p2

    cmp-long p3, p4, v0

    if-gez p3, :cond_1

    long-to-int p3, p4

    cmp-long p4, p6, v0

    if-gez p4, :cond_0

    long-to-int p4, p6

    .line 93
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    return-void

    .line 241
    :cond_0
    const-string p0, "destinationOffset"

    invoke-static {p6, p7, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 239
    :cond_1
    const-string p0, "length"

    invoke-static {p4, p5, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 237
    :cond_2
    const-string p0, "offset"

    invoke-static {p2, p3, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static equals-impl(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lio/ktor/utils/io/bits/Memory;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lio/ktor/utils/io/bits/Memory;

    invoke-virtual {p1}, Lio/ktor/utils/io/bits/Memory;->unbox-impl()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final getSize-impl(Ljava/nio/ByteBuffer;)J
    .locals 2

    .line 15
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static final getSize32-impl(Ljava/nio/ByteBuffer;)I
    .locals 0

    .line 21
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    return p0
.end method

.method public static hashCode-impl(Ljava/nio/ByteBuffer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result p0

    return p0
.end method

.method public static final loadAt-impl(Ljava/nio/ByteBuffer;I)B
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    return p0
.end method

.method public static final loadAt-impl(Ljava/nio/ByteBuffer;J)B
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 31
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    return p0

    .line 231
    :cond_0
    const-string p0, "index"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .locals 0

    .line 48
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/bits/MemoryJvmKt;->sliceSafe(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final slice-87lwejk(Ljava/nio/ByteBuffer;JJ)Ljava/nio/ByteBuffer;
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    long-to-int p1, p1

    cmp-long p2, p3, v0

    if-gez p2, :cond_0

    long-to-int p2, p3

    .line 51
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/bits/Memory;->slice-87lwejk(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 235
    :cond_0
    const-string p0, "length"

    invoke-static {p3, p4, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final storeAt-impl(Ljava/nio/ByteBuffer;IB)V
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final storeAt-impl(Ljava/nio/ByteBuffer;JB)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 44
    invoke-virtual {p0, p1, p3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    return-void

    .line 233
    :cond_0
    const-string p0, "index"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static toString-impl(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Memory(buffer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1}, Lio/ktor/utils/io/bits/Memory;->equals-impl(Ljava/nio/ByteBuffer;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 10
    iget-object v0, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/ktor/utils/io/bits/Memory;->hashCode-impl(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lio/ktor/utils/io/bits/Memory;->toString-impl(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/bits/Memory;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method
