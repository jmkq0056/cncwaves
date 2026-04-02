.class public final Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "RequestedPaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\r\u001a\u00020\u00002\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "()V",
        "allow_redisplay",
        "",
        "billing_details",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;",
        "card",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;",
        "card_present",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;",
        "interac_present",
        "type",
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
.field public allow_redisplay:Ljava/lang/String;

.field public billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

.field public card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

.field public card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

.field public interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final allow_redisplay(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->allow_redisplay:Ljava/lang/String;

    return-object p0
.end method

.method public final billing_details(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->build()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
    .locals 8

    .line 231
    new-instance v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 232
    iget-object v1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->type:Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    .line 234
    iget-object v3, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    .line 235
    iget-object v4, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    .line 236
    iget-object v5, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->billing_details:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;

    .line 237
    iget-object v6, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->allow_redisplay:Ljava/lang/String;

    .line 238
    invoke-virtual {p0}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 231
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->card:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;

    return-object p0
.end method

.method public final card_present(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->card_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    return-object p0
.end method

.method public final interac_present(Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->interac_present:Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;

    return-object p0
.end method

.method public final type(Ljava/lang/String;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod$Builder;->type:Ljava/lang/String;

    return-object p0
.end method
