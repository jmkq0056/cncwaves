.class public interface abstract Lcom/sun/jna/platform/win32/Dxva2;
.super Ljava/lang/Object;
.source "Dxva2.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;
.implements Lcom/sun/jna/platform/win32/PhysicalMonitorEnumerationAPI;
.implements Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI;
.implements Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI;


# static fields
.field public static final DXVA_OPTIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Dxva2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Lcom/sun/jna/platform/win32/Dxva2$1;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Dxva2$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/Dxva2;->DXVA_OPTIONS:Ljava/util/Map;

    .line 69
    const-string v1, "Dxva2"

    const-class v2, Lcom/sun/jna/platform/win32/Dxva2;

    invoke-static {v1, v2, v0}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Dxva2;

    sput-object v0, Lcom/sun/jna/platform/win32/Dxva2;->INSTANCE:Lcom/sun/jna/platform/win32/Dxva2;

    return-void
.end method


# virtual methods
.method public abstract CapabilitiesRequestAndCapabilitiesReply(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WTypes$LPSTR;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract DegaussMonitor(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract DestroyPhysicalMonitor(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract DestroyPhysicalMonitors(I[Lcom/sun/jna/platform/win32/PhysicalMonitorEnumerationAPI$PHYSICAL_MONITOR;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetCapabilitiesStringLength(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetMonitorBrightness(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetMonitorCapabilities(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetMonitorColorTemperature(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE$ByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetMonitorContrast(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetMonitorDisplayAreaPosition(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_POSITION_TYPE;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetMonitorDisplayAreaSize(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetMonitorRedGreenOrBlueDrive(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_DRIVE_TYPE;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetMonitorRedGreenOrBlueGain(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetMonitorTechnologyType(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_DISPLAY_TECHNOLOGY_TYPE$ByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetNumberOfPhysicalMonitorsFromHMONITOR(Lcom/sun/jna/platform/win32/WinUser$HMONITOR;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetPhysicalMonitorsFromHMONITOR(Lcom/sun/jna/platform/win32/WinUser$HMONITOR;I[Lcom/sun/jna/platform/win32/PhysicalMonitorEnumerationAPI$PHYSICAL_MONITOR;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetTimingReport(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_TIMING_REPORT;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract GetVCPFeatureAndVCPFeatureReply(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$BYTE;Lcom/sun/jna/platform/win32/LowLevelMonitorConfigurationAPI$MC_VCP_CODE_TYPE$ByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract RestoreMonitorFactoryColorDefaults(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract RestoreMonitorFactoryDefaults(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SaveCurrentMonitorSettings(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SaveCurrentSettings(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SetMonitorBrightness(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SetMonitorColorTemperature(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_COLOR_TEMPERATURE;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SetMonitorContrast(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SetMonitorDisplayAreaPosition(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_POSITION_TYPE;I)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SetMonitorDisplayAreaSize(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_SIZE_TYPE;I)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SetMonitorRedGreenOrBlueDrive(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_DRIVE_TYPE;I)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SetMonitorRedGreenOrBlueGain(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/HighLevelMonitorConfigurationAPI$MC_GAIN_TYPE;I)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract SetVCPFeature(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$BYTE;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method
