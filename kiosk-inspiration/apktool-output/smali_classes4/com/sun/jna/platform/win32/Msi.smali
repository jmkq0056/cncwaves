.class public interface abstract Lcom/sun/jna/platform/win32/Msi;
.super Ljava/lang/Object;
.source "Msi.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# static fields
.field public static final INSTALLSTATE_ABSENT:I = 0x2

.field public static final INSTALLSTATE_ADVERTISED:I = 0x1

.field public static final INSTALLSTATE_BADCONFIG:I = -0x6

.field public static final INSTALLSTATE_BROKEN:I = 0x0

.field public static final INSTALLSTATE_DEFAULT:I = 0x5

.field public static final INSTALLSTATE_INCOMPLETE:I = -0x5

.field public static final INSTALLSTATE_INVALIDARG:I = -0x2

.field public static final INSTALLSTATE_LOCAL:I = 0x3

.field public static final INSTALLSTATE_MOREDATA:I = -0x3

.field public static final INSTALLSTATE_NOTUSED:I = -0x7

.field public static final INSTALLSTATE_REMOVED:I = 0x1

.field public static final INSTALLSTATE_SOURCE:I = 0x4

.field public static final INSTALLSTATE_SOURCEABSENT:I = -0x4

.field public static final INSTALLSTATE_UNKNOWN:I = -0x1

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/Msi;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    const-class v0, Lcom/sun/jna/platform/win32/Msi;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "msi"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Msi;

    sput-object v0, Lcom/sun/jna/platform/win32/Msi;->INSTANCE:Lcom/sun/jna/platform/win32/Msi;

    return-void
.end method


# virtual methods
.method public abstract MsiEnumComponents(Lcom/sun/jna/platform/win32/WinDef$DWORD;[C)I
.end method

.method public abstract MsiGetComponentPath(Ljava/lang/String;Ljava/lang/String;[CLcom/sun/jna/ptr/IntByReference;)I
.end method

.method public abstract MsiGetProductCode(Ljava/lang/String;[C)I
.end method

.method public abstract MsiLocateComponent(Ljava/lang/String;[CLcom/sun/jna/ptr/IntByReference;)I
.end method
