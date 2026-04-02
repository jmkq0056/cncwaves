.class public final enum Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetVersionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONFIG:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

.field public static final enum FIRMWARE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

.field public static final enum KEY_PROFILE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

.field private static final synthetic a:[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    const-string v1, "FIRMWARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->FIRMWARE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    const-string v2, "CONFIG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->CONFIG:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    const-string v3, "KEY_PROFILE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->KEY_PROFILE:Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    .line 4
    filled-new-array {v0, v1, v2}, [Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->a:[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->a:[Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/ota/BBDeviceOTAController$TargetVersionType;

    return-object v0
.end method
