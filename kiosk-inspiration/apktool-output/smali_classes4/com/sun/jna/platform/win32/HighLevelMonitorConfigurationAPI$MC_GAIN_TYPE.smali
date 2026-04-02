.class public final enum Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;
.super Ljava/lang/Enum;
.source "HighLevelMonitorConfigurationAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MC_GAIN_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

.field public static final enum MC_BLUE_GAIN:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

.field public static final enum MC_GREEN_GAIN:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

.field public static final enum MC_RED_GAIN:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 309
    new-instance v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    const-string v1, "MC_RED_GAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;->MC_RED_GAIN:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    .line 314
    new-instance v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    const-string v2, "MC_GREEN_GAIN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;->MC_GREEN_GAIN:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    .line 319
    new-instance v2, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    const-string v3, "MC_BLUE_GAIN"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;->MC_BLUE_GAIN:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    .line 304
    filled-new-array {v0, v1, v2}, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;->$VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;
    .locals 1

    .line 304
    const-class v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;
    .locals 1

    .line 304
    sget-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;->$VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    invoke-virtual {v0}, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;

    return-object v0
.end method
