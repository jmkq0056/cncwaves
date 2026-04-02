.class public final Lcom/stripe/paymentcollection/EmvResult;
.super Lcom/stripe/paymentcollection/PaymentCollectionResult;
.source "PaymentCollectionResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/EmvResult;",
        "Lcom/stripe/paymentcollection/PaymentCollectionResult;",
        "emvBlob",
        "",
        "interfaceType",
        "Lcom/stripe/hardware/emv/InterfaceType;",
        "tipResult",
        "Lcom/stripe/paymentcollection/TippingState$EndState;",
        "(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/paymentcollection/TippingState$EndState;)V",
        "getEmvBlob$annotations",
        "()V",
        "getEmvBlob",
        "()Ljava/lang/String;",
        "getInterfaceType",
        "()Lcom/stripe/hardware/emv/InterfaceType;",
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
.field private final emvBlob:Ljava/lang/String;

.field private final interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

.field private final tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/paymentcollection/TippingState$EndState;)V
    .locals 1

    const-string v0, "emvBlob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interfaceType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tipResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/stripe/paymentcollection/PaymentCollectionResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    iput-object p1, p0, Lcom/stripe/paymentcollection/EmvResult;->emvBlob:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/stripe/paymentcollection/EmvResult;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    .line 30
    iput-object p3, p0, Lcom/stripe/paymentcollection/EmvResult;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/paymentcollection/EmvResult;Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/paymentcollection/TippingState$EndState;ILjava/lang/Object;)Lcom/stripe/paymentcollection/EmvResult;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/paymentcollection/EmvResult;->emvBlob:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/paymentcollection/EmvResult;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/paymentcollection/EmvResult;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/paymentcollection/EmvResult;->copy(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/paymentcollection/TippingState$EndState;)Lcom/stripe/paymentcollection/EmvResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getEmvBlob$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/EmvResult;->emvBlob:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/stripe/hardware/emv/InterfaceType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/EmvResult;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    return-object v0
.end method

.method public final component3()Lcom/stripe/paymentcollection/TippingState$EndState;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/EmvResult;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/paymentcollection/TippingState$EndState;)Lcom/stripe/paymentcollection/EmvResult;
    .locals 1

    const-string v0, "emvBlob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interfaceType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tipResult"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/paymentcollection/EmvResult;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/paymentcollection/EmvResult;-><init>(Ljava/lang/String;Lcom/stripe/hardware/emv/InterfaceType;Lcom/stripe/paymentcollection/TippingState$EndState;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/paymentcollection/EmvResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/paymentcollection/EmvResult;

    iget-object v1, p0, Lcom/stripe/paymentcollection/EmvResult;->emvBlob:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/paymentcollection/EmvResult;->emvBlob:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/paymentcollection/EmvResult;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    iget-object v3, p1, Lcom/stripe/paymentcollection/EmvResult;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/paymentcollection/EmvResult;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    iget-object p1, p1, Lcom/stripe/paymentcollection/EmvResult;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEmvBlob()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/paymentcollection/EmvResult;->emvBlob:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterfaceType()Lcom/stripe/hardware/emv/InterfaceType;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/stripe/paymentcollection/EmvResult;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    return-object v0
.end method

.method public final getTipResult()Lcom/stripe/paymentcollection/TippingState$EndState;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/stripe/paymentcollection/EmvResult;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/paymentcollection/EmvResult;->emvBlob:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/EmvResult;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/InterfaceType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/paymentcollection/EmvResult;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    invoke-virtual {v1}, Lcom/stripe/paymentcollection/TippingState$EndState;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EmvResult(emvBlob=\u2588\u2588, interfaceType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/paymentcollection/EmvResult;->interfaceType:Lcom/stripe/hardware/emv/InterfaceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tipResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/paymentcollection/EmvResult;->tipResult:Lcom/stripe/paymentcollection/TippingState$EndState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
