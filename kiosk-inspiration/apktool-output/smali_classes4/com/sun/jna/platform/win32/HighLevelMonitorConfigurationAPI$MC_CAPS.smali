.class public final enum Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;
.super Ljava/lang/Enum;
.source "HighLevelMonitorConfigurationAPI.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/FlagEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MC_CAPS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;",
        ">;",
        "Lcom/sun/jna/platform/win32/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_BRIGHTNESS:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_COLOR_TEMPERATURE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_CONTRAST:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_DEGAUSS:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_DISPLAY_AREA_POSITION:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_DISPLAY_AREA_SIZE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_MONITOR_TECHNOLOGY_TYPE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_NONE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_RED_GREEN_BLUE_DRIVE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_RED_GREEN_BLUE_GAIN:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_RESTORE_FACTORY_COLOR_DEFAULTS:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_CAPS_RESTORE_FACTORY_DEFAULTS:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

.field public static final enum MC_RESTORE_FACTORY_DEFAULTS_ENABLES_MONITOR_SETTINGS:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;


# instance fields
.field private flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 44
    new-instance v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const-string v1, "MC_CAPS_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_NONE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 49
    new-instance v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const-string v2, "MC_CAPS_MONITOR_TECHNOLOGY_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_MONITOR_TECHNOLOGY_TYPE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 54
    new-instance v2, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const-string v3, "MC_CAPS_BRIGHTNESS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_BRIGHTNESS:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 59
    new-instance v3, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const-string v4, "MC_CAPS_CONTRAST"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_CONTRAST:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 64
    new-instance v4, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const-string v5, "MC_CAPS_COLOR_TEMPERATURE"

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_COLOR_TEMPERATURE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 69
    new-instance v5, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const/4 v6, 0x5

    const/16 v8, 0x10

    const-string v9, "MC_CAPS_RED_GREEN_BLUE_GAIN"

    invoke-direct {v5, v9, v6, v8}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_RED_GREEN_BLUE_GAIN:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 74
    new-instance v6, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const/4 v8, 0x6

    const/16 v9, 0x20

    const-string v10, "MC_CAPS_RED_GREEN_BLUE_DRIVE"

    invoke-direct {v6, v10, v8, v9}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_RED_GREEN_BLUE_DRIVE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    move v8, v7

    .line 79
    new-instance v7, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const/4 v9, 0x7

    const/16 v10, 0x40

    const-string v11, "MC_CAPS_DEGAUSS"

    invoke-direct {v7, v11, v9, v10}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_DEGAUSS:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    move v9, v8

    .line 84
    new-instance v8, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const-string v10, "MC_CAPS_DISPLAY_AREA_POSITION"

    const/16 v11, 0x80

    invoke-direct {v8, v10, v9, v11}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_DISPLAY_AREA_POSITION:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 89
    new-instance v9, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const/16 v10, 0x9

    const/16 v11, 0x100

    const-string v12, "MC_CAPS_DISPLAY_AREA_SIZE"

    invoke-direct {v9, v12, v10, v11}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_DISPLAY_AREA_SIZE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 94
    new-instance v10, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const/16 v11, 0xa

    const/16 v12, 0x400

    const-string v13, "MC_CAPS_RESTORE_FACTORY_DEFAULTS"

    invoke-direct {v10, v13, v11, v12}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_RESTORE_FACTORY_DEFAULTS:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 99
    new-instance v11, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const/16 v12, 0xb

    const/16 v13, 0x800

    const-string v14, "MC_CAPS_RESTORE_FACTORY_COLOR_DEFAULTS"

    invoke-direct {v11, v14, v12, v13}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_CAPS_RESTORE_FACTORY_COLOR_DEFAULTS:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 106
    new-instance v12, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    const/16 v13, 0xc

    const/16 v14, 0x1000

    const-string v15, "MC_RESTORE_FACTORY_DEFAULTS_ENABLES_MONITOR_SETTINGS"

    invoke-direct {v12, v15, v13, v14}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->MC_RESTORE_FACTORY_DEFAULTS_ENABLES_MONITOR_SETTINGS:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    .line 39
    filled-new-array/range {v0 .. v12}, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->$VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    iput p3, p0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->flag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;
    .locals 1

    .line 39
    const-class v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    return-object p0
.end method

.method public static values()[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;
    .locals 1

    .line 39
    sget-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->$VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    invoke-virtual {v0}, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_CAPS;->flag:I

    return v0
.end method
