.class public final Lcom/stripe/bbpos/sdk/RequestPinEntryResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RequestPinEntryResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/RequestPinEntryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/RequestPinEntryResult;",
        "Lcom/stripe/bbpos/sdk/RequestPinEntryResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/RequestPinEntryResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/RequestPinEntryResult;",
        "()V",
        "pinEntrySource",
        "Lcom/stripe/bbpos/sdk/PinEntrySource;",
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
.field public pinEntrySource:Lcom/stripe/bbpos/sdk/PinEntrySource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 75
    sget-object v0, Lcom/stripe/bbpos/sdk/PinEntrySource;->PIN_ENTRY_SOURCE_UNKNOWN:Lcom/stripe/bbpos/sdk/PinEntrySource;

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/RequestPinEntryResult$Builder;->pinEntrySource:Lcom/stripe/bbpos/sdk/PinEntrySource;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/RequestPinEntryResult$Builder;->build()Lcom/stripe/bbpos/sdk/RequestPinEntryResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/RequestPinEntryResult;
    .locals 3

    .line 82
    new-instance v0, Lcom/stripe/bbpos/sdk/RequestPinEntryResult;

    .line 83
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/RequestPinEntryResult$Builder;->pinEntrySource:Lcom/stripe/bbpos/sdk/PinEntrySource;

    .line 84
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/RequestPinEntryResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 82
    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/RequestPinEntryResult;-><init>(Lcom/stripe/bbpos/sdk/PinEntrySource;Lokio/ByteString;)V

    return-object v0
.end method

.method public final pinEntrySource(Lcom/stripe/bbpos/sdk/PinEntrySource;)Lcom/stripe/bbpos/sdk/RequestPinEntryResult$Builder;
    .locals 1

    const-string v0, "pinEntrySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/RequestPinEntryResult$Builder;->pinEntrySource:Lcom/stripe/bbpos/sdk/PinEntrySource;

    return-object p0
.end method
