.class public final synthetic Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine$WhenMappings;
.super Ljava/lang/Object;
.source "ManualEntryStateMachine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine;
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
    .locals 6

    invoke-static {}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->values()[Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->EMPTY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v2}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CONFIGURE_READER:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v3}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v3, 0x3

    :try_start_2
    sget-object v4, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ZIP_CODE:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v4, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CONFIRM_DETAILS:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v0, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v4, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->PAN_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v4

    const/4 v5, 0x5

    aput v5, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->EXPIRY_DATE_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v4

    const/4 v5, 0x6

    aput v5, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->CVV_ENTRY:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v4

    const/4 v5, 0x7

    aput v5, v0, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->FINISHED:Lcom/stripe/paymentcollection/manualentry/ManualEntryState;

    invoke-virtual {v4}, Lcom/stripe/paymentcollection/manualentry/ManualEntryState;->ordinal()I

    move-result v4

    const/16 v5, 0x8

    aput v5, v0, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->values()[Lcom/stripe/hardware/paymentcollection/ManualEntryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_8
    sget-object v4, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->PAN_ENTRY:Lcom/stripe/hardware/paymentcollection/ManualEntryType;

    invoke-virtual {v4}, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->EXPIRY_DATE_ENTRY:Lcom/stripe/hardware/paymentcollection/ManualEntryType;

    invoke-virtual {v4}, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->CVV_ENTRY:Lcom/stripe/hardware/paymentcollection/ManualEntryType;

    invoke-virtual {v4}, Lcom/stripe/hardware/paymentcollection/ManualEntryType;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/stripe/hardware/emv/TransactionResult$Result;->values()[Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_b
    sget-object v4, Lcom/stripe/hardware/emv/TransactionResult$Result;->TERMINATED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v4}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->TIMEOUT:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v1, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/TransactionResult$Result;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    sput-object v0, Lcom/stripe/paymentcollection/manualentry/ManualEntryStateMachine$WhenMappings;->$EnumSwitchMapping$2:[I

    return-void
.end method
