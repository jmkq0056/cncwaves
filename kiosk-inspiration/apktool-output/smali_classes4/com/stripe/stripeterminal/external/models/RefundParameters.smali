.class public final Lcom/stripe/stripeterminal/external/models/RefundParameters;
.super Ljava/lang/Object;
.source "RefundParameters.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;,
        Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u001d\u001eB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0011\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u000cR\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001a\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "",
        "builder",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;",
        "(Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;)V",
        "amount",
        "",
        "getAmount",
        "()J",
        "chargeId",
        "",
        "getChargeId",
        "()Ljava/lang/String;",
        "currency",
        "getCurrency",
        "id",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;",
        "metadata",
        "",
        "getMetadata",
        "()Ljava/util/Map;",
        "paymentIntentId",
        "getPaymentIntentId",
        "refundApplicationFee",
        "",
        "getRefundApplicationFee",
        "()Z",
        "reverseTransfer",
        "getReverseTransfer",
        "Builder",
        "Id",
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
.field private final amount:J

.field private final currency:Ljava/lang/String;

.field private final id:Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final refundApplicationFee:Z

.field private final reverseTransfer:Z


# direct methods
.method private constructor <init>(Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->getId$public_release()Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->id:Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;

    .line 18
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->getAmount$public_release()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->amount:J

    .line 19
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->getCurrency$public_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->currency:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->getMetadata$public_release()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->metadata:Ljava/util/Map;

    .line 21
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->getReverseTransfer$public_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->reverseTransfer:Z

    .line 22
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;->getRefundApplicationFee$public_release()Z

    move-result p1

    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->refundApplicationFee:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;-><init>(Lcom/stripe/stripeterminal/external/models/RefundParameters$Builder;)V

    return-void
.end method


# virtual methods
.method public final getAmount()J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->amount:J

    return-wide v0
.end method

.method public final getChargeId()Ljava/lang/String;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->id:Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;

    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$Charge;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$Charge;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$Charge;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getPaymentIntentId()Ljava/lang/String;
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->id:Lcom/stripe/stripeterminal/external/models/RefundParameters$Id;

    instance-of v1, v0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$PaymentIntent;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$PaymentIntent;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/RefundParameters$Id$PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method

.method public final getRefundApplicationFee()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->refundApplicationFee:Z

    return v0
.end method

.method public final getReverseTransfer()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/RefundParameters;->reverseTransfer:Z

    return v0
.end method
