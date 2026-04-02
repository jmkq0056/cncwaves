.class public final Lcom/stripe/proto/model/test/Outer$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Outer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/test/Outer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/test/Outer;",
        "Lcom/stripe/proto/model/test/Outer$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0006\u001a\u00020\u00002\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00050\u0007J\u0014\u0010\t\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\nR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/model/test/Outer$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/test/Outer;",
        "()V",
        "inner_",
        "Lcom/stripe/proto/model/test/Inner;",
        "inner_map",
        "",
        "",
        "inners",
        "",
        "build",
        "internal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public inner_:Lcom/stripe/proto/model/test/Inner;

.field public inner_map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/test/Inner;",
            ">;"
        }
    .end annotation
.end field

.field public inners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/test/Inner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 116
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/test/Outer$Builder;->inners:Ljava/util/List;

    .line 119
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/model/test/Outer$Builder;->inner_map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/model/test/Outer$Builder;->build()Lcom/stripe/proto/model/test/Outer;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/test/Outer;
    .locals 5

    .line 137
    new-instance v0, Lcom/stripe/proto/model/test/Outer;

    .line 138
    iget-object v1, p0, Lcom/stripe/proto/model/test/Outer$Builder;->inner_:Lcom/stripe/proto/model/test/Inner;

    .line 139
    iget-object v2, p0, Lcom/stripe/proto/model/test/Outer$Builder;->inners:Ljava/util/List;

    .line 140
    iget-object v3, p0, Lcom/stripe/proto/model/test/Outer$Builder;->inner_map:Ljava/util/Map;

    .line 141
    invoke-virtual {p0}, Lcom/stripe/proto/model/test/Outer$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 137
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/test/Outer;-><init>(Lcom/stripe/proto/model/test/Inner;Ljava/util/List;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final inner_(Lcom/stripe/proto/model/test/Inner;)Lcom/stripe/proto/model/test/Outer$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/stripe/proto/model/test/Outer$Builder;->inner_:Lcom/stripe/proto/model/test/Inner;

    return-object p0
.end method

.method public final inner_map(Ljava/util/Map;)Lcom/stripe/proto/model/test/Outer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/test/Inner;",
            ">;)",
            "Lcom/stripe/proto/model/test/Outer$Builder;"
        }
    .end annotation

    const-string v0, "inner_map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/model/test/Outer$Builder;->inner_map:Ljava/util/Map;

    return-object p0
.end method

.method public final inners(Ljava/util/List;)Lcom/stripe/proto/model/test/Outer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/test/Inner;",
            ">;)",
            "Lcom/stripe/proto/model/test/Outer$Builder;"
        }
    .end annotation

    const-string v0, "inners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 128
    iput-object p1, p0, Lcom/stripe/proto/model/test/Outer$Builder;->inners:Ljava/util/List;

    return-object p0
.end method
