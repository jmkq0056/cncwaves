.class public final enum Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;
.super Ljava/lang/Enum;
.source "HighLevelMonitorConfigurationAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MC_SIZE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

.field public static final enum MC_HEIGHT:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

.field public static final enum MC_WIDTH:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 347
    new-instance v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    const-string v1, "MC_WIDTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;->MC_WIDTH:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    .line 352
    new-instance v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    const-string v2, "MC_HEIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;->MC_HEIGHT:Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    .line 342
    filled-new-array {v0, v1}, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;->$VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 342
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;
    .locals 1

    .line 342
    const-class v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;
    .locals 1

    .line 342
    sget-object v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;->$VALUES:[Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    invoke-virtual {v0}, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;

    return-object v0
.end method
