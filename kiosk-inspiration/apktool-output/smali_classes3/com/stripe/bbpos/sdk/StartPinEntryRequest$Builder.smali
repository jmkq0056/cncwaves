.class public final Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "StartPinEntryRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/StartPinEntryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/StartPinEntryRequest;",
        "Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0015\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/StartPinEntryRequest;",
        "()V",
        "isAccessiblePinPad",
        "",
        "pinEntryTimeout",
        "",
        "Ljava/lang/Integer;",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;",
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
.field public isAccessiblePinPad:Z

.field public pinEntryTimeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;->build()Lcom/stripe/bbpos/sdk/StartPinEntryRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/StartPinEntryRequest;
    .locals 4

    .line 105
    new-instance v0, Lcom/stripe/bbpos/sdk/StartPinEntryRequest;

    .line 106
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;->isAccessiblePinPad:Z

    .line 107
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;->pinEntryTimeout:Ljava/lang/Integer;

    .line 108
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 105
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/bbpos/sdk/StartPinEntryRequest;-><init>(ZLjava/lang/Integer;Lokio/ByteString;)V

    return-object v0
.end method

.method public final isAccessiblePinPad(Z)Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;->isAccessiblePinPad:Z

    return-object p0
.end method

.method public final pinEntryTimeout(Ljava/lang/Integer;)Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/StartPinEntryRequest$Builder;->pinEntryTimeout:Ljava/lang/Integer;

    return-object p0
.end method
