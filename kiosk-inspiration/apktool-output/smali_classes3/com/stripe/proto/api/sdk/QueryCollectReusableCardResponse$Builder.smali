.class public final Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "QueryCollectReusableCardResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;",
        "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0012\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;",
        "()V",
        "num_of_canceled_payments",
        "",
        "reusable_card_method",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "reusable_card_status",
        "Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;",
        "system_context",
        "Lcom/stripe/proto/model/sdk/SystemContext;",
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
.field public num_of_canceled_payments:I

.field public reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

.field public reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

.field public system_context:Lcom/stripe/proto/model/sdk/SystemContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->build()Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;
    .locals 6

    .line 190
    new-instance v0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;

    .line 191
    iget-object v1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    .line 192
    iget-object v2, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 193
    iget-object v3, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    .line 194
    iget v4, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->num_of_canceled_payments:I

    .line 195
    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 190
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse;-><init>(Lcom/stripe/proto/model/sdk/SystemContext;Lcom/stripe/proto/model/sdk/PaymentMethod;Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;ILokio/ByteString;)V

    return-object v0
.end method

.method public final num_of_canceled_payments(I)Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;
    .locals 0

    .line 168
    iput p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->num_of_canceled_payments:I

    return-object p0
.end method

.method public final reusable_card_method(Lcom/stripe/proto/model/sdk/PaymentMethod;)Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    const/4 p1, 0x0

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    return-object p0
.end method

.method public final reusable_card_status(Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;)Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->reusable_card_status:Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$ReusableCardRequestStatus;

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->reusable_card_method:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object p0
.end method

.method public final system_context(Lcom/stripe/proto/model/sdk/SystemContext;)Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "system_context is deprecated"
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/stripe/proto/api/sdk/QueryCollectReusableCardResponse$Builder;->system_context:Lcom/stripe/proto/model/sdk/SystemContext;

    return-object p0
.end method
