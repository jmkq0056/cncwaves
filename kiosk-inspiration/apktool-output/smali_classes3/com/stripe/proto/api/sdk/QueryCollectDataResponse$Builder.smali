.class public final Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "QueryCollectDataResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0012\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;",
        "()V",
        "collected_data",
        "Lcom/stripe/proto/model/rest/ReaderCollectedData;",
        "error",
        "Lcom/stripe/proto/model/sdk/Error;",
        "error_response",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;",
        "status",
        "Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;",
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
.field public collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

.field public error:Lcom/stripe/proto/model/sdk/Error;

.field public error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

.field public status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;


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
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->build()Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;
    .locals 6

    .line 181
    new-instance v0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;

    .line 182
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    .line 183
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    .line 184
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 185
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    .line 186
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse;-><init>(Lcom/stripe/proto/model/rest/ReaderCollectedData;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;Lcom/stripe/proto/model/sdk/Error;Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;Lokio/ByteString;)V

    return-object v0
.end method

.method public final collected_data(Lcom/stripe/proto/model/rest/ReaderCollectedData;)Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    .line 148
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 149
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    return-object p0
.end method

.method public final error(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "error is deprecated"
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    .line 168
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    .line 169
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    return-object p0
.end method

.method public final error_response(Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;)Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    .line 176
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final status(Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;)Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->status:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataStatus;

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->collected_data:Lcom/stripe/proto/model/rest/ReaderCollectedData;

    .line 156
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error:Lcom/stripe/proto/model/sdk/Error;

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$Builder;->error_response:Lcom/stripe/proto/api/sdk/QueryCollectDataResponse$QueryCollectDataResponseError;

    return-object p0
.end method
