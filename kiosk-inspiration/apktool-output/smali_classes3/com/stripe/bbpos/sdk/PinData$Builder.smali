.class public final Lcom/stripe/bbpos/sdk/PinData$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PinData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/PinData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/PinData;",
        "Lcom/stripe/bbpos/sdk/PinData$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/PinData$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/PinData;",
        "()V",
        "epb",
        "",
        "ksn",
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
.field public epb:Ljava/lang/String;

.field public ksn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PinData$Builder;->build()Lcom/stripe/bbpos/sdk/PinData;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/PinData;
    .locals 4

    .line 103
    new-instance v0, Lcom/stripe/bbpos/sdk/PinData;

    .line 104
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/PinData$Builder;->ksn:Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/PinData$Builder;->epb:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PinData$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 103
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/bbpos/sdk/PinData;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final epb(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/PinData$Builder;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/PinData$Builder;->epb:Ljava/lang/String;

    return-object p0
.end method

.method public final ksn(Ljava/lang/String;)Lcom/stripe/bbpos/sdk/PinData$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/PinData$Builder;->ksn:Ljava/lang/String;

    return-object p0
.end method
