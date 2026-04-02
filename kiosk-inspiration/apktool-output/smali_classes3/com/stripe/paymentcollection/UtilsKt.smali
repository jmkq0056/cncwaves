.class public final Lcom/stripe/paymentcollection/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/paymentcollection/UtilsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001al\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00132\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000c\u001a\u000c\u0010\u0016\u001a\u00020\u000c*\u0004\u0018\u00010\u0017\u001a\u000c\u0010\u0018\u001a\u0004\u0018\u00010\u0019*\u00020\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "generateConfigureReaderEvent",
        "Lcom/stripe/hardware/ReaderConfiguration;",
        "readerType",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "transactionType",
        "Lcom/stripe/hardware/paymentcollection/TransactionType;",
        "emvTransactionType",
        "Lcom/stripe/hardware/emv/EmvTransactionType;",
        "isOffline",
        "",
        "isDeferredAuthorizationCountry",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "domesticDebitPriority",
        "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "domesticDebitAids",
        "",
        "",
        "forcePinEntry",
        "isFatalError",
        "Lcom/stripe/hardware/emv/TransactionResult$Result;",
        "toFailureReason",
        "Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;",
        "Lcom/stripe/hardware/paymentcollection/PinEntryStatus;",
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
.method public static final generateConfigureReaderEvent(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Z)Lcom/stripe/hardware/ReaderConfiguration;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;",
            "Lcom/stripe/currency/Amount;",
            "Lcom/stripe/hardware/paymentcollection/TransactionType;",
            "Lcom/stripe/hardware/emv/EmvTransactionType;",
            "ZZ",
            "Lcom/stripe/stripeterminal/external/models/DeviceType;",
            "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/stripe/hardware/ReaderConfiguration;"
        }
    .end annotation

    move-object/from16 v0, p8

    const-string v1, "readerType"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "amount"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transactionType"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "emvTransactionType"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deviceType"

    move-object/from16 v2, p6

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "domesticDebitAids"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/stripe/paymentcollection/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/hardware/paymentcollection/TransactionType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 44
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    if-eqz p5, :cond_0

    if-eqz p4, :cond_0

    .line 42
    sget-object v1, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->USE_QUICKCHIP:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    goto :goto_0

    .line 44
    :cond_0
    sget-object v1, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->USE_CONFIG:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    goto :goto_0

    .line 33
    :pswitch_1
    sget-object v1, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->USE_CONFIG:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    goto :goto_0

    .line 30
    :pswitch_2
    sget-object v1, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->USE_QUICKCHIP:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    :goto_0
    move-object v7, v1

    const/4 v1, 0x0

    if-eqz p4, :cond_1

    .line 49
    sget-object v3, Lcom/stripe/paymentcollection/UtilsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_1

    .line 65
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_3
    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto/16 :goto_1

    .line 64
    :pswitch_4
    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 63
    :pswitch_5
    const-string v1, "60B8C8"

    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 62
    :pswitch_6
    const-string v1, "20B8C8"

    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 61
    :pswitch_7
    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 60
    :pswitch_8
    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 59
    :pswitch_9
    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 58
    :pswitch_a
    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 57
    :pswitch_b
    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 56
    :pswitch_c
    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 55
    :pswitch_d
    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 54
    :pswitch_e
    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 53
    :pswitch_f
    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 52
    :pswitch_10
    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 51
    :pswitch_11
    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 50
    :pswitch_12
    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    goto :goto_1

    .line 68
    :cond_1
    invoke-static {v1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 48
    :goto_1
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    .line 74
    sget-object v1, Lcom/stripe/paymentcollection/UtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/stripe/hardware/paymentcollection/TransactionType;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_2

    .line 80
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 76
    :pswitch_13
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->GOODS:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    goto :goto_2

    .line 79
    :pswitch_14
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->GOODS:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    goto :goto_2

    .line 80
    :pswitch_15
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->GOODS:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    goto :goto_2

    .line 78
    :pswitch_16
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->GOODS:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    goto :goto_2

    .line 75
    :pswitch_17
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->REFUND:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    goto :goto_2

    .line 77
    :pswitch_18
    sget-object p2, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->GOODS:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    :goto_2
    move-object v5, p2

    .line 91
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    move-object/from16 v1, p7

    .line 89
    invoke-static {v1, v0, p2}, Lcom/stripe/hardware/ReaderConfigurationKt;->domesticDebitPriorityOverride(Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Ljava/lang/Boolean;)Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    move-result-object v9

    .line 71
    new-instance v2, Lcom/stripe/hardware/ReaderConfiguration;

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/stripe/hardware/ReaderConfiguration;-><init>(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/ReaderConfiguration$TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;Ljava/lang/String;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;Z)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method

.method public static synthetic generateConfigureReaderEvent$default(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;ZILjava/lang/Object;)Lcom/stripe/hardware/ReaderConfiguration;
    .locals 12

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    .line 23
    sget-object v1, Lcom/stripe/stripeterminal/external/models/DeviceType;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    move-object v10, v1

    goto :goto_2

    :cond_2
    move-object/from16 v10, p8

    :goto_2
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v11, v0

    goto :goto_3

    :cond_3
    move/from16 v11, p9

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 16
    invoke-static/range {v2 .. v11}, Lcom/stripe/paymentcollection/UtilsKt;->generateConfigureReaderEvent(Ljava/util/Set;Lcom/stripe/currency/Amount;Lcom/stripe/hardware/paymentcollection/TransactionType;Lcom/stripe/hardware/emv/EmvTransactionType;ZZLcom/stripe/stripeterminal/external/models/DeviceType;Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;Ljava/util/List;Z)Lcom/stripe/hardware/ReaderConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static final isFatalError(Lcom/stripe/hardware/emv/TransactionResult$Result;)Z
    .locals 1

    .line 115
    sget-object v0, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final toFailureReason(Lcom/stripe/hardware/paymentcollection/PinEntryStatus;)Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/stripe/paymentcollection/UtilsKt$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p0}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 106
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 104
    :pswitch_1
    sget-object p0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->CARD_ERROR:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    return-object p0

    .line 103
    :pswitch_2
    sget-object p0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->ICC_REMOVED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    return-object p0

    .line 102
    :pswitch_3
    sget-object p0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->INCORRECT_PIN:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    return-object p0

    .line 101
    :pswitch_4
    sget-object p0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->WRONG_PIN_LENGTH:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    return-object p0

    .line 100
    :pswitch_5
    sget-object p0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->BYPASSED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    return-object p0

    .line 99
    :pswitch_6
    sget-object p0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->TIMEOUT:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    return-object p0

    .line 98
    :pswitch_7
    sget-object p0, Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;->CUSTOMER_CANCELLED:Lcom/stripe/paymentcollection/metrics/PinEntryFailureReason;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
