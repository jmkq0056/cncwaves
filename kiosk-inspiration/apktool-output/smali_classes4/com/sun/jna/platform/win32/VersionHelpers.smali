.class public Lcom/sun/jna/platform/win32/VersionHelpers;
.super Ljava/lang/Object;
.source "VersionHelpers.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsWindows10OrGreater()Z
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 194
    invoke-static {v0, v1, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindows7OrGreater()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 154
    invoke-static {v2, v0, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindows7SP1OrGreater()Z
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x1

    .line 162
    invoke-static {v0, v1, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindows8OrGreater()Z
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 170
    invoke-static {v2, v0, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindows8Point1OrGreater()Z
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 182
    invoke-static {v2, v0, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindowsServer()Z
    .locals 6

    .line 208
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;-><init>()V

    .line 209
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->dwOSVersionInfoSize:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const/4 v1, 0x1

    .line 210
    iput-byte v1, v0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->wProductType:B

    .line 212
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const-wide/16 v3, 0x0

    const/16 v5, 0x80

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/sun/jna/platform/win32/Kernel32;->VerSetConditionMask(JIB)J

    move-result-wide v2

    .line 215
    sget-object v4, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v4, v0, v5, v2, v3}, Lcom/sun/jna/platform/win32/Kernel32;->VerifyVersionInfoW(Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;IJ)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public static IsWindowsVersionOrGreater(III)Z
    .locals 4

    .line 59
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;-><init>()V

    .line 60
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->dwOSVersionInfoSize:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 61
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    int-to-long v2, p0

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->dwMajorVersion:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 62
    new-instance p0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    int-to-long v1, p1

    invoke-direct {p0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object p0, v0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->dwMinorVersion:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 63
    new-instance p0, Lcom/sun/jna/platform/win32/WinDef$WORD;

    int-to-long p1, p2

    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/win32/WinDef$WORD;-><init>(J)V

    iput-object p0, v0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;->wServicePackMajor:Lcom/sun/jna/platform/win32/WinDef$WORD;

    .line 66
    sget-object p0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const-wide/16 p1, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-interface {p0, p1, p2, v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->VerSetConditionMask(JIB)J

    move-result-wide p0

    .line 68
    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v1, 0x1

    invoke-interface {p2, p0, p1, v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->VerSetConditionMask(JIB)J

    move-result-wide p0

    .line 70
    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/16 v1, 0x20

    invoke-interface {p2, p0, p1, v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->VerSetConditionMask(JIB)J

    move-result-wide p0

    .line 73
    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/16 v1, 0x23

    invoke-interface {p2, v0, v1, p0, p1}, Lcom/sun/jna/platform/win32/Kernel32;->VerifyVersionInfoW(Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFOEX;IJ)Z

    move-result p0

    return p0
.end method

.method public static IsWindowsVistaOrGreater()Z
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 127
    invoke-static {v0, v1, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindowsVistaSP1OrGreater()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x6

    .line 136
    invoke-static {v2, v0, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindowsVistaSP2OrGreater()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x6

    .line 145
    invoke-static {v2, v0, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindowsXPOrGreater()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 91
    invoke-static {v2, v0, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindowsXPSP1OrGreater()Z
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 100
    invoke-static {v0, v1, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindowsXPSP2OrGreater()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x5

    .line 109
    invoke-static {v2, v0, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method

.method public static IsWindowsXPSP3OrGreater()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x5

    .line 118
    invoke-static {v2, v0, v1}, Lcom/sun/jna/platform/win32/VersionHelpers;->IsWindowsVersionOrGreater(III)Z

    move-result v0

    return v0
.end method
