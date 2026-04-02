.class public final Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SendOnlineProcessResultResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse;",
        "Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse;",
        "()V",
        "build",
        "sdk-protos_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse$Builder;->build()Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse;
    .locals 2

    .line 51
    new-instance v0, Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse;

    .line 52
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Lcom/stripe/bbpos/sdk/SendOnlineProcessResultResponse;-><init>(Lokio/ByteString;)V

    return-object v0
.end method
