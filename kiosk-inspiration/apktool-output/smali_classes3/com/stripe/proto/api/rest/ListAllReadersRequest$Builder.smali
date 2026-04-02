.class public final Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ListAllReadersRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/ListAllReadersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/ListAllReadersRequest;",
        "Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u0008\u001a\u00020\u00002\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tJ\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0011J\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/ListAllReadersRequest;",
        "()V",
        "compatible_sdk_type",
        "",
        "compatible_sdk_version",
        "device_type",
        "expand",
        "",
        "limit",
        "",
        "Ljava/lang/Integer;",
        "location",
        "serial_number",
        "starting_after",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;",
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
.field public compatible_sdk_type:Ljava/lang/String;

.field public compatible_sdk_version:Ljava/lang/String;

.field public device_type:Ljava/lang/String;

.field public expand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public limit:Ljava/lang/Integer;

.field public location:Ljava/lang/String;

.field public serial_number:Ljava/lang/String;

.field public starting_after:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 192
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 200
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->expand:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->build()Lcom/stripe/proto/api/rest/ListAllReadersRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/ListAllReadersRequest;
    .locals 10

    .line 279
    new-instance v0, Lcom/stripe/proto/api/rest/ListAllReadersRequest;

    .line 280
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->device_type:Ljava/lang/String;

    .line 281
    iget-object v2, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->location:Ljava/lang/String;

    .line 282
    iget-object v3, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->expand:Ljava/util/List;

    .line 283
    iget-object v4, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->starting_after:Ljava/lang/String;

    .line 284
    iget-object v5, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->serial_number:Ljava/lang/String;

    .line 285
    iget-object v6, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->compatible_sdk_type:Ljava/lang/String;

    .line 286
    iget-object v7, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->compatible_sdk_version:Ljava/lang/String;

    .line 287
    iget-object v8, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->limit:Ljava/lang/Integer;

    .line 288
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 279
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/rest/ListAllReadersRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lokio/ByteString;)V

    return-object v0
.end method

.method public final compatible_sdk_type(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->compatible_sdk_type:Ljava/lang/String;

    return-object p0
.end method

.method public final compatible_sdk_version(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->compatible_sdk_version:Ljava/lang/String;

    return-object p0
.end method

.method public final device_type(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->device_type:Ljava/lang/String;

    return-object p0
.end method

.method public final expand(Ljava/util/List;)Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;"
        }
    .end annotation

    const-string v0, "expand"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 235
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->expand:Ljava/util/List;

    return-object p0
.end method

.method public final limit(Ljava/lang/Integer;)Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public final location(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public final serial_number(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->serial_number:Ljava/lang/String;

    return-object p0
.end method

.method public final starting_after(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListAllReadersRequest$Builder;->starting_after:Ljava/lang/String;

    return-object p0
.end method
