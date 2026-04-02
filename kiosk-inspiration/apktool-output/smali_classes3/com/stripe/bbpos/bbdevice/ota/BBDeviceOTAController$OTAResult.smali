.class public final enum Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OTAResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BATTERY_LOW_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public static final enum DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public static final enum FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public static final enum INCOMPATIBLE_CONFIG_HEX:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public static final enum INCOMPATIBLE_FIRMWARE_HEX:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public static final enum NO_UPDATE_REQUIRED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public static final enum SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public static final enum SETUP_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public static final enum STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field public static final enum SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

.field private static final synthetic a:[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v2, "BATTERY_LOW_ERROR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->BATTERY_LOW_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v3, "SETUP_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SETUP_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v4, "DEVICE_COMM_ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->DEVICE_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v5, "SERVER_COMM_ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->SERVER_COMM_ERROR:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v6, "FAILED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->FAILED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v7, "STOPPED"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->STOPPED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 8
    new-instance v7, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v8, "NO_UPDATE_REQUIRED"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->NO_UPDATE_REQUIRED:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 9
    new-instance v8, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v9, "INCOMPATIBLE_FIRMWARE_HEX"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->INCOMPATIBLE_FIRMWARE_HEX:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 10
    new-instance v9, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    const-string v10, "INCOMPATIBLE_CONFIG_HEX"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->INCOMPATIBLE_CONFIG_HEX:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    .line 11
    filled-new-array/range {v0 .. v9}, [Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->a:[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->a:[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;

    return-object v0
.end method
