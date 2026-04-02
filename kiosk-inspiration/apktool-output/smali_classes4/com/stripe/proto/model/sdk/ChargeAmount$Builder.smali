.class public final Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ChargeAmount.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/ChargeAmount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/ChargeAmount;",
        "Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/ChargeAmount;",
        "()V",
        "cashback_amount",
        "",
        "charge_amount",
        "currency",
        "",
        "tip_amount",
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
.field public cashback_amount:J

.field public charge_amount:J

.field public currency:Ljava/lang/String;

.field public tip_amount:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 141
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->currency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->build()Lcom/stripe/proto/model/sdk/ChargeAmount;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/ChargeAmount;
    .locals 9

    .line 183
    new-instance v0, Lcom/stripe/proto/model/sdk/ChargeAmount;

    .line 184
    iget-wide v1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->charge_amount:J

    .line 185
    iget-wide v3, p0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->tip_amount:J

    .line 186
    iget-object v5, p0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->currency:Ljava/lang/String;

    .line 187
    iget-wide v6, p0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->cashback_amount:J

    .line 188
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v8

    .line 183
    invoke-direct/range {v0 .. v8}, Lcom/stripe/proto/model/sdk/ChargeAmount;-><init>(JJLjava/lang/String;JLokio/ByteString;)V

    return-object v0
.end method

.method public final cashback_amount(J)Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;
    .locals 0

    .line 179
    iput-wide p1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->cashback_amount:J

    return-object p0
.end method

.method public final charge_amount(J)Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;
    .locals 0

    .line 152
    iput-wide p1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->charge_amount:J

    return-object p0
.end method

.method public final currency(Ljava/lang/String;)Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;
    .locals 1

    const-string v0, "currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->currency:Ljava/lang/String;

    return-object p0
.end method

.method public final tip_amount(J)Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;
    .locals 0

    .line 162
    iput-wide p1, p0, Lcom/stripe/proto/model/sdk/ChargeAmount$Builder;->tip_amount:J

    return-object p0
.end method
