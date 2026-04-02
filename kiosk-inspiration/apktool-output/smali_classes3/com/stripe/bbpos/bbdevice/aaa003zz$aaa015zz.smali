.class final enum Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/aaa003zz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "aaa015zz"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field public static final enum aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field public static final enum aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field public static final enum aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field public static final enum aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field public static final enum aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field public static final enum aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field public static final enum aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field public static final enum aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field public static final enum aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field public static final enum aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

.field private static final synthetic aaa012:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;


# instance fields
.field final aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v2, "SUCCESS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 2
    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v3, "TAG_NOT_FOUND"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 3
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->LENGTH_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v4, "INVALID_LENGTH"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 4
    new-instance v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TLV_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v5, "INVALID_TLV_FORMAT"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 5
    new-instance v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v6, "BOOTLOADER_NOT_SUPPORTED"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 6
    new-instance v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v7, "TAG_NOT_ALLOWED_TO_ACCESS"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 7
    new-instance v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v8, "USER_DEFINED_DATA_NOT_ENALBLED"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 8
    new-instance v7, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v8, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v9, "TAG_NOT_WRITTEN_CORRECTLY"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v7, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 9
    new-instance v8, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v9, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->INVALID_VALUE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v10, "INVALID_VALUE"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v8, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 10
    new-instance v9, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_UPDATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v11, "TAG_NOT_UPDATED"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v9, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 11
    new-instance v10, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    sget-object v11, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const-string v12, "UNKNOWN"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;-><init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V

    sput-object v10, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 12
    filled-new-array/range {v0 .. v10}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    move-result-object v0

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa012:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;
    .locals 1

    .line 1
    const-class v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    return-object p0
.end method

.method public static values()[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;
    .locals 1

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa012:[Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v0}, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    return-object v0
.end method


# virtual methods
.method aaa000()Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    return-object v0
.end method
