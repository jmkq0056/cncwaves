.class public final Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "BinTablePb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;",
        "()V",
        "bin_range_end",
        "",
        "bin_range_start",
        "build",
        "terminal_release"
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
.field public bin_range_end:I

.field public bin_range_start:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final bin_range_end(I)Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;
    .locals 0

    .line 235
    iput p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;->bin_range_end:I

    return-object p0
.end method

.method public final bin_range_start(I)Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;
    .locals 0

    .line 227
    iput p1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;->bin_range_start:I

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 216
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;->build()Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;
    .locals 4

    .line 239
    new-instance v0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;

    .line 240
    iget v1, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;->bin_range_start:I

    .line 241
    iget v2, p0, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;->bin_range_end:I

    .line 242
    invoke-virtual {p0}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 239
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/model/payments/BinTablePb$BinEntry;-><init>(IILokio/ByteString;)V

    return-object v0
.end method
