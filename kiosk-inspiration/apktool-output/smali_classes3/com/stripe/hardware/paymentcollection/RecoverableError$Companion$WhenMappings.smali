.class public final synthetic Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion$WhenMappings;
.super Ljava/lang/Object;
.source "RecoverableError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    invoke-static {}, Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;->values()[Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;->BAD_SWIPE:Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;

    invoke-virtual {v2}, Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;->MSR_FAILURE:Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;

    invoke-virtual {v3}, Lcom/stripe/hardware/magstripe/MagStripeReadFailure$FailureType;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->values()[Lcom/stripe/hardware/emv/IntermediateTransactionError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2
    sget-object v3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v3}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v3}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v3, 0x3

    :try_start_4
    sget-object v4, Lcom/stripe/hardware/emv/IntermediateTransactionError;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v4}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v4, 0x4

    :try_start_5
    sget-object v5, Lcom/stripe/hardware/emv/IntermediateTransactionError;->BAD_TAP_READ:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v5}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v5, 0x5

    :try_start_6
    sget-object v6, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TOO_MANY_TAPS:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v6}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v6, 0x6

    :try_start_7
    sget-object v7, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_NOT_ADMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v7}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/4 v7, 0x7

    :try_start_8
    sget-object v8, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_TRANSACTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v8}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v8

    aput v7, v0, v8
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v8, 0x8

    :try_start_9
    sget-object v9, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_CARD_NUMBER:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v9}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v9, 0x9

    :try_start_a
    sget-object v10, Lcom/stripe/hardware/emv/IntermediateTransactionError;->SYSTEM_MALFUNCTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v10}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/16 v10, 0xa

    :try_start_b
    sget-object v11, Lcom/stripe/hardware/emv/IntermediateTransactionError;->EXPIRED_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v11}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    const/16 v11, 0xb

    :try_start_c
    sget-object v12, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v12}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v12

    aput v11, v0, v12
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    const/16 v12, 0xc

    :try_start_d
    sget-object v13, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_FUNCTION:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v13}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v13

    aput v12, v0, v13
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/16 v13, 0xd

    :try_start_e
    sget-object v14, Lcom/stripe/hardware/emv/IntermediateTransactionError;->INVALID_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v14}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v14

    aput v13, v0, v14
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v14, 0xe

    :try_start_f
    sget-object v15, Lcom/stripe/hardware/emv/IntermediateTransactionError;->WRONG_CARD:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual {v15}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v15

    aput v14, v0, v15
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v15, 0xf

    :try_start_10
    sget-object v16, Lcom/stripe/hardware/emv/IntermediateTransactionError;->TERMINAL_NOT_PERMITTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v16

    aput v15, v0, v16
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v16, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v16

    const/16 v17, 0x10

    aput v17, v0, v16
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v16, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_NOT_READABLE:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v16

    const/16 v17, 0x11

    aput v17, v0, v16
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v16, Lcom/stripe/hardware/emv/IntermediateTransactionError;->AUTHENTICATION_REQUIRED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v16

    const/16 v17, 0x12

    aput v17, v0, v16
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v16, Lcom/stripe/hardware/emv/IntermediateTransactionError;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v16

    const/16 v17, 0x13

    aput v17, v0, v16
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v16, Lcom/stripe/hardware/emv/IntermediateTransactionError;->DECLINED_CODE_05:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v16

    const/16 v17, 0x14

    aput v17, v0, v16
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v16, Lcom/stripe/hardware/emv/IntermediateTransactionError;->CARD_ERROR:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v16

    const/16 v17, 0x15

    aput v17, v0, v16
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v16, Lcom/stripe/hardware/emv/IntermediateTransactionError;->NOT_ACCEPTED:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v16

    const/16 v17, 0x16

    aput v17, v0, v16
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v16, Lcom/stripe/hardware/emv/IntermediateTransactionError;->PROCESSING_ERROR:Lcom/stripe/hardware/emv/IntermediateTransactionError;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/hardware/emv/IntermediateTransactionError;->ordinal()I

    move-result v16

    const/16 v17, 0x17

    aput v17, v0, v16
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/stripe/hardware/emv/TransactionResult$Result;->values()[Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_19
    sget-object v16, Lcom/stripe/hardware/emv/TransactionResult$Result;->ICC_CARD_REMOVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v16

    aput v1, v0, v16
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_BLOCKED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DECLINED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->MOBILE_WALLET_TOO_MANY_TAPS:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->TIMEOUT:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->CANCELED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v14, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_STILL_INSERTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v15, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    sput-object v0, Lcom/stripe/hardware/paymentcollection/RecoverableError$Companion$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
