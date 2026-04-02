.class public final Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OnReaderUpdate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;",
        "()V",
        "card_status",
        "Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;",
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
.field public card_status:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 339
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 341
    sget-object v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;->CARD_INSERTED:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;

    iput-object v0, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;->card_status:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;->build()Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;
    .locals 3

    .line 348
    new-instance v0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;

    .line 349
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;->card_status:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;

    .line 350
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 348
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged;-><init>(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card_status(Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;)Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;
    .locals 1

    const-string v0, "card_status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$Builder;->card_status:Lcom/stripe/proto/api/sdk/OnReaderUpdate$OnCardStatusChanged$CardStatus;

    return-object p0
.end method
