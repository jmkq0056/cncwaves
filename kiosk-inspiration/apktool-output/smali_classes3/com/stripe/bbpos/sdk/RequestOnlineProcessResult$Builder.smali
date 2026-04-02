.class public final Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RequestOnlineProcessResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult;",
        "Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult;",
        "()V",
        "tlv",
        "",
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


# instance fields
.field public tlv:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult$Builder;->tlv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult$Builder;->build()Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult;
    .locals 3

    .line 83
    new-instance v0, Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult;

    .line 84
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult$Builder;->tlv:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 83
    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final tlv(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult$Builder;
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/RequestOnlineProcessResult$Builder;->tlv:Ljava/lang/String;

    return-object p0
.end method
