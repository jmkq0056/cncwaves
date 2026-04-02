.class public Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE$ByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "HighLevelMonitorConfigurationAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x4

    .line 415
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 416
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE$ByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/jna/Pointer;->setInt(JI)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE;)V
    .locals 1

    const/4 v0, 0x4

    .line 424
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 425
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE$ByReference;->setValue(Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE;
    .locals 3

    .line 441
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE$ByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v0

    const-class v1, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE;

    invoke-static {v0, v1}, Lcom/sun/jna/platform/EnumUtils;->fromInteger(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE;

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE;)V
    .locals 3

    .line 433
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE$ByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {p1}, Lcom/sun/jna/platform/EnumUtils;->toInteger(Ljava/lang/Enum;)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    return-void
.end method
