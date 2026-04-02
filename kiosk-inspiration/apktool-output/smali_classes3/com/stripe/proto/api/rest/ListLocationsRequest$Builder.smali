.class public final Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ListLocationsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/ListLocationsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/ListLocationsRequest;",
        "Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/ListLocationsRequest;",
        "()V",
        "ending_before",
        "",
        "limit",
        "",
        "Ljava/lang/Integer;",
        "starting_after",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;",
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
.field public ending_before:Ljava/lang/String;

.field public limit:Ljava/lang/Integer;

.field public starting_after:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;->build()Lcom/stripe/proto/api/rest/ListLocationsRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/ListLocationsRequest;
    .locals 5

    .line 144
    new-instance v0, Lcom/stripe/proto/api/rest/ListLocationsRequest;

    .line 145
    iget-object v1, p0, Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;->ending_before:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;->limit:Ljava/lang/Integer;

    .line 147
    iget-object v3, p0, Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;->starting_after:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 144
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/rest/ListLocationsRequest;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final ending_before(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;->ending_before:Ljava/lang/String;

    return-object p0
.end method

.method public final limit(Ljava/lang/Integer;)Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;->limit:Ljava/lang/Integer;

    return-object p0
.end method

.method public final starting_after(Ljava/lang/String;)Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/stripe/proto/api/rest/ListLocationsRequest$Builder;->starting_after:Ljava/lang/String;

    return-object p0
.end method
