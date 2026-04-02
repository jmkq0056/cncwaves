.class public final synthetic Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;
.super Ljava/lang/Object;
.source "BbposDeviceListenerWrapperImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;
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

.field public static final synthetic $EnumSwitchMapping$10:[I

.field public static final synthetic $EnumSwitchMapping$11:[I

.field public static final synthetic $EnumSwitchMapping$12:[I

.field public static final synthetic $EnumSwitchMapping$13:[I

.field public static final synthetic $EnumSwitchMapping$14:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I

.field public static final synthetic $EnumSwitchMapping$7:[I

.field public static final synthetic $EnumSwitchMapping$8:[I

.field public static final synthetic $EnumSwitchMapping$9:[I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v6, 0x6

    :try_start_5
    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v7, 0x7

    :try_start_6
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->ordinal()I

    move-result v8

    aput v7, v0, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v8, 0x8

    :try_start_7
    sget-object v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v9}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v9, 0x9

    :try_start_8
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->QR_CODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_9
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->NO_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result v10

    aput v1, v0, v10
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->INSERTED_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result v10

    aput v2, v0, v10
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->NOT_ICC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result v10

    aput v3, v0, v10
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->BAD_SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result v10

    aput v4, v0, v10
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MSR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result v10

    aput v5, v0, v10
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MAG_HEAD_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result v10

    aput v6, v0, v10
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->USE_ICC_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result v10

    aput v7, v0, v10
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->TAP_CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result v10

    aput v8, v0, v10
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v10}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/16 v10, 0xa

    :try_start_12
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_13
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->APPROVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v11

    aput v1, v0, v11
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->TERMINATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v11

    aput v2, v0, v11
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->DECLINED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v11

    aput v3, v0, v11
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CANCELED_OR_TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v11

    aput v4, v0, v11
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CAPK_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v11

    aput v5, v0, v11
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->NOT_ICC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v11

    aput v6, v0, v11
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CARD_BLOCKED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v11

    aput v7, v0, v11
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->DEVICE_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v11

    aput v8, v0, v11
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->SELECT_APP_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v11

    aput v9, v0, v11
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    const/16 v11, 0xb

    :try_start_1d
    sget-object v12, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->MISSING_MANDATORY_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v12}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v12

    aput v11, v0, v12
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    const/16 v12, 0xc

    :try_start_1e
    sget-object v13, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->NO_EMV_APPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v13}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v13

    aput v12, v0, v13
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    const/16 v13, 0xd

    :try_start_1f
    sget-object v14, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->INVALID_ICC_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v14}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v14

    aput v13, v0, v14
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    const/16 v14, 0xe

    :try_start_20
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CONDITION_NOT_SATISFIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual {v15}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v15

    aput v14, v0, v15
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    const/16 v15, 0xf

    :try_start_21
    sget-object v16, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->APPLICATION_BLOCKED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual/range {v16 .. v16}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v16

    aput v15, v0, v16
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    const/16 v16, 0x10

    :try_start_22
    sget-object v17, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ICC_CARD_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual/range {v17 .. v17}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v17

    aput v16, v0, v17
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    const/16 v17, 0x11

    :try_start_23
    sget-object v18, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CARD_SCHEME_NOT_MATCHED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual/range {v18 .. v18}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v18

    aput v17, v0, v18
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    const/16 v18, 0x12

    :try_start_24
    sget-object v19, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CANCELED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual/range {v19 .. v19}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v19

    aput v18, v0, v19
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    const/16 v19, 0x13

    :try_start_25
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result v20

    aput v19, v0, v20
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_26
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ENTERED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ordinal()I

    move-result v20

    aput v1, v0, v20
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->CANCEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ordinal()I

    move-result v20

    aput v2, v0, v20
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ordinal()I

    move-result v20

    aput v3, v0, v20
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->BYPASS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ordinal()I

    move-result v20

    aput v4, v0, v20
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    :catch_29
    :try_start_2a
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->WRONG_PIN_LENGTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ordinal()I

    move-result v20

    aput v5, v0, v20
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->INCORRECT_PIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ordinal()I

    move-result v20

    aput v6, v0, v20
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ICC_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ordinal()I

    move-result v20

    aput v7, v0, v20
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2d
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;->ordinal()I

    move-result v20

    aput v1, v0, v20
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    :catch_2d
    :try_start_2e
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;->CANCEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;->ordinal()I

    move-result v20

    aput v2, v0, v20
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;->ordinal()I

    move-result v20

    aput v3, v0, v20
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;->INVALID_AMOUNT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;->ordinal()I

    move-result v20

    aput v4, v0, v20
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_31
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v1, v0, v20
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    :catch_31
    :try_start_32
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TLV_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v2, v0, v20
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v3, v0, v20
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    :catch_33
    :try_start_34
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->LENGTH_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v4, v0, v20
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v5, v0, v20
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    :catch_35
    :try_start_36
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v6, v0, v20
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v7, v0, v20
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->INVALID_VALUE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v8, v0, v20
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v9, v0, v20
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_UPDATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v10, v0, v20
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result v20

    aput v11, v0, v20
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3c
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->PHONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->ordinal()I

    move-result v20

    aput v1, v0, v20
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->KEYPAD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->ordinal()I

    move-result v20

    aput v2, v0, v20
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->SMARTPOS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->ordinal()I

    move-result v20

    aput v3, v0, v20
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_3f
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->APPROVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v1, v0, v20
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_3f

    :catch_3f
    :try_start_40
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CALL_YOUR_BANK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v2, v0, v20
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_40

    :catch_40
    :try_start_41
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->DECLINED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v3, v0, v20
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_41

    :catch_41
    :try_start_42
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ENTER_AMOUNT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v4, v0, v20
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_42

    :catch_42
    :try_start_43
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ENTER_PIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v5, v0, v20
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_43

    :catch_43
    :try_start_44
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INCORRECT_PIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v6, v0, v20
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_44

    :catch_44
    :try_start_45
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INSERT_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v7, v0, v20
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_45

    :catch_45
    :try_start_46
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->NOT_ACCEPTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v8, v0, v20
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_46

    :catch_46
    :try_start_47
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PIN_OK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v9, v0, v20
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_47

    :catch_47
    :try_start_48
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PLEASE_WAIT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v10, v0, v20
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_48

    :catch_48
    :try_start_49
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->REMOVE_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v11, v0, v20
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_49

    :catch_49
    :try_start_4a
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->USE_MAG_STRIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v12, v0, v20
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_4a

    :catch_4a
    :try_start_4b
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TRY_AGAIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v13, v0, v20
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_4b

    :catch_4b
    :try_start_4c
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->REFER_TO_YOUR_PAYMENT_DEVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v14, v0, v20
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4d
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TRANSACTION_TERMINATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v15, v0, v20
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4e
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PROCESSING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v16, v0, v20
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4f
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->LAST_PIN_TRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v17, v0, v20
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_50
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->SELECT_ACCOUNT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v18, v0, v20
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_50

    :catch_50
    :try_start_51
    sget-object v20, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PRESENT_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v20 .. v20}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v20

    aput v19, v0, v20
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_51

    :catch_51
    const/16 v20, 0x14

    :try_start_52
    sget-object v21, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->APPROVED_PLEASE_SIGN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v21 .. v21}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v21

    aput v20, v0, v21
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_52

    :catch_52
    const/16 v21, 0x15

    :try_start_53
    sget-object v22, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PRESENT_CARD_AGAIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v22 .. v22}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v22

    aput v21, v0, v22
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_53

    :catch_53
    const/16 v22, 0x16

    :try_start_54
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->AUTHORISING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    aput v22, v0, v23
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_54

    :catch_54
    :try_start_55
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INSERT_SWIPE_OR_TRY_ANOTHER_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x17

    aput v24, v0, v23
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_55

    :catch_55
    :try_start_56
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INSERT_OR_SWIPE_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x18

    aput v24, v0, v23
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_56

    :catch_56
    :try_start_57
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x19

    aput v24, v0, v23
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_57

    :catch_57
    :try_start_58
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x1a

    aput v24, v0, v23
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_58

    :catch_58
    :try_start_59
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->APPLICATION_EXPIRED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x1b

    aput v24, v0, v23
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_59

    :catch_59
    :try_start_5a
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->FINAL_CONFIRM:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x1c

    aput v24, v0, v23
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_5a} :catch_5a

    :catch_5a
    :try_start_5b
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->SHOW_THANK_YOU:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x1d

    aput v24, v0, v23
    :try_end_5b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_5b} :catch_5b

    :catch_5b
    :try_start_5c
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PIN_TRY_LIMIT_EXCEEDED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x1e

    aput v24, v0, v23
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5c .. :try_end_5c} :catch_5c

    :catch_5c
    :try_start_5d
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->NOT_ICC_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x1f

    aput v24, v0, v23
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5e
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_INSERTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x20

    aput v24, v0, v23
    :try_end_5e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5e .. :try_end_5e} :catch_5e

    :catch_5e
    :try_start_5f
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x21

    aput v24, v0, v23
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_5f} :catch_5f

    :catch_5f
    :try_start_60
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->NO_EMV_APPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x22

    aput v24, v0, v23
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_60} :catch_60

    :catch_60
    :try_start_61
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CTL_NO_EMV_APPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x23

    aput v24, v0, v23
    :try_end_61
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_61} :catch_61

    :catch_61
    :try_start_62
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CTL_APP_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x24

    aput v24, v0, v23
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_62} :catch_62

    :catch_62
    :try_start_63
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CTL_TRANSACTION_LIMIT_EXCEEDED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x25

    aput v24, v0, v23
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_63} :catch_63

    :catch_63
    :try_start_64
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INVALID_INPUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x26

    aput v24, v0, v23
    :try_end_64
    .catch Ljava/lang/NoSuchFieldError; {:try_start_64 .. :try_end_64} :catch_64

    :catch_64
    :try_start_65
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x27

    aput v24, v0, v23
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_65 .. :try_end_65} :catch_65

    :catch_65
    :try_start_66
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TOO_MANY_TAPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x28

    aput v24, v0, v23
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_66} :catch_66

    :catch_66
    :try_start_67
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_IS_STILL_INSERTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x29

    aput v24, v0, v23
    :try_end_67
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_67} :catch_67

    :catch_67
    :try_start_68
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->DPAS_CDCVM:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x2a

    aput v24, v0, v23
    :try_end_68
    .catch Ljava/lang/NoSuchFieldError; {:try_start_68 .. :try_end_68} :catch_68

    :catch_68
    :try_start_69
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_NOT_ADMITTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x2b

    aput v24, v0, v23
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_69} :catch_69

    :catch_69
    :try_start_6a
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INVALID_TRANSACTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x2c

    aput v24, v0, v23
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_6a} :catch_6a

    :catch_6a
    :try_start_6b
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INVALID_CARD_NUMBER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x2d

    aput v24, v0, v23
    :try_end_6b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_6b} :catch_6b

    :catch_6b
    :try_start_6c
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->SYSTEM_MALFUNCTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x2e

    aput v24, v0, v23
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6d
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->EXPIRED_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x2f

    aput v24, v0, v23
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6e
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x30

    aput v24, v0, v23
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_6e} :catch_6e

    :catch_6e
    :try_start_6f
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INVALID_FUNCTION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x31

    aput v24, v0, v23
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_70
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->INVALID_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x32

    aput v24, v0, v23
    :try_end_70
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_70} :catch_70

    :catch_70
    :try_start_71
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->WRONG_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x33

    aput v24, v0, v23
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_71 .. :try_end_71} :catch_71

    :catch_71
    :try_start_72
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->TERMINAL_NOT_PERMITTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x34

    aput v24, v0, v23
    :try_end_72
    .catch Ljava/lang/NoSuchFieldError; {:try_start_72 .. :try_end_72} :catch_72

    :catch_72
    :try_start_73
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x35

    aput v24, v0, v23
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_73} :catch_73

    :catch_73
    :try_start_74
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_NOT_READABLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x36

    aput v24, v0, v23
    :try_end_74
    .catch Ljava/lang/NoSuchFieldError; {:try_start_74 .. :try_end_74} :catch_74

    :catch_74
    :try_start_75
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->AUTHENTICATION_REQUIRED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x37

    aput v24, v0, v23
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_75} :catch_75

    :catch_75
    :try_start_76
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->DECLINED_WITH_RESPONSE_CODE_05:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x38

    aput v24, v0, v23
    :try_end_76
    .catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_76} :catch_76

    :catch_76
    :try_start_77
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x39

    aput v24, v0, v23
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_77} :catch_77

    :catch_77
    :try_start_78
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_ERROR_PLEASE_ENTER_PIN_AGAIN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x3a

    aput v24, v0, v23
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_78} :catch_78

    :catch_78
    :try_start_79
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->CARD_ERROR_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x3b

    aput v24, v0, v23
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_79} :catch_79

    :catch_79
    :try_start_7a
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->NOT_ACCEPTED_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x3c

    aput v24, v0, v23
    :try_end_7a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_7a} :catch_7a

    :catch_7a
    :try_start_7b
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->PROCESSING_ERROR_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result v23

    const/16 v24, 0x3d

    aput v24, v0, v23
    :try_end_7b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7b .. :try_end_7b} :catch_7b

    :catch_7b
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$7:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7c
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->PAN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->ordinal()I

    move-result v23

    aput v1, v0, v23
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7c .. :try_end_7c} :catch_7c

    :catch_7c
    :try_start_7d
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->EXPIRY_DATE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->ordinal()I

    move-result v23

    aput v2, v0, v23
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7d .. :try_end_7d} :catch_7d

    :catch_7d
    :try_start_7e
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->CVV:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->ordinal()I

    move-result v23

    aput v3, v0, v23
    :try_end_7e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7e .. :try_end_7e} :catch_7e

    :catch_7e
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$8:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7f
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;->ordinal()I

    move-result v23

    aput v1, v0, v23
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_7f} :catch_7f

    :catch_7f
    :try_start_80
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;->ALERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;->ordinal()I

    move-result v23

    aput v2, v0, v23
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_80} :catch_80

    :catch_80
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$9:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_81
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->LOW:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->ordinal()I

    move-result v23

    aput v1, v0, v23
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_81} :catch_81

    :catch_81
    :try_start_82
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->CRITICALLY_LOW:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->ordinal()I

    move-result v23

    aput v2, v0, v23
    :try_end_82
    .catch Ljava/lang/NoSuchFieldError; {:try_start_82 .. :try_end_82} :catch_82

    :catch_82
    :try_start_83
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->IS_CHARGING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->ordinal()I

    move-result v23

    aput v3, v0, v23
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_83} :catch_83

    :catch_83
    :try_start_84
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->NOT_CHARGING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->ordinal()I

    move-result v23

    aput v4, v0, v23
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_84} :catch_84

    :catch_84
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$10:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_85
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v23

    aput v1, v0, v23
    :try_end_85
    .catch Ljava/lang/NoSuchFieldError; {:try_start_85 .. :try_end_85} :catch_85

    :catch_85
    :try_start_86
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v23

    aput v2, v0, v23
    :try_end_86
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_86} :catch_86

    :catch_86
    :try_start_87
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->DEVICE_BUSY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v23

    aput v3, v0, v23
    :try_end_87
    .catch Ljava/lang/NoSuchFieldError; {:try_start_87 .. :try_end_87} :catch_87

    :catch_87
    :try_start_88
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INPUT_OUT_OF_RANGE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v23

    aput v4, v0, v23
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_88} :catch_88

    :catch_88
    :try_start_89
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INPUT_INVALID_FORMAT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v23

    aput v5, v0, v23
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_89} :catch_89

    :catch_89
    :try_start_8a
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INPUT_INVALID:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v23

    aput v6, v0, v23
    :try_end_8a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8a .. :try_end_8a} :catch_8a

    :catch_8a
    :try_start_8b
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CASHBACK_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v23

    aput v7, v0, v23
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_8b} :catch_8b

    :catch_8b
    :try_start_8c
    sget-object v23, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->COMM_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual/range {v23 .. v23}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v23

    aput v8, v0, v23
    :try_end_8c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_8c} :catch_8c

    :catch_8c
    :try_start_8d
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v9, v0, v8
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8d .. :try_end_8d} :catch_8d

    :catch_8d
    :try_start_8e
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->VOLUME_WARNING_NOT_ACCEPTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v10, v0, v8
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8f
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_AUDIO:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v11, v0, v8
    :try_end_8f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8f .. :try_end_8f} :catch_8f

    :catch_8f
    :try_start_90
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v12, v0, v8
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_90} :catch_90

    :catch_90
    :try_start_91
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->COMM_LINK_UNINITIALIZED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v13, v0, v8
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_91} :catch_91

    :catch_91
    :try_start_92
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->BTV4_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v14, v0, v8
    :try_end_92
    .catch Ljava/lang/NoSuchFieldError; {:try_start_92 .. :try_end_92} :catch_92

    :catch_92
    :try_start_93
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_SERIAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v15, v0, v8
    :try_end_93
    .catch Ljava/lang/NoSuchFieldError; {:try_start_93 .. :try_end_93} :catch_93

    :catch_93
    :try_start_94
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_USB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v16, v0, v8
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_94} :catch_94

    :catch_94
    :try_start_95
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->USB_DEVICE_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v17, v0, v8
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_95} :catch_95

    :catch_95
    :try_start_96
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v18, v0, v8
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_96} :catch_96

    :catch_96
    :try_start_97
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->USB_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v19, v0, v8
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_97} :catch_97

    :catch_97
    :try_start_98
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CHANNEL_BUFFER_FULL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v20, v0, v8
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_98} :catch_98

    :catch_98
    :try_start_99
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v21, v0, v8
    :try_end_99
    .catch Ljava/lang/NoSuchFieldError; {:try_start_99 .. :try_end_99} :catch_99

    :catch_99
    :try_start_9a
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->HARDWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    aput v22, v0, v8
    :try_end_9a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9a .. :try_end_9a} :catch_9a

    :catch_9a
    :try_start_9b
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->TAMPER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x17

    aput v9, v0, v8
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_9b} :catch_9b

    :catch_9b
    :try_start_9c
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PCI_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x18

    aput v9, v0, v8
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9d
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->AUDIO_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x19

    aput v9, v0, v8
    :try_end_9d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9d .. :try_end_9d} :catch_9d

    :catch_9d
    :try_start_9e
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->BLUETOOTH_LOCATION_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x1a

    aput v9, v0, v8
    :try_end_9e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9e .. :try_end_9e} :catch_9e

    :catch_9e
    :try_start_9f
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->SERIAL_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x1b

    aput v9, v0, v8
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_9f} :catch_9f

    :catch_9f
    :try_start_a0
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PAIRING_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x1c

    aput v9, v0, v8
    :try_end_a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a0 .. :try_end_a0} :catch_a0

    :catch_a0
    :try_start_a1
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PAIRING_ERROR_INCORRECT_PASSKEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x1d

    aput v9, v0, v8
    :try_end_a1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_a1} :catch_a1

    :catch_a1
    :try_start_a2
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x1e

    aput v9, v0, v8
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a2 .. :try_end_a2} :catch_a2

    :catch_a2
    :try_start_a3
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->BLE_SECURE_CONNECTION_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x1f

    aput v9, v0, v8
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_a3} :catch_a3

    :catch_a3
    :try_start_a4
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->NFC_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x20

    aput v9, v0, v8
    :try_end_a4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_a4} :catch_a4

    :catch_a4
    :try_start_a5
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->NFC_PERMISSION_DENIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x21

    aput v9, v0, v8
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a5 .. :try_end_a5} :catch_a5

    :catch_a5
    :try_start_a6
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->NFC_DISABLED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x22

    aput v9, v0, v8
    :try_end_a6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a6 .. :try_end_a6} :catch_a6

    :catch_a6
    :try_start_a7
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x23

    aput v9, v0, v8
    :try_end_a7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a7 .. :try_end_a7} :catch_a7

    :catch_a7
    :try_start_a8
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->CONTACTLESS_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x24

    aput v9, v0, v8
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a9
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->NOT_COMPATIBLE_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x25

    aput v9, v0, v8
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_a9} :catch_a9

    :catch_a9
    :try_start_aa
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->INTEGRITY_CHECK_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x26

    aput v9, v0, v8
    :try_end_aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_aa .. :try_end_aa} :catch_aa

    :catch_aa
    :try_start_ab
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->FAIL_TO_START_TEST_CHANNEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result v8

    const/16 v9, 0x27

    aput v9, v0, v8
    :try_end_ab
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_ab} :catch_ab

    :catch_ab
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$11:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_ac
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->FIRMWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->ordinal()I

    move-result v8

    aput v1, v0, v8
    :try_end_ac
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ac .. :try_end_ac} :catch_ac

    :catch_ac
    :try_start_ad
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->SESSION_NOT_INITIALIZED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->ordinal()I

    move-result v8

    aput v2, v0, v8
    :try_end_ad
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_ad} :catch_ad

    :catch_ad
    :try_start_ae
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->INVALID_VENDOR_TOKEN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->ordinal()I

    move-result v8

    aput v3, v0, v8
    :try_end_ae
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ae .. :try_end_ae} :catch_ae

    :catch_ae
    :try_start_af
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->INVALID_SESSION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->ordinal()I

    move-result v8

    aput v4, v0, v8
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_af} :catch_af

    :catch_af
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$12:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_b0
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->ordinal()I

    move-result v8

    aput v1, v0, v8
    :try_end_b0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_b0} :catch_b0

    :catch_b0
    :try_start_b1
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->APP_RESET_DEVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->ordinal()I

    move-result v8

    aput v2, v0, v8
    :try_end_b1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b1 .. :try_end_b1} :catch_b1

    :catch_b1
    :try_start_b2
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->FIRMWARE_SELF_TEST:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->ordinal()I

    move-result v8

    aput v3, v0, v8
    :try_end_b2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b2 .. :try_end_b2} :catch_b2

    :catch_b2
    :try_start_b3
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->RECOVERY_ATTEMPT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->ordinal()I

    move-result v8

    aput v4, v0, v8
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_b3} :catch_b3

    :catch_b3
    :try_start_b4
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->WATCHDOG_TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->ordinal()I

    move-result v8

    aput v5, v0, v8
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_b4} :catch_b4

    :catch_b4
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$13:[I

    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_b5
    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->BACKSPACE_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ordinal()I

    move-result v8

    aput v1, v0, v8
    :try_end_b5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b5 .. :try_end_b5} :catch_b5

    :catch_b5
    :try_start_b6
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->OUT_OF_PIN_PAD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_b6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b6 .. :try_end_b6} :catch_b6

    :catch_b6
    :try_start_b7
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->NEW_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_b7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b7 .. :try_end_b7} :catch_b7

    :catch_b7
    :try_start_b8
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->CLEAR_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_b8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b8 .. :try_end_b8} :catch_b8

    :catch_b8
    :try_start_b9
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->CANCEL_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_b9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_b9} :catch_b9

    :catch_b9
    :try_start_ba
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ENTER_KEY_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_ba
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ba .. :try_end_ba} :catch_ba

    :catch_ba
    :try_start_bb
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_bb} :catch_bb

    :catch_bb
    sput-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$14:[I

    return-void
.end method
