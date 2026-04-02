.class public final Lio/ktor/utils/io/bits/DefaultAllocator;
.super Ljava/lang/Object;
.source "MemoryFactoryJvm.kt"

# interfaces
.implements Lio/ktor/utils/io/bits/Allocator;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMemoryFactoryJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/DefaultAllocator\n+ 2 Numbers.kt\nio/ktor/utils/io/core/internal/NumbersKt\n*L\n1#1,48:1\n6#2,2:49\n*S KotlinDebug\n*F\n+ 1 MemoryFactoryJvm.kt\nio/ktor/utils/io/bits/DefaultAllocator\n*L\n43#1:49,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\tH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\nJ\u001d\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004H\u0016\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/ktor/utils/io/bits/DefaultAllocator;",
        "Lio/ktor/utils/io/bits/Allocator;",
        "()V",
        "alloc",
        "Lio/ktor/utils/io/bits/Memory;",
        "size",
        "",
        "alloc-gFv-Zug",
        "(I)Ljava/nio/ByteBuffer;",
        "",
        "(J)Ljava/nio/ByteBuffer;",
        "free",
        "",
        "instance",
        "free-3GNKZMM",
        "(Ljava/nio/ByteBuffer;)V",
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


# static fields
.field public static final INSTANCE:Lio/ktor/utils/io/bits/DefaultAllocator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/ktor/utils/io/bits/DefaultAllocator;

    invoke-direct {v0}, Lio/ktor/utils/io/bits/DefaultAllocator;-><init>()V

    sput-object v0, Lio/ktor/utils/io/bits/DefaultAllocator;->INSTANCE:Lio/ktor/utils/io/bits/DefaultAllocator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alloc-gFv-Zug(I)Ljava/nio/ByteBuffer;
    .locals 1

    .line 41
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v0, "allocate(size)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/ktor/utils/io/bits/Memory;->constructor-impl(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public alloc-gFv-Zug(J)Ljava/nio/ByteBuffer;
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int p1, p1

    .line 43
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/bits/DefaultAllocator;->alloc-gFv-Zug(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    const-string v0, "size"

    invoke-static {p1, p2, v0}, Lio/ktor/utils/io/core/internal/NumbersKt;->failLongToIntConversion(JLjava/lang/String;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public free-3GNKZMM(Ljava/nio/ByteBuffer;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
