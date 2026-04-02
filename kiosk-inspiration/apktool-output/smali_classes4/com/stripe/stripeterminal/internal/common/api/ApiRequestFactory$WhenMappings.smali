.class public final synthetic Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;
.super Ljava/lang/Object;
.source "ApiRequestFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;
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
    .locals 7

    invoke-static {}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->values()[Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACT_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACTLESS_EMV:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->MAGNETIC_STRIPE_FALLBACK:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-virtual {v4}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v4, 0x4

    :try_start_3
    sget-object v5, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->MAGNETIC_STRIPE_TRACK_2:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v5, 0x5

    :try_start_4
    sget-object v6, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->CONTACTLESS_MAGSTRIPE_MODE:Lcom/stripe/stripeterminal/internal/models/ReadMethod;

    invoke-virtual {v6}, Lcom/stripe/stripeterminal/internal/models/ReadMethod;->ordinal()I

    move-result v6

    aput v5, v0, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/stripe/hardware/emv/TransactionResult$Result;->values()[Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5
    sget-object v6, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v6}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v6

    aput v1, v0, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v6, Lcom/stripe/hardware/emv/TransactionResult$Result;->ICC_CARD_REMOVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v6}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v6

    aput v2, v0, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->CONTACTLESS_LIMIT_EXCEEDED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    aput v3, v0, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->DECLINED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    aput v4, v0, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    aput v5, v0, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->TIMEOUT:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v0, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->CANCELED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v0, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->EMPTY_CANDIDATE_LIST:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    const/16 v3, 0x8

    aput v3, v0, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_BLOCKED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    const/16 v3, 0x9

    aput v3, v0, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    const/16 v3, 0xa

    aput v3, v0, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->CHECK_MOBILE_DEVICE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    const/16 v3, 0xb

    aput v3, v0, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->INSERT_OR_SWIPE_REQUIRED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    const/16 v3, 0xc

    aput v3, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    const/16 v3, 0xd

    aput v3, v0, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->MOBILE_WALLET_TOO_MANY_TAPS:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    const/16 v3, 0xe

    aput v3, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->CARD_STILL_INSERTED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v2}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v2

    const/16 v3, 0xf

    aput v3, v0, v2
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->values()[Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_14
    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->WECHAT_PAY:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
