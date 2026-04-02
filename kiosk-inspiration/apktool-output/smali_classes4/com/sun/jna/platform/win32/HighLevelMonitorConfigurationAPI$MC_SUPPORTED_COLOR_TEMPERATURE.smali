.class public final enum Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;
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
    name = "MC_SUPPORTED_COLOR_TEMPERATURE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;",
        ">;",
        "Lcom/sun/jna/platform/win32/FlagEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

.field public static final enum MC_SUPPORTED_COLOR_TEMPERATURE_10000K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

.field public static final enum MC_SUPPORTED_COLOR_TEMPERATURE_11500K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

.field public static final enum MC_SUPPORTED_COLOR_TEMPERATURE_4000K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

.field public static final enum MC_SUPPORTED_COLOR_TEMPERATURE_5000K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

.field public static final enum MC_SUPPORTED_COLOR_TEMPERATURE_6500K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

.field public static final enum MC_SUPPORTED_COLOR_TEMPERATURE_7500K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

.field public static final enum MC_SUPPORTED_COLOR_TEMPERATURE_8200K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

.field public static final enum MC_SUPPORTED_COLOR_TEMPERATURE_9300K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

.field public static final enum MC_SUPPORTED_COLOR_TEMPERATURE_NONE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;


# instance fields
.field private flag:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 130
    new-instance v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    const-string v1, "MC_SUPPORTED_COLOR_TEMPERATURE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->MC_SUPPORTED_COLOR_TEMPERATURE_NONE:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    .line 135
    new-instance v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    const-string v2, "MC_SUPPORTED_COLOR_TEMPERATURE_4000K"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->MC_SUPPORTED_COLOR_TEMPERATURE_4000K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    .line 140
    new-instance v2, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    const-string v3, "MC_SUPPORTED_COLOR_TEMPERATURE_5000K"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->MC_SUPPORTED_COLOR_TEMPERATURE_5000K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    .line 145
    new-instance v3, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    const-string v4, "MC_SUPPORTED_COLOR_TEMPERATURE_6500K"

    const/4 v5, 0x3

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->MC_SUPPORTED_COLOR_TEMPERATURE_6500K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    .line 150
    new-instance v4, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    const-string v5, "MC_SUPPORTED_COLOR_TEMPERATURE_7500K"

    const/16 v7, 0x8

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->MC_SUPPORTED_COLOR_TEMPERATURE_7500K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    .line 155
    new-instance v5, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    const/4 v6, 0x5

    const/16 v8, 0x10

    const-string v9, "MC_SUPPORTED_COLOR_TEMPERATURE_8200K"

    invoke-direct {v5, v9, v6, v8}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->MC_SUPPORTED_COLOR_TEMPERATURE_8200K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    .line 160
    new-instance v6, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    const/4 v8, 0x6

    const/16 v9, 0x20

    const-string v10, "MC_SUPPORTED_COLOR_TEMPERATURE_9300K"

    invoke-direct {v6, v10, v8, v9}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->MC_SUPPORTED_COLOR_TEMPERATURE_9300K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    move v8, v7

    .line 165
    new-instance v7, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    const/4 v9, 0x7

    const/16 v10, 0x40

    const-string v11, "MC_SUPPORTED_COLOR_TEMPERATURE_10000K"

    invoke-direct {v7, v11, v9, v10}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->MC_SUPPORTED_COLOR_TEMPERATURE_10000K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    move v9, v8

    .line 170
    new-instance v8, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    const-string v10, "MC_SUPPORTED_COLOR_TEMPERATURE_11500K"

    const/16 v11, 0x80

    invoke-direct {v8, v10, v9, v11}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->MC_SUPPORTED_COLOR_TEMPERATURE_11500K:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    .line 125
    filled-new-array/range {v0 .. v8}, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->$VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    iput p3, p0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->flag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;
    .locals 1

    .line 125
    const-class v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    return-object p0
.end method

.method public static values()[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;
    .locals 1

    .line 125
    sget-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->$VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    invoke-virtual {v0}, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;

    return-object v0
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SUPPORTED_COLOR_TEMPERATURE;->flag:I

    return v0
.end method
