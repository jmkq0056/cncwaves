.class public abstract Lcom/stripe/transaction/payment/Payment;
.super Ljava/lang/Object;
.source "Payment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0010J\u0008\u0010\u0017\u001a\u0004\u0018\u00010\nJ\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0019H\u0016R(\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR$\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\n@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR(\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0010@DX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/transaction/payment/Payment;",
        "",
        "()V",
        "<set-?>",
        "Lcom/stripe/hardware/emv/Confirmation;",
        "confirmation",
        "getConfirmation",
        "()Lcom/stripe/hardware/emv/Confirmation;",
        "setConfirmation",
        "(Lcom/stripe/hardware/emv/Confirmation;)V",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "restSource",
        "getRestSource",
        "()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "setRestSource",
        "(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)V",
        "Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "sdkSource",
        "getSdkSource",
        "()Lcom/stripe/proto/model/sdk/PaymentMethod;",
        "setSdkSource",
        "(Lcom/stripe/proto/model/sdk/PaymentMethod;)V",
        "asProtobuf",
        "asRest",
        "isCollectible",
        "",
        "supportsSca",
        "public_release"
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
.field private confirmation:Lcom/stripe/hardware/emv/Confirmation;

.field private restSource:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

.field private sdkSource:Lcom/stripe/proto/model/sdk/PaymentMethod;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;-><init>(Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/stripe/transaction/payment/Payment;->restSource:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    .line 13
    new-instance v1, Lcom/stripe/proto/model/sdk/PaymentMethod;

    const/16 v6, 0xf

    invoke-direct/range {v1 .. v7}, Lcom/stripe/proto/model/sdk/PaymentMethod;-><init>(Lcom/stripe/proto/model/sdk/CardPaymentMethod;Lcom/stripe/proto/model/sdk/PaymentMethod$TipSelection;Lcom/stripe/proto/model/sdk/NonCardPaymentMethod;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/stripe/transaction/payment/Payment;->sdkSource:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-void
.end method


# virtual methods
.method public final asProtobuf()Lcom/stripe/proto/model/sdk/PaymentMethod;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/stripe/transaction/payment/Payment;->isCollectible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stripe/transaction/payment/Payment;->sdkSource:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final asRest()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/stripe/transaction/payment/Payment;->isCollectible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stripe/transaction/payment/Payment;->restSource:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConfirmation()Lcom/stripe/hardware/emv/Confirmation;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/transaction/payment/Payment;->confirmation:Lcom/stripe/hardware/emv/Confirmation;

    return-object v0
.end method

.method public final getRestSource()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/stripe/transaction/payment/Payment;->restSource:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    return-object v0
.end method

.method public final getSdkSource()Lcom/stripe/proto/model/sdk/PaymentMethod;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/transaction/payment/Payment;->sdkSource:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-object v0
.end method

.method public isCollectible()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/transaction/payment/Payment;->confirmation:Lcom/stripe/hardware/emv/Confirmation;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final setConfirmation(Lcom/stripe/hardware/emv/Confirmation;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/stripe/transaction/payment/Payment;->confirmation:Lcom/stripe/hardware/emv/Confirmation;

    return-void
.end method

.method protected final setRestSource(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iput-object p1, p0, Lcom/stripe/transaction/payment/Payment;->restSource:Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    return-void
.end method

.method protected final setSdkSource(Lcom/stripe/proto/model/sdk/PaymentMethod;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/stripe/transaction/payment/Payment;->sdkSource:Lcom/stripe/proto/model/sdk/PaymentMethod;

    return-void
.end method

.method public supportsSca()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
