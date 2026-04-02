.class public final enum Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;
.super Ljava/lang/Enum;
.source "TerminalSettingStatus.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\r\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;",
        "",
        "(Ljava/lang/String;I)V",
        "SUCCESS",
        "TLV_INCORRECT",
        "TAG_NOT_FOUND",
        "LENGTH_INCORRECT",
        "BOOTLOADER_NOT_SUPPORT",
        "TAG_NOT_ALLOWED_TO_ACCESS",
        "TAG_NOT_WRITTEN_CORRECTLY",
        "INVALID_VALUE",
        "USER_DEFINED_DATA_NOT_ENABLED",
        "TAG_NOT_UPDATED",
        "UNKNOWN",
        "hardware_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum BOOTLOADER_NOT_SUPPORT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum INVALID_VALUE:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum LENGTH_INCORRECT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum SUCCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum TAG_NOT_FOUND:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum TAG_NOT_UPDATED:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum TLV_INCORRECT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum UNKNOWN:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

.field public static final enum USER_DEFINED_DATA_NOT_ENABLED:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;


# direct methods
.method private static final synthetic $values()[Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;
    .locals 11

    sget-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->SUCCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    sget-object v1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TLV_INCORRECT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    sget-object v2, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_FOUND:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    sget-object v3, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->LENGTH_INCORRECT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    sget-object v4, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    sget-object v5, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    sget-object v6, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    sget-object v7, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->INVALID_VALUE:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    sget-object v8, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->USER_DEFINED_DATA_NOT_ENABLED:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    sget-object v9, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_UPDATED:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    sget-object v10, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->UNKNOWN:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    filled-new-array/range {v0 .. v10}, [Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->SUCCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    .line 5
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "TLV_INCORRECT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TLV_INCORRECT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    .line 6
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "TAG_NOT_FOUND"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_FOUND:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    .line 7
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "LENGTH_INCORRECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->LENGTH_INCORRECT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    .line 8
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "BOOTLOADER_NOT_SUPPORT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    .line 9
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "TAG_NOT_ALLOWED_TO_ACCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    .line 10
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "TAG_NOT_WRITTEN_CORRECTLY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    .line 11
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "INVALID_VALUE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->INVALID_VALUE:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    .line 12
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "USER_DEFINED_DATA_NOT_ENABLED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->USER_DEFINED_DATA_NOT_ENABLED:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    .line 13
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "TAG_NOT_UPDATED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_UPDATED:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    .line 14
    new-instance v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->UNKNOWN:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    invoke-static {}, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->$values()[Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->$VALUES:[Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;
    .locals 1

    const-class v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p0
.end method

.method public static values()[Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;
    .locals 1

    sget-object v0, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->$VALUES:[Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object v0
.end method
