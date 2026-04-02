.class public final Lcom/stripe/json/BaseEnumJsonAdapterKt;
.super Ljava/lang/Object;
.source "BaseEnumJsonAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a9\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u0001H\u0002\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "createEnumJsonAdapterWithFallback",
        "Lcom/squareup/moshi/JsonAdapter;",
        "T",
        "",
        "enumClass",
        "Ljava/lang/Class;",
        "fallbackValue",
        "(Ljava/lang/Class;Ljava/lang/Enum;)Lcom/squareup/moshi/JsonAdapter;",
        "public_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final createEnumJsonAdapterWithFallback(Ljava/lang/Class;Ljava/lang/Enum;)Lcom/squareup/moshi/JsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lcom/squareup/moshi/JsonAdapter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "enumClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p0}, Lcom/squareup/moshi/adapters/EnumJsonAdapter;->create(Ljava/lang/Class;)Lcom/squareup/moshi/adapters/EnumJsonAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/adapters/EnumJsonAdapter;->withUnknownFallback(Ljava/lang/Enum;)Lcom/squareup/moshi/adapters/EnumJsonAdapter;

    move-result-object p0

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/squareup/moshi/adapters/EnumJsonAdapter;->nullSafe()Lcom/squareup/moshi/JsonAdapter;

    move-result-object p0

    const-string p1, "nullSafe(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/squareup/moshi/JsonAdapter;

    return-object p0
.end method
