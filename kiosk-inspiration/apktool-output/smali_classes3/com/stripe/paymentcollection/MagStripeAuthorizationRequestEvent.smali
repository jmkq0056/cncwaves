.class public final Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;
.super Lcom/stripe/paymentcollection/NetworkEvent;
.source "PaymentCollectionEvents.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;",
        "Lcom/stripe/paymentcollection/NetworkEvent;",
        "readResult",
        "Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;",
        "collectionAuthority",
        "Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;",
        "tipResult",
        "Lcom/stripe/paymentcollection/TippingState$EndState;",
        "(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)V",
        "getCollectionAuthority",
        "()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;",
        "getReadResult",
        "()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;",
        "getTipResult",
        "()Lcom/stripe/paymentcollection/TippingState$EndState;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final collectionAuthority:Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

.field private final readResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

.field private final tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;


# direct methods
.method public constructor <init>(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)V
    .locals 1

    const-string v0, "readResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionAuthority"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tipResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, v0}, Lcom/stripe/paymentcollection/NetworkEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 430
    iput-object p1, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->readResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    .line 431
    iput-object p2, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->collectionAuthority:Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    .line 432
    iput-object p3, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;ILjava/lang/Object;)Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->readResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->collectionAuthority:Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->copy(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->readResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    return-object v0
.end method

.method public final component2()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->collectionAuthority:Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    return-object v0
.end method

.method public final component3()Lcom/stripe/paymentcollection/TippingState$EndState;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    return-object v0
.end method

.method public final copy(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;
    .locals 1

    const-string v0, "readResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collectionAuthority"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tipResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;-><init>(Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;

    iget-object v1, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->readResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    iget-object v3, p1, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->readResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->collectionAuthority:Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    iget-object v3, p1, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->collectionAuthority:Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    iget-object p1, p1, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCollectionAuthority()Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->collectionAuthority:Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    return-object v0
.end method

.method public final getReadResult()Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->readResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    return-object v0
.end method

.method public final getTipResult()Lcom/stripe/paymentcollection/TippingState$EndState;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->readResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    invoke-virtual {v0}, Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->collectionAuthority:Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-virtual {v1}, Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/TippingState$EndState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MagStripeAuthorizationRequestEvent(readResult="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->readResult:Lcom/stripe/hardware/magstripe/MagStripeReadSuccess;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", collectionAuthority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->collectionAuthority:Lcom/stripe/hardware/magstripe/MagStripePaymentCollectionAuthority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tipResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/paymentcollection/MagStripeAuthorizationRequestEvent;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
