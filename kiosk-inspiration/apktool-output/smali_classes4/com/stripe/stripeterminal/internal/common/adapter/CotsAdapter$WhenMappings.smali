.class public final synthetic Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;
.super Ljava/lang/Object;
.source "CotsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;
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


# direct methods
.method static constructor <clinit>()V
    .locals 16

    invoke-static {}, Lcom/stripe/cots/common/CotsError;->values()[Lcom/stripe/cots/common/CotsError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/stripe/cots/common/CotsError;->NONE:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v2}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v3}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/stripe/cots/common/CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v4}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lcom/stripe/cots/common/CotsError;->DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v5}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lcom/stripe/cots/common/CotsError;->DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/common/CotsError;

    invoke-virtual {v6}, Lcom/stripe/cots/common/CotsError;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->values()[Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5
    sget-object v6, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->SUCCESS:Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

    invoke-virtual {v6}, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v6, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->FAILURE:Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

    invoke-virtual {v6}, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v6, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->CANCELED:Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

    invoke-virtual {v6}, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->ATTESTATION_FAILURE:Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;

    invoke-virtual {v6}, Lcom/stripe/cots/aidlservice/CotsCollectPinResponse$Result;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->values()[Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_9
    sget-object v6, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->PROCEED_ONLINE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v6}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->PIN_COLLECTED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v6}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ACCESS_NOT_ALLOWED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v6}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v6

    aput v3, v0, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->CANCELED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v6}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v6

    aput v4, v0, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v6, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->IRRECOVERABLE_ERROR:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v6}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    const/4 v6, 0x6

    :try_start_e
    sget-object v7, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->RECOVERABLE_ERROR:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v7}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v7

    aput v6, v0, v7
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    const/4 v7, 0x7

    :try_start_f
    sget-object v8, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->APPROVED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v8}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v8

    aput v7, v0, v8
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    const/16 v8, 0x8

    :try_start_10
    sget-object v9, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->DECLINED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v9}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v9

    aput v8, v0, v9
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    const/16 v9, 0x9

    :try_start_11
    sget-object v10, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->NO_MUTUALLY_SUPPORTED_APPLICATIONS:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v10}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v10

    aput v9, v0, v10
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    const/16 v10, 0xa

    :try_start_12
    sget-object v11, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->SEE_PHONE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v11}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v11

    aput v10, v0, v11
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    const/16 v11, 0xb

    :try_start_13
    sget-object v12, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->INVALID_CURRENCY:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v12}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v12

    aput v11, v0, v12
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    const/16 v12, 0xc

    :try_start_14
    sget-object v13, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->NFC_IS_DISABLED:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v13}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v13

    aput v12, v0, v13
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    const/16 v13, 0xd

    :try_start_15
    sget-object v14, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->READER_NOT_ACTIVE:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v14}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v14

    aput v13, v0, v14
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v14, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->CARD_READ_TIMED_OUT:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v14}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v14

    const/16 v15, 0xe

    aput v15, v0, v14
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v14, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->INSECURE_ENVIRONMENT:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v14}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v14

    const/16 v15, 0xf

    aput v15, v0, v14
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v14, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;

    invoke-virtual {v14}, Lcom/stripe/cots/aidlservice/CotsContactlessResult$ContactlessOutcome;->ordinal()I

    move-result v14

    const/16 v15, 0x10

    aput v15, v0, v14
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->values()[Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_19
    sget-object v14, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->NONE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v14}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v14

    aput v1, v0, v14
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNTRUSTED_HARDWARE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNTRUSTED_SOFTWARE:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_MISSING_KEY_CERTIFICATES:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_MISSING_NFC_READER:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_UNSUPPORTED_ANDROID_VERSION:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_DEVICE_TAMPERED:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v7, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    :catch_1f
    :try_start_20
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_API_CONNECTION_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v8, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_API_RESPONSE_DECODING:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v9, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ATTESTATION_SERVER_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v10, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->DISCOVERY_DEBUG_NOT_ALLOWED:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v11, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    :catch_23
    :try_start_24
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->UNEXPECTED_ERROR:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v12, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v1, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->UNKNOWN:Lcom/stripe/cots/aidlservice/CotsReader$CotsError;

    invoke-virtual {v1}, Lcom/stripe/cots/aidlservice/CotsReader$CotsError;->ordinal()I

    move-result v1

    aput v13, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter$WhenMappings;->$EnumSwitchMapping$3:[I

    return-void
.end method
