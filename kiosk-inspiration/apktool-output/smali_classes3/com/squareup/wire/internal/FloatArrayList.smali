.class public final Lcom/squareup/wire/internal/FloatArrayList;
.super Ljava/lang/Object;
.source "FloatArrayList.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/internal/FloatArrayList$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u0003H\u0002J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0006J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/squareup/wire/internal/FloatArrayList;",
        "",
        "initialCapacity",
        "",
        "(I)V",
        "data",
        "",
        "size",
        "add",
        "",
        "float",
        "",
        "ensureCapacity",
        "minCapacity",
        "isNotEmpty",
        "",
        "toArray",
        "toString",
        "",
        "Companion",
        "wire-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/squareup/wire/internal/FloatArrayList$Companion;


# instance fields
.field private data:[F

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/squareup/wire/internal/FloatArrayList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/wire/internal/FloatArrayList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/squareup/wire/internal/FloatArrayList;->Companion:Lcom/squareup/wire/internal/FloatArrayList$Companion;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/squareup/wire/internal/FloatArrayList;->data:[F

    return-void
.end method

.method private final ensureCapacity(I)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/squareup/wire/internal/FloatArrayList;->data:[F

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 39
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/squareup/wire/internal/FloatArrayList;->data:[F

    :cond_0
    return-void
.end method


# virtual methods
.method public final add(F)V
    .locals 3

    .line 31
    iget v0, p0, Lcom/squareup/wire/internal/FloatArrayList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/squareup/wire/internal/FloatArrayList;->ensureCapacity(I)V

    .line 32
    iget-object v0, p0, Lcom/squareup/wire/internal/FloatArrayList;->data:[F

    iget v1, p0, Lcom/squareup/wire/internal/FloatArrayList;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/wire/internal/FloatArrayList;->size:I

    aput p1, v0, v1

    return-void
.end method

.method public final isNotEmpty()Z
    .locals 1

    .line 35
    iget v0, p0, Lcom/squareup/wire/internal/FloatArrayList;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toArray()[F
    .locals 3

    .line 24
    iget v0, p0, Lcom/squareup/wire/internal/FloatArrayList;->size:I

    iget-object v1, p0, Lcom/squareup/wire/internal/FloatArrayList;->data:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 25
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/squareup/wire/internal/FloatArrayList;->data:[F

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/internal/FloatArrayList;->data:[F

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/squareup/wire/internal/FloatArrayList;->data:[F

    iget v1, p0, Lcom/squareup/wire/internal/FloatArrayList;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
