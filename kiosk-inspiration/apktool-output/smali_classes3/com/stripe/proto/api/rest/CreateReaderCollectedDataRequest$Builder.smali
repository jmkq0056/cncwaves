.class public final Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CreateReaderCollectedDataRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;",
        "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;",
        "()V",
        "magstripe",
        "Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;",
        "type",
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
.field public magstripe:Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;->build()Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;
    .locals 4

    .line 122
    new-instance v0, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;

    .line 123
    iget-object v1, p0, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;->type:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;->magstripe:Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;

    .line 125
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 122
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;Lokio/ByteString;)V

    return-object v0
.end method

.method public final magstripe(Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;)Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;->magstripe:Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$MagstripeCollectedData;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/stripe/proto/api/rest/CreateReaderCollectedDataRequest$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
