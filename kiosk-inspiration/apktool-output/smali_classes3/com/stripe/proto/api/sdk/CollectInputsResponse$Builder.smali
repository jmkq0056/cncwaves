.class public final Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectInputsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/CollectInputsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/CollectInputsResponse;",
        "Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/CollectInputsResponse;",
        "()V",
        "failed",
        "Lcom/stripe/proto/model/sdk/Error;",
        "successfully_started",
        "Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;",
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

.field public successfully_started:Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;->build()Lcom/stripe/proto/api/sdk/CollectInputsResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/CollectInputsResponse;
    .locals 4

    .line 114
    new-instance v0, Lcom/stripe/proto/api/sdk/CollectInputsResponse;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;->successfully_started:Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;

    .line 116
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;->failed:Lcom/stripe/proto/model/sdk/Error;

    .line 117
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 114
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/api/sdk/CollectInputsResponse;-><init>(Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V

    return-object v0
.end method

.method public final failed(Lcom/stripe/proto/model/sdk/Error;)Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;->failed:Lcom/stripe/proto/model/sdk/Error;

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;->successfully_started:Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;

    return-object p0
.end method

.method public final successfully_started(Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;)Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;->successfully_started:Lcom/stripe/proto/api/sdk/CollectInputsResponse$SuccessfullyStarted;

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/CollectInputsResponse$Builder;->failed:Lcom/stripe/proto/model/sdk/Error;

    return-object p0
.end method
