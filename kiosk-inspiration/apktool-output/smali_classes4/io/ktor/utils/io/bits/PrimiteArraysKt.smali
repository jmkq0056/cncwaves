.class public final Lio/ktor/utils/io/bits/PrimiteArraysKt;
.super Ljava/lang/Object;
.source "PrimiteArrays.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrimiteArrays.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n+ 2 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/MemoryFactoryJvmKt\n*L\n1#1,539:1\n282#1:548\n283#1,3:553\n282#1,4:556\n297#1:560\n298#1,3:565\n297#1,4:568\n17#2,4:540\n17#2,4:544\n17#2,4:549\n17#2,4:561\n*S KotlinDebug\n*F\n+ 1 PrimiteArrays.kt\nio/ktor/utils/io/bits/PrimiteArraysKt\n*L\n313#1:548\n313#1:553,3\n313#1:556,4\n327#1:560\n327#1:565,3\n327#1:568,4\n282#1:540,4\n297#1:544,4\n313#1:549,4\n327#1:561,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u001a>\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\n\u001a>\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\u000c\u001a>\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\n\u001a>\u0010\r\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u000c\u001a>\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u001a>\u0010\u0010\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00112\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0014\u001a>\u0010\u0015\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u001a>\u0010\u0015\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0019\u001a>\u0010\u001a\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u001a>\u0010\u001a\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u001b2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001e\u001a>\u0010\u001f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00062\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\"\u0010\n\u001a>\u0010\u001f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00062\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\"\u0010\u000c\u001a>\u0010#\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u000e2\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010\n\u001a>\u0010#\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u000e2\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008$\u0010\u000c\u001a>\u0010%\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00112\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010\u0013\u001a>\u0010%\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00112\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010\u0014\u001a>\u0010\'\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u00162\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010\u0018\u001a>\u0010\'\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u00162\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008(\u0010\u0019\u001a>\u0010)\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u001b2\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010\u001d\u001a>\u0010)\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001b2\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010\u001e\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006+"
    }
    d2 = {
        "loadByteArray",
        "",
        "Lio/ktor/utils/io/bits/Memory;",
        "offset",
        "",
        "destination",
        "",
        "destinationOffset",
        "count",
        "loadByteArray-9zorpBc",
        "(Ljava/nio/ByteBuffer;I[BII)V",
        "",
        "(Ljava/nio/ByteBuffer;J[BII)V",
        "loadUByteArray",
        "Lkotlin/UByteArray;",
        "loadUByteArray-KqtU1YU",
        "loadUIntArray",
        "Lkotlin/UIntArray;",
        "loadUIntArray-EM3dPTA",
        "(Ljava/nio/ByteBuffer;I[III)V",
        "(Ljava/nio/ByteBuffer;J[III)V",
        "loadULongArray",
        "Lkotlin/ULongArray;",
        "loadULongArray-bNlDJKc",
        "(Ljava/nio/ByteBuffer;I[JII)V",
        "(Ljava/nio/ByteBuffer;J[JII)V",
        "loadUShortArray",
        "Lkotlin/UShortArray;",
        "loadUShortArray-m8CCUi4",
        "(Ljava/nio/ByteBuffer;I[SII)V",
        "(Ljava/nio/ByteBuffer;J[SII)V",
        "storeByteArray",
        "source",
        "sourceOffset",
        "storeByteArray-9zorpBc",
        "storeUByteArray",
        "storeUByteArray-KqtU1YU",
        "storeUIntArray",
        "storeUIntArray-EM3dPTA",
        "storeULongArray",
        "storeULongArray-bNlDJKc",
        "storeUShortArray",
        "storeUShortArray-m8CCUi4",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final loadByteArray-9zorpBc(Ljava/nio/ByteBuffer;I[BII)V
    .locals 1

    const-string v0, "$this$loadByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p2, p1, p4, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    return-void
.end method

.method public static final loadByteArray-9zorpBc(Ljava/nio/ByteBuffer;J[BII)V
    .locals 3

    const-string v0, "$this$loadByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v1, p1

    move-object p1, p3

    move-wide p2, v1

    move v1, p5

    move p5, p4

    move p4, v1

    .line 29
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BJII)V

    return-void
.end method

.method public static synthetic loadByteArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[BIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 13
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 9
    :cond_1
    const-string p5, "$this$loadByteArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "destination"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {p0, p2, p1, p4, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    return-void
.end method

.method public static synthetic loadByteArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[BIIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v5, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 27
    array-length p4, p3

    sub-int p5, p4, v5

    :cond_1
    move v4, p5

    .line 23
    const-string p4, "$this$loadByteArray"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "destination"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v2, p1

    move-object v1, p3

    .line 29
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BJII)V

    return-void
.end method

.method public static final loadUByteArray-KqtU1YU(Ljava/nio/ByteBuffer;I[BII)V
    .locals 1

    const-string v0, "$this$loadUByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p0, p2, p1, p4, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    return-void
.end method

.method public static final loadUByteArray-KqtU1YU(Ljava/nio/ByteBuffer;J[BII)V
    .locals 3

    const-string v0, "$this$loadUByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-wide v1, p1

    move-object p1, p3

    move-wide p2, v1

    move v1, p5

    move p5, p4

    move p4, v1

    .line 59
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BJII)V

    return-void
.end method

.method public static synthetic loadUByteArray-KqtU1YU$default(Ljava/nio/ByteBuffer;I[BIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 42
    invoke-static {p2}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result p4

    sub-int/2addr p4, p3

    .line 38
    :cond_1
    const-string p5, "$this$loadUByteArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "destination"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p0, p2, p1, p4, p3}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BIII)V

    return-void
.end method

.method public static synthetic loadUByteArray-KqtU1YU$default(Ljava/nio/ByteBuffer;J[BIIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v5, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 57
    invoke-static {p3}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result p4

    sub-int p5, p4, v5

    :cond_1
    move v4, p5

    .line 53
    const-string p4, "$this$loadUByteArray"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "destination"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v2, p1

    move-object v1, p3

    .line 59
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/MemoryJvmKt;->copyTo-9zorpBc(Ljava/nio/ByteBuffer;[BJII)V

    return-void
.end method

.method public static final loadUIntArray-EM3dPTA(Ljava/nio/ByteBuffer;I[III)V
    .locals 1

    const-string v0, "$this$loadUIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    return-void
.end method

.method public static final loadUIntArray-EM3dPTA(Ljava/nio/ByteBuffer;J[III)V
    .locals 1

    const-string v0, "$this$loadUIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V

    return-void
.end method

.method public static synthetic loadUIntArray-EM3dPTA$default(Ljava/nio/ByteBuffer;I[IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 150
    invoke-static {p2}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p4

    sub-int/2addr p4, p3

    .line 146
    :cond_1
    const-string p5, "$this$loadUIntArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "destination"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    return-void
.end method

.method public static synthetic loadUIntArray-EM3dPTA$default(Ljava/nio/ByteBuffer;J[IIIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 165
    invoke-static {p3}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p4

    sub-int p5, p4, v4

    :cond_1
    move v5, p5

    .line 161
    const-string p4, "$this$loadUIntArray"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "destination"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 167
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V

    return-void
.end method

.method public static final loadULongArray-bNlDJKc(Ljava/nio/ByteBuffer;I[JII)V
    .locals 1

    const-string v0, "$this$loadULongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    return-void
.end method

.method public static final loadULongArray-bNlDJKc(Ljava/nio/ByteBuffer;J[JII)V
    .locals 1

    const-string v0, "$this$loadULongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V

    return-void
.end method

.method public static synthetic loadULongArray-bNlDJKc$default(Ljava/nio/ByteBuffer;I[JIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 204
    invoke-static {p2}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p4

    sub-int/2addr p4, p3

    .line 200
    :cond_1
    const-string p5, "$this$loadULongArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "destination"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    return-void
.end method

.method public static synthetic loadULongArray-bNlDJKc$default(Ljava/nio/ByteBuffer;J[JIIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 219
    invoke-static {p3}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p4

    sub-int p5, p4, v4

    :cond_1
    move v5, p5

    .line 215
    const-string p4, "$this$loadULongArray"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "destination"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 221
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V

    return-void
.end method

.method public static final loadUShortArray-m8CCUi4(Ljava/nio/ByteBuffer;I[SII)V
    .locals 1

    const-string v0, "$this$loadUShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    return-void
.end method

.method public static final loadUShortArray-m8CCUi4(Ljava/nio/ByteBuffer;J[SII)V
    .locals 1

    const-string v0, "$this$loadUShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V

    return-void
.end method

.method public static synthetic loadUShortArray-m8CCUi4$default(Ljava/nio/ByteBuffer;I[SIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 96
    invoke-static {p2}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p4

    sub-int/2addr p4, p3

    .line 92
    :cond_1
    const-string p5, "$this$loadUShortArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "destination"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    return-void
.end method

.method public static synthetic loadUShortArray-m8CCUi4$default(Ljava/nio/ByteBuffer;J[SIIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 111
    invoke-static {p3}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p4

    sub-int p5, p4, v4

    :cond_1
    move v5, p5

    .line 107
    const-string p4, "$this$loadUShortArray"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "destination"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 113
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->loadShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V

    return-void
.end method

.method public static final storeByteArray-9zorpBc(Ljava/nio/ByteBuffer;I[BII)V
    .locals 1

    const-string v0, "$this$storeByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-static {p2, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string p3, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 p3, 0x0

    .line 283
    invoke-static {p2, p0, p3, p4, p1}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    return-void
.end method

.method public static final storeByteArray-9zorpBc(Ljava/nio/ByteBuffer;J[BII)V
    .locals 8

    const-string v0, "$this$storeByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object p4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    const-string p4, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v2, 0x0

    int-to-long v4, p5

    move-object v1, p0

    move-wide v6, p1

    .line 298
    invoke-static/range {v0 .. v7}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    return-void
.end method

.method public static synthetic storeByteArray-9zorpBc$default(Ljava/nio/ByteBuffer;I[BIIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 280
    array-length p4, p2

    sub-int/2addr p4, p3

    .line 276
    :cond_1
    const-string p5, "$this$storeByteArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "source"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-static {p2, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string p3, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 283
    invoke-static {p2, p0, v0, p4, p1}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    return-void
.end method

.method public static synthetic storeByteArray-9zorpBc$default(Ljava/nio/ByteBuffer;J[BIIILjava/lang/Object;)V
    .locals 8

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 295
    array-length p5, p3

    sub-int/2addr p5, p4

    .line 291
    :cond_1
    const-string p6, "$this$storeByteArray"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "source"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object p4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    const-string p4, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v2, 0x0

    int-to-long v4, p5

    move-object v1, p0

    move-wide v6, p1

    .line 298
    invoke-static/range {v0 .. v7}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    return-void
.end method

.method public static final storeUByteArray-KqtU1YU(Ljava/nio/ByteBuffer;I[BII)V
    .locals 1

    const-string v0, "$this$storeUByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    invoke-static {p2, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string p3, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 p3, 0x0

    .line 553
    invoke-static {p2, p0, p3, p4, p1}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    return-void
.end method

.method public static final storeUByteArray-KqtU1YU(Ljava/nio/ByteBuffer;J[BII)V
    .locals 8

    const-string v0, "$this$storeUByteArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object p4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    const-string p4, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v2, 0x0

    int-to-long v4, p5

    move-object v1, p0

    move-wide v6, p1

    .line 565
    invoke-static/range {v0 .. v7}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    return-void
.end method

.method public static synthetic storeUByteArray-KqtU1YU$default(Ljava/nio/ByteBuffer;I[BIIILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 311
    invoke-static {p2}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result p4

    sub-int/2addr p4, p3

    .line 307
    :cond_1
    const-string p5, "$this$storeUByteArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "source"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 552
    invoke-static {p2, p3, p4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    const-string p3, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 557
    invoke-static {p2, p0, v0, p4, p1}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    return-void
.end method

.method public static synthetic storeUByteArray-KqtU1YU$default(Ljava/nio/ByteBuffer;J[BIIILjava/lang/Object;)V
    .locals 8

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    .line 325
    invoke-static {p3}, Lkotlin/UByteArray;->getSize-impl([B)I

    move-result p5

    sub-int/2addr p5, p4

    .line 321
    :cond_1
    const-string p6, "$this$storeUByteArray"

    invoke-static {p0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "source"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    invoke-static {p3, p4, p5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p3

    sget-object p4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    const-string p4, "wrap(this, offset, lengt\u2026der(ByteOrder.BIG_ENDIAN)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const-wide/16 v2, 0x0

    int-to-long v4, p5

    move-object v1, p0

    move-wide v6, p1

    .line 569
    invoke-static/range {v0 .. v7}, Lio/ktor/utils/io/bits/Memory;->copyTo-JT6ljtQ(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;JJJ)V

    return-void
.end method

.method public static final storeUIntArray-EM3dPTA(Ljava/nio/ByteBuffer;I[III)V
    .locals 1

    const-string v0, "$this$storeUIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    return-void
.end method

.method public static final storeUIntArray-EM3dPTA(Ljava/nio/ByteBuffer;J[III)V
    .locals 1

    const-string v0, "$this$storeUIntArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V

    return-void
.end method

.method public static synthetic storeUIntArray-EM3dPTA$default(Ljava/nio/ByteBuffer;I[IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 418
    invoke-static {p2}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p4

    sub-int/2addr p4, p3

    .line 414
    :cond_1
    const-string p5, "$this$storeUIntArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "source"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;I[III)V

    return-void
.end method

.method public static synthetic storeUIntArray-EM3dPTA$default(Ljava/nio/ByteBuffer;J[IIIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 433
    invoke-static {p3}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p4

    sub-int p5, p4, v4

    :cond_1
    move v5, p5

    .line 429
    const-string p4, "$this$storeUIntArray"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "source"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 435
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeIntArray-9zorpBc(Ljava/nio/ByteBuffer;J[III)V

    return-void
.end method

.method public static final storeULongArray-bNlDJKc(Ljava/nio/ByteBuffer;I[JII)V
    .locals 1

    const-string v0, "$this$storeULongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    return-void
.end method

.method public static final storeULongArray-bNlDJKc(Ljava/nio/ByteBuffer;J[JII)V
    .locals 1

    const-string v0, "$this$storeULongArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V

    return-void
.end method

.method public static synthetic storeULongArray-bNlDJKc$default(Ljava/nio/ByteBuffer;I[JIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 472
    invoke-static {p2}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p4

    sub-int/2addr p4, p3

    .line 468
    :cond_1
    const-string p5, "$this$storeULongArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "source"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;I[JII)V

    return-void
.end method

.method public static synthetic storeULongArray-bNlDJKc$default(Ljava/nio/ByteBuffer;J[JIIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 487
    invoke-static {p3}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p4

    sub-int p5, p4, v4

    :cond_1
    move v5, p5

    .line 483
    const-string p4, "$this$storeULongArray"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "source"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 489
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeLongArray-9zorpBc(Ljava/nio/ByteBuffer;J[JII)V

    return-void
.end method

.method public static final storeUShortArray-m8CCUi4(Ljava/nio/ByteBuffer;I[SII)V
    .locals 1

    const-string v0, "$this$storeUShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    return-void
.end method

.method public static final storeUShortArray-m8CCUi4(Ljava/nio/ByteBuffer;J[SII)V
    .locals 1

    const-string v0, "$this$storeUShortArray"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    invoke-static/range {p0 .. p5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V

    return-void
.end method

.method public static synthetic storeUShortArray-m8CCUi4$default(Ljava/nio/ByteBuffer;I[SIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 364
    invoke-static {p2}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p4

    sub-int/2addr p4, p3

    .line 360
    :cond_1
    const-string p5, "$this$storeUShortArray"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "source"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;I[SII)V

    return-void
.end method

.method public static synthetic storeUShortArray-m8CCUi4$default(Ljava/nio/ByteBuffer;J[SIIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    .line 379
    invoke-static {p3}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p4

    sub-int p5, p4, v4

    :cond_1
    move v5, p5

    .line 375
    const-string p4, "$this$storeUShortArray"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "source"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .line 381
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/bits/PrimitiveArraysJvmKt;->storeShortArray-9zorpBc(Ljava/nio/ByteBuffer;J[SII)V

    return-void
.end method
