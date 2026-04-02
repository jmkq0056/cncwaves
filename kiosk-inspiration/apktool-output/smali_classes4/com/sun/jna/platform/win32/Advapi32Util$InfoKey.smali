.class public Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;
.super Ljava/lang/Object;
.source "Advapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Advapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InfoKey"
.end annotation


# instance fields
.field public hKey:Lcom/sun/jna/platform/win32/WinReg$HKEY;

.field public lpClass:[C

.field public lpcClass:Lcom/sun/jna/ptr/IntByReference;

.field public lpcMaxClassLen:Lcom/sun/jna/ptr/IntByReference;

.field public lpcMaxSubKeyLen:Lcom/sun/jna/ptr/IntByReference;

.field public lpcMaxValueLen:Lcom/sun/jna/ptr/IntByReference;

.field public lpcMaxValueNameLen:Lcom/sun/jna/ptr/IntByReference;

.field public lpcSubKeys:Lcom/sun/jna/ptr/IntByReference;

.field public lpcValues:Lcom/sun/jna/ptr/IntByReference;

.field public lpcbSecurityDescriptor:Lcom/sun/jna/ptr/IntByReference;

.field public lpftLastWriteTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x104

    .line 2236
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpClass:[C

    .line 2237
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcClass:Lcom/sun/jna/ptr/IntByReference;

    .line 2238
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcSubKeys:Lcom/sun/jna/ptr/IntByReference;

    .line 2239
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxSubKeyLen:Lcom/sun/jna/ptr/IntByReference;

    .line 2240
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxClassLen:Lcom/sun/jna/ptr/IntByReference;

    .line 2241
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcValues:Lcom/sun/jna/ptr/IntByReference;

    .line 2242
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxValueNameLen:Lcom/sun/jna/ptr/IntByReference;

    .line 2243
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxValueLen:Lcom/sun/jna/ptr/IntByReference;

    .line 2244
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcbSecurityDescriptor:Lcom/sun/jna/ptr/IntByReference;

    .line 2245
    new-instance v0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpftLastWriteTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinReg$HKEY;I)V
    .locals 2

    .line 2250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x104

    .line 2236
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpClass:[C

    .line 2237
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcClass:Lcom/sun/jna/ptr/IntByReference;

    .line 2238
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcSubKeys:Lcom/sun/jna/ptr/IntByReference;

    .line 2239
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxSubKeyLen:Lcom/sun/jna/ptr/IntByReference;

    .line 2240
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxClassLen:Lcom/sun/jna/ptr/IntByReference;

    .line 2241
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcValues:Lcom/sun/jna/ptr/IntByReference;

    .line 2242
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxValueNameLen:Lcom/sun/jna/ptr/IntByReference;

    .line 2243
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxValueLen:Lcom/sun/jna/ptr/IntByReference;

    .line 2244
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcbSecurityDescriptor:Lcom/sun/jna/ptr/IntByReference;

    .line 2245
    new-instance v0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpftLastWriteTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    .line 2251
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->hKey:Lcom/sun/jna/platform/win32/WinReg$HKEY;

    .line 2252
    new-instance p1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {p1, p2}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcbSecurityDescriptor:Lcom/sun/jna/ptr/IntByReference;

    return-void
.end method
