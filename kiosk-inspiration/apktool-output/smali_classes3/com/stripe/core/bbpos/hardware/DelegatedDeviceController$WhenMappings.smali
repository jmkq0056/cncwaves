.class public final synthetic Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$WhenMappings;
.super Ljava/lang/Object;
.source "DelegatedDeviceController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController;
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
    .locals 5

    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->values()[Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->GOODS:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    invoke-virtual {v2}, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v2, 0x2

    :try_start_1
    sget-object v3, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->REFUND:Lcom/stripe/hardware/ReaderConfiguration$TransactionType;

    invoke-virtual {v3}, Lcom/stripe/hardware/ReaderConfiguration$TransactionType;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    sput-object v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->values()[Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_2
    sget-object v3, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->USE_EMV:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    invoke-virtual {v3}, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->USE_CONFIG:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    invoke-virtual {v3}, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v3, 0x3

    :try_start_4
    sget-object v4, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->USE_QUICKCHIP:Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;

    invoke-virtual {v4}, Lcom/stripe/hardware/ReaderConfiguration$QuickChipOption;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    sput-object v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->values()[Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_5
    sget-object v4, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->STANDARD:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    invoke-virtual {v4}, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->TOP:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    invoke-virtual {v4}, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->ordinal()I

    move-result v4

    aput v2, v0, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->BOTTOM:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    invoke-virtual {v4}, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->OFF:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    invoke-virtual {v3}, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v0, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    sput-object v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-static {}, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->values()[Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_9
    sget-object v3, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->DISABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-virtual {v3}, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->ENABLED:Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;

    invoke-virtual {v1}, Lcom/stripe/hardware/ReaderConfiguration$ContactlessOnlinePinOption;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceController$WhenMappings;->$EnumSwitchMapping$3:[I

    return-void
.end method
