.class public final Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UploadFileResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/UploadFileResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/UploadFileResponse;",
        "Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u000eJ\u0010\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/UploadFileResponse;",
        "()V",
        "filename",
        "",
        "id",
        "purpose",
        "size",
        "",
        "Ljava/lang/Long;",
        "type",
        "url",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;",
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
.field public filename:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public purpose:Ljava/lang/String;

.field public size:Ljava/lang/Long;

.field public type:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->build()Lcom/stripe/proto/api/rest/UploadFileResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/UploadFileResponse;
    .locals 8

    .line 181
    new-instance v0, Lcom/stripe/proto/api/rest/UploadFileResponse;

    .line 182
    iget-object v1, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->id:Ljava/lang/String;

    .line 183
    iget-object v2, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->filename:Ljava/lang/String;

    .line 184
    iget-object v3, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->purpose:Ljava/lang/String;

    .line 185
    iget-object v4, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->size:Ljava/lang/Long;

    .line 186
    iget-object v5, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->type:Ljava/lang/String;

    .line 187
    iget-object v6, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->url:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 181
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/rest/UploadFileResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final filename(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->filename:Ljava/lang/String;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final purpose(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->purpose:Ljava/lang/String;

    return-object p0
.end method

.method public final size(Ljava/lang/Long;)Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->size:Ljava/lang/Long;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->type:Ljava/lang/String;

    return-object p0
.end method

.method public final url(Ljava/lang/String;)Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/api/rest/UploadFileResponse$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
