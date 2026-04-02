.class public interface abstract Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;
.super Ljava/lang/Object;
.source "DelegatedDeviceController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;,
        Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegatedDeviceController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DelegatedDeviceController.kt\ncom/stripe/core/bbpos/hardware/DelegatedDeviceController\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,150:1\n1#2:151\n1549#3:152\n1620#3,3:153\n1549#3:156\n1620#3,3:157\n*S KotlinDebug\n*F\n+ 1 DelegatedDeviceController.kt\ncom/stripe/core/bbpos/hardware/DelegatedDeviceController\n*L\n53#1:152\n53#1:153,3\n67#1:156\n67#1:157,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008`\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019J\u0014\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J \u0010\u0014\u001a\u00020\u0010*\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u00020\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001a\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;",
        "",
        "clock",
        "Lcom/stripe/time/Clock;",
        "getClock",
        "()Lcom/stripe/time/Clock;",
        "featureFlagsProvider",
        "Ljavax/inject/Provider;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "getFeatureFlagsProvider",
        "()Ljavax/inject/Provider;",
        "pinPadAccessibilityChecker",
        "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
        "getPinPadAccessibilityChecker",
        "()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;",
        "enableInputAmount",
        "",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "tipConfigValidationResult",
        "Lcom/stripe/hardware/tipping/TipConfigValidationResult;",
        "startEmv",
        "configuration",
        "Lcom/stripe/hardware/ReaderConfiguration;",
        "checkCardModeOverride",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
        "Companion",
        "hardware_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->$$INSTANCE:Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;

    sput-object v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;->Companion:Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;

    return-void
.end method

.method public static synthetic startEmv$default(Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/hardware/ReaderConfiguration;Lcom/stripe/bbpos/sdk/CheckCardMode;ILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_1

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 84
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;->startEmv(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/hardware/ReaderConfiguration;Lcom/stripe/bbpos/sdk/CheckCardMode;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: startEmv"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public enableInputAmount(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/hardware/tipping/TipConfigValidationResult;)V
    .locals 10

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tipConfigValidationResult"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    instance-of v0, p2, Lcom/stripe/hardware/tipping/PercentageTips;

    const/16 v1, 0xa

    if-eqz v0, :cond_1

    .line 47
    check-cast p2, Lcom/stripe/hardware/tipping/PercentageTips;

    invoke-virtual {p2}, Lcom/stripe/hardware/tipping/PercentageTips;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/stripe/currency/CurrencyCode;->getNumeric()I

    move-result v3

    .line 51
    invoke-virtual {v0}, Lcom/stripe/currency/CurrencyCode;->getMinorUnit()I

    move-result v4

    .line 52
    sget-object v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;->Companion:Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;

    invoke-virtual {p2}, Lcom/stripe/hardware/tipping/PercentageTips;->getAmount()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/stripe/hardware/tipping/PercentageTips;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v2

    invoke-static {v0, v5, v6, v2}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->access$formattedWith(Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;JLcom/stripe/currency/CurrencyCode;)Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {p2}, Lcom/stripe/hardware/tipping/PercentageTips;->getPercentageTips()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 153
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 154
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-long v1, v1

    .line 54
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v1

    const-string v2, "valueOf(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_0
    move-object v6, v0

    check-cast v6, Ljava/util/List;

    .line 49
    new-instance v2, Lcom/stripe/bbpos/sdk/PercentageTips;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/stripe/bbpos/sdk/PercentageTips;-><init>(IILjava/lang/String;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 48
    invoke-static {v2}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->constructor-impl(Lcom/stripe/bbpos/sdk/PercentageTips;)Lcom/stripe/bbpos/sdk/PercentageTips;

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;->box-impl(Lcom/stripe/bbpos/sdk/PercentageTips;)Lcom/stripe/core/bbpos/hardware/api/TippingOption$Percentage;

    move-result-object p2

    goto :goto_2

    .line 60
    :cond_1
    instance-of v0, p2, Lcom/stripe/hardware/tipping/FixedAmountTips;

    if-eqz v0, :cond_3

    .line 61
    check-cast p2, Lcom/stripe/hardware/tipping/FixedAmountTips;

    invoke-virtual {p2}, Lcom/stripe/hardware/tipping/FixedAmountTips;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/stripe/currency/CurrencyCode;->getNumeric()I

    move-result v3

    .line 65
    invoke-virtual {v0}, Lcom/stripe/currency/CurrencyCode;->getMinorUnit()I

    move-result v4

    .line 66
    sget-object v2, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;->Companion:Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;

    invoke-virtual {p2}, Lcom/stripe/hardware/tipping/FixedAmountTips;->getAmount()J

    move-result-wide v5

    invoke-virtual {p2}, Lcom/stripe/hardware/tipping/FixedAmountTips;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v7

    invoke-static {v2, v5, v6, v7}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->access$formattedWith(Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;JLcom/stripe/currency/CurrencyCode;)Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-virtual {p2}, Lcom/stripe/hardware/tipping/FixedAmountTips;->getAmountTips()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 157
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 158
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 68
    sget-object v1, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;->Companion:Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;

    invoke-static {v1, v6, v7, v0}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->access$formattedWith(Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;JLcom/stripe/currency/CurrencyCode;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 159
    :cond_2
    move-object v6, v2

    check-cast v6, Ljava/util/List;

    .line 63
    new-instance v2, Lcom/stripe/bbpos/sdk/FixedAmountTips;

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/stripe/bbpos/sdk/FixedAmountTips;-><init>(IILjava/lang/String;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 62
    invoke-static {v2}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$FixedAmount;->constructor-impl(Lcom/stripe/bbpos/sdk/FixedAmountTips;)Lcom/stripe/bbpos/sdk/FixedAmountTips;

    move-result-object p2

    invoke-static {p2}, Lcom/stripe/core/bbpos/hardware/api/TippingOption$FixedAmount;->box-impl(Lcom/stripe/bbpos/sdk/FixedAmountTips;)Lcom/stripe/core/bbpos/hardware/api/TippingOption$FixedAmount;

    move-result-object p2

    goto :goto_2

    .line 74
    :cond_3
    instance-of p2, p2, Lcom/stripe/hardware/tipping/InvalidTipConfig;

    if-eqz p2, :cond_4

    sget-object p2, Lcom/stripe/core/bbpos/hardware/api/TippingOption$None;->INSTANCE:Lcom/stripe/core/bbpos/hardware/api/TippingOption$None;

    check-cast p2, Lcom/stripe/core/bbpos/hardware/api/TippingOption;

    .line 78
    :goto_2
    sget-object v0, Lcom/stripe/bbpos/sdk/AmountInputType;->TIPS_ONLY:Lcom/stripe/bbpos/sdk/AmountInputType;

    .line 79
    sget-object v1, Lcom/stripe/bbpos/sdk/OtherAmountOption;->CURRENCY:Lcom/stripe/bbpos/sdk/OtherAmountOption;

    const/16 v2, 0xe10

    .line 76
    invoke-interface {p1, v2, v0, v1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->enableInputAmount(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/core/bbpos/hardware/api/TippingOption;)V

    return-void

    .line 74
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public abstract getClock()Lcom/stripe/time/Clock;
.end method

.method public abstract getFeatureFlagsProvider()Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPinPadAccessibilityChecker()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;
.end method

.method public startEmv(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;Lcom/stripe/hardware/ReaderConfiguration;Lcom/stripe/bbpos/sdk/CheckCardMode;)V
    .locals 20

    const-string v0, "<this>"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    move-object/from16 v2, p2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Lcom/stripe/hardware/ReaderConfiguration;->getTransactionAmount()Lcom/stripe/currency/Amount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object v0

    .line 89
    invoke-interface/range {p0 .. p0}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;->getPinPadAccessibilityChecker()Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;

    move-result-object v3

    invoke-interface {v3}, Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;->isPinPadAccessible()Z

    move-result v18

    .line 91
    invoke-virtual {v2}, Lcom/stripe/hardware/ReaderConfiguration;->getTransactionType()Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    move-result-object v3

    sget-object v4, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    .line 93
    sget-object v3, Lcom/stripe/bbpos/sdk/TransactionType;->REFUND:Lcom/stripe/bbpos/sdk/TransactionType;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 92
    :cond_1
    sget-object v3, Lcom/stripe/bbpos/sdk/TransactionType;->GOODS:Lcom/stripe/bbpos/sdk/TransactionType;

    :goto_0
    if-nez p3, :cond_2

    .line 95
    sget-object v6, Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;->INSTANCE:Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;

    invoke-virtual {v2}, Lcom/stripe/hardware/ReaderConfiguration;->getReadersEnabled()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/stripe/core/bbpos/hardware/emv/CheckCardModeConverter;->toCheckCardMode(Ljava/util/Set;)Lcom/stripe/bbpos/sdk/CheckCardMode;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object/from16 v6, p3

    .line 96
    :goto_1
    invoke-virtual {v2}, Lcom/stripe/hardware/ReaderConfiguration;->getQuickChipMode()Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    move-result-object v7

    sget-object v8, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v7}, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x3

    if-eq v7, v5, :cond_5

    if-eq v7, v4, :cond_4

    if-ne v7, v8, :cond_3

    .line 99
    sget-object v7, Lcom/stripe/bbpos/sdk/QuickChipOption;->USE_QUICKCHIP:Lcom/stripe/bbpos/sdk/QuickChipOption;

    goto :goto_2

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 98
    :cond_4
    sget-object v7, Lcom/stripe/bbpos/sdk/QuickChipOption;->USE_CONFIG:Lcom/stripe/bbpos/sdk/QuickChipOption;

    goto :goto_2

    .line 97
    :cond_5
    sget-object v7, Lcom/stripe/bbpos/sdk/QuickChipOption;->USE_EMV:Lcom/stripe/bbpos/sdk/QuickChipOption;

    .line 101
    :goto_2
    invoke-virtual {v2}, Lcom/stripe/hardware/ReaderConfiguration;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v9

    sget-object v10, Lcom/stripe/hardware/emv/EmvTransactionType;->QUICK:Lcom/stripe/hardware/emv/EmvTransactionType;

    if-eq v9, v10, :cond_6

    move v9, v5

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    :goto_3
    move-object v2, v3

    move-object v3, v6

    .line 102
    invoke-virtual {v0}, Lcom/stripe/currency/CurrencyCode;->getNumeric()I

    move-result v6

    .line 103
    invoke-virtual {v0}, Lcom/stripe/currency/CurrencyCode;->getMinorUnit()I

    move-result v0

    .line 104
    sget-object v10, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;->Companion:Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;

    invoke-virtual/range {p2 .. p2}, Lcom/stripe/hardware/ReaderConfiguration;->getTransactionAmount()Lcom/stripe/currency/Amount;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->access$formatted(Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;Lcom/stripe/currency/Amount;)Ljava/lang/String;

    move-result-object v11

    .line 105
    invoke-interface/range {p0 .. p0}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;->getClock()Lcom/stripe/time/Clock;

    move-result-object v12

    invoke-interface {v12}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;->access$toTerminalTime(Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$Companion;J)Ljava/lang/String;

    move-result-object v10

    .line 110
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/hardware/ReaderConfiguration;->getTerminalCapabilitiesOverride()Ljava/lang/String;

    move-result-object v14

    .line 111
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/hardware/ReaderConfiguration;->getDomesticDebitPriority()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    move-result-object v12

    const/4 v13, -0x1

    if-nez v12, :cond_7

    move v12, v13

    goto :goto_4

    :cond_7
    sget-object v15, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v12}, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->ordinal()I

    move-result v12

    aget v12, v15, v12

    :goto_4
    const/4 v15, 0x0

    if-eq v12, v13, :cond_c

    if-eq v12, v5, :cond_b

    if-eq v12, v4, :cond_a

    if-eq v12, v8, :cond_9

    const/4 v8, 0x4

    if-ne v12, v8, :cond_8

    .line 115
    sget-object v8, Lcom/stripe/bbpos/sdk/DomesticDebitPriority;->OFF:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    goto :goto_5

    .line 116
    :cond_8
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 114
    :cond_9
    sget-object v8, Lcom/stripe/bbpos/sdk/DomesticDebitPriority;->BOTTOM:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    goto :goto_5

    .line 113
    :cond_a
    sget-object v8, Lcom/stripe/bbpos/sdk/DomesticDebitPriority;->TOP:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    goto :goto_5

    .line 112
    :cond_b
    sget-object v8, Lcom/stripe/bbpos/sdk/DomesticDebitPriority;->STANDARD:Lcom/stripe/bbpos/sdk/DomesticDebitPriority;

    goto :goto_5

    :cond_c
    move-object v8, v15

    .line 118
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/hardware/ReaderConfiguration;->getContactlessOnlinePinOption()Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    move-result-object v12

    if-nez v12, :cond_d

    move v12, v13

    goto :goto_6

    :cond_d
    sget-object v16, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v12}, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->ordinal()I

    move-result v12

    aget v12, v16, v12

    :goto_6
    if-eq v12, v13, :cond_10

    if-eq v12, v5, :cond_f

    if-ne v12, v4, :cond_e

    .line 120
    sget-object v4, Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;->ENABLED:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    goto :goto_7

    .line 121
    :cond_e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 119
    :cond_f
    sget-object v4, Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;

    :goto_7
    move-object/from16 v16, v4

    goto :goto_8

    :cond_10
    move-object/from16 v16, v15

    .line 123
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/hardware/ReaderConfiguration;->getForcePinEntry()Z

    move-result v17

    .line 125
    invoke-static {}, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceControllerKt;->getACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    if-eqz v18, :cond_11

    move-object/from16 v19, v4

    goto :goto_9

    :cond_11
    move-object/from16 v19, v15

    :goto_9
    move v5, v9

    move-object v9, v10

    const/16 v10, 0xe10

    move-object v15, v8

    move-object v8, v11

    const/16 v11, 0x5a

    const/16 v12, 0x5a

    const/16 v13, 0x5a

    move-object v4, v7

    move v7, v0

    .line 90
    invoke-interface/range {v1 .. v19}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->startEmv(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;Lcom/stripe/bbpos/sdk/QuickChipOption;ZIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;)V

    return-void
.end method
