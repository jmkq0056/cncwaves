.class public final Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;
.super Ljava/lang/Object;
.source "NonCardPaymentMethodActionRequiredModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;",
        "",
        "paymentMethodType",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "imageData",
        "",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;[BLcom/stripe/currency/Amount;)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getImageData",
        "()[B",
        "getPaymentMethodType",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
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
.field private final amount:Lcom/stripe/currency/Amount;

.field private final imageData:[B

.field private final paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;[BLcom/stripe/currency/Amount;)V
    .locals 1

    const-string v0, "paymentMethodType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    .line 8
    iput-object p2, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->imageData:[B

    .line 9
    iput-object p3, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->amount:Lcom/stripe/currency/Amount;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;Lcom/stripe/stripeterminal/external/models/PaymentMethodType;[BLcom/stripe/currency/Amount;ILjava/lang/Object;)Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->imageData:[B

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->amount:Lcom/stripe/currency/Amount;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->copy(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;[BLcom/stripe/currency/Amount;)Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public final component2()[B
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->imageData:[B

    return-object v0
.end method

.method public final component3()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;[BLcom/stripe/currency/Amount;)Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;
    .locals 1

    const-string v0, "paymentMethodType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;-><init>(Lcom/stripe/stripeterminal/external/models/PaymentMethodType;[BLcom/stripe/currency/Amount;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 15
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 17
    :cond_2
    check-cast p1, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;

    .line 19
    iget-object v2, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    if-eq v2, v3, :cond_3

    return v1

    .line 20
    :cond_3
    iget-object v2, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->imageData:[B

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->imageData:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 21
    :cond_4
    iget-object v2, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->amount:Lcom/stripe/currency/Amount;

    iget-object p1, p1, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getImageData()[B
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->imageData:[B

    return-object v0
.end method

.method public final getPaymentMethodType()Lcom/stripe/stripeterminal/external/models/PaymentMethodType;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->imageData:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NonCardPaymentMethodActionRequiredModel(paymentMethodType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->paymentMethodType:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->imageData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/NonCardPaymentMethodActionRequiredModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
