.class public final Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PinEntryResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/PinEntryResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/PinEntryResult;",
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/PinEntryResult;",
        "()V",
        "pinData",
        "Lcom/stripe/bbpos/sdk/PinData;",
        "pinEntryResult",
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;",
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
.field public pinData:Lcom/stripe/bbpos/sdk/PinData;

.field public pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 91
    sget-object v0, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->PIN_ENTRY_RESULT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;->build()Lcom/stripe/bbpos/sdk/PinEntryResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/PinEntryResult;
    .locals 4

    .line 106
    new-instance v0, Lcom/stripe/bbpos/sdk/PinEntryResult;

    .line 107
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    .line 108
    iget-object v2, p0, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    .line 109
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 106
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/bbpos/sdk/PinEntryResult;-><init>(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;Lokio/ByteString;)V

    return-object v0
.end method

.method public final pinData(Lcom/stripe/bbpos/sdk/PinData;)Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;->pinData:Lcom/stripe/bbpos/sdk/PinData;

    return-object p0
.end method

.method public final pinEntryResult(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;)Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;
    .locals 1

    const-string v0, "pinEntryResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/PinEntryResult$Builder;->pinEntryResult:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p0
.end method
