.class public final Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflinePaymentDetails.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;",
        "()V",
        "amount_details",
        "Lcom/stripe/proto/api/sdk/AmountDetails;",
        "card_present_details",
        "Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;",
        "id",
        "",
        "requires_upload",
        "",
        "stored_at",
        "",
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
.field public amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

.field public card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

.field public id:Ljava/lang/String;

.field public requires_upload:Z

.field public stored_at:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final amount_details(Lcom/stripe/proto/api/sdk/AmountDetails;)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->build()Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;
    .locals 8

    .line 200
    new-instance v0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;

    .line 201
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->id:Ljava/lang/String;

    .line 202
    iget-wide v2, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->stored_at:J

    .line 203
    iget-object v4, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->amount_details:Lcom/stripe/proto/api/sdk/AmountDetails;

    .line 204
    iget-boolean v5, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->requires_upload:Z

    .line 205
    iget-object v6, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    .line 206
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 200
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;-><init>(Ljava/lang/String;JLcom/stripe/proto/api/sdk/AmountDetails;ZLcom/stripe/proto/api/sdk/OfflineCardPresentDetails;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card_present_details(Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->card_present_details:Lcom/stripe/proto/api/sdk/OfflineCardPresentDetails;

    return-object p0
.end method

.method public final id(Ljava/lang/String;)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final requires_upload(Z)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->requires_upload:Z

    return-object p0
.end method

.method public final stored_at(J)Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;
    .locals 0

    .line 172
    iput-wide p1, p0, Lcom/stripe/proto/api/sdk/OfflinePaymentDetails$Builder;->stored_at:J

    return-object p0
.end method
