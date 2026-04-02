.class final Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;
.super Ljava/lang/Object;
.source "CotsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachedPayment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J)\u0010\u0010\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;",
        "",
        "intentId",
        "",
        "amountString",
        "paymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V",
        "getAmountString",
        "()Ljava/lang/String;",
        "getIntentId",
        "getPaymentMethodData",
        "()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
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
        "adapter_release"
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
.field private final amountString:Ljava/lang/String;

.field private final intentId:Ljava/lang/String;

.field private final paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V
    .locals 1

    const-string v0, "amountString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->intentId:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->amountString:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->intentId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->amountString:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->intentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->amountString:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;
    .locals 1

    const-string v0, "amountString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->intentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->intentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->amountString:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->amountString:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAmountString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->amountString:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntentId()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->intentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->intentId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->amountString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CachedPayment(intentId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->intentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amountString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->amountString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentMethodData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$CachedPayment;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
