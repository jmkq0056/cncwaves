.class public final Lcom/stripe/core/bbpos/hardware/DelegatedDeviceControllerKt;
.super Ljava/lang/Object;
.source "DelegatedDeviceController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "ACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS",
        "",
        "getACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS",
        "()J",
        "CHECK_CARD_TIMEOUT_SECONDS",
        "",
        "ONLINE_PROCESS_TIMEOUT_SECONDS",
        "SELECT_ACCOUNT_TYPE_TIMEOUT_SECONDS",
        "SELECT_APPLICATION_TIMEOUT_SECONDS",
        "hardware_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS:J

.field public static final CHECK_CARD_TIMEOUT_SECONDS:I = 0xe10

.field public static final ONLINE_PROCESS_TIMEOUT_SECONDS:I = 0x5a

.field public static final SELECT_ACCOUNT_TYPE_TIMEOUT_SECONDS:I = 0x5a

.field public static final SELECT_APPLICATION_TIMEOUT_SECONDS:I = 0x5a


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    sget-object v0, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x2

    sget-object v1, Lkotlin/time/DurationUnit;->MINUTES:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/Duration;->getInWholeSeconds-impl(J)J

    move-result-wide v0

    sput-wide v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceControllerKt;->ACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS:J

    return-void
.end method

.method public static final getACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS()J
    .locals 2

    .line 34
    sget-wide v0, Lcom/stripe/core/bbpos/hardware/DelegatedDeviceControllerKt;->ACCESSIBLE_PIN_ENTRY_TIMEOUT_VALUE_IN_SECONDS:J

    return-wide v0
.end method
