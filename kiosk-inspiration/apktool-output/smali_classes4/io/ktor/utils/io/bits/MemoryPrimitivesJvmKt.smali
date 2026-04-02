.class public final Lio/ktor/utils/io/bits/MemoryPrimitivesJvmKt;
.super Ljava/lang/Object;
.source "MemoryPrimitivesJvm.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryPrimitivesJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,116:1\n51#1,2:129\n65#1,2:133\n79#1,2:137\n93#1,2:141\n107#1,2:145\n6#2,2:117\n6#2,2:119\n6#2,2:121\n6#2,2:123\n6#2,2:125\n6#2,2:127\n6#2,2:131\n6#2,2:135\n6#2,2:139\n6#2,2:143\n*S KotlinDebug\n*F\n+ 1 MemoryPrimitivesJvm.kt\nio/ktor/utils/io/bits/MemoryPrimitivesJvmKt\n*L\n58#1:129,2\n72#1:133,2\n86#1:137,2\n100#1:141,2\n114#1:145,2\n12#1:117,2\n20#1:119,2\n28#1:121,2\n36#1:123,2\n44#1:125,2\n58#1:127,2\n72#1:131,2\n86#1:135,2\n100#1:139,2\n114#1:143,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0010\n\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0015\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u001a\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0005\u0010\u0008\u001a\"\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u001a\"\u0010\t\u001a\u00020\n*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\r\u001a\"\u0010\u000e\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\"\u0010\u000e\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0011\u001a\"\u0010\u0012\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u001a\"\u0010\u0012\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0015\u001a\"\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a\"\u0010\u0016\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0007H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u001a\u001a*\u0010\u001b\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0001H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a*\u0010\u001b\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0001H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010 \u001a*\u0010!\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\nH\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\"\u0010#\u001a*\u0010!\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\nH\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\"\u0010$\u001a*\u0010%\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010\'\u001a*\u0010%\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0004H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008&\u0010(\u001a*\u0010)\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0007H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010+\u001a*\u0010)\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008*\u0010,\u001a*\u0010-\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u0017H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u0010/\u001a*\u0010-\u001a\u00020\u001c*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0017H\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u00100\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u00061"
    }
    d2 = {
        "loadDoubleAt",
        "",
        "Lio/ktor/utils/io/bits/Memory;",
        "offset",
        "",
        "loadDoubleAt-eY85DW0",
        "(Ljava/nio/ByteBuffer;I)D",
        "",
        "(Ljava/nio/ByteBuffer;J)D",
        "loadFloatAt",
        "",
        "loadFloatAt-eY85DW0",
        "(Ljava/nio/ByteBuffer;I)F",
        "(Ljava/nio/ByteBuffer;J)F",
        "loadIntAt",
        "loadIntAt-eY85DW0",
        "(Ljava/nio/ByteBuffer;I)I",
        "(Ljava/nio/ByteBuffer;J)I",
        "loadLongAt",
        "loadLongAt-eY85DW0",
        "(Ljava/nio/ByteBuffer;I)J",
        "(Ljava/nio/ByteBuffer;J)J",
        "loadShortAt",
        "",
        "loadShortAt-eY85DW0",
        "(Ljava/nio/ByteBuffer;I)S",
        "(Ljava/nio/ByteBuffer;J)S",
        "storeDoubleAt",
        "",
        "value",
        "storeDoubleAt-62zg_DM",
        "(Ljava/nio/ByteBuffer;ID)V",
        "(Ljava/nio/ByteBuffer;JD)V",
        "storeFloatAt",
        "storeFloatAt-62zg_DM",
        "(Ljava/nio/ByteBuffer;IF)V",
        "(Ljava/nio/ByteBuffer;JF)V",
        "storeIntAt",
        "storeIntAt-62zg_DM",
        "(Ljava/nio/ByteBuffer;II)V",
        "(Ljava/nio/ByteBuffer;JI)V",
        "storeLongAt",
        "storeLongAt-62zg_DM",
        "(Ljava/nio/ByteBuffer;IJ)V",
        "(Ljava/nio/ByteBuffer;JJ)V",
        "storeShortAt",
        "storeShortAt-62zg_DM",
        "(Ljava/nio/ByteBuffer;IS)V",
        "(Ljava/nio/ByteBuffer;JS)V",
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
.method public static final loadDoubleAt-eY85DW0(Ljava/nio/ByteBuffer;I)D
    .locals 1

    const-string v0, "$this$loadDoubleAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final loadDoubleAt-eY85DW0(Ljava/nio/ByteBuffer;J)D
    .locals 2

    const-string v0, "$this$loadDoubleAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 44
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getDouble(I)D

    move-result-wide p0

    return-wide p0

    .line 125
    :cond_0
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final loadFloatAt-eY85DW0(Ljava/nio/ByteBuffer;I)F
    .locals 1

    const-string v0, "$this$loadFloatAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public static final loadFloatAt-eY85DW0(Ljava/nio/ByteBuffer;J)F
    .locals 2

    const-string v0, "$this$loadFloatAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 36
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result p0

    return p0

    .line 123
    :cond_0
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final loadIntAt-eY85DW0(Ljava/nio/ByteBuffer;I)I
    .locals 1

    const-string v0, "$this$loadIntAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static final loadIntAt-eY85DW0(Ljava/nio/ByteBuffer;J)I
    .locals 2

    const-string v0, "$this$loadIntAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 20
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0

    .line 119
    :cond_0
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final loadLongAt-eY85DW0(Ljava/nio/ByteBuffer;I)J
    .locals 1

    const-string v0, "$this$loadLongAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final loadLongAt-eY85DW0(Ljava/nio/ByteBuffer;J)J
    .locals 2

    const-string v0, "$this$loadLongAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 28
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide p0

    return-wide p0

    .line 121
    :cond_0
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final loadShortAt-eY85DW0(Ljava/nio/ByteBuffer;I)S
    .locals 1

    const-string v0, "$this$loadShortAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0
.end method

.method public static final loadShortAt-eY85DW0(Ljava/nio/ByteBuffer;J)S
    .locals 2

    const-string v0, "$this$loadShortAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 12
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0

    .line 117
    :cond_0
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final storeDoubleAt-62zg_DM(Ljava/nio/ByteBuffer;ID)V
    .locals 1

    const-string v0, "$this$storeDoubleAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final storeDoubleAt-62zg_DM(Ljava/nio/ByteBuffer;JD)V
    .locals 2

    const-string v0, "$this$storeDoubleAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 145
    invoke-virtual {p0, p1, p3, p4}, Ljava/nio/ByteBuffer;->putDouble(ID)Ljava/nio/ByteBuffer;

    return-void

    .line 143
    :cond_0
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final storeFloatAt-62zg_DM(Ljava/nio/ByteBuffer;IF)V
    .locals 1

    const-string v0, "$this$storeFloatAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final storeFloatAt-62zg_DM(Ljava/nio/ByteBuffer;JF)V
    .locals 2

    const-string v0, "$this$storeFloatAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 141
    invoke-virtual {p0, p1, p3}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    return-void

    .line 139
    :cond_0
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final storeIntAt-62zg_DM(Ljava/nio/ByteBuffer;II)V
    .locals 1

    const-string v0, "$this$storeIntAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final storeIntAt-62zg_DM(Ljava/nio/ByteBuffer;JI)V
    .locals 2

    const-string v0, "$this$storeIntAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 129
    invoke-virtual {p0, p1, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void

    .line 127
    :cond_0
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final storeLongAt-62zg_DM(Ljava/nio/ByteBuffer;IJ)V
    .locals 1

    const-string v0, "$this$storeLongAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final storeLongAt-62zg_DM(Ljava/nio/ByteBuffer;JJ)V
    .locals 2

    const-string v0, "$this$storeLongAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 137
    invoke-virtual {p0, p1, p3, p4}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    return-void

    .line 135
    :cond_0
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final storeShortAt-62zg_DM(Ljava/nio/ByteBuffer;IS)V
    .locals 1

    const-string v0, "$this$storeShortAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final storeShortAt-62zg_DM(Ljava/nio/ByteBuffer;JS)V
    .locals 2

    const-string v0, "$this$storeShortAt"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 133
    invoke-virtual {p0, p1, p3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void

    .line 131
    :cond_0
    const-string p0, "offset"

    invoke-static {p1, p2, p0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method
