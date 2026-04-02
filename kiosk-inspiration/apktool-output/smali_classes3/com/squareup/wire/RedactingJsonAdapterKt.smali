.class public final Lcom/squareup/wire/RedactingJsonAdapterKt;
.super Ljava/lang/Object;
.source "RedactingJsonAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "redacting",
        "Lcom/squareup/moshi/JsonAdapter;",
        "T",
        "wire-moshi-adapter"
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
.method public static final redacting(Lcom/squareup/moshi/JsonAdapter;)Lcom/squareup/moshi/JsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/moshi/JsonAdapter<",
            "TT;>;)",
            "Lcom/squareup/moshi/JsonAdapter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Lcom/squareup/wire/RedactingJsonAdapterKt$redacting$1;

    invoke-direct {v0, p0}, Lcom/squareup/wire/RedactingJsonAdapterKt$redacting$1;-><init>(Lcom/squareup/moshi/JsonAdapter;)V

    check-cast v0, Lcom/squareup/moshi/JsonAdapter;

    return-object v0
.end method
