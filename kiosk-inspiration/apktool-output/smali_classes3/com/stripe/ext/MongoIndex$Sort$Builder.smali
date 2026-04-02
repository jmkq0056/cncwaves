.class public final Lcom/stripe/ext/MongoIndex$Sort$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MongoIndex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/MongoIndex$Sort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/ext/MongoIndex$Sort;",
        "Lcom/stripe/ext/MongoIndex$Sort$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0014\u0010\u0007\u001a\u00020\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/ext/MongoIndex$Sort$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/ext/MongoIndex$Sort;",
        "()V",
        "asc",
        "",
        "",
        "desc",
        "build",
        "common_release"
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
.field public asc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 683
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 685
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Sort$Builder;->asc:Ljava/util/List;

    .line 688
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Sort$Builder;->desc:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final asc(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Sort$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Sort$Builder;"
        }
    .end annotation

    const-string v0, "asc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 692
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Sort$Builder;->asc:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/stripe/ext/MongoIndex$Sort$Builder;->build()Lcom/stripe/ext/MongoIndex$Sort;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/ext/MongoIndex$Sort;
    .locals 4

    .line 702
    new-instance v0, Lcom/stripe/ext/MongoIndex$Sort;

    .line 703
    iget-object v1, p0, Lcom/stripe/ext/MongoIndex$Sort$Builder;->asc:Ljava/util/List;

    .line 704
    iget-object v2, p0, Lcom/stripe/ext/MongoIndex$Sort$Builder;->desc:Ljava/util/List;

    .line 705
    invoke-virtual {p0}, Lcom/stripe/ext/MongoIndex$Sort$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 702
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/ext/MongoIndex$Sort;-><init>(Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final desc(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Sort$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Sort$Builder;"
        }
    .end annotation

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 698
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Sort$Builder;->desc:Ljava/util/List;

    return-object p0
.end method
