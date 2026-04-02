.class public final Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CreateReaderRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/CreateReaderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/CreateReaderRequest;",
        "Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/CreateReaderRequest;",
        "()V",
        "label",
        "",
        "location",
        "registration_code",
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
.field public label:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public registration_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;->build()Lcom/stripe/proto/api/rest/CreateReaderRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/CreateReaderRequest;
    .locals 5

    .line 143
    new-instance v0, Lcom/stripe/proto/api/rest/CreateReaderRequest;

    .line 144
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;->registration_code:Ljava/lang/String;

    .line 145
    iget-object v2, p0, Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;->label:Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;->location:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 143
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/rest/CreateReaderRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final label(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public final location(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;->location:Ljava/lang/String;

    return-object p0
.end method

.method public final registration_code(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateReaderRequest$Builder;->registration_code:Ljava/lang/String;

    return-object p0
.end method
