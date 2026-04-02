.class public Lcom/sun/jna/platform/win32/WinRas$RASENTRY;
.super Lcom/sun/jna/Structure;
.source "WinRas.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwSize",
        "dwfOptions",
        "dwCountryID",
        "dwCountryCode",
        "szAreaCode",
        "szLocalPhoneNumber",
        "dwAlternateOffset",
        "ipaddr",
        "ipaddrDns",
        "ipaddrDnsAlt",
        "ipaddrWins",
        "ipaddrWinsAlt",
        "dwFrameSize",
        "dwfNetProtocols",
        "dwFramingProtocol",
        "szScript",
        "szAutodialDll",
        "szAutodialFunc",
        "szDeviceType",
        "szDeviceName",
        "szX25PadType",
        "szX25Address",
        "szX25Facilities",
        "szX25UserData",
        "dwChannels",
        "dwReserved1",
        "dwReserved2",
        "dwSubEntries",
        "dwDialMode",
        "dwDialExtraPercent",
        "dwDialExtraSampleSeconds",
        "dwHangUpExtraPercent",
        "dwHangUpExtraSampleSeconds",
        "dwIdleDisconnectSeconds",
        "dwType",
        "dwEncryptionType",
        "dwCustomAuthKey",
        "guidId",
        "szCustomDialDll",
        "dwVpnStrategy",
        "dwfOptions2",
        "dwfOptions3",
        "szDnsSuffix",
        "dwTcpWindowSize",
        "szPrerequisitePbk",
        "szPrerequisiteEntry",
        "dwRedialCount",
        "dwRedialPause",
        "ipv6addrDns",
        "ipv6addrDnsAlt",
        "dwIPv4InterfaceMetric",
        "dwIPv6InterfaceMetric",
        "ipv6addr",
        "dwIPv6PrefixLength",
        "dwNetworkOutageTime"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinRas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RASENTRY"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/WinRas$RASENTRY$ByReference;
    }
.end annotation


# instance fields
.field public dwAlternateOffset:I

.field public dwChannels:I

.field public dwCountryCode:I

.field public dwCountryID:I

.field public dwCustomAuthKey:I

.field public dwDialExtraPercent:I

.field public dwDialExtraSampleSeconds:I

.field public dwDialMode:I

.field public dwEncryptionType:I

.field public dwFrameSize:I

.field public dwFramingProtocol:I

.field public dwHangUpExtraPercent:I

.field public dwHangUpExtraSampleSeconds:I

.field public dwIPv4InterfaceMetric:I

.field public dwIPv6InterfaceMetric:I

.field public dwIPv6PrefixLength:I

.field public dwIdleDisconnectSeconds:I

.field public dwNetworkOutageTime:I

.field public dwRedialCount:I

.field public dwRedialPause:I

.field public dwReserved1:I

.field public dwReserved2:I

.field public dwSize:I

.field public dwSubEntries:I

.field public dwTcpWindowSize:I

.field public dwType:I

.field public dwVpnStrategy:I

.field public dwfNetProtocols:I

.field public dwfOptions:I

.field public dwfOptions2:I

.field public dwfOptions3:I

.field public guidId:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public ipaddr:Lcom/sun/jna/platform/win32/WinRas$RASIPADDR;

.field public ipaddrDns:Lcom/sun/jna/platform/win32/WinRas$RASIPADDR;

.field public ipaddrDnsAlt:Lcom/sun/jna/platform/win32/WinRas$RASIPADDR;

.field public ipaddrWins:Lcom/sun/jna/platform/win32/WinRas$RASIPADDR;

.field public ipaddrWinsAlt:Lcom/sun/jna/platform/win32/WinRas$RASIPADDR;

.field public ipv6addr:Lcom/sun/jna/platform/win32/WinRas$RASIPV6ADDR;

.field public ipv6addrDns:Lcom/sun/jna/platform/win32/WinRas$RASIPV6ADDR;

.field public ipv6addrDnsAlt:Lcom/sun/jna/platform/win32/WinRas$RASIPV6ADDR;

.field public szAreaCode:[C

.field public szAutodialDll:[C

.field public szAutodialFunc:[C

.field public szCustomDialDll:[C

.field public szDeviceName:[C

.field public szDeviceType:[C

.field public szDnsSuffix:[C

.field public szLocalPhoneNumber:[C

.field public szPrerequisiteEntry:[C

.field public szPrerequisitePbk:[C

.field public szScript:[C

.field public szX25Address:[C

.field public szX25Facilities:[C

.field public szX25PadType:[C

.field public szX25UserData:[C


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 744
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0xb

    .line 783
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szAreaCode:[C

    const/16 v0, 0x81

    .line 788
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szLocalPhoneNumber:[C

    const/16 v1, 0x104

    .line 838
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szScript:[C

    .line 843
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szAutodialDll:[C

    .line 847
    new-array v2, v1, [C

    iput-object v2, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szAutodialFunc:[C

    const/16 v2, 0x11

    .line 851
    new-array v2, v2, [C

    iput-object v2, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szDeviceType:[C

    .line 856
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szDeviceName:[C

    const/16 v0, 0x21

    .line 861
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szX25PadType:[C

    const/16 v0, 0xc9

    .line 866
    new-array v2, v0, [C

    iput-object v2, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szX25Address:[C

    .line 871
    new-array v2, v0, [C

    iput-object v2, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szX25Facilities:[C

    .line 876
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szX25UserData:[C

    .line 950
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szCustomDialDll:[C

    const/16 v0, 0x100

    .line 968
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szDnsSuffix:[C

    .line 978
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szPrerequisitePbk:[C

    const/16 v0, 0x101

    .line 985
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szPrerequisiteEntry:[C

    .line 745
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->dwSize:I

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 749
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0xb

    .line 783
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szAreaCode:[C

    const/16 p1, 0x81

    .line 788
    new-array v0, p1, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szLocalPhoneNumber:[C

    const/16 v0, 0x104

    .line 838
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szScript:[C

    .line 843
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szAutodialDll:[C

    .line 847
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szAutodialFunc:[C

    const/16 v1, 0x11

    .line 851
    new-array v1, v1, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szDeviceType:[C

    .line 856
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szDeviceName:[C

    const/16 p1, 0x21

    .line 861
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szX25PadType:[C

    const/16 p1, 0xc9

    .line 866
    new-array v1, p1, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szX25Address:[C

    .line 871
    new-array v1, p1, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szX25Facilities:[C

    .line 876
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szX25UserData:[C

    .line 950
    new-array p1, v0, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szCustomDialDll:[C

    const/16 p1, 0x100

    .line 968
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szDnsSuffix:[C

    .line 978
    new-array p1, v0, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szPrerequisitePbk:[C

    const/16 p1, 0x101

    .line 985
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->szPrerequisiteEntry:[C

    .line 750
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinRas$RASENTRY;->read()V

    return-void
.end method
