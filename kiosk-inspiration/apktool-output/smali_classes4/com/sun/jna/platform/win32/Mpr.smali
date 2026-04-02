.class public interface abstract Lcom/sun/jna/platform/win32/Mpr;
.super Ljava/lang/Object;
.source "Mpr.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Mpr;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const-class v0, Lcom/sun/jna/platform/win32/Mpr;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "Mpr"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Mpr;

    sput-object v0, Lcom/sun/jna/platform/win32/Mpr;->INSTANCE:Lcom/sun/jna/platform/win32/Mpr;

    return-void
.end method


# virtual methods
.method public abstract WNetAddConnection3(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/Winnetwk$NETRESOURCE;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract WNetCancelConnection2(Ljava/lang/String;IZ)I
.end method

.method public abstract WNetCloseEnum(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I
.end method

.method public abstract WNetEnumResource(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract WNetGetUniversalName(Ljava/lang/String;ILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract WNetOpenEnum(IIILcom/sun/jna/platform/win32/Winnetwk$NETRESOURCE$ByReference;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)I
.end method

.method public abstract WNetUseConnection(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/Winnetwk$NETRESOURCE;Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I
.end method
