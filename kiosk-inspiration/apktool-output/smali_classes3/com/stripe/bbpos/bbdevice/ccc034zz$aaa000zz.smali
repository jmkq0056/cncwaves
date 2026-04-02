.class synthetic Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ccc034zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic aaa000:[I

.field static final synthetic aaa001:[I

.field static final synthetic aaa002:[I

.field static final synthetic aaa003:[I

.field static final synthetic aaa004:[I

.field static final synthetic aaa005:[I

.field static final synthetic aaa006:[I

.field static final synthetic aaa007:[I

.field static final synthetic aaa008:[I

.field static final synthetic aaa009:[I

.field static final synthetic aaa010:[I

.field static final synthetic aaa011:[I

.field static final synthetic aaa012:[I

.field static final synthetic aaa013:[I

.field static final synthetic aaa014:[I

.field static final synthetic aaa015:[I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa015:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;->PKCS7:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa015:[I

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;->ZERO_PADDING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionPaddingMethod;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2
    :catch_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa014:[I

    :try_start_2
    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->BOTH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa014:[I

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->BY_DEVICE_16_BYTES_RANDOM_NUMBER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa014:[I

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->BY_DEVICE_8_BYTES_RANDOM_NUMBER:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v3, 0x4

    :try_start_5
    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa014:[I

    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->BY_SERVER_16_BYTES_WORKING_KEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v4, 0x5

    :try_start_6
    sget-object v5, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa014:[I

    sget-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->BY_SERVER_8_BYTES_WORKING_KEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/4 v5, 0x6

    :try_start_7
    sget-object v6, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa014:[I

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;->STORED_IN_DEVICE_16_BYTES_KEY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeySource;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 3
    :catch_7
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa013:[I

    :try_start_8
    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->AES_CBC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa013:[I

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->AES_ECB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa013:[I

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->AES_CMAC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa013:[I

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_ANSI_X9_19:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa013:[I

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_ANSI_X9_9:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v6, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa013:[I

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_METHOD_1:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/4 v6, 0x7

    :try_start_e
    sget-object v7, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa013:[I

    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->MAC_METHOD_2:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/16 v7, 0x8

    :try_start_f
    sget-object v8, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa013:[I

    sget-object v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->TDES_CBC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v8, 0x9

    :try_start_10
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa013:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;->TDES_ECB:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionMethod;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 4
    :catch_10
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeyUsage;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeyUsage;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa012:[I

    :try_start_11
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeyUsage;->TAK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeyUsage;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa012:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeyUsage;->TEK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeyUsage;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa012:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeyUsage;->TPK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EncryptionKeyUsage;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 5
    :catch_13
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa011:[I

    :try_start_14
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;->CURRENCY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa011:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;->PERCENTAGE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$OtherAmountOption;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 6
    :catch_15
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa010:[I

    :try_start_16
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;->ROTATION_0:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa010:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;->ROTATION_90:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa010:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;->ROTATION_180:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa010:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;->ROTATION_270:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    .line 7
    :catch_19
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptTone;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptTone;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa009:[I

    :try_start_1a
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptTone;->SUCCESS_TONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptTone;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa009:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptTone;->ALERT_TONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptTone;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 8
    :catch_1b
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa008:[I

    :try_start_1c
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;->CHECK_MARK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa008:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;->CROSS_MARK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa008:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;->EXCLAMATION_MARK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptIcon;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 9
    :catch_1e
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa007:[I

    :try_start_1f
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;->DISPLAY_ONLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa007:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;->DISPLAY_WITH_CONFIRM_BUTTONS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa007:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;->DISPLAY_ONLY_WITHOUT_TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    .line 10
    :catch_21
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa006:[I

    :try_start_22
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;->AMOUNT_ONLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa006:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;->TIPS_ONLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa006:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;->AMOUNT_AND_CASHBACK:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa006:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;->CASHBACK_ONLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa006:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;->AMOUNT_AND_TIPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v4, v9, v10
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa006:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;->AMOUNT_AND_TIPS_IN_PERCENTAGE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v5, v9, v10
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    .line 11
    :catch_27
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa005:[I

    :try_start_28
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;->URL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    :try_start_29
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa005:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;->FULL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASProtocolMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_29

    .line 12
    :catch_29
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa004:[I

    :try_start_2a
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;->SINGLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2a

    :catch_2a
    :try_start_2b
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa004:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;->DUAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2b

    :catch_2b
    :try_start_2c
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa004:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;->VAS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2c

    :catch_2c
    :try_start_2d
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa004:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;->PAYMENT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASTerminalMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2d

    .line 13
    :catch_2d
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa003:[I

    :try_start_2e
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;->DEFAULT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2f
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa003:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;->ON:Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2f

    :catch_2f
    :try_start_30
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa003:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;->OFF:Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v2, v9, v10
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_30

    :catch_30
    :try_start_31
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa003:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;->FLASH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$LEDMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v3, v9, v10
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_31

    .line 14
    :catch_31
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ReadNdefRecord;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$ReadNdefRecord;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa002:[I

    :try_start_32
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ReadNdefRecord;->READ_1ST:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ReadNdefRecord;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_32

    :catch_32
    :try_start_33
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa002:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ReadNdefRecord;->READ_NEXT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ReadNdefRecord;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_33

    .line 15
    :catch_33
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EmvOption;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$EmvOption;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa001:[I

    :try_start_34
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EmvOption;->START:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EmvOption;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_34

    :catch_34
    :try_start_35
    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa001:[I

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$EmvOption;->START_WITH_FORCE_ONLINE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$EmvOption;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v0, v9, v10
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_35

    .line 16
    :catch_35
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    move-result-object v9

    array-length v9, v9

    new-array v9, v9, [I

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa000:[I

    :try_start_36
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput v1, v9, v10
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_36

    :catch_36
    :try_start_37
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa000:[I

    sget-object v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aput v0, v1, v9
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_37

    :catch_37
    :try_start_38
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_38

    :catch_38
    :try_start_39
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_39

    :catch_39
    :try_start_3a
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_3a

    :catch_3a
    :try_start_3b
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_3b

    :catch_3b
    :try_start_3c
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3d
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3e
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ccc034zz$aaa000zz;->aaa000:[I

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->QR_CODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method
