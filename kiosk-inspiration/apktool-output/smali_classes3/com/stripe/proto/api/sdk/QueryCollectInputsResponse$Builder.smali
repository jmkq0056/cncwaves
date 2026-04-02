.class public final Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "QueryCollectInputsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;",
        "()V",
        "failed",
        "Lcom/stripe/proto/model/sdk/Error;",
        "pending",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;",
        "successfully_completed",
        "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;",
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
.field public failed:Lcom/stripe/proto/model/sdk/Error;

.field public pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

.field public successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->build()Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;
    .locals 5

    .line 147
    new-instance v0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    .line 149
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    .line 150
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->failed:Lcom/stripe/proto/model/sdk/Error;

    .line 151
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 147
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse;-><init>(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-object v0
.end method

.method public final failed(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->failed:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 142
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    .line 143
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    return-object p0
.end method

.method public final pending(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    const/4 p1, 0x0

    .line 128
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    .line 129
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->failed:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method

.method public final successfully_completed(Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;)Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->successfully_completed:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;

    const/4 p1, 0x0

    .line 135
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->pending:Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Pending;

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$Builder;->failed:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method
