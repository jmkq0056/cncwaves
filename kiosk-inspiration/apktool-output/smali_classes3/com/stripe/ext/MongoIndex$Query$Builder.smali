.class public final Lcom/stripe/ext/MongoIndex$Query$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MongoIndex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/MongoIndex$Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/ext/MongoIndex$Query;",
        "Lcom/stripe/ext/MongoIndex$Query$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0007\u001a\u00020\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\t\u001a\u00020\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0015J\u0014\u0010\r\u001a\u00020\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u000e\u001a\u00020\u00002\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0006J\u0014\u0010\u0010\u001a\u00020\u00002\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0011\u001a\u00020\u00002\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0012\u001a\u00020\u00002\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0005R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/ext/MongoIndex$Query$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/ext/MongoIndex$Query;",
        "()V",
        "eq",
        "",
        "",
        "gt",
        "gte",
        "in_",
        "limit",
        "",
        "Ljava/lang/Integer;",
        "lt",
        "lte",
        "name",
        "ne",
        "regex",
        "sort",
        "Lcom/stripe/ext/MongoIndex$Sort;",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/ext/MongoIndex$Query$Builder;",
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
.field public eq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public gte:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public in_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public limit:Ljava/lang/Integer;

.field public lt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public lte:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public ne:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public regex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/ext/MongoIndex$Sort;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 968
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 973
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->sort:Ljava/util/List;

    .line 979
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->eq:Ljava/util/List;

    .line 982
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->ne:Ljava/util/List;

    .line 985
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->gt:Ljava/util/List;

    .line 988
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->gte:Ljava/util/List;

    .line 991
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->lt:Ljava/util/List;

    .line 994
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->lte:Ljava/util/List;

    .line 997
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->in_:Ljava/util/List;

    .line 1000
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->regex:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 968
    invoke-virtual {p0}, Lcom/stripe/ext/MongoIndex$Query$Builder;->build()Lcom/stripe/ext/MongoIndex$Query;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/ext/MongoIndex$Query;
    .locals 13

    .line 1072
    new-instance v0, Lcom/stripe/ext/MongoIndex$Query;

    .line 1073
    iget-object v1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1074
    iget-object v2, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->sort:Ljava/util/List;

    .line 1075
    iget-object v3, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->limit:Ljava/lang/Integer;

    .line 1076
    iget-object v4, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->eq:Ljava/util/List;

    .line 1077
    iget-object v5, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->ne:Ljava/util/List;

    .line 1078
    iget-object v6, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->gt:Ljava/util/List;

    .line 1079
    iget-object v7, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->gte:Ljava/util/List;

    .line 1080
    iget-object v8, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->lt:Ljava/util/List;

    .line 1081
    iget-object v9, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->lte:Ljava/util/List;

    .line 1082
    iget-object v10, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->in_:Ljava/util/List;

    .line 1083
    iget-object v11, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->regex:Ljava/util/List;

    .line 1084
    invoke-virtual {p0}, Lcom/stripe/ext/MongoIndex$Query$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 1072
    invoke-direct/range {v0 .. v12}, Lcom/stripe/ext/MongoIndex$Query;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lokio/ByteString;)V

    return-object v0

    .line 1073
    :cond_0
    const-string v0, "name"

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/wire/internal/Internal;->missingRequiredFields([Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final eq(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Query$Builder;"
        }
    .end annotation

    const-string v0, "eq"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1025
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1026
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->eq:Ljava/util/List;

    return-object p0
.end method

.method public final gt(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Query$Builder;"
        }
    .end annotation

    const-string v0, "gt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1038
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->gt:Ljava/util/List;

    return-object p0
.end method

.method public final gte(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Query$Builder;"
        }
    .end annotation

    const-string v0, "gte"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1044
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->gte:Ljava/util/List;

    return-object p0
.end method

.method public final in_(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Query$Builder;"
        }
    .end annotation

    const-string v0, "in_"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1062
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->in_:Ljava/util/List;

    return-object p0
.end method

.method public final limit(Ljava/lang/Integer;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public final lt(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Query$Builder;"
        }
    .end annotation

    const-string v0, "lt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1050
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->lt:Ljava/util/List;

    return-object p0
.end method

.method public final lte(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Query$Builder;"
        }
    .end annotation

    const-string v0, "lte"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1056
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->lte:Ljava/util/List;

    return-object p0
.end method

.method public final name(Ljava/lang/String;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1003
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final ne(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Query$Builder;"
        }
    .end annotation

    const-string v0, "ne"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1032
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->ne:Ljava/util/List;

    return-object p0
.end method

.method public final regex(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Query$Builder;"
        }
    .end annotation

    const-string v0, "regex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1068
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->regex:Ljava/util/List;

    return-object p0
.end method

.method public final sort(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Query$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/ext/MongoIndex$Sort;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Query$Builder;"
        }
    .end annotation

    const-string v0, "sort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1009
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Query$Builder;->sort:Ljava/util/List;

    return-object p0
.end method
