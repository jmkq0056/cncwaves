.class public Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;
.super Ljava/lang/Object;
.source "Advapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Advapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumKey"
.end annotation


# instance fields
.field public dwIndex:I

.field public hKey:Lcom/sun/jna/platform/win32/WinReg$HKEY;

.field public lpClass:[C

.field public lpName:[C

.field public lpcName:Lcom/sun/jna/ptr/IntByReference;

.field public lpcbClass:Lcom/sun/jna/ptr/IntByReference;

.field public lpftLastWriteTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2280
    iput v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->dwIndex:I

    const/16 v0, 0xff

    .line 2281
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpName:[C

    .line 2282
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpcName:Lcom/sun/jna/ptr/IntByReference;

    .line 2284
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpClass:[C

    .line 2285
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpcbClass:Lcom/sun/jna/ptr/IntByReference;

    .line 2287
    new-instance v0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpftLastWriteTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinReg$HKEY;I)V
    .locals 2

    .line 2292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2280
    iput v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->dwIndex:I

    const/16 v0, 0xff

    .line 2281
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpName:[C

    .line 2282
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpcName:Lcom/sun/jna/ptr/IntByReference;

    .line 2284
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpClass:[C

    .line 2285
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpcbClass:Lcom/sun/jna/ptr/IntByReference;

    .line 2287
    new-instance v0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpftLastWriteTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    .line 2293
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->hKey:Lcom/sun/jna/platform/win32/WinReg$HKEY;

    .line 2294
    iput p2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->dwIndex:I

    return-void
.end method
