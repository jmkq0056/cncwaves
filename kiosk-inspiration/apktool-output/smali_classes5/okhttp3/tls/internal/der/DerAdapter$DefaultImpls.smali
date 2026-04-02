.class public final Lokhttp3/tls/internal/der/DerAdapter$DefaultImpls;
.super Ljava/lang/Object;
.source "DerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/tls/internal/der/DerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static asSequenceOf(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ)",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lokhttp3/tls/internal/der/DerAdapter$asSequenceOf$codec$1;

    invoke-direct {v0, p0}, Lokhttp3/tls/internal/der/DerAdapter$asSequenceOf$codec$1;-><init>(Lokhttp3/tls/internal/der/DerAdapter;)V

    .line 122
    new-instance v1, Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-object v6, v0

    check-cast v6, Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    const/16 v10, 0x70

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v11}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public static synthetic asSequenceOf$default(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/String;IJILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0

    if-nez p6, :cond_3

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 102
    const-string p1, "SEQUENCE OF"

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const-wide/16 p3, 0x10

    .line 101
    :cond_2
    invoke-interface {p0, p1, p2, p3, p4}, Lokhttp3/tls/internal/der/DerAdapter;->asSequenceOf(Ljava/lang/String;IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: asSequenceOf"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asSetOf(Lokhttp3/tls/internal/der/DerAdapter;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "TT;>;)",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x11

    .line 127
    const-string v3, "SET OF"

    invoke-interface {p0, v3, v0, v1, v2}, Lokhttp3/tls/internal/der/DerAdapter;->asSequenceOf(Ljava/lang/String;IJ)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static fromDer(Lokhttp3/tls/internal/der/DerAdapter;Lokio/ByteString;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "TT;>;",
            "Lokio/ByteString;",
            ")TT;"
        }
    .end annotation

    const-string v0, "byteString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    .line 44
    new-instance v0, Lokhttp3/tls/internal/der/DerReader;

    check-cast p1, Lokio/Source;

    invoke-direct {v0, p1}, Lokhttp3/tls/internal/der/DerReader;-><init>(Lokio/Source;)V

    .line 45
    invoke-interface {p0, v0}, Lokhttp3/tls/internal/der/DerAdapter;->fromDer(Lokhttp3/tls/internal/der/DerReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toDer(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/Object;)Lokio/ByteString;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "TT;>;TT;)",
            "Lokio/ByteString;"
        }
    .end annotation

    .line 56
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 57
    new-instance v1, Lokhttp3/tls/internal/der/DerWriter;

    move-object v2, v0

    check-cast v2, Lokio/BufferedSink;

    invoke-direct {v1, v2}, Lokhttp3/tls/internal/der/DerWriter;-><init>(Lokio/BufferedSink;)V

    .line 58
    invoke-interface {p0, v1, p1}, Lokhttp3/tls/internal/der/DerAdapter;->toDer(Lokhttp3/tls/internal/der/DerWriter;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static withExplicitBox(Lokhttp3/tls/internal/der/DerAdapter;IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lokhttp3/tls/internal/der/DerAdapter<",
            "TT;>;IJ",
            "Ljava/lang/Boolean;",
            ")",
            "Lokhttp3/tls/internal/der/BasicDerAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Lokhttp3/tls/internal/der/DerAdapter$withExplicitBox$codec$1;

    move-object/from16 v1, p4

    invoke-direct {v0, p0, v1}, Lokhttp3/tls/internal/der/DerAdapter$withExplicitBox$codec$1;-><init>(Lokhttp3/tls/internal/der/DerAdapter;Ljava/lang/Boolean;)V

    .line 92
    new-instance v1, Lokhttp3/tls/internal/der/BasicDerAdapter;

    .line 96
    move-object v6, v0

    check-cast v6, Lokhttp3/tls/internal/der/BasicDerAdapter$Codec;

    const/16 v10, 0x70

    const/4 v11, 0x0

    .line 92
    const-string v2, "EXPLICIT"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v11}, Lokhttp3/tls/internal/der/BasicDerAdapter;-><init>(Ljava/lang/String;IJLokhttp3/tls/internal/der/BasicDerAdapter$Codec;ZLjava/lang/Object;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public static synthetic withExplicitBox$default(Lokhttp3/tls/internal/der/DerAdapter;IJLjava/lang/Boolean;ILjava/lang/Object;)Lokhttp3/tls/internal/der/BasicDerAdapter;
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/16 p1, 0x80

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 77
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lokhttp3/tls/internal/der/DerAdapter;->withExplicitBox(IJLjava/lang/Boolean;)Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: withExplicitBox"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
