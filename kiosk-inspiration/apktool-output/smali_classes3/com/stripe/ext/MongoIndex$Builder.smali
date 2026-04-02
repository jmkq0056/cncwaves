.class public final Lcom/stripe/ext/MongoIndex$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "MongoIndex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/ext/MongoIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/ext/MongoIndex;",
        "Lcom/stripe/ext/MongoIndex$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0014\u0010\u0007\u001a\u00020\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0005J\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\rR\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/ext/MongoIndex$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/ext/MongoIndex;",
        "()V",
        "field_",
        "",
        "Lcom/stripe/ext/MongoIndex$Field;",
        "query",
        "Lcom/stripe/ext/MongoIndex$Query;",
        "unique",
        "",
        "Ljava/lang/Boolean;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/ext/MongoIndex$Builder;",
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
.field public field_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/ext/MongoIndex$Field;",
            ">;"
        }
    .end annotation
.end field

.field public query:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/ext/MongoIndex$Query;",
            ">;"
        }
    .end annotation
.end field

.field public unique:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 146
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Builder;->field_:Ljava/util/List;

    .line 152
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/ext/MongoIndex$Builder;->query:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/stripe/ext/MongoIndex$Builder;->build()Lcom/stripe/ext/MongoIndex;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/ext/MongoIndex;
    .locals 5

    .line 180
    new-instance v0, Lcom/stripe/ext/MongoIndex;

    .line 181
    iget-object v1, p0, Lcom/stripe/ext/MongoIndex$Builder;->field_:Ljava/util/List;

    .line 182
    iget-object v2, p0, Lcom/stripe/ext/MongoIndex$Builder;->unique:Ljava/lang/Boolean;

    .line 183
    iget-object v3, p0, Lcom/stripe/ext/MongoIndex$Builder;->query:Ljava/util/List;

    .line 184
    invoke-virtual {p0}, Lcom/stripe/ext/MongoIndex$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 180
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/ext/MongoIndex;-><init>(Ljava/util/List;Ljava/lang/Boolean;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final field_(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/ext/MongoIndex$Field;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Builder;"
        }
    .end annotation

    const-string v0, "field_"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 159
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Builder;->field_:Ljava/util/List;

    return-object p0
.end method

.method public final query(Ljava/util/List;)Lcom/stripe/ext/MongoIndex$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/ext/MongoIndex$Query;",
            ">;)",
            "Lcom/stripe/ext/MongoIndex$Builder;"
        }
    .end annotation

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 176
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Builder;->query:Ljava/util/List;

    return-object p0
.end method

.method public final unique(Ljava/lang/Boolean;)Lcom/stripe/ext/MongoIndex$Builder;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/stripe/ext/MongoIndex$Builder;->unique:Ljava/lang/Boolean;

    return-object p0
.end method
