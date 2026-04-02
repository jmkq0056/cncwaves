.class public final Lcom/stripe/bbpos/sdk/WaitingForCardResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "WaitingForCardResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/sdk/WaitingForCardResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/bbpos/sdk/WaitingForCardResult;",
        "Lcom/stripe/bbpos/sdk/WaitingForCardResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/WaitingForCardResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/bbpos/sdk/WaitingForCardResult;",
        "()V",
        "checkCardMode",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
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
.field public checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 75
    sget-object v0, Lcom/stripe/bbpos/sdk/CheckCardMode;->CHECK_CARD_MODE_UNKNOWN:Lcom/stripe/bbpos/sdk/CheckCardMode;

    iput-object v0, p0, Lcom/stripe/bbpos/sdk/WaitingForCardResult$Builder;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/WaitingForCardResult$Builder;->build()Lcom/stripe/bbpos/sdk/WaitingForCardResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/bbpos/sdk/WaitingForCardResult;
    .locals 3

    .line 82
    new-instance v0, Lcom/stripe/bbpos/sdk/WaitingForCardResult;

    .line 83
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/WaitingForCardResult$Builder;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    .line 84
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/WaitingForCardResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 82
    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/sdk/WaitingForCardResult;-><init>(Lcom/stripe/bbpos/sdk/CheckCardMode;Lokio/ByteString;)V

    return-object v0
.end method

.method public final checkCardMode(Lcom/stripe/bbpos/sdk/CheckCardMode;)Lcom/stripe/bbpos/sdk/WaitingForCardResult$Builder;
    .locals 1

    const-string v0, "checkCardMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/WaitingForCardResult$Builder;->checkCardMode:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p0
.end method
