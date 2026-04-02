.class public final Lokhttp3/tls/internal/der/Adapters$usingTypeHint$1;
.super Ljava/lang/Object;
.source "Adapters.kt"

# interfaces
.implements Lokhttp3/tls/internal/der/DerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/tls/internal/der/Adapters;->usingTypeHint(Lkotlin/jvm/functions/Function1;)Lokhttp3/tls/internal/der/DerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lokhttp3/tls/internal/der/DerAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "okhttp3/tls/internal/der/Adapters$usingTypeHint$1",
        "Lokhttp3/tls/internal/der/DerAdapter;",
        "",
        "fromDer",
        "reader",
        "Lokhttp3/tls/internal/der/DerReader;",
        "matches",
        "",
        "header",
        "Lokhttp3/tls/internal/der/DerHeader;",
        "toDer",
        "",
        "writer",
        "Lokhttp3/tls/internal/der/DerWriter;",
        "value",
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


# instance fields
.field final synthetic $chooser:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "+",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "*>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/tls/internal/der/Adapters$usingTypeHint$1;->$chooser:Lkotlin/jvm/functions/Function1;

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asSequenceOf(Ljava/lang/String;IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 348
    invoke-static {p0, p1, p2, p3, p4}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->asSequenceOf(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    return-object p1
.end method

.method public asSetOf()Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 348
    invoke-static {p0}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->asSetOf(Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;
    .locals 2

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lokhttp3/tls/internal/der/Adapters$usingTypeHint$1;->$chooser:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->getTypeHint()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/tls/internal/der/DerAdapter;

    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v0, p1}, Lokhttp3/tls/internal/der/DerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 365
    :cond_0
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerReader;->readUnknown()Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public fromDer(Lokio/ByteString;)Ljava/lang/Object;
    .locals 0

    .line 348
    invoke-static {p0, p1}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->fromDer(Lokhttp3/tls/internal/der/DerAdapter;Lokio/ByteString;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public matches(Lokhttp3/tls/internal/der/DerHeader;)Z
    .locals 1

    const-string v0, "header"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public toDer(Ljava/lang/Object;)Lokio/ByteString;
    .locals 0

    .line 348
    invoke-static {p0, p1}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->toDer(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/Object;)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public toDer(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lokhttp3/tls/internal/der/Adapters$usingTypeHint$1;->$chooser:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1}, Lokhttp3/tls/internal/der/DerWriter;->getTypeHint()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/tls/internal/der/DerAdapter;

    if-eqz v0, :cond_0

    .line 356
    invoke-interface {v0, p1, p2}, Lokhttp3/tls/internal/der/DerAdapter;->toDer(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V

    return-void

    .line 357
    :cond_0
    const-string v0, "null cannot be cast to non-null type okio.ByteString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lokio/ByteString;

    invoke-virtual {p1, p2}, Lokhttp3/tls/internal/der/DerWriter;->writeOctetString(Lokio/ByteString;)V

    return-void
.end method

.method public withExplicitBox(IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/Boolean;",
            ")",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-static {p0, p1, p2, p3, p4}, Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;->withExplicitBox(Lokhttp3/tls/internal/der/DerAdapter;IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p1

    return-object p1
.end method
