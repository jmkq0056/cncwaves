.class public final Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ListAllReadersResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/ListAllReadersResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/ListAllReadersResponse;",
        "Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0015\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\u000bR\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/ListAllReadersResponse;",
        "()V",
        "data_",
        "",
        "Lcom/stripe/proto/model/rest/ExpandedLocationReader;",
        "has_more",
        "",
        "Ljava/lang/Boolean;",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;",
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
.field public data_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/rest/ExpandedLocationReader;",
            ">;"
        }
    .end annotation
.end field

.field public has_more:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 105
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;->data_:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;->build()Lcom/stripe/proto/api/rest/ListAllReadersResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/ListAllReadersResponse;
    .locals 4

    .line 127
    new-instance v0, Lcom/stripe/proto/api/rest/ListAllReadersResponse;

    .line 128
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;->data_:Ljava/util/List;

    .line 129
    iget-object v2, p0, Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;->has_more:Ljava/lang/Boolean;

    .line 130
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 127
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/rest/ListAllReadersResponse;-><init>(Ljava/util/List;Ljava/lang/Boolean;Lokio/ByteString;)V

    return-object v0
.end method

.method public final data_(Ljava/util/List;)Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/rest/ExpandedLocationReader;",
            ">;)",
            "Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;"
        }
    .end annotation

    const-string v0, "data_"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 115
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;->data_:Ljava/util/List;

    return-object p0
.end method

.method public final has_more(Ljava/lang/Boolean;)Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListAllReadersResponse$Builder;->has_more:Ljava/lang/Boolean;

    return-object p0
.end method
