.class public Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwOSVersionInfoSize",
        "dwMajorVersion",
        "dwMinorVersion",
        "dwBuildNumber",
        "dwPlatformId",
        "szCSDVersion",
        "wServicePackMajor",
        "wServicePackMinor",
        "wSuiteMask",
        "wProductType",
        "wReserved"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OSVERSIONINFOEX"
.end annotation


# instance fields
.field public dwBuildNumber:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwMajorVersion:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwMinorVersion:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwOSVersionInfoSize:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwPlatformId:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public szCSDVersion:[C

.field public wProductType:B

.field public wReserved:B

.field public wServicePackMajor:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public wServicePackMinor:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public wSuiteMask:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1934
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x80

    .line 1935
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->szCSDVersion:[C

    .line 1936
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->dwOSVersionInfoSize:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1940
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1941
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->read()V

    return-void
.end method


# virtual methods
.method public getBuildNumber()I
    .locals 1

    .line 1962
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->dwBuildNumber:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    return v0
.end method

.method public getMajor()I
    .locals 1

    .line 1948
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->dwMajorVersion:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 1955
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->dwMinorVersion:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    return v0
.end method

.method public getPlatformId()I
    .locals 1

    .line 1969
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->dwPlatformId:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    return v0
.end method

.method public getProductType()B
    .locals 1

    .line 1992
    iget-byte v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->wProductType:B

    return v0
.end method

.method public getServicePack()Ljava/lang/String;
    .locals 1

    .line 1978
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->szCSDVersion:[C

    invoke-static {v0}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuiteMask()I
    .locals 1

    .line 1985
    iget-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->wSuiteMask:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result v0

    return v0
.end method
