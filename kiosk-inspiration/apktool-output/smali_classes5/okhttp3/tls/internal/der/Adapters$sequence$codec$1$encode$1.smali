.class final Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$encode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Adapters.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/tls/internal/der/Adapters$sequence$codec$1;->encode(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $members:[Lokhttp3/tls/internal/der/DerAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $writer:Lokhttp3/tls/internal/der/DerWriter;


# direct methods
.method constructor <init>(Ljava/util/List;[Lokhttp3/tls/internal/der/DerAdapter;Lokhttp3/tls/internal/der/DerWriter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;[",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Lokhttp3/tls/internal/der/DerWriter;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$encode$1;->$list:Ljava/util/List;

    iput-object p2, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$encode$1;->$members:[Lokhttp3/tls/internal/der/DerAdapter;

    iput-object p3, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$encode$1;->$writer:Lokhttp3/tls/internal/der/DerWriter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 294
    invoke-virtual {p0}, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$encode$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 295
    iget-object v0, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$encode$1;->$list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 296
    iget-object v2, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$encode$1;->$members:[Lokhttp3/tls/internal/der/DerAdapter;

    aget-object v2, v2, v1

    const-string v3, "null cannot be cast to non-null type okhttp3.tls.internal.der.DerAdapter<kotlin.Any?>"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v3, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$encode$1;->$writer:Lokhttp3/tls/internal/der/DerWriter;

    iget-object v4, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$encode$1;->$list:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lokhttp3/tls/internal/der/DerAdapter;->toDer(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
