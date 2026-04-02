.class public interface abstract Lcom/sun/jna/platform/win32/Rasapi32;
.super Ljava/lang/Object;
.source "Rasapi32.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 47
    const-class v0, Lcom/sun/jna/platform/win32/Rasapi32;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Rasapi32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Rasapi32;

    sput-object v0, Lcom/sun/jna/platform/win32/Rasapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Rasapi32;

    return-void
.end method


# virtual methods
.method public abstract RasDial(Lcom/sun/jna/platform/win32/WinRas$RASDIALEXTENSIONS$ByReference;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;ILcom/sun/jna/platform/win32/WinRas$RasDialFunc2;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)I
.end method

.method public abstract RasEnumConnections([Lcom/sun/jna/platform/win32/WinRas$RASCONN;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RasGetConnectStatus(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Structure$ByReference;)I
.end method

.method public abstract RasGetConnectionStatistics(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Structure$ByReference;)I
.end method

.method public abstract RasGetCredentials(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASCREDENTIALS$ByReference;)I
.end method

.method public abstract RasGetEntryDialParams(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASDIALPARAMS$ByReference;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;)I
.end method

.method public abstract RasGetEntryProperties(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I
.end method

.method public abstract RasGetErrorString(I[CI)I
.end method

.method public abstract RasGetProjectionInfo(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract RasHangUp(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I
.end method

.method public abstract RasSetEntryProperties(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;I[BI)I
.end method
