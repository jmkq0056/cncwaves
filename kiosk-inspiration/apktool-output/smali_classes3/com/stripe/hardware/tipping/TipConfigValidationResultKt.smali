.class public final Lcom/stripe/hardware/tipping/TipConfigValidationResultKt;
.super Ljava/lang/Object;
.source "TipConfigValidationResult.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTipConfigValidationResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TipConfigValidationResult.kt\ncom/stripe/hardware/tipping/TipConfigValidationResultKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1855#2,2:130\n1549#2:132\n1620#2,3:133\n1855#2,2:136\n*S KotlinDebug\n*F\n+ 1 TipConfigValidationResult.kt\ncom/stripe/hardware/tipping/TipConfigValidationResultKt\n*L\n86#1:130,2\n97#1:132\n97#1:133,3\n116#1:136,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u001a\u0016\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005\u001a0\u0010\u0006\u001a\u00020\u00012\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00082\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002\u001a0\u0010\u000e\u001a\u00020\u00012\u000e\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u00082\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "generateValidatedConfig",
        "Lcom/stripe/hardware/tipping/TipConfigValidationResult;",
        "localizedTippingConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "processFixedAmountTipOption",
        "fixedAmountTips",
        "",
        "",
        "currency",
        "Lcom/stripe/currency/CurrencyCode;",
        "isSmartTip",
        "",
        "processPercentageTipOption",
        "percentageTips",
        "public_release"
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
.method public static final generateValidatedConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;Lcom/stripe/currency/Amount;)Lcom/stripe/hardware/tipping/TipConfigValidationResult;
    .locals 7

    const-string v0, "localizedTippingConfig"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/stripe/hardware/tipping/InvalidTipConfig;

    sget-object p1, Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;->NULL_TIP_CONFIG:Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;

    invoke-direct {p0, p1}, Lcom/stripe/hardware/tipping/InvalidTipConfig;-><init>(Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;)V

    check-cast p0, Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    return-object p0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;->fixed_percentage:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;

    .line 54
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;->fixed_amount:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;

    .line 55
    iget-object p0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;->smart_tip:Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 59
    iget-object p0, v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;->percentages:Ljava/util/List;

    invoke-static {p0, p1, v0, v3}, Lcom/stripe/hardware/tipping/TipConfigValidationResultKt;->processPercentageTipOption(Ljava/util/List;Lcom/stripe/currency/Amount;Lcom/stripe/currency/CurrencyCode;Z)Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v2, :cond_2

    .line 62
    iget-object p0, v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;->fixed_amounts:Ljava/util/List;

    invoke-static {p0, p1, v0, v3}, Lcom/stripe/hardware/tipping/TipConfigValidationResultKt;->processFixedAmountTipOption(Ljava/util/List;Lcom/stripe/currency/Amount;Lcom/stripe/currency/CurrencyCode;Z)Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p0, :cond_4

    .line 67
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;->smart_tip_threshold:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 68
    invoke-virtual {p1}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_3

    .line 69
    iget-object p0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;->percentages:Ljava/util/List;

    invoke-static {p0, p1, v0, v2}, Lcom/stripe/hardware/tipping/TipConfigValidationResultKt;->processPercentageTipOption(Ljava/util/List;Lcom/stripe/currency/Amount;Lcom/stripe/currency/CurrencyCode;Z)Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object p0

    return-object p0

    .line 71
    :cond_3
    iget-object p0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;->fixed_amounts:Ljava/util/List;

    invoke-static {p0, p1, v0, v2}, Lcom/stripe/hardware/tipping/TipConfigValidationResultKt;->processFixedAmountTipOption(Ljava/util/List;Lcom/stripe/currency/Amount;Lcom/stripe/currency/CurrencyCode;Z)Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    move-result-object p0

    return-object p0

    .line 74
    :cond_4
    new-instance p0, Lcom/stripe/hardware/tipping/InvalidTipConfig;

    sget-object p1, Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;->NULL_TIP_CONFIG:Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;

    invoke-direct {p0, p1}, Lcom/stripe/hardware/tipping/InvalidTipConfig;-><init>(Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;)V

    check-cast p0, Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    return-object p0
.end method

.method private static final processFixedAmountTipOption(Ljava/util/List;Lcom/stripe/currency/Amount;Lcom/stripe/currency/CurrencyCode;Z)Lcom/stripe/hardware/tipping/TipConfigValidationResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/currency/CurrencyCode;",
            "Z)",
            "Lcom/stripe/hardware/tipping/TipConfigValidationResult;"
        }
    .end annotation

    .line 84
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    .line 86
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 130
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 88
    new-instance p0, Lcom/stripe/hardware/tipping/InvalidTipConfig;

    sget-object p1, Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;->TIP_OUT_OF_BOUNDS:Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;

    invoke-direct {p0, p1}, Lcom/stripe/hardware/tipping/InvalidTipConfig;-><init>(Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;)V

    check-cast p0, Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    return-object p0

    .line 92
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    .line 93
    new-instance p0, Lcom/stripe/hardware/tipping/InvalidTipConfig;

    sget-object p1, Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;->THREE_TIP_OPTIONS_EXPECTED:Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;

    invoke-direct {p0, p1}, Lcom/stripe/hardware/tipping/InvalidTipConfig;-><init>(Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;)V

    check-cast p0, Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    return-object p0

    .line 132
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p0, Ljava/util/Collection;

    .line 133
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 134
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 134
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_3
    move-object v6, p0

    check-cast v6, Ljava/util/List;

    .line 99
    invoke-virtual {p1}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v4

    .line 96
    new-instance v2, Lcom/stripe/hardware/tipping/FixedAmountTips;

    move-object v3, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/stripe/hardware/tipping/FixedAmountTips;-><init>(Lcom/stripe/currency/CurrencyCode;JLjava/util/List;Z)V

    check-cast v2, Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    return-object v2
.end method

.method private static final processPercentageTipOption(Ljava/util/List;Lcom/stripe/currency/Amount;Lcom/stripe/currency/CurrencyCode;Z)Lcom/stripe/hardware/tipping/TipConfigValidationResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/currency/CurrencyCode;",
            "Z)",
            "Lcom/stripe/hardware/tipping/TipConfigValidationResult;"
        }
    .end annotation

    .line 110
    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    .line 112
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 113
    new-instance p0, Lcom/stripe/hardware/tipping/InvalidTipConfig;

    sget-object p1, Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;->THREE_TIP_OPTIONS_EXPECTED:Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;

    invoke-direct {p0, p1}, Lcom/stripe/hardware/tipping/InvalidTipConfig;-><init>(Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;)V

    check-cast p0, Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    return-object p0

    .line 116
    :cond_0
    move-object p0, v4

    check-cast p0, Ljava/lang/Iterable;

    .line 136
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 118
    :cond_2
    new-instance p0, Lcom/stripe/hardware/tipping/InvalidTipConfig;

    sget-object p1, Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;->TIP_OUT_OF_BOUNDS:Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;

    invoke-direct {p0, p1}, Lcom/stripe/hardware/tipping/InvalidTipConfig;-><init>(Lcom/stripe/hardware/tipping/InvalidTipConfig$Reason;)V

    check-cast p0, Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    return-object p0

    .line 125
    :cond_3
    invoke-virtual {p1}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v2

    .line 122
    new-instance v0, Lcom/stripe/hardware/tipping/PercentageTips;

    move-object v1, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/stripe/hardware/tipping/PercentageTips;-><init>(Lcom/stripe/currency/CurrencyCode;JLjava/util/List;Z)V

    check-cast v0, Lcom/stripe/hardware/tipping/TipConfigValidationResult;

    return-object v0
.end method
