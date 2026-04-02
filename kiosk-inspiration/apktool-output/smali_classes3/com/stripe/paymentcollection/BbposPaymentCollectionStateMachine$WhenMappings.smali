.class public final synthetic Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine$WhenMappings;
.super Ljava/lang/Object;
.source "BbposPaymentCollectionStateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine;
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
    .locals 14

    invoke-static {}, Lcom/stripe/paymentcollection/PaymentCollectionState;->values()[Lcom/stripe/paymentcollection/PaymentCollectionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/stripe/paymentcollection/PaymentCollectionState;->EMPTY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/stripe/paymentcollection/PaymentCollectionState;->DISPLAY_CART_PRE_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/stripe/paymentcollection/PaymentCollectionState;->DISPLAY_CART_POST_COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIPPING_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v5}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v6}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v7, Lcom/stripe/paymentcollection/PaymentCollectionState;->MANUAL_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v7}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v7, 0x7

    :try_start_6
    sget-object v8, Lcom/stripe/paymentcollection/PaymentCollectionState;->PROCESSING:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v8}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v8

    aput v7, v0, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v8, 0x8

    :try_start_7
    sget-object v9, Lcom/stripe/paymentcollection/PaymentCollectionState;->APPLICATION_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v9}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v9, 0x9

    :try_start_8
    sget-object v10, Lcom/stripe/paymentcollection/PaymentCollectionState;->LANGUAGE_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v10}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v10, 0xa

    :try_start_9
    sget-object v11, Lcom/stripe/paymentcollection/PaymentCollectionState;->ACCOUNT_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v11}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v11, 0xb

    :try_start_a
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    aput v11, v0, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->MAGSTRIPE_PIN_ENTRY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0xc

    aput v13, v0, v12
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->PREPARE_TO_COLLECT_AGAIN:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0xd

    aput v13, v0, v12
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->RECOVERABLE_ERROR_SUMMARY:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0xe

    aput v13, v0, v12
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0xf

    aput v13, v0, v12
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_AUTHORIZATION_MAG_STRIPE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x10

    aput v13, v0, v12
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->REMOVE_CARD:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x11

    aput v13, v0, v12
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->ONLINE_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x12

    aput v13, v0, v12
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECTION_COMPLETE:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x13

    aput v13, v0, v12
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->CANCEL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x14

    aput v13, v0, v12
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->FINISHED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x15

    aput v13, v0, v12
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->TIMEOUT:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x16

    aput v13, v0, v12
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->COLLECT_PAYMENT_METHOD_API_ERROR:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x17

    aput v13, v0, v12
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->DCC_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x18

    aput v13, v0, v12
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_SELECTION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x19

    aput v13, v0, v12
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x1a

    aput v13, v0, v12
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->NON_CARD_PAYMENT_METHOD_ACTION_REQUIRED:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x1b

    aput v13, v0, v12
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->INTERSTITIAL:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x1c

    aput v13, v0, v12
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v12, Lcom/stripe/paymentcollection/PaymentCollectionState;->PASSTHROUGH_CONFIRMATION:Lcom/stripe/paymentcollection/PaymentCollectionState;

    invoke-virtual {v12}, Lcom/stripe/paymentcollection/PaymentCollectionState;->ordinal()I

    move-result v12

    const/16 v13, 0x1d

    aput v13, v0, v12
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    sput-object v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/stripe/hardware/paymentcollection/TransactionType;->values()[Lcom/stripe/hardware/paymentcollection/TransactionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_1d
    sget-object v12, Lcom/stripe/hardware/paymentcollection/TransactionType;->STRONG_CUSTOMER_AUTHENTICATION:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v12}, Lcom/stripe/hardware/paymentcollection/TransactionType;->ordinal()I

    move-result v12

    aput v1, v0, v12
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v12, Lcom/stripe/hardware/paymentcollection/TransactionType;->CHARGE:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v12}, Lcom/stripe/hardware/paymentcollection/TransactionType;->ordinal()I

    move-result v12

    aput v2, v0, v12
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v12, Lcom/stripe/hardware/paymentcollection/TransactionType;->REFUND:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v12}, Lcom/stripe/hardware/paymentcollection/TransactionType;->ordinal()I

    move-result v12

    aput v3, v0, v12
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v12, Lcom/stripe/hardware/paymentcollection/TransactionType;->REUSABLE_CARD:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v12}, Lcom/stripe/hardware/paymentcollection/TransactionType;->ordinal()I

    move-result v12

    aput v4, v0, v12
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v12, Lcom/stripe/hardware/paymentcollection/TransactionType;->SETUP:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v12}, Lcom/stripe/hardware/paymentcollection/TransactionType;->ordinal()I

    move-result v12

    aput v5, v0, v12
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v12, Lcom/stripe/hardware/paymentcollection/TransactionType;->MAGSTRIPE_PASSTHROUGH:Lcom/stripe/hardware/paymentcollection/TransactionType;

    invoke-virtual {v12}, Lcom/stripe/hardware/paymentcollection/TransactionType;->ordinal()I

    move-result v12

    aput v6, v0, v12
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->values()[Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_23
    sget-object v12, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->CANCEL:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v12}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v12

    aput v1, v0, v12
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->TIMEOUT:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->INCORRECT_PIN:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->CARD_ERROR:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->REQUESTED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ENTERED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->SUCCESS:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->WRONG_PIN_LENGTH:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ICC_REMOVED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->NOT_REQUESTED:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v1, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->BYPASS:Lcom/stripe/hardware/paymentcollection/PinEntryStatus;

    invoke-virtual {v1}, Lcom/stripe/hardware/paymentcollection/PinEntryStatus;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    sput-object v0, Lcom/stripe/paymentcollection/BbposPaymentCollectionStateMachine$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
