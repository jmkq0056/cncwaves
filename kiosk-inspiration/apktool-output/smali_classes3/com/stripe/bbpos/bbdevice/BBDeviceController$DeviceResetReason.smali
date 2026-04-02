.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceResetReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_RESET_DEVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

.field public static final enum FIRMWARE_SELF_TEST:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

.field public static final enum RECOVERY_ATTEMPT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

.field public static final enum UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

.field public static final enum WATCHDOG_TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    const-string v2, "APP_RESET_DEVICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->APP_RESET_DEVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    const-string v3, "FIRMWARE_SELF_TEST"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->FIRMWARE_SELF_TEST:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    const-string v4, "RECOVERY_ATTEMPT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->RECOVERY_ATTEMPT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    const-string v5, "WATCHDOG_TIMEOUT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->WATCHDOG_TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    .line 6
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->aaa000:I

    return v0
.end method
