.class final Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$decode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Adapters.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/tls/internal/der/Adapters$sequence$codec$1;->decode(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "T",
        "invoke",
        "()Ljava/lang/Object;"
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
.field final synthetic $construct:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "*>;TT;>;"
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

.field final synthetic $reader:Lokhttp3/tls/internal/der/DerReader;


# direct methods
.method constructor <init>([Lokhttp3/tls/internal/der/DerAdapter;Lokhttp3/tls/internal/der/DerReader;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;",
            "Lokhttp3/tls/internal/der/DerReader;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "*>;+TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$decode$1;->$members:[Lokhttp3/tls/internal/der/DerAdapter;

    iput-object p2, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$decode$1;->$reader:Lokhttp3/tls/internal/der/DerReader;

    iput-object p3, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$decode$1;->$construct:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 279
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$decode$1;->$members:[Lokhttp3/tls/internal/der/DerAdapter;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 280
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    aget-object v1, v2, v1

    .line 281
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    iget-object v3, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$decode$1;->$reader:Lokhttp3/tls/internal/der/DerReader;

    invoke-interface {v1, v3}, Lokhttp3/tls/internal/der/DerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_0
    iget-object v1, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$decode$1;->$reader:Lokhttp3/tls/internal/der/DerReader;

    invoke-virtual {v1}, Lokhttp3/tls/internal/der/DerReader;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$decode$1;->$construct:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 285
    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$decode$1;->$reader:Lokhttp3/tls/internal/der/DerReader;

    invoke-virtual {v2}, Lokhttp3/tls/internal/der/DerReader;->peekHeader()Lokhttp3/tls/internal/der/DerHeader;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/tls/internal/der/Adapters$sequence$codec$1$decode$1;->$reader:Lokhttp3/tls/internal/der/DerReader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
