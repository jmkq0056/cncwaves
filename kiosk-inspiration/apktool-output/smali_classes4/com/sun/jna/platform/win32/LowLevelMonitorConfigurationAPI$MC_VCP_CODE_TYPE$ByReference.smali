.class public Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE$ByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "LowLevelMonitorConfigurationAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 87
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE;)V
    .locals 1

    const/4 v0, 0x4

    .line 95
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE$ByReference;->setValue(Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE;
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE$ByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v0

    const-class v1, Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE;

    invoke-static {v0, v1}, Lcom/sun/jna/platform/EnumUtils;->fromInteger(ILjava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE;

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE;)V
    .locals 3

    .line 104
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE$ByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {p1}, Lcom/sun/jna/platform/EnumUtils;->toInteger(Ljava/lang/Enum;)I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    return-void
.end method
