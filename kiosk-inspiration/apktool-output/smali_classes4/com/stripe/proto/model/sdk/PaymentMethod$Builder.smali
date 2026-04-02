.class public final Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PaymentMethod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/sdk/PaymentMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0012\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "()V",
        "card_payment",
        "Lcom/stripe/proto/model/sdk/CardPaymentMethod;",
        "non_card_payment",
        "Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;",
        "tip_selection",
        "Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;",
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
.field public card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

.field public non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

.field public tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->build()Lcom/stripe/proto/model/sdk/PaymentMethod;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/sdk/PaymentMethod;
    .locals 5

    .line 145
    new-instance v0, Lcom/stripe/proto/model/sdk/PaymentMethod;

    .line 146
    iget-object v1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    .line 147
    iget-object v2, p0, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    .line 148
    iget-object v3, p0, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 145
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/sdk/PaymentMethod;-><init>(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;)V

    return-object v0
.end method

.method public final card_payment(Lcom/stripe/proto/model/sdk/CardPaymentMethod;)Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "card_payment is deprecated"
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->card_payment:Lcom/stripe/proto/model/sdk/CardPaymentMethod;

    return-object p0
.end method

.method public final non_card_payment(Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;)Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->non_card_payment:Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;

    return-object p0
.end method

.method public final tip_selection(Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;)Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/stripe/proto/model/sdk/PaymentMethod$Builder;->tip_selection:Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;

    return-object p0
.end method
