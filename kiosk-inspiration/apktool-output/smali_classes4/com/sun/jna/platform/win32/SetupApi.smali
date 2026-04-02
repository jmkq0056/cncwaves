.class public interface abstract Lcom/sun/jna/platform/win32/SetupApi;
.super Ljava/lang/Object;
.source "SetupApi.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/SetupApi$SP_DEVINFO_DATA;,
        Lcom/sun/jna/platform/win32/SetupApi$SP_DEVICE_INTERFACE_DATA;
    }
.end annotation


# static fields
.field public static final CM_DEVCAP_REMOVABLE:I = 0x4

.field public static final DICS_FLAG_CONFIGGENERAL:I = 0x4

.field public static final DICS_FLAG_CONFIGSPECIFIC:I = 0x2

.field public static final DICS_FLAG_GLOBAL:I = 0x1

.field public static final DIGCF_ALLCLASSES:I = 0x4

.field public static final DIGCF_DEFAULT:I = 0x1

.field public static final DIGCF_DEVICEINTERFACE:I = 0x10

.field public static final DIGCF_PRESENT:I = 0x2

.field public static final DIGCF_PROFILE:I = 0x8

.field public static final DIREG_BOTH:I = 0x4

.field public static final DIREG_DEV:I = 0x1

.field public static final DIREG_DRV:I = 0x2

.field public static final GUID_DEVINTERFACE_COMPORT:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public static final GUID_DEVINTERFACE_DISK:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/SetupApi;

.field public static final SPDRP_DEVICEDESC:I = 0x0

.field public static final SPDRP_REMOVAL_POLICY:I = 0x1f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const-class v0, Lcom/sun/jna/platform/win32/SetupApi;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "setupapi"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/SetupApi;

    sput-object v0, Lcom/sun/jna/platform/win32/SetupApi;->INSTANCE:Lcom/sun/jna/platform/win32/SetupApi;

    .line 49
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    const-string v1, "53F56307-B6BF-11D0-94F2-00A0C91EFB8B"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/SetupApi;->GUID_DEVINTERFACE_DISK:Lcom/sun/jna/platform/win32/Guid$GUID;

    .line 57
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    const-string v1, "86E0D1E0-8089-11D0-9CE4-08003E301F73"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/SetupApi;->GUID_DEVINTERFACE_COMPORT:Lcom/sun/jna/platform/win32/Guid$GUID;

    return-void
.end method


# virtual methods
.method public abstract SetupDiDestroyDeviceInfoList(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
.end method

.method public abstract SetupDiEnumDeviceInfo(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/SetupApi$SP_DEVINFO_DATA;)Z
.end method

.method public abstract SetupDiEnumDeviceInterfaces(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Guid$GUID;ILcom/sun/jna/platform/win32/SetupApi$SP_DEVICE_INTERFACE_DATA;)Z
.end method

.method public abstract SetupDiGetClassDevs(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;I)Lcom/sun/jna/platform/win32/WinNT$HANDLE;
.end method

.method public abstract SetupDiGetDeviceInterfaceDetail(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/SetupApi$SP_DEVICE_INTERFACE_DATA;Lcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/SetupApi$SP_DEVINFO_DATA;)Z
.end method

.method public abstract SetupDiGetDeviceRegistryProperty(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/SetupApi$SP_DEVINFO_DATA;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z
.end method

.method public abstract SetupDiOpenDevRegKey(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/SetupApi$SP_DEVINFO_DATA;IIII)Lcom/sun/jna/platform/win32/WinReg$HKEY;
.end method
