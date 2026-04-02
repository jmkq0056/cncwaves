.class public final synthetic Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;
.super Ljava/lang/Object;
.source "BbposPaymentCollectionListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener;
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

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    invoke-static {}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->values()[Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->NO_CARD:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v2}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->INSERTED_CARD:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v3}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->NOT_ICC:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v4}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->MSR:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v5}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->BAD_SWIPE:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v6}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v7, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->MAG_HEAD_FAIL:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v7}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v7, 0x7

    :try_start_6
    sget-object v8, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v8}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v8

    aput v7, v0, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v8, 0x8

    :try_start_7
    sget-object v9, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->CHECK_CARD_RESULT_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v9, 0x9

    :try_start_8
    sget-object v10, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->USE_ICC_CARD:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v10}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v10, 0xa

    :try_start_9
    sget-object v11, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->TAP_CARD_DETECTED:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v11}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v11, 0xb

    :try_start_a
    sget-object v12, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    invoke-virtual {v12}, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->ordinal()I

    move-result v12

    aput v11, v0, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/stripe/bbpos/sdk/DisplayText;->values()[Lcom/stripe/bbpos/sdk/DisplayText;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_b
    sget-object v12, Lcom/stripe/bbpos/sdk/DisplayText;->CTL_TRANSACTION_LIMIT_EXCEEDED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v12}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v12

    aput v1, v0, v12
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v12, Lcom/stripe/bbpos/sdk/DisplayText;->NOT_ICC_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v12}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v12

    aput v2, v0, v12
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v12, Lcom/stripe/bbpos/sdk/DisplayText;->REFER_TO_YOUR_PAYMENT_DEVICE:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v12}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v12

    aput v3, v0, v12
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v12, Lcom/stripe/bbpos/sdk/DisplayText;->INSERT_OR_SWIPE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v12}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v12

    aput v4, v0, v12
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v12, Lcom/stripe/bbpos/sdk/DisplayText;->CTL_NO_EMV_APPS:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v12}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v12

    aput v5, v0, v12
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v12, Lcom/stripe/bbpos/sdk/DisplayText;->NO_EMV_APPS:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v12}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v12

    aput v6, v0, v12
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v12, Lcom/stripe/bbpos/sdk/DisplayText;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v12}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v12

    aput v7, v0, v12
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v12, Lcom/stripe/bbpos/sdk/DisplayText;->INSERT_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v12}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v12

    aput v8, v0, v12
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v12, Lcom/stripe/bbpos/sdk/DisplayText;->USE_MAG_STRIPE:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v12}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v12

    aput v9, v0, v12
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->PRESENT_CARD_AGAIN:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    aput v10, v0, v9
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    aput v11, v0, v9
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->NOT_ACCEPTED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0xc

    aput v10, v0, v9
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->CTL_APP_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0xd

    aput v10, v0, v9
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->PLEASE_WAIT:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0xe

    aput v10, v0, v9
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->PROCESSING:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0xf

    aput v10, v0, v9
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->PRESENT_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x10

    aput v10, v0, v9
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->AUTHORISING:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x11

    aput v10, v0, v9
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_IS_STILL_INSERTED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x12

    aput v10, v0, v9
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->SHOW_THANK_YOU:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x13

    aput v10, v0, v9
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->INSERT_SWIPE_OR_TRY_ANOTHER_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x14

    aput v10, v0, v9
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->TOO_MANY_TAPS:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x15

    aput v10, v0, v9
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_NOT_ADMITTED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x16

    aput v10, v0, v9
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_TRANSACTION:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x17

    aput v10, v0, v9
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_CARD_NUMBER:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x18

    aput v10, v0, v9
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->SYSTEM_MALFUNCTION:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x19

    aput v10, v0, v9
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->EXPIRED_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x1a

    aput v10, v0, v9
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x1b

    aput v10, v0, v9
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_FUNCTION:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x1c

    aput v10, v0, v9
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x1d

    aput v10, v0, v9
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->WRONG_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x1e

    aput v10, v0, v9
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->TERMINAL_NOT_PERMITTED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x1f

    aput v10, v0, v9
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x20

    aput v10, v0, v9
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_NOT_READABLE:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x21

    aput v10, v0, v9
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->AUTHENTICATION_REQUIRED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x22

    aput v10, v0, v9
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x23

    aput v10, v0, v9
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->DECLINED_WITH_RESPONSE_CODE_05:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x24

    aput v10, v0, v9
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_ERROR_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x25

    aput v10, v0, v9
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->NOT_ACCEPTED_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x26

    aput v10, v0, v9
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->PROCESSING_ERROR_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x27

    aput v10, v0, v9
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->DISPLAY_TEXT_UNKNOWN:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x28

    aput v10, v0, v9
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->APPROVED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x29

    aput v10, v0, v9
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->CALL_YOUR_BANK:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x2a

    aput v10, v0, v9
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->DECLINED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x2b

    aput v10, v0, v9
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->ENTER_AMOUNT:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x2c

    aput v10, v0, v9
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->ENTER_PIN:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x2d

    aput v10, v0, v9
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->INCORRECT_PIN:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x2e

    aput v10, v0, v9
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->PIN_OK:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x2f

    aput v10, v0, v9
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->TRY_AGAIN:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x30

    aput v10, v0, v9
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->TRANSACTION_TERMINATED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x31

    aput v10, v0, v9
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->LAST_PIN_TRY:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x32

    aput v10, v0, v9
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->SELECT_ACCOUNT:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x33

    aput v10, v0, v9
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->APPROVED_PLEASE_SIGN:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x34

    aput v10, v0, v9
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3f
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->TIMEOUT:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x35

    aput v10, v0, v9
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->APPLICATION_EXPIRED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x36

    aput v10, v0, v9
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->FINAL_CONFIRM:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x37

    aput v10, v0, v9
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->PIN_TRY_LIMIT_EXCEEDED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x38

    aput v10, v0, v9
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_INSERTED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x39

    aput v10, v0, v9
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_REMOVED:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x3a

    aput v10, v0, v9
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_INPUT:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x3b

    aput v10, v0, v9
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_ERROR:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x3c

    aput v10, v0, v9
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->INCORRECT_CARD_DATA:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x3d

    aput v10, v0, v9
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->ERROR_STATUS_WORD:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x3e

    aput v10, v0, v9
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->DPAS_CDCVM:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x3f

    aput v10, v0, v9
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v9, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_ERROR_PLEASE_ENTER_PIN_AGAIN:Lcom/stripe/bbpos/sdk/DisplayText;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/DisplayText;->ordinal()I

    move-result v9

    const/16 v10, 0x40

    aput v10, v0, v9
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->values()[Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_4b
    sget-object v9, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->PIN_PAD_TOUCH_EVENT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ordinal()I

    move-result v9

    aput v1, v0, v9
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v9, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->OUT_OF_PIN_PAD:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ordinal()I

    move-result v9

    aput v2, v0, v9
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v9, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->NEW_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ordinal()I

    move-result v9

    aput v3, v0, v9
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v9, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->BACKSPACE_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ordinal()I

    move-result v9

    aput v4, v0, v9
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v9, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->CLEAR_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ordinal()I

    move-result v9

    aput v5, v0, v9
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v9, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->CANCEL_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ordinal()I

    move-result v9

    aput v6, v0, v9
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v9, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ENTER_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ordinal()I

    move-result v9

    aput v7, v0, v9
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    :try_start_52
    sget-object v9, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->values()[Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_53
    sget-object v9, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->PIN_ENTRY_RESULT_UNKNOWN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ordinal()I

    move-result v9

    aput v1, v0, v9
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    :try_start_54
    sget-object v9, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ENTERED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ordinal()I

    move-result v9

    aput v2, v0, v9
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v9, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->CANCEL:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ordinal()I

    move-result v9

    aput v3, v0, v9
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v9, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->TIMEOUT:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ordinal()I

    move-result v9

    aput v4, v0, v9
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v9, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->BYPASS:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v9}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ordinal()I

    move-result v9

    aput v5, v0, v9
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v5, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->WRONG_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v5}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ordinal()I

    move-result v5

    aput v6, v0, v5
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v5, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->INCORRECT_PIN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v5}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ordinal()I

    move-result v5

    aput v7, v0, v5
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v5, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ICC_REMOVED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    invoke-virtual {v5}, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ordinal()I

    move-result v5

    aput v8, v0, v5
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lcom/stripe/bbpos/sdk/ContactlessStatusTone;->values()[Lcom/stripe/bbpos/sdk/ContactlessStatusTone;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5b
    sget-object v5, Lcom/stripe/bbpos/sdk/ContactlessStatusTone;->CONTACTLESS_STATUS_TONE_UNKNOWN:Lcom/stripe/bbpos/sdk/ContactlessStatusTone;

    invoke-virtual {v5}, Lcom/stripe/bbpos/sdk/ContactlessStatusTone;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v5, Lcom/stripe/bbpos/sdk/ContactlessStatusTone;->ALERT:Lcom/stripe/bbpos/sdk/ContactlessStatusTone;

    invoke-virtual {v5}, Lcom/stripe/bbpos/sdk/ContactlessStatusTone;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v5, Lcom/stripe/bbpos/sdk/ContactlessStatusTone;->SUCCESS:Lcom/stripe/bbpos/sdk/ContactlessStatusTone;

    invoke-virtual {v5}, Lcom/stripe/bbpos/sdk/ContactlessStatusTone;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->values()[Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5e
    sget-object v5, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->SUCCESS:Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;

    invoke-virtual {v5}, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v5, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->CANCEL:Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;

    invoke-virtual {v5}, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->ordinal()I

    move-result v5

    aput v2, v0, v5
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v5, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->TIMEOUT:Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;

    invoke-virtual {v5}, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->ordinal()I

    move-result v5

    aput v3, v0, v5
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v5, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->INVALID_AMOUNT:Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;

    invoke-virtual {v5}, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-static {}, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->values()[Lcom/stripe/bbpos/sdk/ManualPanEntryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_62
    sget-object v5, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->MANUAL_PAN_ENTRY_TYPE_UNKNOWN:Lcom/stripe/bbpos/sdk/ManualPanEntryType;

    invoke-virtual {v5}, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v1, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->PAN:Lcom/stripe/bbpos/sdk/ManualPanEntryType;

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    :try_start_64
    sget-object v1, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->CVV:Lcom/stripe/bbpos/sdk/ManualPanEntryType;

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    :catch_64
    :try_start_65
    sget-object v1, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->EXPIRY_DATE:Lcom/stripe/bbpos/sdk/ManualPanEntryType;

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    sput-object v0, Lcom/stripe/core/bbpos/hardware/BbposPaymentCollectionListener$WhenMappings;->$EnumSwitchMapping$6:[I

    return-void
.end method
