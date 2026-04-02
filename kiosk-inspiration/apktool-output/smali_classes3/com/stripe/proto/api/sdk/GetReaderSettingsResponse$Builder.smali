.class public final Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "GetReaderSettingsResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse;",
        "Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse;",
        "()V",
        "response",
        "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;",
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
.field public response:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse$Builder;->build()Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse;
    .locals 3

    .line 79
    new-instance v0, Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse;

    .line 80
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse$Builder;->response:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;

    .line 81
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 79
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse;-><init>(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;Lokio/ByteString;)V

    return-object v0
.end method

.method public final response(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;)Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse$Builder;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/GetReaderSettingsResponse$Builder;->response:Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;

    return-object p0
.end method
