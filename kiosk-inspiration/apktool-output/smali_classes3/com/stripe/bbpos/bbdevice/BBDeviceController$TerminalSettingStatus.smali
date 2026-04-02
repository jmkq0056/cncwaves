.class public final enum Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TerminalSettingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field public static final enum INVALID_VALUE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field public static final enum LENGTH_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field public static final enum SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field public static final enum TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field public static final enum TAG_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field public static final enum TAG_NOT_UPDATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field public static final enum TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field public static final enum TLV_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field public static final enum UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field public static final enum USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

.field private static final synthetic aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;


# instance fields
.field private final aaa000:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v2, "TLV_INCORRECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TLV_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v3, "TAG_NOT_FOUND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v4, "LENGTH_INCORRECT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->LENGTH_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v5, "BOOTLOADER_NOT_SUPPORT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v6, "TAG_NOT_ALLOWED_TO_ACCESS"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v7, "TAG_NOT_WRITTEN_CORRECTLY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 8
    new-instance v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v8, "INVALID_VALUE"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9, v9}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->INVALID_VALUE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 9
    new-instance v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const/16 v9, 0x3e9

    const-string v10, "USER_DEFINED_DATA_NOT_ENALBLED"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 10
    new-instance v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v10, "TAG_NOT_UPDATED"

    const/16 v12, 0x9

    invoke-direct {v9, v10, v12, v11}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_UPDATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 11
    new-instance v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v11, "UNKNOWN"

    const/16 v13, 0xa

    invoke-direct {v10, v11, v13, v12}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 12
    filled-new-array/range {v0 .. v10}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

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
    iput p3, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->aaa000:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->aaa001:[Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->aaa000:I

    return v0
.end method
