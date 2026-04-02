.class public final Lcom/stripe/stripeterminal/internal/common/adapter/BaseSimulatedAdapterKt;
.super Ljava/lang/Object;
.source "BaseSimulatedAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a0\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "getAmountTip",
        "Lcom/stripe/currency/Amount;",
        "existingAmountTip",
        "collectionType",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "simulatorConfig",
        "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
        "connectedReader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "adapter_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getAmountTip(Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType;Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/currency/Amount;
    .locals 4

    const-string v0, "simulatorConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    instance-of v0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 454
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->getSimulatedTipAmount()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 456
    check-cast p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    invoke-virtual {p1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getSkipTipping()Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz p3, :cond_0

    .line 457
    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p2, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {p2, p0}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->supportsOnReaderTipping(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result p0

    const/4 p2, 0x1

    if-ne p0, p2, :cond_0

    .line 459
    new-instance p0, Lcom/stripe/currency/Amount;

    invoke-virtual {p1}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/currency/AmountExtensionsKt;->getCurrencyCode(Lcom/stripe/currency/Amount;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v3, p1}, Lcom/stripe/currency/Amount;-><init>(JLjava/lang/String;)V

    return-object p0

    :cond_0
    return-object v1

    .line 466
    :cond_1
    instance-of p2, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    if-eqz p2, :cond_2

    return-object p0

    .line 473
    :cond_2
    instance-of p0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Refund;

    if-eqz p0, :cond_3

    return-object v1

    .line 474
    :cond_3
    instance-of p0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$SetupIntent;

    if-eqz p0, :cond_4

    return-object v1

    .line 475
    :cond_4
    instance-of p0, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough;

    if-eqz p0, :cond_5

    return-object v1

    :cond_5
    if-nez p1, :cond_6

    return-object v1

    .line 476
    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
